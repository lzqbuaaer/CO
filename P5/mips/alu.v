`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:20:37 11/09/2023 
// Design Name: 
// Module Name:    alu 
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
`include "head.v"
module alu(
    input [31:0] A,
    input [31:0] B,
    output [31:0] C,
    input [2:0] ALUOp
    );
    assign C = (ALUOp == `ALU_ADD) ? A + B :
               (ALUOp == `ALU_SUB) ? A - B :
               (ALUOp == `ALU_ORI) ? A | B :
               (ALUOp == `ALU_LUI) ? {B[15:0] , 16'b0} : 32'b0;

endmodule
