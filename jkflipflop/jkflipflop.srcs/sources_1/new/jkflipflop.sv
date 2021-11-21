`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2021 08:39:28
// Design Name: 
// Module Name: jkflipflop
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


module jkflipflop(
    input logic clk,
    input logic j,
    input logic k,
    output logic q,
    output logic qbar
    );
    
    logic clkdiv;
    logic [27:0]count;
    
    always@(posedge clk)
    begin
        count<=count+1;
        if(count[27]==1)
        clkdiv<=~clkdiv;
    end
    
    always@(posedge clkdiv)
    begin
        if(j==0 & k==1)
        begin
            q<=0;
            qbar<=1;
        end
    
        else if(j==1 & k==0)
        begin
            q<=1;
            qbar<=0;
        end
        
        else if(j==0 & k==0)
        begin 
            q<=q;
            qbar<=qbar;
        end
            
        else if(j==1 & k==1)
        begin 
                q<=~q;
                qbar<=~qbar;
        end
end
endmodule
