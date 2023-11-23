`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:12 11/09/2023 
// Design Name: 
// Module Name:    head 
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
//EXT
`define EXT_ZERO 1'b0
`define EXT_SIGN 1'b1
//CMP
`define CMP_BEQ 2'b0
`define CMP_BNE 2'b1
//NPC
`define NPC_ADD4 4'd0
`define NPC_BEQ 4'd1
`define NPC_JAL 4'd2
`define NPC_JR 4'd3
`define NPC_BNE 4'd4
//ALU
`define ALU_ADD 4'd0
`define ALU_SUB 4'd1
`define ALU_AND 4'd2
`define ALU_OR 4'd3
`define ALU_SLT 4'd4
`define ALU_SLTU 4'd5
`define ALU_LUI 4'd6
`define ALU_ADDI 4'd7
`define ALU_ANDI 4'd8
`define ALU_ORI 4'd9
//ALUB
`define ALUB_RT 1'b0
`define ALUB_EXT 1'b1
//RFA3
`define RFA3_RT 2'd0
`define RFA3_RD 2'd1
`define RFA3_RA 2'd2
//RFWD
`define RFWD_ALU 3'd0
`define RFWD_DM 3'd1
`define RFWD_PC8 3'd2
`define RFWD_HL 3'd3
//Conflict
`define ADD 5'd1 
`define SUB 5'd2 
`define AND 5'd3
`define OR 5'd4
`define SLT 5'd5
`define SLTU 5'd6
`define LUI 5'd7
`define ADDI 5'd8
`define ANDI 5'd9
`define ORI 5'd10
`define LB 5'd11
`define LH 5'd12
`define LW 5'd13
`define SB 5'd14
`define SH 5'd15
`define SW 5'd16
`define MULT 5'd17
`define MULTU 5'd18
`define DIV 5'd19
`define DIVU 5'd20
`define MFHI 5'd21
`define MFLO 5'd22
`define MTHI 5'd23
`define MTLO 5'd24
`define BEQ 5'd25
`define BNE 5'd26
`define JAL 5'd27
`define JR 5'd28
`define NOP 5'd29
//MUDI
`define MUDI_MULT 3'd0
`define MUDI_MULTU 3'd1
`define MUDI_DIV 3'd2
`define MUDI_DIVU 3'd3 
`define MUDI_MTHI 3'd4
`define MUDI_MTLO 3'd5
`define MUDI_OTH 3'd6
//HI&LO
`define HL_HI 1'b1
`define HL_LO 1'b0
//DMEN
`define DMEN_OTH 3'd0
`define DMEN_SW 3'd1
`define DMEN_SH 3'd2
`define DMEN_SB 3'd3
//DMEXT
`define DMEXT_OTH 3'd0
`define DMEXT_LW 3'd1
`define DMEXT_LH 3'd2
`define DMEXT_LB 3'd3
