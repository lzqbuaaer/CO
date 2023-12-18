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
`define NPC_ERET 4'd5
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
`define RFWD_CP0 3'd4
//Conflict
`define ADD 6'd1 
`define SUB 6'd2 
`define AND 6'd3
`define OR 6'd4
`define SLT 6'd5
`define SLTU 6'd6
`define LUI 6'd7
`define ADDI 6'd8
`define ANDI 6'd9
`define ORI 6'd10
`define LB 6'd11
`define LH 6'd12
`define LW 6'd13
`define SB 6'd14
`define SH 6'd15
`define SW 6'd16
`define MULT 6'd17
`define MULTU 6'd18
`define DIV 6'd19
`define DIVU 6'd20
`define MFHI 6'd21
`define MFLO 6'd22
`define MTHI 6'd23
`define MTLO 6'd24
`define BEQ 6'd25
`define BNE 6'd26
`define JAL 6'd27
`define JR 6'd28
`define NOP 6'd29
`define MFC0 6'd30
`define MTC0 6'd31
`define ERET 6'd32
`define SYSCALL 6'd33
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
//CP0
`define IM SR[15:10]
`define EXL SR[1]
`define IE SR[0]
`define BD Cause[31]
`define IP Cause[15:10]
`define ExcCode Cause[6:2]
//STORE
`define isSW 2'd1
`define isSH 2'd2
`define isSB 2'd3
//LOAD
`define isLW 2'd1
`define isLH 2'd2
`define isLB 2'd3
//EXCCodefi
`define EXC_NO 5'd0
`define EXC_AdEL 5'd4
`define EXC_AdES 5'd5
`define EXC_RI 5'd10
`define EXC_Ov 5'd12
`define EXC_SYSCALL 5'd8