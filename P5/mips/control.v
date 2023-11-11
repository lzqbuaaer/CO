`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:45 11/10/2023 
// Design Name: 
// Module Name:    control 
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
module control(
    input [31:0] IR,
    output [2:0] NPCOp,
    output RFWr,
    output EXTOp,
    output ALUBSel,
    output [2:0] ALUOp,
    output DMWr,
    output [1:0] RFA3Sel,
    output [1:0] RFWDSel
    );
    wire [5:0] op = IR[31:26];
    wire [5:0] func = IR[5:0];

    wire add,sub,ori,beq,lui,lw,sw,jal,jr;
    assign add = (op == 6'b000000) && (func == 6'b100000);
    assign sub = (op == 6'b000000) && (func == 6'b100010);
    assign ori = (op == 6'b001101);
    assign beq = (op == 6'b000100);
    assign lw = (op == 6'b100011);
    assign sw = (op == 6'b101011);
    assign lui = (op == 6'b001111);
    assign jal = (op == 6'b000011);
    assign jr = (op == 6'b000000) && (func == 6'b001000);

    assign NPCOp = jr ? `NPC_JR :
                   jal ? `NPC_JAL :
                   beq ? `NPC_BEQ : `NPC_ADD4;
    assign RFWr = (add | sub | ori | lw | lui | jal);
    assign EXTOp = (beq | sw | lw) ? `EXT_SIGN : `EXT_ZERO;
    assign ALUBSel = (ori | lui | sw | lw) ? `ALUB_EXT : `ALUB_RT;
    assign ALUOp = lui ? `ALU_LUI :
                   ori ? `ALU_ORI :
                   sub ? `ALU_SUB : `ALU_ADD;
    assign DMWr = sw;
    assign RFA3Sel = jal ? `RFA3_RA :
                     (add | sub) ? `RFA3_RD : `RFA3_RT;
    assign RFWDSel = jal ? `RFWD_PC8 :
                     lw ? `RFWD_DM : `RFWD_ALU;
endmodule
