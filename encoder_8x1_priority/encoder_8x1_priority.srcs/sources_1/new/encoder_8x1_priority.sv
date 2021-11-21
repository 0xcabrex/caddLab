`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.09.2021 23:08:35
// Design Name: 
// Module Name: encoder_8x1_priority
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


module encoder_8x1_priority(
    input logic en,
    input logic [7:0]din,
    output logic [2:0]dout
    );
    
    always_comb
    begin
    if (en)
    begin
        dout = 3'bZZZ;
    end
    else
    begin
        case (din)
            8'b00000001: dout = 3'b000;
            8'b0000001X: dout = 3'b001;
            8'b000001XX: dout = 3'b010;
            8'b00001XXX: dout = 3'b011;
            8'b0001XXXX: dout = 3'b100;
            8'b001XXXXX: dout = 3'b101;
            8'b01XXXXXX: dout = 3'b110;
            8'b1XXXXXXX: dout = 3'b111;
        endcase
    end
    end
            
endmodule
