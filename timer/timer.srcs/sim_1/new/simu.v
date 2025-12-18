`timescale 1ns / 1ps

module simu(

    );
reg clk,rst_n;
reg [7:0]data;
wire valid;
wire [23:0]set_data;
/*
e:8'h65
s:8'h73
t:8'h74
< >:3c 3e
: :3a
0: 8'h30
*/
fifo_read inst(clk,rst_n,data,set_data,valid);
initial begin
    clk=0;rst_n=0;
    #20 rst_n=1;
    #20 data=8'h73;//s
    #10 data=8'h65;//e
    #10 data=8'h74;//t
    #10 data=8'h3c;//<
    #10 data=8'h31;//1
    #10 data=8'h31;//1
    #10 data=8'h3a;//:
    #10 data=8'h31;//1
    #10 data=8'h32;//2
    #10 data=8'h3a;//:
    #10 data=8'h31;//1
    #10 data=8'h33;//3
    #10 data=8'h3e;
    #100 $finish;
end
always#5 clk=~clk;
endmodule
//module simu(

//    );
//reg clk,rst_n;
//reg [7:0]data;
//reg rd_en,wr_en;
//wire valid;
//wire [23:0]set_data;
//wire empty;
//wire [9:0]data_count;
///*
//e:8'h65
//s:8'h73
//t:8'h74
//< >:3c 3e
//: :3a
//0: 8'h30
//*/
//fifo_test inst(
//    .clk(clk),
//    .rst_n(rst_n),
//    .wdata(data),
//    .rd_en(rd_en),
//    .wr_en(wr_en),
//    .data(set_data),
//    .empty(empty),
//    .data_count(data_count)
//    );
//initial begin
//    clk=0;rst_n=0;
//    #20 rst_n=1;wr_en=1;rd_en=0;
//    #20 data=8'h73;//s
//    #10 data=8'h65;//e
//    #10 data=8'h74;//t
//    #10 data=8'h3c;//<
//    #10 data=8'h31;//1
//    #10 data=8'h31;//1
//    #10 data=8'h3a;//:
//    #10 data=8'h31;//1
//    #10 data=8'h32;//2
//    #10 data=8'h3a;//:
//    #10 data=8'h31;//1
//    #10 data=8'h33;//3
//    #10 data=8'h3e;
//    #20 data=8'h73;//s
//    #10 data=8'h65;//e
//    #10 data=8'h74;//t
//    #20 wr_en=0;rd_en=1;
    
//    #10000 $finish;
//end
//always#5 clk=~clk;
