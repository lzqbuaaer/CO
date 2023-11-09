`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:48 11/09/2023 
// Design Name: 
// Module Name:    im 
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
module im(
    input [31:0] PC,
    output [31:0] IR
    );
    reg [31:0] im_reg [0:4095];
    initial begin
        $readmemh("code.txt",im_reg);
    end
    wire [31:0] turn = PC - 32'h00003000; 
    assign IR = im_reg[turn[13:2]];

endmodule
