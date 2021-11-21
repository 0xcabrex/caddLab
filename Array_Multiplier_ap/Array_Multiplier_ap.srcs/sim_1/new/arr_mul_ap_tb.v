`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.11.2021 20:59:31
// Design Name: 
// Module Name: arr_mul_ap_tb
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


module arr_mul_ap_tb;
reg [3:0]a,b;
wire [7:0]p;
arr_mul_ap uut(a,b,p);
initial
begin
$monitor($time, " a=%d, b%d, p=%d", a,b,p);
a=4'b1011;
b=4'b1010;
#10;

a=4'b1000;
b=4'b1010;
#10;

a=4'b1111;
b=4'b1111;
#10;

a=4'b1011;
b=4'b0000;
#10;

a=4'b0000;
b=4'b1010;
#10;

$finish;
end
endmodule
