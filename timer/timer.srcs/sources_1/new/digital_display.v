module digital_display(
    input clk,
    input rst_n,
    input [31:0]data, //一个8位数（<100）需要2个数码管显示
    output reg [7:0]an,
    output [6:0]seg
    );
parameter N=100000;
reg [20:0]cnt=0; 
wire [7:0]data0_BCD,data1_BCD,data2_BCD,data3_BCD;
wire [7:0]data0,data1,data2,data3;
reg [3:0]displaynum;

assign {data3,data2,data1,data0}=data;
//分频1khz
always@(posedge clk)
begin
    if(~rst_n) cnt<=0;
    else if(cnt==N-1) cnt<=0;
    else cnt<=cnt+1;
end
//an
always@(posedge clk)
begin
if(~rst_n) an=8'hFE;
else if(cnt==N-1) an={an[6:0],an[7]};//1khz显示
end
//seg
always@(posedge clk)
begin
    if(~an[0])      displaynum=data0_BCD[3:0];
    else if(~an[1]) displaynum=data0_BCD[7:4];
    else if(~an[2]) displaynum=data1_BCD[3:0];
    else if(~an[3]) displaynum=data1_BCD[7:4];
    else if(~an[4]) displaynum=data2_BCD[3:0];
    else if(~an[5]) displaynum=data2_BCD[7:4];
    else if(~an[6]) displaynum=data3_BCD[3:0];
    else if(~an[7]) displaynum=data3_BCD[7:4];
    else displaynum=4'b1111;
end
binary_bcd inst1(data0,data0_BCD);
binary_bcd inst2(data1,data1_BCD);
binary_bcd inst3(data2,data2_BCD);
binary_bcd inst4(data3,data3_BCD);
display inst5(displaynum,seg);
endmodule
