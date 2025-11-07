`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/11/05 10:24:41
// Design Name: 
// Module Name: simu
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


module simu(

    );
    reg clk,rst_n,set_out;
    wire led;
    
    naozhong inst(clk,rst_n,set_out,led);
    initial begin
    clk=0;rst_n=0;
    #20 rst_n=1;
    #100 set_out = 1;
    #10 set_out = 0;
    end
    always#5 clk=~clk;
endmodule
