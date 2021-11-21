`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2021 20:04:36
// Design Name: 
// Module Name: Accumulator_ap_tb
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


module Accumulator_ap_tb;
reg [7:0] datain;
reg clk;
reg rst;
wire [9:0] out;
Accumulator_ap uut(datain,clk,rst,out);
initial
begin
    clk=0;
     forever #5 clk=~clk;
end

initial
begin
     rst=0;
     #10
     rst=1;
     datain=8'b00001111;
#10;
     datain=8'b00001010;
#10;
$finish;
end
endmodule
