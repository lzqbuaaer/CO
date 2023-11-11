`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:24:37 11/11/2023 
// Design Name: 
// Module Name:    mips 
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
`include"head.v"
module mips(
    input clk,
    input reset
    );

    //PC
    wire [31:0] F_NPC;
    wire [31:0] F_PC;
    wire F_PC_en;
    //IM
    wire [31:0] F_IR;
    //FD_REG
    wire FD_en;
    wire [31:0] D_PC;
    wire [31:0] D_IR;
    //NPC
    wire [31:0] D_PC8;
    wire [2:0] D_NPCOp;
    //GRF_D
    wire [31:0] D_RF_rs;
    wire [31:0] D_RF_rt;
    wire [31:0] D_rs;
    wire [31:0] D_rt;
    //EXT
    wire [31:0] D_EXT32;
    wire D_EXTOp;
    //CMP
    wire D_B_JP;
    //DE_REG
    wire [31:0] E_IR;
    wire [31:0] E_REG_rs;
    wire [31:0] E_REG_rt; 
    wire [31:0] E_rs;
    wire [31:0] E_rt; 
    wire [31:0] E_EXT32;
    wire [31:0] E_PC8;
    wire [31:0] E_PC;
    wire DE_rst;
    //ALU
    wire [31:0] E_ALUB;
    wire [2:0] E_ALUOp;
    wire [31:0] E_ALUO;
    //EM_REG
    wire [31:0] M_PC;
    wire [31:0] M_IR;
    wire [31:0] M_ALUO;
    wire [31:0] M_PC8;
    wire [31:0] M_REG_rt;
    wire [31:0] M_rt;
    //DM
    wire M_DMWr;
    wire [31:0] M_DMRD;
    //MW_REG
    wire [31:0] W_PC;
    wire [31:0] W_IR;
    wire [31:0] W_DMWD;
    wire [31:0] W_ALUO;
    wire [31:0] W_PC8;
    //GRF_W
    wire [4:0] W_RFA3;
    wire [31:0] W_RFWD;
    wire W_RFWr;
    //D_CTRL
    //E_CTRL
    wire E_ALUBSel;
    assign E_ALUB = (E_ALUBSel == `ALUB_RT) ? E_rt :E_EXT32;
    //M_CTRL
    //W_CTRL
    wire [1:0] W_RFA3Sel;
    assign W_RFA3 = (W_RFA3Sel == `RFA3_RA) ? 5'b11111 :
                    (W_RFA3Sel == `RFA3_RD) ? W_IR[15:11] : W_IR[20:16];
    wire [1:0] W_RFWDSel;
    assign W_RFWD = (W_RFWDSel == `RFWD_PC8) ? W_PC8 :
                    (W_RFWDSel == `RFWD_DM) ? W_DMWD : W_ALUO;
    
    //Stall
    wire Stall;
    assign F_PC_en = Stall;
    assign FD_en = Stall;
    assign DE_rst = (Stall | reset);

    //forward
    wire [31:0] W_FD = W_DMWD;
    wire [31:0] M_FD = (M_IR[31:26] == 6'b000011) ? M_PC8 : M_ALUO;
    wire [31:0] E_FD = E_PC8;
    wire [1:0] FWSel_D_rs;
    wire [1:0] FWSel_D_rt;
    wire [1:0] FWSel_E_rs;
    wire [1:0] FWSel_E_rt;
    wire [1:0] FWSel_M_rt;
    assign M_rt = (FWSel_M_rt == 1) ? W_FD : M_REG_rt;
    assign E_rs = (FWSel_E_rs == 2) ? M_FD :
                  (FWSel_E_rs == 1) ? W_FD : E_REG_rs;
    assign E_rt = (FWSel_E_rt == 2) ? M_FD :
                  (FWSel_E_rt == 1) ? W_FD : E_REG_rt;
    assign D_rs = (FWSel_D_rs == 3) ? E_FD : 
                  (FWSel_D_rs == 2) ? M_FD :
                  (FWSel_D_rs == 1) ? W_FD : D_RF_rs;
    assign D_rt = (FWSel_D_rt == 3) ? E_FD : 
                  (FWSel_D_rt == 2) ? M_FD :
                  (FWSel_D_rt == 1) ? W_FD : D_RF_rt;


    control D_CTRL(
        .IR(D_IR),
        .NPCOp(D_NPCOp),
        .EXTOp(D_EXTOp)
    );
    control E_CTRL(
        .IR(E_IR),
        .ALUBSel(E_ALUBSel),
        .ALUOp(E_ALUOp)
    );
    control M_CTRL(
        .IR(M_IR),
        .DMWr(M_DMWr)
    );
    control W_CTL(
        .IR(W_IR),
        .RFA3Sel(W_RFA3Sel),
        .RFWDSel(W_RFWDSel)
    );
    conflict Conflict(
        .D_IR(D_IR),
        .E_IR(E_IR),
        .M_IR(M_IR),
        .W_IR(W_IR),
        .Stall(Stall),
        .FW_D_rs(FWSel_D_rs),
        .FW_D_rt(FWSel_D_rt),
        .FW_E_rs(FWSel_E_rs),
        .FW_E_rt(FWSel_E_rt),
        .FW_M_rt(FWSel_M_rt)
    );
    pc PC(
        .NPC(F_NPC),
        .clk(clk),
        .rst(reset),
        ._en(F_PC_en),
        .PC(F_PC)
    );
    im IM(
        .PC(F_PC),
        .IR(F_IR)
    );
    fd_reg FD_REG(
        .clk(clk),
        .rst(reset),
        ._en(FD_en),
        .F_PC(F_PC),
        .F_IR(F_IR),
        .D_IR(D_IR),
        .D_PC(D_PC)
    );
    npc NPC(
        .F_PC(F_PC),
        .PC(D_PC),
        .B_JP(D_B_JP),
        .NPCOp(D_NPCOp),
        .RSdata(D_rs),
        .IR26(D_IR[25:0]),
        .NPC(F_NPC),
        .PC8(D_PC8)
    );
    grf GRF(
        .pc(D_PC),
        .A1(D_IR[25:21]),
        .A2(D_IR[20:16]),
        .A3(W_RFA3),
        .WD(W_RFWD),
        .RD1(D_RF_rs),
        .RD2(D_RF_rt),
        .RFWr(W_RFWr),
        .clk(clk),
        .rst(reset)
    );
    ext EXT(
        .in(D_IR[15:0]),
        .out(D_EXT32),
        .EXTOp(D_EXTOp)
    );
    cmp CMP(
        .rs(D_rs),
        .rs(D_rt),
        .jump(D_B_JP)
    );
    de_reg DE_REG(
        .clk(clk),
        .rst(DE_rst),
        .D_PC(D_PC),
        .D_IR(D_IR),
        .D_rs(D_rs),
        .D_rt(D_rt),
        .D_EXT(D_EXT32),
        .D_PC8(D_PC8),
        .E_PC(E_PC),
        .E_IR(E_IR),
        .E_rs(E_REG_rs),
        .E_rt(E_REG_rt),
        .E_EXT(E_EXT32),
        .E_PC8(E_PC8)
    );
    alu ALU(
        .A(E_rs),
        .B(E_ALUB),
        .C(E_ALUO),
        .ALUOp(E_ALUOp)
    );
    em_reg EM_REG(
        .clk(clk),
        .rst(reset),
        .E_PC(E_PC),
        .E_IR(E_IR),
        .E_ALUO(E_ALUO),
        .E_PC8(E_PC8),
        .E_rt(E_rt),
        .M_PC(M_PC),
        .M_IR(M_IR),
        .M_ALUO(M_ALUO),
        .M_PC8(M_PC8),
        .m_rt(M_REG_rt)
    );
    dm DM(
        .clk(clk),
        .rst(reset),
        .DMWr(M_DMWr),
        .pc(M_PC),
        .addr(M_ALUO),
        .WD(M_rt),
        .RD(M_DMRD)
    );
    mw_reg MW_REG(
        .clk(clk),
        .rst(reset),
        .M_PC(M_PC),
        .M_IR(M_IR),
        .M_DMRD(M_DMWD),
        .M_ALUO(M_ALUO),
        .M_PC8(M_PC8),
        .W_PC(W_PC),
        .W_IR(W_IR),
        .W_DMWD(W_DMWD),
        .W_ALUO(W_ALUO),
        .W_PC8(W_PC8)
    );

endmodule
