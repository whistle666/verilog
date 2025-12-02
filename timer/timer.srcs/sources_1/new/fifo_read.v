/*
e:8'h65
s:8'h73
t:8'h74
< >:3c 3e
: :3a
0: 8'h30

*/
//set<11:12:13>

module fifo_read(
    input clk,
    input rst_n,
    input [7:0]fifo_data,
    output [23:0]set_data,
    output reg valid
    );
    reg [3:0] cs,ns;
    reg [23:0]data_r;
    assign set_data = valid ? data_r : 0;
//    always@(posedge clk)begin
//        if(~rst_n) set_data <=0;
//        else if(valid) set_data <= data_r;
//        else set_data <= set_data;
//    end
    always@(posedge clk)begin
        if(~rst_n) cs <= 0;
        else cs <= ns;
    end
    
    always@(*)begin
        if(!rst_n) ns = 0;
        else begin
        case(cs)
        4'h0: begin 
            if(fifo_data == 8'h73) ns = 4'h1;   
            else ns = 4'h0;
            end
        4'h1: begin 
                if(fifo_data == 8'h65) ns = 4'h2;   
                else ns = 4'h0;
                end
        4'h2: begin 
                if(fifo_data == 8'h74) ns = 4'h3;   
                else ns = 4'h0;
                end
        4'h3: begin 
                if(fifo_data == 8'h3c) ns = 4'h4;   
                else ns = 4'h0;
                end
        4'h4: begin //数字
                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
                    ns = 4'h5;
                    //data_r[23:16]=(fifo_data - 8'h30)*10;
                    end
                else ns = 4'h0;
                end
         4'h5: begin 
                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
                    //data_r[23:16]<=data_r[23:16] + fifo_data - 8'h30;
                    ns = 4'h6;   
                    end
                else ns = 4'h0;
                end
         4'h6:begin //:
                if(fifo_data == 8'h3a) ns =4'h7;
                else ns =4'h0;
                end
         4'h7:begin//数字
                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin
                    //data_r[15:8]=(fifo_data - 8'h30)*10;
                    ns = 4'h8;
                    end
                else ns = 4'h0; 
                end
         4'h8: begin 
                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
                    //data_r[15:8]<=data_r[15:8] + fifo_data - 8'h30;
                    ns = 4'h9;   
                    end
                else ns = 4'h0;
                end 
         4'h9:begin //:
                if(fifo_data == 8'h3a) ns =4'ha;
                else ns =4'h0;
                end 
         4'ha:begin//数字
                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin
                    //data_r[7:0]<=(fifo_data - 8'h30)*10;
                    ns = 4'hb;
                    end
                else ns = 4'h0; 
                end
         4'hb: begin 
                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
                    //data_r[7:0]<=data_r[7:0] + fifo_data - 8'h30;
                    ns = 4'hc;   
                    end
                else ns = 4'h0;
                end 
         4'hc:ns = 4'h0; 
         default:ns =4'h0; 
        endcase
        end
    end
    
    always@(posedge clk)begin
        if(!rst_n) begin data_r<=0;valid <=0; end
        else begin
        case(cs)
        4'h0: begin 
            valid <=0;
            data_r <= 0;
            ////////////////////////////////////////////////////////////////
            end
        4'h1: begin 
            valid <=0;
            end
        4'h2: begin 
            valid <=0;
            end
        4'h3: begin 
            valid <=0;
            end
        4'h4:if(fifo_data<=8'h39 && fifo_data>=8'h30) data_r[23:16]<=(fifo_data - 8'h30)*10;        
        4'h5:if(fifo_data<=8'h39 && fifo_data>=8'h30) data_r[23:16]<=data_r[23:16] + fifo_data - 8'h30;     
        4'h6:begin 
            valid <=0;
            end
         4'h7:if(fifo_data<=8'h39 && fifo_data>=8'h30) data_r[15:8]<=(fifo_data - 8'h30)*10;
         4'h8:if(fifo_data<=8'h39 && fifo_data>=8'h30) data_r[15:8]<=data_r[15:8] + fifo_data - 8'h30;       
         4'h9:begin 
            valid <=0;
            end
         4'ha:if(fifo_data<=8'h39 && fifo_data>=8'h30) data_r[7:0]<=(fifo_data - 8'h30)*10;         
         4'hb:if(fifo_data<=8'h39 && fifo_data>=8'h30) data_r[7:0]<=data_r[7:0] + fifo_data - 8'h30;        
         4'hc:begin
                if(fifo_data == 8'h3e) begin valid <= 1;end/////////////////////
                else valid <= 0;
                end
         default:begin valid <=0;data_r<=0;end             
        endcase    
    end
    end
//    always@(posedge clk)begin
//        if(!rst_n) begin ns <= 0;data_r<=0;valid <=0;end
//        else begin
//        case(cs)
//        4'h0: begin 
//                if(fifo_data == 8'h73) ns <= 4'h1;   
//                else ns <= 4'h0;
//                data_r<=0;
//                valid <=0;
//                end
//        4'h1: begin 
//                if(fifo_data == 8'h65) ns <= 4'h2;   
//                else ns <= 4'h0;
//                end
//        4'h2: begin 
//                if(fifo_data == 8'h74) ns <= 4'h3;   
//                else ns <= 4'h0;
//                end
//        4'h3: begin 
//                if(fifo_data == 8'h3c) ns <= 4'h4;   
//                else ns <= 4'h0;
//                end
//        4'h4: begin //数字
//                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
//                    ns <= 4'h5;
//                    data_r[23:16]<=(fifo_data - 8'h30)*10;
//                    end
//                else ns <= 4'h0;
//                end
//         4'h5: begin 
//                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
//                    data_r[23:16]<=data_r[23:16] + fifo_data - 8'h30;
//                    ns <= 4'h6;   
//                    end
//                else ns <= 4'h0;
//                end
//         4'h6:begin //:
//                if(fifo_data == 8'h3a) ns <=4'h7;
//                else ns <=4'h0;
//                end
//         4'h7:begin//数字
//                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin
//                    data_r[15:8]<=(fifo_data - 8'h30)*10;
//                    ns <= 4'h8;
//                    end
//                else ns <= 4'h0; 
//                end
//         4'h8: begin 
//                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
//                    data_r[15:8]<=data_r[15:8] + fifo_data - 8'h30;
//                    ns <= 4'h9;   
//                    end
//                else ns <= 4'h0;
//                end 
//         4'h9:begin //:
//                if(fifo_data == 8'h3a) ns <=4'ha;
//                else ns <=4'h0;
//                end 
//         4'ha:begin//数字
//                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin
//                    data_r[7:0]<=(fifo_data - 8'h30)*10;
//                    ns <= 4'hb;
//                    end
//                else ns <= 4'h0; 
//                end
//         4'hb: begin 
//                if(fifo_data<=8'h39 && fifo_data>=8'h30) begin 
//                    data_r[7:0]<=data_r[7:0] + fifo_data - 8'h30;
//                    ns <= 4'hc;   
//                    end
//                else ns <= 4'h0;
//                end 
//         4'hc:begin
//                if(fifo_data == 8'h3e) valid <= 1;
//                else valid <= 0;
//                ns <= 4'h0;
//                end
//         default:ns <= 4'h0;              
//        endcase    
//    end
//    end
endmodule
