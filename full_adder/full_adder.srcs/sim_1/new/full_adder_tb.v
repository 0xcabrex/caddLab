`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.09.2021 08:38:14
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

reg a,b,c;
wire sum,carry;
full_adder uut(.sum(sum),.carry(carry),.a(a),.b(b),.c(c));

initial
begin

#10 a=1'b0;
b=1'b0;
c=1'b0;

#10 a=1'b0;
b=1'b0;
c=1'b1;

#10 a=1'b0;
b=1'b1;
c=1'b0;

#10 a=1'b0;
b=1'b1;
c=1'b1;

#10 a=1'b1;
b=1'b0;
c=1'b0;

#10 a=1'b1;
b=1'b0;
c=1'b1;

#10 a=1'b1;
b=1'b1;
c=1'b0;

#10 a=1'b1;
b=1'b1;
c=1'b1;

#10 $stop;

end

endmodule
