`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2021 22:06:17
// Design Name: 
// Module Name: amogh_tb
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


module amogh_tb;
reg a, b;
wire y1,y2,y3,y4,y5,y6,y7,y8;

amogh uut (a,b,y1,y2,y3,y4,y5,y6,y7,y8);

initial
begin
a = 1'b0;
b = 1'b1;
#100;
a = 1'b1;
b = 1'b1;
#10;
end

endmodule
