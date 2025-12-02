module sync_fifo #(
    parameter DATA_WIDTH = 8,  // 数据位宽
    parameter FIFO_DEPTH = 1024  // FIFO 深度
)(
    input  wire                     clk,      // 时钟
    input  wire                     rst_n,    // 异步复位（低有效）
    input  wire                     wr_en,    // 写使能
    input  wire [DATA_WIDTH-1:0]    wr_data,  // 写数据
    input  wire                     rd_en,    // 读使能
    output reg  [DATA_WIDTH-1:0]    rd_data,  // 读数据
    output wire                     full,     // FIFO 满标志
    output wire                     empty,     // FIFO 空标志
    output wire [9:0]count
);

    // 内部信号定义
    reg [DATA_WIDTH-1:0] fifo_mem [0:FIFO_DEPTH-1];  // FIFO 存储阵列
    reg [$clog2(FIFO_DEPTH)-1:0] wr_ptr;             // 写指针
    reg [$clog2(FIFO_DEPTH)-1:0] rd_ptr;             // 读指针
    reg [$clog2(FIFO_DEPTH):0]   count_r;              // 数据计数器

    // 空满标志生成
    assign full  = (count == FIFO_DEPTH);
    assign empty = (count == 0);
    assign count = count_r;
    // 写操作
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr <= 0;
        end else if (wr_en && !full) begin
            fifo_mem[wr_ptr] <= wr_data;
            wr_ptr <= wr_ptr + 1;
        end
    end

    // 读操作
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rd_ptr <= 0;
            rd_data <= 0;
        end else if (rd_en && !empty) begin
            rd_data <= fifo_mem[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end
    end

    // 数据计数器更新
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count_r <= 0;
        end else begin
            case ({wr_en, rd_en})
                2'b00: count_r <= count_r;                    // 无操作
                2'b01: count_r <= (empty) ? 0 : count_r - 1; // 只读
                2'b10: count_r <= (full) ? count_r : count_r + 1; // 只写
                2'b11: count_r <= count_r;                    // 同时读写，计数不变
            endcase
        end
    end

endmodule

module async_fifo #(
    parameter DATA_WIDTH = 8,   // 数据位宽
    parameter FIFO_DEPTH = 128   // FIFO 深度（必须是 2 的幂）
)(
    // 写端口（写时钟域）
    input  wire                     wr_clk,    // 写时钟
    input  wire                     wr_rst_n,  // 写复位
    input  wire                     wr_en,     // 写使能
    input  wire [DATA_WIDTH-1:0]    din,       // 写数据
    
    // 读端口（读时钟域）
    input  wire                     rd_clk,    // 读时钟
    input  wire                     rd_rst_n,  // 读复位
    input  wire                     rd_en,     // 读使能
    output reg  [DATA_WIDTH-1:0]    dout,      // 读数据
    
    // 状态标志
    output wire                     full,      // FIFO 满（写时钟域）
    output wire                     empty      // FIFO 空（读时钟域）
);

    // 参数计算
    localparam ADDR_WIDTH = $clog2(FIFO_DEPTH);
    
    // FIFO 存储器
    reg [DATA_WIDTH-1:0] mem [0:FIFO_DEPTH-1];
    
    // 写指针（二进制和格雷码）
    reg [ADDR_WIDTH:0] wr_ptr_bin;  // 二进制写指针（多1位用于满判断）
    reg [ADDR_WIDTH:0] wr_ptr_gray; // 格雷码写指针
    wire [ADDR_WIDTH:0] wr_ptr_gray_next;
    
    // 读指针（二进制和格雷码）
    reg [ADDR_WIDTH:0] rd_ptr_bin;  // 二进制读指针（多1位用于满判断）
    reg [ADDR_WIDTH:0] rd_ptr_gray; // 格雷码读指针
    wire [ADDR_WIDTH:0] rd_ptr_gray_next;
    
    // 同步后的指针
    reg [ADDR_WIDTH:0] wr_ptr_gray_sync1, wr_ptr_gray_sync2;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync1, rd_ptr_gray_sync2;
    
    // 同步后的二进制指针（用于比较）
    reg [ADDR_WIDTH:0] wr_ptr_bin_sync;
    reg [ADDR_WIDTH:0] rd_ptr_bin_sync;
    
    // 二进制转格雷码函数
    function [ADDR_WIDTH:0] bin2gray;
        input [ADDR_WIDTH:0] bin;
        bin2gray = bin ^ (bin >> 1);
    endfunction
    
    // 格雷码转二进制函数
    function [ADDR_WIDTH:0] gray2bin;
        input [ADDR_WIDTH:0] gray;
        integer i;
        begin
            gray2bin[ADDR_WIDTH] = gray[ADDR_WIDTH];
            for (i = ADDR_WIDTH-1; i >= 0; i = i-1)
                gray2bin[i] = gray2bin[i+1] ^ gray[i];
        end
    endfunction
    
    // ===================== 写时钟域逻辑 =====================
    
    // 写指针更新
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n) begin
            wr_ptr_bin <= 0;
            wr_ptr_gray <= 0;
        end
        else if (wr_en && !full) begin
            // 写入数据到存储器
            mem[wr_ptr_bin[ADDR_WIDTH-1:0]] <= din;
            
            // 更新二进制写指针
            wr_ptr_bin <= wr_ptr_bin + 1;
            
            // 更新格雷码写指针
            wr_ptr_gray <= wr_ptr_gray_next;
        end
    end
    
    // 计算下一个格雷码写指针
    assign wr_ptr_gray_next = bin2gray(wr_ptr_bin + 1);
    
    // 同步读指针到写时钟域（两级同步器）
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n) begin
            rd_ptr_gray_sync1 <= 0;
            rd_ptr_gray_sync2 <= 0;
        end
        else begin
            rd_ptr_gray_sync1 <= rd_ptr_gray;
            rd_ptr_gray_sync2 <= rd_ptr_gray_sync1;
        end
    end
    
    // 将同步后的格雷码指针转换为二进制
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n)
            rd_ptr_bin_sync <= 0;
        else
            rd_ptr_bin_sync <= gray2bin(rd_ptr_gray_sync2);
    end
    
    // 满标志生成
    assign full = (wr_ptr_gray_next == {~rd_ptr_gray_sync2[ADDR_WIDTH:ADDR_WIDTH-1], 
                                        rd_ptr_gray_sync2[ADDR_WIDTH-2:0]});
    
    // ===================== 读时钟域逻辑 =====================
    
    // 读指针更新
    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n) begin
            rd_ptr_bin <= 0;
            rd_ptr_gray <= 0;
            dout <= 0;
        end
        else if (rd_en && !empty) begin
            // 从存储器读取数据
            dout <= mem[rd_ptr_bin[ADDR_WIDTH-1:0]];
            
            // 更新二进制读指针
            rd_ptr_bin <= rd_ptr_bin + 1;
            
            // 更新格雷码读指针
            rd_ptr_gray <= rd_ptr_gray_next;
        end
    end
    
    // 计算下一个格雷码读指针
    assign rd_ptr_gray_next = bin2gray(rd_ptr_bin + 1);
    
    // 同步写指针到读时钟域（两级同步器）
    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n) begin
            wr_ptr_gray_sync1 <= 0;
            wr_ptr_gray_sync2 <= 0;
        end
        else begin
            wr_ptr_gray_sync1 <= wr_ptr_gray;
            wr_ptr_gray_sync2 <= wr_ptr_gray_sync1;
        end
    end
    
    // 将同步后的格雷码指针转换为二进制
    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n)
            wr_ptr_bin_sync <= 0;
        else
            wr_ptr_bin_sync <= gray2bin(wr_ptr_gray_sync2);
    end
    
    // 空标志生成
    assign empty = (rd_ptr_gray == wr_ptr_gray_sync2);
    
endmodule