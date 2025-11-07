`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/05 10:22:19
// Design Name: 
// Module Name: naozhong
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


module naozhong(
 input clk,
 input rst_n,
 input set_out,
 output reg led
    );
    reg [26:0]clk_cnt;
    reg [2:0]led_cnt;
    reg en;
    always@(posedge clk)begin
    if(~rst_n) begin led = 0;clk_cnt = 0;en = 0;led_cnt = 0;end
    else if(set_out) begin led = 0;clk_cnt = 0;en = 1;led_cnt = 0; end
    else if(en) begin
        if(clk_cnt == 100_000_000/2 - 1) begin led =~led;led_cnt = led_cnt + 1;clk_cnt = clk_cnt + 1;end
        else if(clk_cnt == 100_000_000 - 1) clk_cnt = 0;
        else clk_cnt = clk_cnt + 1;
        if(led_cnt == 6) en = 0;
        end
end
endmodule
