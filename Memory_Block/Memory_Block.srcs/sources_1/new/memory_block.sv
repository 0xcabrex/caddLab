`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2021 19:27:15
// Design Name: 
// Module Name: memory_block
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


module memory_block (
    input logic clk,
    input logic [4:0] addr, 
    input logic [3:0] datain, 
    output logic [3:0]q0,  
    input logic cs, we);
    
logic [3:0] mem [31:0];

always @(posedge clk)
begin
if (cs & we)   
mem[addr] <= datain;
end

always@ (posedge clk)
begin 
if (cs & !we)   
q0 <= mem[addr];
end
  
endmodule
