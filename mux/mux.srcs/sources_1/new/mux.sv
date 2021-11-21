`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2021 08:45:02
// Design Name: 
// Module Name: mux
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


module mux(
    input logic [3:0] A,
    input logic [1:0] S,
    output logic Y
    );
    
    assign Y = S[1]?(S[0]?A[3]:A[2]):(S[0]?A[1]:A[0]); 
    
endmodule
