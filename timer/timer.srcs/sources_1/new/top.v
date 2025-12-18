module top(
    input clk,
    input rst_n,
    input rx,
    input set,//ÄÖÖÓ
    input load,//ÉèÖÃÊ±¼ä
    input btn,
    output wire clock_led,
    output [6:0]seg,
    output [7:0]an,
    output empty,
    output clock_aud,
    output aud_sd
    );
parameter N=100000;   
wire [7:0] s,s_cmp;//4£º0
wire [7:0] f,f_cmp;//5£º0
wire [7:0] m,m_cmp;//5£º0
wire [7:0]rx_data;
wire [23:0]set_data_r;
reg [23:0]set_data;
wire [23:0]load_data;
wire rx_valid,set_valid;
reg clock_valid;
wire full;
wire [7:0]dout;
reg clk_10hz=0;
reg [26:0]clk_cnt=0;
wire rd_en;
wire [31:0]display_data;
wire en;
//clk_10hz
always@(posedge clk)begin
    if(!rst_n) begin clk_10hz =0;clk_cnt = 0;end
    else if(clk_cnt == 100_000_00/2 - 1) begin clk_10hz = !clk_10hz;clk_cnt = 0;end
    else clk_cnt =clk_cnt +1 ;
end

always@(posedge clk)begin
    if(!rst_n)set_data <= 0;
    else if(set_valid) set_data <= set_data_r;
end
//assign clock_valid = (s_cmp == s && f_cmp == f && m_cmp == m)|| en;
always@(posedge clk)begin
    if(~rst_n)clock_valid <= 0;
    else if(set)begin 
        if((s_cmp == s && f_cmp == f && m_cmp == m)) clock_valid <=1;
        else clock_valid <= clock_valid;
        end
    else if(en) clock_valid <= 1; 
    else clock_valid <=0;
    end

assign load_data = load ? set_data : 0; 
assign m_cmp = set ? set_data[7:0] : 8'hff;
assign f_cmp = set ? set_data[15:8] : 8'hff;
assign s_cmp = set ? set_data[23:16] :8'hff;

assign rd_en =load || set;

assign display_data = {dout,s,f,m};

fifo_read inst1(
    .clk(clk_10hz),
    .rst_n(rst_n),
    .fifo_data(dout),
    .data(set_data_r),
    .valid(set_valid)
    );
naozhong inst2(
    .clk(clk),
    .rst_n(rst_n),
    .valid(clock_valid),
    .led(clock_led),
    .aud(clock_aud),
    .sd(aud_sd)
    );
async_fifo inst3(
    .wr_clk(clk),
    .wr_rst_n(rst_n),
    .wr_en(rx_valid),
    .din(rx_data),
    .rd_clk(clk_10hz),
    .rd_rst_n(rst_n),
    .rd_en(rd_en),
    .dout(dout),
    .full(full),
    .empty(empty)
    );   
clock inst4(
    .clk(clk),
    .rst_n(rst_n),
    .load(load),
    .load_data(load_data),
    .btn(btn),
    .s(s),
    .f(f),
    .m(m),
    .en(en)
    );
uart_rx inst5(
    .sys_clk(clk),
    .sys_rst_n(rst_n),
    .rx(rx),
    .po_data(rx_data),
    .po_flag(rx_valid)
    );
digital_display inst6(
    .clk(clk),
    .rst_n(rst_n),
    .data(display_data), //32bits
    .an(an),
    .seg(seg)
    );
endmodule
