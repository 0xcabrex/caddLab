`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2021 01:39:08
// Design Name: 
// Module Name: Accumulator_ap
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


module Accumulator_ap(
    input logic [7:0] datain,
    input logic clk,
    input logic rst,
    output logic [9:0] out
    );
    logic[27:0] count;
    always@(posedge clk)
    count=count+1;

    logic [7:0]a;
    logic [7:0]Acc;
    logic [7:0]sum;
    logic carry;
    logic [7:0]S;

 assign a=datain;
always_ff@(posedge count[27] or negedge rst)
          begin
          if(~rst)
           begin
                    sum[7:0]<=0;
                    out[8]<=0;
                   out[9]<=0;
                    Acc<=0;
            end
          else
           begin
                     Acc =a;
                    {carry, S} = Acc+sum;
                   sum=S;
                  out[7:0]=sum;
                   out[8]=carry;
if(carry == 1)
       out[9]=1;
         end  
        end
endmodule
