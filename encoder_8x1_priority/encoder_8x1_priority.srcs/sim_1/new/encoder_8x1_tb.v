`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2021 23:22:17
// Design Name: 
// Module Name: encoder_8x1_tb
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


module encoder_8x1_tb;

reg en;
reg [7:0]din;
wire [2:0]dout;

encoder_8x1_priority uut(en, din, dout);

initial 
begin
#10 en = 1; din = 8'b00000001;
#10 din = 8'b0000001X;
#10 din = 8'b000001XX;
#10 din = 8'b00001XXX;
#10 din = 8'b0001XXXX;
#10 din = 8'b001XXXXX;
#10 din = 8'b01XXXXXX;
#10 din = 8'b1XXXXXXX;

#20 en = 0; din = 8'b00000001;
#10 din = 8'b0000001X;
#10 din = 8'b000001XX;
#10 din = 8'b00001XXX;
#10 din = 8'b0001XXXX;
#10 din = 8'b001XXXXX;
#10 din = 8'b01XXXXXX;
#10 din = 8'b1XXXXXXX;

#10 $stop;
end

endmodule
