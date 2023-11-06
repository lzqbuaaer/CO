`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:28 11/02/2023 
// Design Name: 
// Module Name:    ALU 
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
`define add 3'd0
`define sub 3'd1
`define ori 3'd2
`define lui 3'd3
`define jr 3'd4
module ALU(
    input [31:0] A,
    input [31:0] B,
    output [31:0] C,
    output zero,
    input [2:0] ALUOp
    );
    assign C = (ALUOp == `add) ? A + B :
               (ALUOp == `sub) ? A - B :
               (ALUOp == `ori) ? A | B :
               (ALUOp == `lui) ? {B[15:0] , 16'b0} :
               (ALUOp == `jr) ? A : 32'b0;
    assign zero = (A == B) ? 1'b1 :1'b0;
endmodule
