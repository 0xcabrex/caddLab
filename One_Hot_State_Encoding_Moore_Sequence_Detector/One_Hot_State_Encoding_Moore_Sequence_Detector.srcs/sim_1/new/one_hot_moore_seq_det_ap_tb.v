`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2021 22:56:49
// Design Name: 
// Module Name: one_hot_moore_seq_det_ap_tb
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


module one_hot_moore_seq_det_ap_tb;
reg rst;
reg clk;
reg in_seq;
wire out_detect;
one_hot_moore_seq_det_ap uut (.rst(rst),.clk(clk),.in_seq(in_seq),.out_detect(out_detect));
always #5 clk=~clk;
initial begin
    //Initiate inputs 
    $monitor($time,"rst=%b in_seq=%b out=%b",rst,in_seq,out_detect);
    rst=1;
    clk=0;
    in_seq=0;
    #4rst=0;
    #6in_seq=0;
    #10in_seq=1;
    #10in_seq=0;
    #10in_seq=0;
    #10in_seq=1;
    #10in_seq=0;
    #10in_seq=1;   
    #10in_seq=0;
    #10$finish;
  end  
endmodule

