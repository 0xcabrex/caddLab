`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2021 14:36:57
// Design Name: 
// Module Name: mealy_seq_det_ap
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


module mealy_seq_det_ap(
    input logic rst,
    input logic clk,
    input logic in_seq,
    output logic out_detect
    );
logic in_seq_reg;
parameter s0=2'b00,s1=2'b01,s2=2'b10;
logic [1:0]state,next_state;

//State updation 
always_ff@(posedge clk)
begin
    if(rst) begin
        in_seq_reg<=0;
        state<=s0;
    end
    else begin
        in_seq_reg<=in_seq;
        state<=next_state;
    end
 end   
 
 always_ff@(state or in_seq_reg or rst)
 begin
    next_state<=0;
    if(rst)
        out_detect<=0;
    else begin
        case(state)
            s0:if(in_seq_reg==1'b0)
                    begin
                        next_state<=s0;
                        out_detect<=1'b0;
                    end
                else begin
                    next_state<=s1;
                    out_detect<=1'b0;           
                end
            s1:if(in_seq_reg==1'b0)
                    begin
                        next_state<=s2;
                        out_detect<=1'b0;
                    end
                else begin
                    next_state<=s1;
                    out_detect<=1'b0;           
                end   
            s2:if(in_seq_reg==1'b0)
                    begin
                        next_state<=s0;
                        out_detect<=1'b0;
                    end
                else begin
                    next_state<=s1;
                    out_detect<=1'b1;           
                end    
            default:begin
                   next_state<=s0;
                   out_detect<=1'b0;     
                end
         endcase
     end
end               
endmodule


