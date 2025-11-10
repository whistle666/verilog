`timescale 1ns / 1ps


module uart_rx_3bytes(
    input clk,
    input rst_n,
    input rx,
    output reg[23:0]rx_data_3bytes,
    output valid
);
wire done;
reg [7:0]rx_data;

parameter FREQ=100_000_000,BAUD_RATE=115200;
parameter CNT_MAX=FREQ/BAUD_RATE;
parameter IDLE=0,START=1,RX=2;

reg [1:0]cs,ns;
reg [16:0] cnt;
reg reg1,reg2;
reg falling_edge;
reg en;
reg [3:0]bit_cnt;
reg [1:0]data_cnt;
//cnt
always@(posedge clk)begin
   if(~rst_n) cnt <= 0;
   else if(en) begin
       if(cnt == CNT_MAX - 1) cnt <= 0;
       else cnt <= cnt + 1;
       end
   else cnt <= 0 ;  
end

//reg1,reg2
always@(posedge clk)begin
   if(~rst_n) begin reg1<=1'b1;reg2<=1'b1;end
   else begin reg1<=rx;reg2<=reg1;end
end

//falling_edge
always@(posedge clk)begin
   if(~rst_n) falling_edge <= 0;
   else if(~reg1 && reg2)falling_edge <= 1;
   else falling_edge <= 0;
end

always@(posedge clk)begin
   if(!rst_n) en <= 0;
   else if(falling_edge) en <= 1;
   else if(bit_cnt >8 && cnt == CNT_MAX/2 - 1) en <= 0;
end

//state
always@(posedge clk)begin
   if(~rst_n) cs = IDLE;
   else cs = ns;
   end
 
always@(*)begin
   if(~rst_n) ns = IDLE;
   else case(cs)
       IDLE:begin
           if(falling_edge) ns = START;
           else ns = IDLE;
           end
       START:begin
           if(cnt == CNT_MAX/2 - 1) ns = RX;
           else ns = START;
       end
       RX:begin
           if(bit_cnt == 9 && cnt == CNT_MAX/2 - 1 ) ns = IDLE;
           else ns =RX;
       end
       default:ns = IDLE;
       endcase
end

always@(posedge clk)begin
   if(~rst_n) begin
       bit_cnt <= 0;
   end
   else case(cs)
       IDLE:bit_cnt <= 0;
       START:begin bit_cnt <= 0;end
       RX:begin
           if(cnt == CNT_MAX/2 -1)begin
               if(bit_cnt < 9) begin
                   rx_data <= {reg2,rx_data[7:1]};
                   bit_cnt <= bit_cnt + 1;
                   end
               else begin bit_cnt <= 0;end
           end
       end
       default:bit_cnt <= 0;
   endcase

end
assign done = bit_cnt == 9 &&cnt == CNT_MAX/2 -1;
assign valid = data_cnt == 3;
always@(posedge clk)begin
    if(~rst_n) begin rx_data_3bytes = 0;data_cnt = 0;end
    else if(done) begin
        rx_data_3bytes = {rx_data,rx_data_3bytes[23:8]};
        data_cnt =data_cnt + 1;

        if(data_cnt == 3) begin ;data_cnt = 0;end
    end
end
endmodule
