`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2021 09:36:37
// Design Name: 
// Module Name: async_counter_ap_tb
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


module ripple_tb;
   reg clk;
   reg rstn;
   wire [3:0] out;
  ripple r0   (  .clk (clk), .rstn (rstn),.out (out));
initial begin
      rstn = 0;
      clk = 0;
#20 rstn = 1;
#20 $stop;
end
always #5 clk = ~clk;
endmodule

