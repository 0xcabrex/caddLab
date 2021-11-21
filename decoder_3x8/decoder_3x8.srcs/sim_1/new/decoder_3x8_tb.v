`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2021 23:50:30
// Design Name: 
// Module Name: decoder_3x8_tb
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


module decoder_3x8_tb;

reg [2:0]a;
wire [7:0]y;

decoder_3x8 uut(a, y);

initial
begin
#10 a = 3'b000;
#10 a = 3'b001;
#10 a = 3'b010;
#10 a = 3'b011;
#10 a = 3'b100;
#10 a = 3'b101;
#10 a = 3'b110;
#10 a = 3'b111;
#10 $stop;
end

endmodule
