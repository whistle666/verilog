

module fifo_test(
    input clk,
    input rst_n,
    input [7:0]wdata,
    input rd_en,
    input wr_en,
    output reg[23:0]data,
    output empty,
    output [9:0]data_count
    );
    wire [7:0]dout;
    wire valid;
    wire [23:0] data_r;
    reg rd_clk;
    reg [10:0]clk_cnt;
    wire full;

sync_fifo inst1(clk,rst_n,wr_en,wdata,rd_en,dout,full,empty);
fifo_read inst(clk,rst_n,dout,data_r,valid);

//always@(posedge clk)begin
//    if(!rst_n) begin rd_clk =0;clk_cnt = 0;end
//    else if(clk_cnt == 10 - 1) begin rd_clk = !rd_clk;clk_cnt = 0;end
//    else clk_cnt =clk_cnt +1 ;
//end 
   
always@(posedge clk)begin
    if(!rst_n)data <= 0;
    else if(valid) data <= data_r;
    else data <= data;
end
endmodule
