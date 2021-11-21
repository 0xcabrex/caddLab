`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2021 09:31:59
// Design Name: 
// Module Name: encoder_8to3_tb
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


module encoder_8to3_tb;

wire [2:0]binary_out;
reg [7:0]encoder_in;
reg enable;

encoder_8to3 uut(.binary_out(binary_out), .encoder_in(encoder_in), .enable(enable));

initial begin
#10
enable = 1;
encoder_in = 8'b00000000;
#10;
encoder_in = 8'b00000001;
#10;
encoder_in = 8'b00000010;
#10;
encoder_in = 8'b00000100;
#10;
encoder_in = 8'b00001000;
#10;
encoder_in = 8'b00010000;
#10;
encoder_in = 8'b00100000;
#10 $stop; 
end

endmodule
