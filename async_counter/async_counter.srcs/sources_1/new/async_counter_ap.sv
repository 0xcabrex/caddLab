`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2021 09:21:36
// Design Name: 
// Module Name: async_counter_ap
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


module async_counter_ap(input logic d,input logic clk, input logic rstn, output logic q,output logic qn);
   always_ff @ (posedge clk or negedge rstn)
      if (!rstn)
         q <= 0;
      else  
         q <= d;
 assign qn = ~q;
endmodule

module ripple ( input logic clk,
                input logic rstn,
                output logic [3:0] out);
   logic   q0,q1,q2,q3;
   logic  qn0,qn1,qn2,qn3;
   logic[27:0]count;
always@(posedge clk)
count=count+1;

   async_counter_ap   async_counter_ap0 ( .d (qn0), .clk (count[27]), .rstn (rstn), .q (q0), .qn (qn0));
   async_counter_ap   async_counter_ap1 ( .d (qn1), .clk (q0),  .rstn (rstn), .q (q1),  .qn (qn1));
   async_counter_ap   async_counter_ap2 ( .d (qn2), .clk (q1),.rstn (rstn),.q (q2),  .qn (qn2));
   async_counter_ap   async_counter_ap3 ( .d (qn3), .clk (q2), .rstn (rstn), .q (q3), .qn (qn3));
   assign out = {q3, q2, q1, q0};
endmodule

