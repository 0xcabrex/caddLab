`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2021 22:02:50
// Design Name: 
// Module Name: amogh
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


module amogh(
    input logic A,
    input logic B,
    output logic Y1,
    output logic Y2,
    output logic Y3,
    output logic Y4,
    output logic Y5,
    output logic Y6,
    output logic Y7,
    output logic Y8
    );
    
    assign Y1 = A & B;
    assign Y2 = A | B;
    assign Y3 = A ^ B;
    assign Y4 = ~(A & B);
    assign Y5 = ~(A | B);
    assign Y6 = ~(A ^ B);
    assign Y7 = ~A;
    assign Y8 = A;
    
endmodule
