`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:46:47 11/22/2023 
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
`include "head.v"
module cpu(
    input clk,
    input reset,
    output [31:0] i_inst_addr,
    input [31:0] i_inst_rdata,
    output [31:0] m_inst_addr,
    output [31:0] m_data_addr,
    output [31:0] m_data_wdata,
    output [3:0] m_data_byteen,
    input [31:0] m_data_rdata,
    output w_grf_we,
    output [4:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr,
    input [5:0] HWInt
    );

    //PC
    wire [31:0] F_tPC;
    wire [31:0] F_PC;
    wire [31:0] F_NPC;
    wire [31:0] F_IR;
    wire F_PC_en;
    assign i_inst_addr = F_PC;
    //FD_REG
    wire FD_en;
    wire [31:0] D_PC;
    wire [31:0] D_tIR;
    wire [31:0] D_IR;
    //NPC
    wire [31:0] D_PC8;
    wire [3:0] D_NPCOp;
    //GRF_D
    wire [31:0] D_RF_rs;
    wire [31:0] D_RF_rt;
    wire [31:0] D_rs;  //after forward
    wire [31:0] D_rt;  //after forward
    //EXT
    wire [31:0] D_EXT32;
    wire D_EXTOp;
    //CMP
    wire D_B_JP;
    wire [1:0] D_CMPOp;
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
    wire [3:0] E_ALUOp;
    wire [31:0] E_ALUO;
    //MUDI
    wire [2:0] E_MDOp;
    wire [31:0] E_HI;
    wire [31:0] E_LO;
    wire E_Start;
    wire E_Busy;
    //EM_REG
    wire [31:0] E_HL;
    wire [31:0] M_HL;
    wire [31:0] M_PC;
    wire [31:0] M_IR;
    wire [31:0] M_ALUO;
    wire [31:0] M_PC8;
    wire [31:0] M_REG_rt;
    wire [31:0] M_rt;
    //DM
    assign m_inst_addr = M_PC;
    assign m_data_addr = M_ALUO;
    wire [3:0] M_byteen;
    wire [2:0] M_DMENOp;
    wire [2:0] M_DMEXTOp;
    wire [31:0] M_DMRD;
    //CP0
    wire [31:0] M_CP0;
    wire [31:0] EPC;
    wire Req;
    wire M_IntRespond;
    //MW_REG
    wire [31:0] W_PC;
    wire [31:0] W_IR;
    wire [31:0] W_DMRD;
    wire [31:0] W_ALUO;
    wire [31:0] W_PC8;
    wire [31:0] W_HL;
    wire [31:0] W_CP0;
    //GRF_W
    wire [4:0] W_RFA3;
    wire [31:0] W_RFWD;
    wire W_RFWr;
    assign w_grf_we = W_RFWr;
    assign w_grf_addr = W_RFA3;
    assign w_grf_wdata = W_RFWD;
    assign w_inst_addr = W_PC;
    //D_CTRL
    wire D_eret;
    assign F_PC = D_eret ? EPC : F_tPC;
    wire D_sys;
    //E_CTRL
    wire E_ALUBSel;
    assign E_ALUB = (E_ALUBSel == `ALUB_RT) ? E_rt :E_EXT32;
    wire E_HLOp;
    assign E_HL = (E_HLOp == `HL_HI) ? E_HI : E_LO;
    wire [1:0] E_needAriOv;
    wire E_needDMOv;
    //M_CTRL
    wire M_eret;
    wire [2:0] M_RFWDSel;
    wire [31:0] M_RFWD = (M_RFWDSel == `RFWD_PC8) ? M_PC8 :
                         (M_RFWDSel == `RFWD_HL) ? M_HL : M_ALUO;
    wire M_CP0EN;
    //W_CTRL
    wire [1:0] W_RFA3Sel;
    assign W_RFA3 = (W_RFA3Sel == `RFA3_RA) ? 5'b11111 :
                    (W_RFA3Sel == `RFA3_RD) ? W_IR[15:11] : W_IR[20:16];
    wire [2:0] W_RFWDSel;
    assign W_RFWD = (W_RFWDSel == `RFWD_PC8) ? W_PC8 :
                    (W_RFWDSel == `RFWD_DM) ? W_DMRD :
                    (W_RFWDSel == `RFWD_HL) ? W_HL :
                    (W_RFWDSel == `RFWD_CP0) ? W_CP0 : W_ALUO;
    
    //ExcCode
    wire F_EXC_AdEL = ((F_PC[1:0] != 0) | (F_PC < 32'h00003000) | (F_PC > 32'h00006fff)) && !D_eret;
    assign F_IR = F_EXC_AdEL ? 32'b0 : i_inst_rdata;
    wire D_EXC_RI;
    assign D_IR = D_EXC_RI ? 32'b0 : D_tIR;
    wire E_EXC_ArtOv;
    wire E_EXC_DMOv;
    wire [1:0] M_store;
    wire [1:0] M_load; 
    wire M_EXC_DMOv;
    wire M_S_Align = (M_store == `isSW && m_data_addr[1:0] != 0) || (M_store == `isSH && m_data_addr[0]);
    wire M_S_OutRange = !((m_data_addr >= 32'h00000000 && m_data_addr <= 32'h00002fff) ||
                          (m_data_addr >= 32'h00007f00 && m_data_addr <= 32'h00007f0b) ||
                          (m_data_addr >= 32'h00007f10 && m_data_addr <= 32'h00007f1b));
    wire M_S_Timer = ((M_store == `isSH || M_store == `isSB) && m_data_addr >= 32'h00007f00) ||
                     (m_data_addr >= 32'h00007f08 && m_data_addr <= 32'h00007f0b) ||
                     (m_data_addr >= 32'h00007f18 && m_data_addr <= 32'h00007f1b);
    wire M_EXC_AdES = (M_store != 0) && (M_EXC_DMOv || M_S_Align || M_S_OutRange || M_S_Timer);
    wire M_L_Align = (M_load == `isLW && m_data_addr[1:0] != 0) || (M_load == `isLH && m_data_addr[0]);
    wire M_L_OutRange = !((m_data_addr >= 32'h00000000 && m_data_addr <= 32'h00002fff) ||
                          (m_data_addr >= 32'h00007f00 && m_data_addr <= 32'h00007f0b) ||
                          (m_data_addr >= 32'h00007f10 && m_data_addr <= 32'h00007f1b));
    wire M_L_Timer = ((M_load == `isLH || M_load == `isLB) && m_data_addr >= 32'h00007f00);
    wire M_EXC_AdEL = (M_load != 0) && (M_EXC_DMOv || M_L_Align || M_L_OutRange || M_L_Timer);

    wire [4:0] D_tmp_EXC;
    wire [4:0] E_tmp_EXC;
    wire [4:0] M_tmp_EXC;
    wire [4:0] F_EXCCode = F_EXC_AdEL ? `EXC_AdEL : `EXC_NO;
    wire [4:0] D_EXCCode = D_tmp_EXC ? D_tmp_EXC :
                     D_EXC_RI ? `EXC_RI :
                     D_sys ? `EXC_SYSCALL : `EXC_NO;
    wire [4:0] E_EXCCode = E_tmp_EXC ? E_tmp_EXC :
                     E_EXC_ArtOv ? `EXC_Ov : `EXC_NO;
    wire [4:0] M_EXCCode = M_tmp_EXC ? M_tmp_EXC : 
                     M_EXC_AdES ? `EXC_AdES :
                     M_EXC_AdEL ? `EXC_AdEL : `EXC_NO;
    wire F_BD;           
    wire D_BD;
    wire E_BD;
    wire M_BD;   
    assign m_data_byteen = (M_IntRespond && m_data_addr == 32'h00007f20) ? M_byteen :
                           (Req) ? 4'b0 : M_byteen;
    //Stall
    wire Stall;
    assign F_PC_en = (Stall);
    assign FD_en = (Stall);
    //forward
    wire [31:0] W_FD = W_RFWD;
    wire [31:0] M_FD = M_RFWD;
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
        .IR(D_tIR),
        .NPCOp(D_NPCOp),
        .EXTOp(D_EXTOp),
        .CMPOp(D_CMPOp),
        .ERET(D_eret),
        .ri(D_EXC_RI),
        .bd(F_BD),
        .sys(D_sys)
    );
    control E_CTRL(
        .IR(E_IR),
        .ALUBSel(E_ALUBSel),
        .ALUOp(E_ALUOp),
        .MDStart(E_Start),
        .MDOp(E_MDOp),
        .HLOp(E_HLOp),
        .needAriOv(E_needAriOv),
        .needDMOv(E_needDMOv)
    );
    control M_CTRL(
        .IR(M_IR),
        .DMENOp(M_DMENOp),
        .DMEXTOp(M_DMEXTOp),
        .RFWDSel(M_RFWDSel),
        .CP0EN(M_CP0EN),
        .store(M_store),
        .load(M_load),
        .ERET(M_eret)
    );
    control W_CTRL(
        .IR(W_IR),
        .RFA3Sel(W_RFA3Sel),
        .RFWDSel(W_RFWDSel),
        .RFWr(W_RFWr)
    );
    conflict Conflict(
        .D_IR(D_IR),
        .E_IR(E_IR),
        .M_IR(M_IR),
        .W_IR(W_IR),
        .busy(E_Busy),
		.start(E_Start),
        .Stall(Stall),
        .D_eret(D_eret),
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
        .PC(F_tPC),
        .Req(Req)
    );
    fd_reg FD_REG(
        .clk(clk),
        .rst(reset),
        ._en(FD_en),
        .Req(Req),
        .F_PC(F_PC),
        .F_IR(F_IR),
        .D_IR(D_tIR),
        .D_PC(D_PC),
        .F_BD(F_BD),
        .F_EXC(F_EXCCode),
        .D_BD(D_BD),
        .D_EXC(D_tmp_EXC)
    );
    npc NPC(
        .F_PC(F_PC),
        .PC(D_PC),
        .B_JP(D_B_JP),
        .NPCOp(D_NPCOp),
        .RSdata(D_rs),
        .IR26(D_IR[25:0]),
        .NPC(F_NPC),
        .PC8(D_PC8),
        .Req(Req),
        .EPC(EPC)
    );
    grf GRF(
        .pc(W_PC),
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
        .rt(D_rt),
        .CMPOp(D_CMPOp),
        .jump(D_B_JP)
    );
    de_reg DE_REG(
        .clk(clk),
        .rst(reset),
        .stall(Stall),
        .Req(Req),
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
        .E_PC8(E_PC8),
        .D_BD(D_BD),
        .D_EXC(D_EXCCode),
        .E_BD(E_BD),
        .E_EXC(E_tmp_EXC)
    );
    alu ALU(
        .A(E_rs),
        .B(E_ALUB),
        .C(E_ALUO),
        .ALUOp(E_ALUOp),
        .AriOv(E_needAriOv),
        .DMOv(E_needDMOv),
        .EXC_Ari(E_EXC_ArtOv),
        .EXC_DM(E_EXC_DMOv)
    );
    mudi MUDI(
        .A(E_rs),
        .B(E_rt),
        .MDOp(E_MDOp),
        .Start(E_Start),
        .clk(clk),
        .rst(reset),
        .Req(Req),
        .Busy(E_Busy),
        .LO(E_LO),
        .HI(E_HI)
    );
    em_reg EM_REG(
        .clk(clk),
        .rst(reset),
        .Req(Req),
        .E_PC(E_PC),
        .E_IR(E_IR),
        .E_ALUO(E_ALUO),
        .E_PC8(E_PC8),
        .E_rt(E_rt),
        .E_HL(E_HL),
        .E_EXC_DMOv(E_EXC_DMOv),
        .M_EXC_DMOv(M_EXC_DMOv),
        .M_HL(M_HL),
        .M_PC(M_PC),
        .M_IR(M_IR),
        .M_ALUO(M_ALUO),
        .M_PC8(M_PC8),
        .M_rt(M_REG_rt),
        .E_BD(E_BD),
        .E_EXC(E_EXCCode),
        .M_BD(M_BD),
        .M_EXC(M_tmp_EXC)
    );
	 dmwd DMWD(
	     .byteen(M_byteen),
		  .in(M_rt),
		  .out(m_data_wdata)
	 );
    dmen DMEN(
        .ENSel(M_DMENOp),
        .addr(M_ALUO[1:0]),
        .byteen(M_byteen)
    );
    dmext DMEXT(
        .addr(M_ALUO[1:0]),
        .data(m_data_rdata),
        .Sel(M_DMEXTOp),
        .dmrd(M_DMRD)
    );
    cp0 CP0(
        .clk(clk),
        .reset(reset),
        .en(M_CP0EN),
        .addr(M_IR[15:11]),
        .in(M_rt),
        .out(M_CP0),
        .VPC(M_PC),
        .BDIn(M_BD),
        .ExcCodeIn(M_EXCCode),
        .HWInt(HWInt),
        .EXLClr(M_eret),
        .EPCOut(EPC),
        .Req(Req),
        .IntResponse(M_IntRespond)
    );
    mw_reg MW_REG(
        .clk(clk),
        .rst(reset),
        .M_PC(M_PC),
        .M_IR(M_IR),
        .M_DMRD(M_DMRD),
        .M_ALUO(M_ALUO),
        .M_PC8(M_PC8),
        .W_PC(W_PC),
        .W_IR(W_IR),
        .W_DMRD(W_DMRD),
        .W_ALUO(W_ALUO),
        .W_PC8(W_PC8),
        .M_HL(M_HL),
        .W_HL(W_HL),
        .M_CP0(M_CP0),
        .W_CP0(W_CP0),
        .Req(Req)
    );

endmodule
