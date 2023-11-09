`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:21:11 11/09/2023 
// Design Name: 
// Module Name:    npc 
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
module npc(
    input [31:0] F_PC,
    input [31:0] PC,
    input B_JP,
    input [2:0] NPCOp,
    input [31:0] RSdata,
    input [25:0] IR26,
    output [31:0] NPC
    );
    
    assign NPC = (NPCOp == `NPC_JR) ? RSdata :
                 (NPCOp == `NPC_JAL) ? {PC[31:28] , IR26 , 2'b0} :
                 (NPCOp == `NPC_BEQ && B_JP) ? {{14{IR26[15]}} , IR26[15:0] , 2'b0} : F_PC + 4;

endmodule
