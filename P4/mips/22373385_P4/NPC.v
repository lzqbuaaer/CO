`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:17 11/02/2023 
// Design Name: 
// Module Name:    NPC 
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
`define add4 3'd0
`define beq_npc 3'd1
`define jal_npc 3'd2
`define jr_npc 3'd3
module NPC(
    input [31:0] pc,
    input [25:0] imm,
    input [31:0] ra,
    input zero,
	 input [2:0] NPCOp,
    output [31:0] pc4,
    output [31:0] npc
    );
    assign pc4 = pc + 4;
    assign npc = (NPCOp == `add4 || (NPCOp == `beq_npc && zero == 0)) ? pc4 :
                 (NPCOp == `beq_npc && zero == 1) ? {{14{imm[15]}} , imm[15:0] , 2'b0} + pc4 :
                 (NPCOp == `jal_npc) ? {pc[31:28] , imm , 2'b0} :
                 (NPCOp == `jr_npc) ? ra : pc4;

endmodule
