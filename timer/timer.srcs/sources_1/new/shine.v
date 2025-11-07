`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/04 15:40:40
// Design Name: 
// Module Name: shine
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shine(
    input clk,
    input rst_n,
    input start,
    output reg out
    );
    reg [27:0] cnt;
    reg en;
    reg [2:0] bit_cnt;
    always@(posedge clk)begin
        if(~rst_n) en = 0;
        else if(start) en = 1;
        else if(bit_cnt==5 && cnt == 100_000_000/2 - 1) en = 0;
    end
    always@(posedge clk)begin
        if(~rst_n) begin cnt = 0;bit_cnt = 0;end
        else if(en && cnt == 100_000_000 - 1)begin cnt = 0;bit_cnt = bit_cnt + 1;end
        else if(en) cnt = cnt + 1;
    end
    always@(posedge clk)begin
        if(~rst_n) out = 0;
        else if(en && cnt == 100_000_000/2 - 1)out = ~out;  
    end
endmodule
