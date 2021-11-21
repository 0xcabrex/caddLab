`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2021 19:30:24
// Design Name: 
// Module Name: memory_block_tb
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


module memory_block_tb;
reg clk;reg [4:0] addr;wire [3:0] q0; reg cs;
reg we; reg [3:0] din;

memory_block uut (clk,addr,din,q0,cs,we);
always #5 clk=~clk;
initial begin
clk = 0;
we = 0;
addr = 0;
din = 0;
#10 we=1'b1;cs=1;
#10 addr=5'b00001;din=4'b0001;
#10 addr=5'b00010;din=4'b0010;
#10 addr=5'b00011;din=4'b0011;
#10 addr=5'b00100;din=4'b0100;
#10 addr=5'b00101;din=4'b0101;
#10 addr=5'bxxxxx;din=4'bxxxx;
#10 we=1'b0;cs=1;
#10 addr=5'b00001;
#10 addr=5'b00010;
#10 addr=5'b00011;
#10 addr=5'b00100;
#10 addr=5'b00101;
#10 $stop;
end
endmodule

