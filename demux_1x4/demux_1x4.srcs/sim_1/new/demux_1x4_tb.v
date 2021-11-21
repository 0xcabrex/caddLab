`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2021 08:28:52
// Design Name: 
// Module Name: demux_1x4_tb
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


module demux_1x4_tb;

reg f;
reg [1:0]sel;
wire a,b,c,d;

demux_1x4 uut(.f(f), .sel(sel), .a(a), .b(b), .c(c), .d(d));

initial
begin
#10 f = 0; sel[0] = 0; sel[1] = 0;
#10 f = 0; sel[0] = 0; sel[1] = 1;
#10 f = 0; sel[0] = 1; sel[1] = 0;
#10 f = 0; sel[0] = 1; sel[1] = 1;

#10
#10 f = 1; sel[0] = 0; sel[1] = 0;
#10 f = 1; sel[0] = 0; sel[1] = 1;
#10 f = 1; sel[0] = 1; sel[1] = 0;
#10 f = 1; sel[0] = 1; sel[1] = 1;
#10 $stop;
end
 
endmodule
