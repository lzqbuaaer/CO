`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:07 11/02/2023 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0] A,
    output [31:0] D
    );
    reg [31:0] im_reg [0:4095];
    initial begin
        $readmemh("code.txt",im_reg);
    end
	 wire [31:0] turn = A - 32'h00003000; 
    assign D = im_reg[turn[13:2]];

endmodule