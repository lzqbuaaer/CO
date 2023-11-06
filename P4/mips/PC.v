`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:15:04 11/02/2023 
// Design Name: 
// Module Name:    PC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module PC(
    input [31:0] in,
	 input clk,
	 input rst,
    output reg [31:0] out
    );
	always @(posedge clk ) begin
        if(rst == 1) begin
            out <= 32'h3000;
        end
        else begin
            out <= in;
        end
    end 

endmodule
