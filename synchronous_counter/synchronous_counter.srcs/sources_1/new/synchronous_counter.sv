`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2021 23:37:58
// Design Name: 
// Module Name: synchronous_counter
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


module synchronous_counter(
     input logic clk,
    input logic rst,
    output logic [3:0] q,
    input logic updown
    );
    
    logic [27:0]count;
            always_ff@(posedge clk)
            begin
            count<=count+1;
            end
        always_ff@(posedge count[27], negedge rst)
        //always_ff@(posedge clk)
      begin
      if(!rst)
      q <=4'b0000;
      else if(updown==0)
             if(q==4'b1001)
                q<=0;
           else
           q <= q + 1;
       else
        if(q==0)
          q<=4'b1001;
        else
          q<=q-1;
             end
    
endmodule
