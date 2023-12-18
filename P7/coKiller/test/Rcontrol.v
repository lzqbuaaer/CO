`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:49 11/25/2023 
// Design Name: 
// Module Name:    Rcontrol 
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
module Rcontrol(
	input [4:0] A1_D,
	input [4:0] A1_E,
	input [4:0] A2_D,
	input [4:0] A2_E,
	input [4:0] A2_M,
	input [4:0] A3_E,
	input [4:0] A3_M,
	input [4:0] A3_W,
	input [1:0] Tnew_D,
	input [1:0] Tnew_E,
	input [1:0] Tnew_M,
	input [1:0] Tnew_W,
	input [1:0] rs_Tuse,
	input [1:0] rt_Tuse,
	input regWrite_E,
	input regWrite_M,
	input regWrite_W,
	input [31:0] instr_E,
	input [31:0] instr_M,
	input [31:0] instr_W,
	input isMdu_D,
	input [3:0] lsOp_W,
	input busy_E,
	input start_E,
	
	output [1:0] cmpV1Fwd,
	output [1:0] cmpV2Fwd,
	output [1:0] aluSrcAFwd,
	output [1:0] aluSrcBFwd,
	output dmWdFwd,
	output selEout,
	output selMout,
	output [1:0] selWout,
	output stall,
	
	input eret_D,
	input mtc0_E,
	input mtc0_M,
	input [4:0] E_rd_addr,
	input [4:0] M_rd_addr
    );
	
	wire stall_Rs0_E2;
	wire stall_Rs0_E1;
	wire stall_Rs1_E2;
	wire stall_Rs0_M1;
	wire stall_Rt0_E2;
	wire stall_Rt0_E1;
	wire stall_Rt1_E2;
	wire stall_Rt0_M1;
	wire stall_Rs;
	wire stall_Rt;
	wire stall_mdu;
	wire stall_eret;
	
	assign cmpV1Fwd = (A1_D == A3_E && A1_D != 0 && Tnew_E == 2'b00 && regWrite_E == 1'b1) ? 2'b10 :
											(A1_D == A3_M && A1_D != 0 && Tnew_M == 2'b00 && regWrite_M == 1'b1) ? 2'b01 : 2'b00;
	assign cmpV2Fwd = (A2_D == A3_E && A2_D != 0 && Tnew_E == 2'b00 && regWrite_E == 1'b1) ? 2'b10 :
											(A2_D == A3_M && A2_D != 0 && Tnew_M == 2'b00 && regWrite_M == 1'b1) ? 2'b01 : 2'b00; 
	assign aluSrcAFwd = (A1_E == A3_M && A1_E != 0 && Tnew_M == 2'b00 && regWrite_M == 1'b1) ? 2'b10 :
												(A1_E == A3_W && A1_E != 0 && Tnew_W == 2'b00 && regWrite_W == 1'b1) ? 2'b01 : 2'b00;
	assign aluSrcBFwd = (A2_E == A3_M && A2_E != 0 && Tnew_M == 2'b00 && regWrite_M == 1'b1) ? 2'b10:
												(A2_E == A3_W && A2_E !=0 && Tnew_W == 2'b00 && regWrite_W == 1'b1) ? 2'b01 : 2'b00;
	assign dmWdFwd = (A2_M == A3_W && A2_M != 0 && Tnew_W == 2'b00 && regWrite_W == 1'b1) ? 1'b1 : 1'b0;
	
	assign selEout = (instr_E[31:26] == 6'b000011) ? 1'b1 : 1'b0;
	assign selMout = (instr_M[31:26] == 6'b000011) ? 1'b1 : 1'b0; // 6'b000011 is jal
	assign selWout = (instr_W[31:26] == 6'b000011) ? 2'b01 :
										((lsOp_W == 4'b0001) | (lsOp_W == 4'b0010) | (lsOp_W == 4'b0011) | (lsOp_W == 4'b0100) | (lsOp_W == 4'b0101)) ? 2'b10 :
										(instr_W[31:21] == 11'b01000000000) ? 2'b11 : 2'b00;
										// listed above of lsOp_W is about lw, lh, lhu, lb, lbu
										
	
	assign stall_Rs0_E2 = (A1_D == A3_E && A1_D != 0 && rs_Tuse == 2'b00 && Tnew_E == 2'b10 && regWrite_E == 1'b1) ? 1'b1 : 1'b0;
	assign stall_Rs0_E1 = (A1_D == A3_E && A1_D != 0 && rs_Tuse == 2'b00 && Tnew_E == 2'b01 && regWrite_E == 1'b1) ? 1'b1 : 1'b0;
	assign stall_Rs1_E2 = (A1_D == A3_E && A1_D != 0 && rs_Tuse == 2'b01 && Tnew_E == 2'b10 && regWrite_E == 1'b1) ? 1'b1 : 1'b0;
	assign stall_Rs0_M1 = (A1_D == A3_M && A1_D != 0 && rs_Tuse == 2'b00 && Tnew_M == 2'b01 && regWrite_M == 1'b1) ? 1'b1 : 1'b0;
	
	assign stall_Rt0_E2 = (A2_D == A3_E && A2_D != 0 && rt_Tuse == 2'b00 && Tnew_E == 2'b10 && regWrite_E == 1'b1) ? 1'b1 : 1'b0;
	assign stall_Rt0_E1 = (A2_D == A3_E && A2_D != 0 && rt_Tuse == 2'b00 && Tnew_E == 2'b01 && regWrite_E == 1'b1) ? 1'b1 : 1'b0;
	assign stall_Rt1_E2 = (A2_D == A3_E && A2_D != 0 && rt_Tuse == 2'b01 && Tnew_E == 2'b10 && regWrite_E == 1'b1) ? 1'b1 : 1'b0;
	assign stall_Rt0_M1 = (A2_D == A3_M && A2_D != 0 && rt_Tuse == 2'b00 && Tnew_M == 2'b01 && regWrite_M == 1'b1) ? 1'b1 : 1'b0;
	
	assign stall_Rs = (stall_Rs0_E2 | stall_Rs0_E1 | stall_Rs1_E2 | stall_Rs0_M1);
	assign stall_Rt = (stall_Rt0_E2 | stall_Rt0_E1 | stall_Rt1_E2 | stall_Rt0_M1);
	assign stall_mdu = (isMdu_D & (start_E | busy_E));
	assign stall_eret = eret_D & ((mtc0_E & (E_rd_addr == 5'd14)) || (mtc0_M & (M_rd_addr == 5'd14)));
	assign stall = stall_Rs | stall_Rt | stall_mdu | stall_eret;
	

endmodule
