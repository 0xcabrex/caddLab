`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2021 23:39:50
// Design Name: 
// Module Name: Synchronous_counter_tb
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


module Synchronous_counter_tb();

reg clk,rst,updown;
wire [3:0] q;
synchronous_counter uut( .clk(clk), .rst(rst), .updown(updown), .q(q));
initial 
begin
clk=1'b0;
rst=1'b0;
#5 rst=1'b1; updown =1'b0;
#20 updown= 1'b1;
#10 $stop;
end
always #5 clk= ~clk;

endmodule
