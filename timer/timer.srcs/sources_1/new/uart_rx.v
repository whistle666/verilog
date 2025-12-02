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

