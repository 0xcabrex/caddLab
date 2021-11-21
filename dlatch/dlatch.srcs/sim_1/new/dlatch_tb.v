`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.09.2021 08:49:44
// Design Name: 
// Module Name: dlatch_tb
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


module dlatch_tb;

reg d, en, rstn;
wire q;

dlatch uut(.d(d), .en(en), .rstn(rstn), .q(q));
initial 
begin

    d=1'b0;
    en=1'b0;
    rstn=1'b0;
#10
    d=1'b0;
    en=1'b0;
    rstn=1'b1;
#10
    d=1'b0;
    en=1'b1;
    rstn=1'b0;
#10
    d=1'b0;
    en=1'b1;
    rstn=1'b1;
#10
    d=1'b1;
    en=1'b0;
    rstn=1'b0;
#10
    d=1'b1;
    en=1'b0;
    rstn=1'b1;
#10
    d=1'b1;
    en=1'b1;
    rstn=1'b0;
#10
    d=1'b1;
    en=1'b1;
    rstn=1'b1;
#10 $stop;
end

endmodule
