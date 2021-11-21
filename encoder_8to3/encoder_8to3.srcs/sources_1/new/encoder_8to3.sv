`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2021 09:15:18
// Design Name: 
// Module Name: encoder_8to3
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


module encoder_8to3
(
    output logic [2:0]binary_out,
    input logic [7:0]encoder_in, 
    input logic enable
);
    
always_comb
ENCODER: begin
    binary_out = 0;
    if (enable) begin
        case (encoder_in)
            7'h01 : binary_out = 0;
            7'h02 : binary_out = 1;
            7'h04 : binary_out = 2;
            7'h08 : binary_out = 3;
            7'h10 : binary_out = 4;
            7'h20 : binary_out = 5;
            7'h40 : binary_out = 6;
            7'h80 : binary_out = 7;
            
        endcase 
    end
end
            
endmodule
