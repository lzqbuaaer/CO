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
    output [3:0] NPCOp,
    output EXTOp,
    output [1:0] CMPOp,
    output [3:0] ALUOp,
    output ALUBSel,
    output [2:0] MDOp,
    output HLOp,
    output [2:0] DMENOp,
    output [2:0] DMEXTOp,
    output [1:0] RFA3Sel,
    output [2:0] RFWDSel,
    output RFWr,
    output MDStart
    );
    wire [5:0] op = IR[31:26];
    wire [5:0] func = IR[5:0];

    wire add,sub,iand,ior,slt,sltu,lui;
    wire addi,andi,ori;
    wire lb,lh,lw,sb,sh,sw;
    wire mult, multu, div, divu, mfhi, mflo, mthi, mtlo;
    wire beq, bne, jal, jr;

    assign add = (op == 6'b000000) && (func == 6'b100000);
    assign sub = (op == 6'b000000) && (func == 6'b100010);
    assign iand = (op == 6'b000000) && (func == 6'b100100);
    assign ior = (op == 6'b000000) && (func == 6'b100101);
    assign slt = (op == 6'b000000) && (func == 6'b101010);
    assign sltu = (op == 6'b000000) && (func == 6'b101011);
    
    assign lui = (op == 6'b001111);    
    assign addi = (op == 6'b001000);
    assign andi = (op == 6'b001100);
    assign ori = (op == 6'b001101);

    assign lb = (op == 6'b100000);
    assign lh = (op == 6'b100001);
    assign lw = (op == 6'b100011);
    assign sb = (op == 6'b101000);
    assign sh = (op == 6'b101001);
    assign sw = (op == 6'b101011);

    assign mult = (op == 6'b000000) && (func == 6'b011000);
    assign multu = (op == 6'b000000) && (func == 6'b011001);
    assign div = (op == 6'b000000) && (func == 6'b011010);
    assign divu = (op == 6'b000000) && (func == 6'b011011);
    assign mfhi = (op == 6'b000000) && (func == 6'b010000);
    assign mflo = (op == 6'b000000) && (func == 6'b010010);
    assign mthi = (op == 6'b000000) && (func == 6'b010001);
    assign mtlo = (op == 6'b000000) && (func == 6'b010011);

    assign beq = (op == 6'b000100);
    assign bne = (op == 6'b000101);
    assign jal = (op == 6'b000011);
    assign jr = (op == 6'b000000) && (func == 6'b001000);

    assign NPCOp = beq ? `NPC_BEQ :
                   bne ? `NPC_BNE :
                   jal ? `NPC_JAL :
                   jr ? `NPC_JR :` NPC_ADD4;
    assign EXTOp = (lb | lh | lw | sb | sh | sw | addi) ? `EXT_SIGN : `EXT_ZERO;
    assign CMPOp = bne ? `CMP_BNE : `CMP_BEQ;
    assign ALUOp = sub ? `ALU_SUB : 
                   iand ? `ALU_AND :
                   ior ? `ALU_OR :
                   slt ? `ALU_SLT :
                   sltu ? `ALU_SLTU :
                   lui ? `ALU_LUI :
                   addi ? `ALU_ADDI :
                   andi ? `ALU_ANDI :
                   ori ? `ALU_ORI : `ALU_ADD;
    assign ALUBSel = (lui | addi | andi | ori | lb | lh | lw | sb | sh | sw) ? `ALUB_EXT : `ALUB_RT;
    assign MDOp = mult ? `MUDI_MULT :
                  multu ? `MUDI_MULTU :
                  div ? `MUDI_DIV :
                  divu ? `MUDI_DIVU :
                  mthi ? `MUDI_MTHI :
                  mtlo ? `MUDI_MTLO : `MUDI_OTH;
    assign HLOp = mfhi ? `HL_HI : `HL_LO;
    assign DMEXTOp = lb ? `DMEXT_LB :
                     lh ? `DMEXT_LH :
                     lw ? `DMEXT_LW : `DMEXT_OTH;
    assign DMENOp = sb ? `DMEN_SB :
                    sh ? `DMEN_SH :
                    sw ? `DMEN_SW : `DMEN_OTH;
    assign RFA3Sel = jal ? `RFA3_RA :
                     (add | sub | iand | ior | slt | sltu | mfhi | mflo) ? `RFA3_RD : `RFA3_RT;
    assign RFWDSel = jal ? `RFWD_PC8 :
                     (lw | lh | lb) ? `RFWD_DM :
                     (mfhi | mflo) ? `RFWD_HL : `RFWD_ALU;
    assign RFWr = (add | sub | iand | ior | slt | sltu | lui | addi | andi | ori | lb | lh | lw | jal | mfhi | mflo);         
    assign MDStart = (mult | multu | div | divu);
    
endmodule
