module top(
    input clk,
    input rst_n,
    input rx,
   // input set,//通过uart发送s,f,m，闹钟，响铃
    input[2:0] load,
    input add,
    input dir,
    output wire led,
    output [6:0]seg,
    output reg[7:0]an
    );
parameter N=100000;   
wire [4:0] s;
wire [5:0] f;
wire [5:0] m;
wire [7:0]m_BCD,f_BCD,s_BCD;
reg [3:0]displaynum;
reg [20:0] cnt=0;
wire add_out;
//set
wire set_out;
wire [7:0]rx_data;
reg [23:0]set_data;
wire valid;
//设置的时间
wire [4:0]s_cmp;
wire [5:0]f_cmp,m_cmp;
naozhong inst(clk,rst_n,set_out,led);

ila_0 your_instance_name (
	.clk(clk), // input wire clk
	.probe0(set_out), // input wire [7:0]  probe0  
	.probe1(s_cmp), // input wire [7:0]  probe1 
	.probe2(f_cmp), // input wire [7:0]  probe2 
	.probe3(m_cmp) // input wire [7:0]  probe3
);


dejitter inst1(clk,~rst_n,add,add_out);//按键消抖
clock inst2(clk,rst_n,load,add_out,dir,s,f,m);
uart_rx inst3(clk,rst_n,rx,rx_data,valid);
binary_bcd inst4(m,m_BCD);
binary_bcd inst5(f,f_BCD);
binary_bcd inst6(s,s_BCD);
display inst7(displaynum,seg);
//rx_data

always@(posedge clk)begin
    if(~rst_n) set_data = 0;
    else if(valid)set_data = {rx_data,set_data[23:8]};
end
assign s_cmp = set_data[7:0];
assign f_cmp = set_data[15:8];
assign m_cmp = set_data[23:16];
//比较
assign set_out = (s_cmp == s && f_cmp == f && m_cmp == m);

//分频
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
    else displaynum=4'b1111;
end
endmodule
