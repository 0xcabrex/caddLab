`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2021 20:16:58
// Design Name: 
// Module Name: bin_to_dec_tb
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


module bin_to_dec_tb;

reg [3:0] binary_in;
wire [7:0] decimal_out;

bin_to_dec uut (decimal_out, binary_in);

initial
begin

#10 binary_in = 4'b0000;
#10 binary_in = 4'b0001; 
#10 binary_in = 4'b0010;
#10 binary_in = 4'b0011; 
#10 binary_in = 4'b0100;
#10 binary_in = 4'b0101; 
#10 binary_in = 4'b0110;
#10 binary_in = 4'b0111; 
#10 binary_in = 4'b1000;
#10 binary_in = 4'b1001; 
#10 binary_in = 4'b1010;
#10 binary_in = 4'b1011; 
#10 binary_in = 4'b1100;
#10 binary_in = 4'b1101; 
#10 binary_in = 4'b1110;
#10 binary_in = 4'b1111;
#10 $stop;

end 
endmodule
