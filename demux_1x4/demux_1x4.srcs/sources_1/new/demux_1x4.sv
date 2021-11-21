`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2021 08:26:26
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
    
    input logic f,
    input logic [1:0]sel,
    output logic a,b,c,d
    );
    
    assign a = f & ~sel[1] & ~sel[0];
	assign b = f & sel[1] & ~sel[0];
	assign c = f & ~sel[1] & sel[0];
	assign d = f & sel[1] & sel[0];
endmodule
