module sync_fifo #(
    parameter DATA_WIDTH = 8,  // ����λ��
    parameter FIFO_DEPTH = 1024  // FIFO ���?
)(
    input  wire                     clk,      // ʱ��
    input  wire                     rst_n,    // �첽��λ������Ч��
    input  wire                     wr_en,    // дʹ��
    input  wire [DATA_WIDTH-1:0]    wr_data,  // д����
    input  wire                     rd_en,    // ��ʹ��
    output reg  [DATA_WIDTH-1:0]    rd_data,  // ������
    output wire                     full,     // FIFO ����־
    output wire                     empty,     // FIFO �ձ�־
    output wire [9:0]count
);

    // �ڲ��źŶ���
    reg [DATA_WIDTH-1:0] fifo_mem [0:FIFO_DEPTH-1];  // FIFO �洢����
    reg [$clog2(FIFO_DEPTH)-1:0] wr_ptr;             // дָ��
    reg [$clog2(FIFO_DEPTH)-1:0] rd_ptr;             // ��ָ��
    reg [$clog2(FIFO_DEPTH):0]   count_r;              // ���ݼ�����

    // ������־����
    assign full  = (count == FIFO_DEPTH);
    assign empty = (count == 0);
    assign count = count_r;
    // д����
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            wr_ptr <= 0;
        end else if (wr_en && !full) begin
            fifo_mem[wr_ptr] <= wr_data;
            wr_ptr <= wr_ptr + 1;
        end
    end

    // ������
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rd_ptr <= 0;
            rd_data <= 0;
        end else if (rd_en && !empty) begin
            rd_data <= fifo_mem[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end
    end

    // ���ݼ���������
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count_r <= 0;
        end else begin
            case ({wr_en, rd_en})
                2'b00: count_r <= count_r;                    // �޲���
                2'b01: count_r <= (empty) ? 0 : count_r - 1; // ֻ��
                2'b10: count_r <= (full) ? count_r : count_r + 1; // ֻд
                2'b11: count_r <= count_r;                    // ͬʱ��д����������
            endcase
        end
    end

endmodule

module async_fifo #(
    parameter DATA_WIDTH = 8,   
    parameter FIFO_DEPTH = 128   
)(
    
    input  wire                     wr_clk,   
    input  wire                     wr_rst_n,  
    input  wire                     wr_en,    
    input  wire [DATA_WIDTH-1:0]    din,       
    
   
    input  wire                     rd_clk,   
    input  wire                     rd_rst_n, 
    input  wire                     rd_en,     
    output reg  [DATA_WIDTH-1:0]    dout,      
    
   
    output wire                     full,      
    output wire                     empty      
);

   
    localparam ADDR_WIDTH = $clog2(FIFO_DEPTH);
    
  
    reg [DATA_WIDTH-1:0] mem [0:FIFO_DEPTH-1];
    
  
    reg [ADDR_WIDTH:0] wr_ptr_bin;  
    reg [ADDR_WIDTH:0] wr_ptr_gray; 
    wire [ADDR_WIDTH:0] wr_ptr_gray_next;
    
   
    reg [ADDR_WIDTH:0] rd_ptr_bin;  // �����ƶ�ָ�루��1λ�������жϣ�
    reg [ADDR_WIDTH:0] rd_ptr_gray; // �������ָ��?
    wire [ADDR_WIDTH:0] rd_ptr_gray_next;
    
    // ͬ�����ָ��?
    reg [ADDR_WIDTH:0] wr_ptr_gray_sync1, wr_ptr_gray_sync2;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync1, rd_ptr_gray_sync2;
    
    // ͬ����Ķ�����ָ�루���ڱȽϣ�?
    reg [ADDR_WIDTH:0] wr_ptr_bin_sync;
    reg [ADDR_WIDTH:0] rd_ptr_bin_sync;
    
    // ������ת�����뺯��
    function [ADDR_WIDTH:0] bin2gray;
        input [ADDR_WIDTH:0] bin;
        bin2gray = bin ^ (bin >> 1);
    endfunction
    
    // ������ת�����ƺ���
    function [ADDR_WIDTH:0] gray2bin;
        input [ADDR_WIDTH:0] gray;
        integer i;
        begin
            gray2bin[ADDR_WIDTH] = gray[ADDR_WIDTH];
            for (i = ADDR_WIDTH-1; i >= 0; i = i-1)
                gray2bin[i] = gray2bin[i+1] ^ gray[i];
        end
    endfunction
    
    // ===================== дʱ�����߼� =====================
    
    // дָ�����?
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n) begin
            wr_ptr_bin <= 0;
            wr_ptr_gray <= 0;
        end
        else if (wr_en && !full) begin
            // д�����ݵ��洢��
            mem[wr_ptr_bin[ADDR_WIDTH-1:0]] <= din;
            
            // ���¶�����дָ��
            wr_ptr_bin <= wr_ptr_bin + 1;
            
            // ���¸�����дָ��
            wr_ptr_gray <= wr_ptr_gray_next;
        end
    end
    
    // ������һ��������дָ��
    assign wr_ptr_gray_next = bin2gray(wr_ptr_bin + 1);
    
    // ͬ����ָ�뵽дʱ��������ͬ������ 读指针同步到写时钟域(gray)
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
    
    // ��ͬ����ĸ�����ָ��ת��Ϊ������?
    always @(posedge wr_clk or negedge wr_rst_n) begin
        if (!wr_rst_n)
            rd_ptr_bin_sync <= 0;
        else
            rd_ptr_bin_sync <= gray2bin(rd_ptr_gray_sync2);  //读指针同步到二进�?(bin)
    end
    
    // ����־����
    assign full = (wr_ptr_gray_next == {~rd_ptr_gray_sync2[ADDR_WIDTH:ADDR_WIDTH-1], 
                                        rd_ptr_gray_sync2[ADDR_WIDTH-2:0]});
    
    // ===================== ��ʱ�����߼� =====================
    
    // ��ָ�����?
    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n) begin
            rd_ptr_bin <= 0;
            rd_ptr_gray <= 0;
            dout <= 0;
        end
        else if (rd_en && !empty) begin
            // �Ӵ洢����ȡ����
            dout <= mem[rd_ptr_bin[ADDR_WIDTH-1:0]];
            
            // ���¶����ƶ�ָ��
            rd_ptr_bin <= rd_ptr_bin + 1;
            
            // ���¸������ָ��?
            rd_ptr_gray <= rd_ptr_gray_next;
        end
    end
    
    // ������һ���������ָ��?
    assign rd_ptr_gray_next = bin2gray(rd_ptr_bin + 1);
    
    // ͬ��дָ�뵽��ʱ��������ͬ������
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
    
    // ��ͬ����ĸ�����ָ��ת��Ϊ������?
    always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n)
            wr_ptr_bin_sync <= 0;
        else
            wr_ptr_bin_sync <= gray2bin(wr_ptr_gray_sync2);
    end
    
    // �ձ�־����
    assign empty = (rd_ptr_gray == wr_ptr_gray_sync2);
    
endmodule