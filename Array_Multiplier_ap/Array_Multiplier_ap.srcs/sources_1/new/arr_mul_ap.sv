`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2021 20:33:20
// Design Name: 
// Module Name: arr_mul_ap
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


module arr_mul_ap(
    input logic [3:0] a,
    input logic [3:0] b,
    output logic [7:0] p
    );
logic [3:0] c1,c2,c3,s1,s2,s3;
//first stage adder   
fulladder fa0 (a[1]&b[0],a[0]&b[1],1'b0,s1[0],c1[0]);
fulladder fa1 (a[2]&b[0],a[1]&b[1],c1[0],s1[1],c1[1]);
fulladder fa2 (a[3]&b[0],a[2]&b[1],c1[1],s1[2],c1[2]);
fulladder fa3 (1'b0,a[3]&b[1],c1[2],s1[3],c1[3]);
//second stage adder   
fulladder fa4 (s1[1],a[0]&b[2],1'b0,s2[0],c2[0]);
fulladder fa5 (s1[2],a[1]&b[2],c2[0],s2[1],c2[1]);
fulladder fa6 (s1[3],a[2]&b[2],c2[1],s2[2],c2[2]);
fulladder fa7 (c1[3],a[3]&b[2],c2[2],s2[3],c2[3]);
//third stage adder   
fulladder fa8 (s2[1],a[0]&b[3],1'b0,s3[0],c3[0]);
fulladder fa9 (s2[2],a[1]&b[3],c3[0],s3[1],c3[1]);
fulladder fa10 (s2[3],a[2]&b[3],c3[1],s3[2],c3[2]);
fulladder fa11 (c2[3],a[3]&b[3],c3[2],s3[3],c3[3]);
//8_bit output p 
assign p[0]=a[0]&b[0];
assign p[1]=s1[0];
assign p[2]=s2[0];
assign p[3]=s3[0];
assign p[4]=s3[1];
assign p[5]=s3[2];
assign p[6]=s3[3];
assign p[7]=c3[3];
endmodule

module fulladder(input logic a,b,carryin,
output logic y,carryout);
assign y = a ^ b ^ carryin;
assign carryout=(a & b)|(a & carryin)|(b & carryin);
endmodule

