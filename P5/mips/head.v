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
//NPC
`define NPC_ADD4 3'd0
`define NPC_BEQ 3'd1
`define NPC_JAL 3'd2
`define NPC_JR 3'd3
//ALU
`define ALU_ADD 3'd0
`define ALU_SUB 3'd1
`define ALU_ORI 3'd2
`define ALU_LUI 3'd3