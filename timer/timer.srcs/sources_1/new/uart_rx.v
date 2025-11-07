module uart_rx
#(
parameter UART_BPS = 'd115200, //串口波特率
parameter CLK_FREQ = 'd100_000_000 //时钟频率
)
(
input wire sys_clk , //系统时钟50MHz
input wire sys_rst_n , //全局复位
input wire rx , //串口接收数据
output reg [7:0] po_data,  //串转并后的8bit数据
output reg po_flag //串转并后的数据有效标志信号
);

localparam BAUD_CNT_MAX = CLK_FREQ/UART_BPS ;
reg rx_reg1 ;
reg rx_reg2 ;
reg rx_reg3 ;
reg start_nedge ;
reg work_en ;
reg [12:0] baud_cnt ;
reg bit_flag ;
reg [3:0] bit_cnt ;
reg [7:0] rx_data ;
reg rx_flag ;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
rx_reg1 <= 1'b1;
else
rx_reg1 <= rx;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
rx_reg2 <= 1'b1;
else
rx_reg2 <= rx_reg1;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
rx_reg3 <= 1'b1;
else
rx_reg3 <= rx_reg2;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
start_nedge <= 1'b0;
else if((~rx_reg2) && (rx_reg3))
start_nedge <= 1'b1;
else
start_nedge <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
work_en <= 1'b0;
else if(start_nedge == 1'b1)
work_en <= 1'b1;
else if((bit_cnt == 4'd8) && (bit_flag == 1'b1))
work_en <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
baud_cnt <= 13'b0;
else if((baud_cnt == BAUD_CNT_MAX - 1) &&(work_en == 1'b1))//
baud_cnt <= 13'b0;
else if(work_en == 1'b1)
baud_cnt <= baud_cnt + 1'b1;
else baud_cnt<=13'b0;

always@(posedge sys_clk or negedge sys_rst_n)
if(sys_rst_n == 1'b0)
bit_flag <= 1'b0;
else if(baud_cnt == BAUD_CNT_MAX/2 - 1)
bit_flag <= 1'b1;
else
bit_flag <= 1'b0;

always@(posedge sys_clk or negedge sys_rst_n)
 if(sys_rst_n == 1'b0)
 bit_cnt <= 4'b0;
 else if((bit_cnt == 4'd8) && (bit_flag == 1'b1))
 bit_cnt <= 4'b0;
 else if(bit_flag ==1'b1)
 bit_cnt <= bit_cnt + 1'b1;

 always@(posedge sys_clk or negedge sys_rst_n)
 if(sys_rst_n == 1'b0)
 rx_data <= 8'b0;
 else if((bit_cnt >= 4'd1)&&(bit_cnt <= 4'd8)&&(bit_flag == 1'b1))
 rx_data <= {rx_reg3, rx_data[7:1]};

 always@(posedge sys_clk or negedge sys_rst_n)
 if(sys_rst_n == 1'b0)
 rx_flag <= 1'b0;
 else if((bit_cnt == 4'd8) && (bit_flag == 1'b1))
 rx_flag <= 1'b1;
 else
 rx_flag <= 1'b0;

 always@(posedge sys_clk or negedge sys_rst_n)
 if(sys_rst_n == 1'b0)
 po_data <= 8'b0;
 else if(rx_flag == 1'b1)
 po_data <= rx_data;

 always@(posedge sys_clk or negedge sys_rst_n)
 if(sys_rst_n == 1'b0)
 po_flag <= 1'b0;
 else
 po_flag <= rx_flag;

 endmodule

//module uart_rx(
//    input clk,
//    input rst_n,
//    input rx, 
//    output reg[7:0]rx_data,
//    output reg valid
//);
//parameter FREQ=100_000_000,BAUD_RATE=115200;
//parameter CNT_MAX=FREQ/BAUD_RATE;
//parameter IDLE=0,START=1,RX=2;

//reg [1:0]cs,ns;
//reg [16:0] cnt;
//reg reg1,reg2;
//reg falling_edge;
//reg en;
//reg [3:0]bit_cnt;
////cnt
//always@(posedge clk)begin
//    if(~rst_n) cnt <= 0;
//    else if(en) begin
//        if(cnt == CNT_MAX - 1) cnt <= 0;
//        else cnt <= cnt + 1;
//        end
//    else cnt <= 0 ;  
//end

////reg1,reg2
//always@(posedge clk)begin
//    if(~rst_n) begin reg1<=1'b1;reg2<=1'b1;end
//    else begin reg1<=rx;reg2<=reg1;end
//end

////falling_edge
//always@(posedge clk)begin
//    if(~rst_n) falling_edge <= 0;
//    else if(~reg1 && reg2)falling_edge <= 1;
//    else falling_edge <= 0;
//end

//always@(posedge clk)begin
//    if(!rst_n) en <= 0;
//    else if(falling_edge)en <= 1;
//    else if(bit_cnt >=8 && cnt == CNT_MAX/2 - 1) en <= 0;
//end
////state
//always@(posedge clk)begin
//    if(~rst_n) cs <= IDLE;
//    else cs <= ns;
//    end
////状太转移    
//always@(*)begin
//    if(~rst_n) ns = IDLE;
//    else case(cs)
//        IDLE:begin
//            if(falling_edge) ns = START;
//            else ns = IDLE;
//            end
//        START:begin
//            if(cnt == CNT_MAX/2 - 1) ns = RX;
//            else ns = START;
//        end
//        RX:begin
//            if(bit_cnt == 8 && cnt == CNT_MAX/2 - 1 ) ns = IDLE;
//            else ns =RX;
//        end
//        default:ns = IDLE;
//        endcase
//end

//always@(posedge clk)begin
//    if(~rst_n) begin
//        bit_cnt <= 0;
//        valid <=0;
//    end
//    else case(cs)
//        IDLE:valid <= 0;
//        START:if(cnt == CNT_MAX/2 -1)bit_cnt <= 0;
//        RX:begin
//            if(cnt == CNT_MAX/2 -1)begin
//                if(bit_cnt < 8) begin
//                    rx_data <= {reg2,rx_data[7:1]};
//                    bit_cnt <= bit_cnt + 1;
//                    end
//                else valid <=1;
//            end
//        end
//        default:valid <=0 ;
//    endcase

//end
//endmodule
