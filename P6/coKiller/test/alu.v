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
    input [3:0] ALUOp,
    input [1:0] AriOv,
    input DMOv,
    output EXC_Ari,
    output EXC_DM
    );
	 wire sltu = (A < B) ? 32'd1 : 32'd0;
	 wire sign_cmp = $signed(A) < $signed(B);
	 wire slt = sign_cmp ? 32'd1 : 32'd0;
    assign C = (ALUOp == `ALU_ADD | ALUOp == `ALU_ADDI) ? A + B :
               (ALUOp == `ALU_SUB) ? A - B :
               (ALUOp == `ALU_ORI | ALUOp == `ALU_OR) ? A | B :
					(ALUOp == `ALU_AND | ALUOp == `ALU_ANDI) ? A & B :
					(ALUOp == `ALU_SLT) ? slt :
					(ALUOp == `ALU_SLTU) ? sltu :
               (ALUOp == `ALU_LUI) ? {B[15:0] , 16'b0} : 32'b0;
   wire [32:0] extA = {A[31] , A};
   wire [32:0] extB = {B[31] , B};
   wire [32:0] extADD = extA + extB;
   wire [32:0] extSUB = extA - extB;
   assign EXC_Ari = (AriOv == 1 && extADD[32] != extADD[31]) || (AriOv == 2 && extSUB[32] != extSUB[31]);
   assign EXC_DM = (DMOv == 1 && extADD[32] != extADD[31]);

endmodule