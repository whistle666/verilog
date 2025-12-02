//module top(
//    input clk,
//    input rst_n,
//    input rx,
//   // input set,//通过uart发送s,f,m，闹钟，响铃
//    input set,//闹钟
//    input load,//设置时间
//    //input add,
//    input dir,
//    output wire led,
//    output [6:0]seg,
//    output reg[7:0]an,
//    output aud,
//    output sd
//    );
//parameter N=100000;   
//wire [4:0] s;
//wire [5:0] f;
//wire [5:0] m;
//wire [7:0]m_BCD,f_BCD,s_BCD;
//reg [3:0]displaynum;
//reg [20:0] cnt=0;
//wire add_out;
////set
//wire set_out;
//wire [7:0]rx_data;
//reg [23:0]set_data;
//wire [23:0]load_data;
//wire valid;
//wire [4:0]s_cmp;
//wire [5:0]f_cmp,m_cmp;


////设置的时间
////wire [4:0]s_cmp;
////wire [5:0]f_cmp,m_cmp;
//naozhong inst(clk,rst_n,set_out,led,aud,sd);
///*
//ila_0 your_instance_name (
//	.clk(clk), // input wire clk
//	.probe0(set_out), // input wire [7:0]  probe0  
//	.probe1(s_cmp), // input wire [7:0]  probe1 
//	.probe2(f_cmp), // input wire [7:0]  probe2 
//	.probe3(m_cmp) // input wire [7:0]  probe3
//);
//*/

////dejitter inst1(clk,rst_n,add,add_out);//按键消抖

//clock inst2(clk,rst_n,load,load_data,dir,s,f,m);
//uart_rx inst3(clk,rst_n,rx,rx_data,valid);

//binary_bcd inst4(m,m_BCD);
//binary_bcd inst5(f,f_BCD);
//binary_bcd inst6(s,s_BCD);
//display inst7(displaynum,seg);
////rx_data

//always@(posedge clk)begin
//    if(~rst_n) set_data = 0;
//    else if(valid)set_data = {rx_data,set_data[23:8]};
//end

////always@(posedge clk)begin
////    if(!rst_n) begin load_data <= 0;set_data <= 0;end
////    else begin
////        if(load) load_data <= set_data;
////        if(set) begin
////            s_cmp <= set_data[7:0];
////            f_cmp <= set_data[15:8];
////            m_cmp <= set_data[23:16];
////        end
////    end
////end

//assign load_data = load ? set_data : 0;
//assign s_cmp = set ? set_data[7:0] : 0;
//assign f_cmp = set ? set_data[15:8] : 0;
//assign m_cmp = set ? set_data[23:16] :0;

////比较
//assign set_out = (s_cmp == s && f_cmp == f && m_cmp == m);

////分频
//always@(posedge clk)
//begin
//    if(~rst_n) cnt<=0;
//    else if(cnt==N-1) cnt<=0;
//    else cnt<=cnt+1;
//end
////an
//always@(posedge clk)
//if(rst_n==1'b0) an=8'hFE;
//else if(cnt==N-1) an={an[6:0],an[7]};//1khz显示
////seg
//always@(posedge clk)
//begin
//    if(~an[0]) displaynum=m_BCD[3:0];
//    else if(~an[1]) displaynum=m_BCD[7:4];
//    else if(~an[2]) displaynum=f_BCD[3:0];
//    else if(~an[3]) displaynum=f_BCD[7:4];
//    else if(~an[4]) displaynum=s_BCD[3:0];
//    else if(~an[5]) displaynum=s_BCD[7:4];
//    else displaynum=4'b1111;
//end
//endmodule

module top(
    input clk,
    input rst_n,
    input rx,
   // input set,//通过uart发送s,f,m，闹钟，响铃
    input set,//闹钟
    input load,//设置时间
    //input add,
    input dir,
    output wire led,
    output [6:0]seg,
    output reg[7:0]an,
    output empty,
    output aud,
    output sd
    );
parameter N=100000;   
wire [4:0] s;
wire [5:0] f;
wire [5:0] m;
wire [7:0]m_BCD,f_BCD,s_BCD,dout_BCD;
reg [3:0]displaynum;
reg [20:0] cnt=0;
//set
wire set_out;
wire [7:0]rx_data;
wire [23:0]set_data_r;
reg [23:0]set_data;
wire [23:0]load_data;
wire rx_valid,set_valid;
wire [4:0]s_cmp;
wire [5:0]f_cmp,m_cmp;
wire full;
wire [9:0]data_count;
wire [7:0]dout;
reg clk_1hz=0;
reg [26:0]clk_cnt=0;
reg [1:0]set_cnt;
wire rd_en;
assign rd_en =load || set;

//clk_1hz
always@(posedge clk)begin
    if(!rst_n) begin clk_1hz =0;clk_cnt = 0;end
    else if(clk_cnt == 100_000_000/2 - 1) begin clk_1hz = !clk_1hz;clk_cnt = 0;end
    else clk_cnt =clk_cnt +1 ;
end

always@(posedge clk)begin
    if(!rst_n)set_data <= 0;
    else if(set_valid) set_data <= set_data_r;
end

assign load_data = load ? set_data : 0; //set_data 改为了set_data_r
assign m_cmp = set ? set_data[7:0] : 0;
assign f_cmp = set ? set_data[15:8] : 0;
assign s_cmp = set ? set_data[23:16] :0;
//比较
assign set_out = (s_cmp == s && f_cmp == f && m_cmp == m);
//分频an
always@(posedge clk)
begin
    if(~rst_n) cnt<=0;
    else if(cnt==N-1) cnt<=0;
    else cnt<=cnt+1;
end
//an
always@(posedge clk)
if(rst_n==1'b0) an=8'hFE;
else if(cnt==N-1) an={an[6:0],an[7]};//1khz显示
//seg
always@(posedge clk)
begin
    if(~an[0]) displaynum=m_BCD[3:0];
    else if(~an[1]) displaynum=m_BCD[7:4];
    else if(~an[2]) displaynum=f_BCD[3:0];
    else if(~an[3]) displaynum=f_BCD[7:4];
    else if(~an[4]) displaynum=s_BCD[3:0];
    else if(~an[5]) displaynum=s_BCD[7:4];
    else if(~an[6]) displaynum=dout_BCD[3:0];
    else if(~an[7]) displaynum=dout_BCD[7:4];
    else displaynum=4'b1111;
end

ila_0 your_instance_name (
	.clk(clk), // input wire clk
	.probe0(set_data), // input wire [23:0]  probe0  
	.probe1(set_data_r), // input wire [23:0]  probe1
	.probe2(dout)
);
fifo_read inst(clk_1hz,rst_n,dout,set_data_r,set_valid);//clk
naozhong inst1(clk,rst_n,set_out,led,aud,sd);
//fifo_generator_0 inst_fifo (//异步fifo
//  .rst(~rst_n),        // input wire rst
//  .wr_clk(clk),  // input wire wr_clk
//  .rd_clk(clk_10hz),  // input wire rd_clk
//  .din(rx_data),        // input wire [7 : 0] din
//  .wr_en(rx_valid),    // input wire wr_en
//  .rd_en(rd_en),    // input wire rd_en
//  .dout(dout),      // output wire [7 : 0] dout
//  .full(full),      // output wire full
//  .empty(empty),    // output wire empty
//  .wr_data_count(data_count)
//);

//sync_fifo inst_name(clk,rst_n,rx_valid,rx_data,rd_en,dout,full,empty,count);
async_fifo inst_fifo(clk,rst_n,rx_valid,rx_data,clk_1hz,rst_n,rd_en,dout,full,empty);   
  
////////////////////////////////////////////////////////////////////////////////////////////////////
clock inst2(clk,rst_n,load,load_data,dir,s,f,m);
uart_rx inst3(clk,rst_n,rx,rx_data,rx_valid);

binary_bcd inst4(m,m_BCD);
binary_bcd inst5(f,f_BCD);
binary_bcd inst6(s,s_BCD);
display inst7(displaynum,seg);
/////////////////////////////////////////////////////////////////////////////////////////////////////
binary_bcd inst8(dout,dout_BCD);
endmodule
