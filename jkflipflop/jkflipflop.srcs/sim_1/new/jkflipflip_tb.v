`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2021 08:41:22
// Design Name: 
// Module Name: jkflipflip_tb
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


module jkflipflip_tb();

reg clk;
reg j, k;
wire q, qbar;
jkflipflop uut(clk, j, k, q, qbar);
initial
begin
clk=1'b0;
j=1'b0;
k=1'b0;

#10
clk=1'b1;
j=1'b0;
k=1'b0;

#10 
clk=1'b0;
j=1'b0;
k=1'b1;

#10
clk=1'b1;
j=1'b0;
k=1'b1;

#10 
clk=1'b0;
j=1'b1;
k=1'b0;

#10
clk=1'b1;
j=1'b1;
k=1'b0;

#10 
clk=1'b0;
j=1'b1;
k=1'b1;

#10
clk=1'b1;
j=1'b01;
k=1'b1;

#10 
clk=1'b0;
j=1'b01;
k=1'b1;

#10
clk=0;

#10
clk=1;

#10;
clk=0;

#10
clk=1;

#10;
clk=0;

#10
clk=1;

#10;
j=0;
k=0;

#10;
clk=0;

#10;
clk=1;
#10 $stop;

end

endmodule
