`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2021 20:13:26
// Design Name: 
// Module Name: bin_to_dec
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


module bin_to_dec(
    output logic [7:0] decimal_out,
    input logic [3:0] binary_in
    );
    
    always_comb
    ENCODER: begin
    decimal_out = 4'bZZZZ;
    
    if (binary_in > 4'h9 && binary_in<=4'hf)
        decimal_out = binary_in + 4'h6;
    else
        decimal_out = binary_in;
    end
    
endmodule
