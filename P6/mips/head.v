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
// //RFA3
// `define RFA3_RT 2'd0
// `define RFA3_RD 2'd1
// `define RFA3_RA 2'd2
// //RFWD
// `define RFWD_ALU 2'd0
// `define RFWD_DM 2'd1
// `define RFWD_PC8 2'd2
// //Conflict
// `define ADD 4'd0
// `define SUB 4'd1
// `define ORI 4'd2
// `define LUI 4'd3
// `define SW 4'd4
// `define LW 4'd5
// `define JAL 4'd6
// `define JR 4'd7
// `define BEQ 4'd8
// `define NOP 4'd9
//MUDI
`define MUDI_MULT 2'd0
`define MUDI_MULTU 2'd1
`define MUDI_DIV 2'd2
`define MUDI_DIVU 2'd3 
//DMEN
`define DMEN_OTH 2'd0
`define DMEN_SW 2'd1
`define DMEN_SH 2'd2
`define DMEN_SB 2'd3
//DMEXT
`define DMEXT_OTH 2'd0
`define DMEXT_LW 2'd1
`define DMEXT_LH 2'd2
`define DMEXT_LB 2'd3
