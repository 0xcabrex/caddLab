`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2021 08:30:30
// Design Name: 
// Module Name: full_adder
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


module full_adder (sum,carry,a,b,c);

output logic sum, carry;
input logic a,b,c;
logic s1,s2,s3;

xor (s1,a,b);
xor  (sum,s1,c);
and  (s2,a,b);
and  (s3,s1,c);
or  (carry,s3,s2);

endmodule
