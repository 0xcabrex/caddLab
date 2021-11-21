`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2021 19:45:32
// Design Name: 
// Module Name: moore_seq_det_ap
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


module moore_seq_det_ap(
    input logic rst,
    input logic clk,
    input logic in_seq,
    output logic out_detect
    );
logic in_seq_reg;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
logic [1:0]state,next_state;
//For one-hot state encoding
/*parameter s0=4'b0001,s1=2'b0010,s2=4'b0100,s3=4'b1000;
logic [3:0]state,next_state;*/

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
    if(rst) next_state<=0;
    else begin
        case(state)
            s0:if(in_seq_reg==1'b0) next_state<=s0;
                else next_state<=s1;
            s1:if(in_seq_reg==1'b0) next_state<=s2;
                else next_state<=s1;            
            s2:if(in_seq_reg==1'b0) next_state<=s0;
                else next_state<=s3;        
            s3:if(in_seq_reg==1'b0) next_state<=s1;
                else next_state<=s2;    
            default:next_state<=s0;
         endcase
     end       
 end
 
 always_ff@(state or rst)           
    if(rst) out_detect=0;
    else
        case(state)
            s0:out_detect=0;
            s1:out_detect=0;
            s2:out_detect=0;
            s3:out_detect=1;           
        endcase
 endmodule              
            
