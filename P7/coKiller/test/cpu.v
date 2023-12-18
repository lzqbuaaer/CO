`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:01:23 12/17/2023 
// Design Name: 
// Module Name:    cpu 
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
module cpu(
	input clk,
	input reset,
	input [5:0] hwInt,
	input [31:0] PrRd,
	output PrWe,
	output [31:0] PrWd,
	output [31:0] PrAddr,
	output [31:0] M_PCout,
	
	input [31:0] i_inst_rdata,
	output [31:0] i_inst_addr,
	
	input [31:0] m_data_rdata,
	output [31:0] m_data_addr,
	output [31:0] m_data_wdata,
	output [3:0] m_data_byteen,
	output [31:0] m_inst_addr, 
	
	output w_grf_we,
	output [31:0] w_grf_addr,
    output [31:0] w_grf_wdata,
    output [31:0] w_inst_addr
    );
	
	wire regWrite_D;
	wire regWrite_E;
	wire regWrite_M;
	wire regWrite_W;
	wire [1:0] regDst_D;
	wire [1:0] regDst_E;
	wire [1:0] regDst_M;
	wire [1:0] regDst_W;
	wire aluSrc_D;
	wire aluSrc_E;
	wire aluSrc_M;
	wire aluSrc_W;
	wire [2:0] aluOp_D;
	wire [2:0] aluOp_E;
	wire [2:0] aluOp_M;
	wire [2:0] aluOp_W;
	wire [2:0] write2reg_D;
	wire [2:0] write2reg_E;
	wire [2:0] write2reg_M;
	wire [2:0] write2reg_W;
	wire memWrite_D;
	wire memWrite_E;
	wire memWrite_M;
	wire memWrite_W;
	wire [2:0] nPcSel_D;
	wire [2:0] nPcSel_E;
	wire [2:0] nPcSel_M;
	wire [2:0] nPcSel_W;
	wire [1:0] extOp_D;
	wire [1:0] extOp_E;
	wire [1:0] extOp_M;
	wire [1:0] extOp_W;
	wire [3:0] lsOp_D;
	wire [3:0] lsOp_E;
	wire [3:0] lsOp_M;
	wire [3:0] lsOp_W;
	wire [3:0] mduOp_D;
	wire [3:0] mduOp_E;
	wire start_D;
	wire start_E;
	
	
	wire [31:0] instr_F;
	wire [31:0] instr_D;
	wire [31:0] instr_E;
	wire [31:0] instr_M;
	wire [31:0] instr_W;
	wire [31:0] PC_F;
	wire [31:0] PC_D;
	wire [31:0] PC_E;
	wire [31:0] PC_M;
	wire [31:0] PC_W;
	wire [31:0] PCNext_D;
	wire PC_en; // attention!!!
	wire [31:0] PC8_E = PC_E[31:0]+ 8;
	wire [31:0] PC8_M = PC_M[31:0] + 8;
	wire [31:0] PC8_W = PC_W[31:0] + 8;
	
	wire [4:0] A1_D = instr_D [25:21];
	wire [4:0] A1_E;
	wire [4:0] A2_D = instr_D [20:16];
	wire [4:0] A2_E;
	wire [4:0] A2_M;
	wire [4:0] rd_D = instr_D[15:11];
	wire [4:0] A3_D = (regDst_D == 2'b01) ? rd_D[4:0] : 
								(regDst_D == 2'b10) ? A2_D[4:0] : 
								(regDst_D == 2'b11) ? 5'b11111 : 5'b00000;
	wire [4:0] A3_E;
	wire [4:0] A3_M;
	wire [4:0] A3_W;
	
	wire [31:0] writeInReg_W;
	
	wire D_en;
	wire [31:0] RD1_D;
	wire [31:0] RD2_D;
	wire [31:0] imm_ext;
	wire [31:0] V1_D;
	wire [31:0] V1_E;
	wire [31:0] V1_E_f;
	wire [31:0] V2_D;
	wire [31:0] V2_E;
	wire [31:0] V2_M;
	wire [31:0] V2_E_f;
	wire [31:0] V2_M_f;
	wire beqZero_D;
	wire [31:0] aluSrcB_E;
	
	wire E_clr;
	wire [31:0] imm_E;
	wire [31:0] aluResult_E;
	wire [31:0] aluResult_M;
	wire [31:0] aluResult_W;
	wire [31:0] aluOut_E;
	wire [31:0] hi_E;
	wire [31:0] lo_E;
	wire [31:0] mduOut_E;
	wire busy_E;
	
	wire [31:0] readData_M;
	wire [31:0] readData_W;
	
	wire [31:0] E_out;
	wire [31:0] M_out;
	wire [31:0] W_out;
	wire [1:0] Tnew_D;
	wire [1:0] Tnew_E;
	wire [1:0] Tnew_M;
	wire [1:0] Tnew_W;
	wire [1:0] rs_Tuse;
	wire [1:0] rt_Tuse;
	
	wire [1:0] cmpV1Fwd;
	wire [1:0] cmpV2Fwd;
	wire [1:0] aluSrcAFwd;
	wire [1:0] aluSrcBFwd;
	wire dmWdFwd;
	wire selEout;
	wire selMout;
	wire [1:0] selWout;
	wire stall;
	
	wire [4:0] F_excCode;
	wire [4:0] D_excCode;
	wire [4:0] D_excCode_old;
	wire [4:0] D_excCode_new;
	wire [4:0] E_excCode;
	wire [4:0] E_excCode_old;
	wire [4:0] E_excCode_new;
	wire [4:0] M_excCode;
	wire [4:0] M_excCode_old;
	wire [4:0] M_excCode_new;
	
	wire req;
	wire bd_F = isBr_D;
	wire bd_D;
	wire bd_E;
	wire bd_M;
	wire isBr_D;
	wire [31:0] EPCOut;
	wire isAri_D;
	wire isAri_E;
	wire cp0Wr_D;
	wire cp0Wr_E;
	wire cp0Wr_M;
	wire eret_D;
	wire mtc0_D;
	wire mtc0_E;
	wire mtc0_M;
	
	wire [1:0] isMf_E = ((mduOp_E == 4'b0101) | (mduOp_E == 4'b0110)) ? 2'b01 : 2'b00;
	wire isMdu_D = (mduOp_D != 4'b0000);
	
	assign i_inst_addr[31:0] = PC_F[31:0];
	assign instr_F[31:0] = i_inst_rdata[31:0];
	assign m_inst_addr[31:0] = PC_M[31:0];
	assign m_data_addr[31:0] = aluResult_M[31:0];
	
	
	assign PC_en = (stall) ? 1'b0 : 1'b1;
	assign D_en = (stall) ? 1'b0 : 1'b1;
	assign E_clr = (stall) ? 1'b1 : 1'b0;
	
	assign w_grf_we = regWrite_W;
	assign w_grf_addr = A3_W;
	assign w_grf_wdata = writeInReg_W;
	assign w_inst_addr = PC_W;
	
	// M_exception_solvement
	wire sh_tag = (lsOp_M == 4'b0111);
	wire sb_tag = (lsOp_M == 4'b1000);
	wire store_tag = (lsOp_M == 4'b0111) | (lsOp_M == 4'b1000) | (lsOp_M == 4'b0110);
	wire sw_tag = lsOp_M == 4'b0110;
	
	wire lh_tag = (lsOp_M == 4'b0010) | (lsOp_M == 4'b0011);
	wire lb_tag = (lsOp_M == 4'b0100) | (lsOp_M == 4'b0101);
	wire lw_tag = lsOp_M == 4'b0001;
	wire load_tag = lh_tag | lb_tag | lw_tag;
	
	
	wire t0Addr = (aluResult_M >= 32'h00007f00) & (aluResult_M <= 32'h00007f0b);
	wire t1Addr = (aluResult_M >= 32'h00007f10) & (aluResult_M <= 32'h00007f1b);
	wire dmAddr = (aluResult_M >= 32'h0) & (aluResult_M <= 32'h00002fff);
	
	assign D_excCode_new = (D_excCode_old) ? D_excCode_old : D_excCode;
	
	assign E_excCode_new = (E_excCode_old) ? E_excCode_old : E_excCode;
	
	assign M_excCode_new = (M_excCode_old) ? M_excCode_old : M_excCode;
	
	assign M_excCode = ((lw_tag & (aluResult_M[1:0] != 2'b00)) |  (lh_tag & (aluResult_M[0] != 1'b0))) ? `ADEL : 
											((lb_tag | lh_tag) & (t0Addr | t1Addr)) ? `ADEL :
											(load_tag & !t0Addr & !t1Addr & !dmAddr) ? `ADEL :
											((sw_tag & (aluResult_M[1:0] != 2'b00)) | (sh_tag & (aluResult_M[0] != 1'b0))) ? `ADES :
											((sb_tag | sh_tag) & (t0Addr | t1Addr)) ? `ADES :
											(store_tag & (t0Addr | t1Addr) & (aluResult_M[3:0] == 4'h8)) ? `ADES : 
											(store_tag & !t0Addr & !t1Addr & !dmAddr) ? `ADES : 5'd0;
	
	assign PrWe = memWrite_M & (!req) & (aluResult_M >= 32'h0000_7f00);
	assign PrWd = V2_M_f;
	assign PrAddr = aluResult_M;
	assign M_PCout = PC_M;
	
	Rcontrol risk_control(
		.A1_D(A1_D[4:0]),
		.A1_E(A1_E[4:0]),
		.A2_D(A2_D[4:0]),
		.A2_E(A2_E[4:0]),
		.A2_M(A2_M[4:0]),
		.A3_E(A3_E[4:0]),
		.A3_M(A3_M[4:0]),
		.A3_W(A3_W[4:0]),
		.Tnew_D(Tnew_D[1:0]),
		.Tnew_E(Tnew_E[1:0]),
		.Tnew_M(Tnew_M[1:0]),
		.Tnew_W(Tnew_W[1:0]),
		.rs_Tuse(rs_Tuse[1:0]),
		.rt_Tuse(rt_Tuse[1:0]),
		.regWrite_E(regWrite_E),
		.regWrite_M(regWrite_M),
		.regWrite_W(regWrite_W),
		.instr_E(instr_E[31:0]),
		.instr_M(instr_M[31:0]),
		.instr_W(instr_W[31:0]),
		.isMdu_D(isMdu_D),
		.lsOp_W(lsOp_W[3:0]),
		.busy_E(busy_E),
		.start_E(start_E),
		
		.cmpV1Fwd(cmpV1Fwd[1:0]),
		.cmpV2Fwd(cmpV2Fwd[1:0]),
		.aluSrcAFwd(aluSrcAFwd[1:0]),
		.aluSrcBFwd(aluSrcBFwd[1:0]),
		.dmWdFwd(dmWdFwd),
		.selEout(selEout),
		.selMout(selMout),
		.selWout(selWout[1:0]),
		.stall(stall),
		
		.eret_D(eret_D),
		.mtc0_E(mtc0_E),
		.mtc0_M(mtc0_M),
		.E_rd_addr(instr_E[15:11]),
		.M_rd_addr(instr_M[15:11])
	);
	
	f_ifu F_ifu(
	.PCNext(PCNext_D[31:0]),
    .clk(clk),
    .reset(reset),
	.PC_en(PC_en),
    .PC_F(PC_F[31:0]),
	.F_excCode(F_excCode[4:0]),
	.eret_D(eret_D),
	.EPC(EPCOut[31:0]),
	.req(req)
	);
	
	D_reg FD_reg(
		.clk(clk),
		.reset(reset),
		.instr_F(instr_F[31:0]),
		.PC_F(PC_F[31:0]),
		.D_en(D_en),
		.F_excCode(F_excCode[4:0]),
		.instr_D(instr_D[31:0]),
		.PC_D(PC_D[31:0]),
		.D_excCode_old(D_excCode_old[4:0]),
		.bd_F(bd_F),
		.bd_D(bd_D),
		.req(req)
	);
	
	control D_control(
		.instr(instr_D[31:0]),
		.beqZero(beqZero_D),
		.regWrite(regWrite_D),
		.regDst(regDst_D[1:0]),
		.aluSrc(aluSrc_D),
		.write2reg(write2reg_D[2:0]),
		.memWrite(memWrite_D),
		.aluOp(aluOp_D[2:0]),
		.nPcSel(nPcSel_D[2:0]),
		.extOp(extOp_D[1:0]),
		.lsOp(lsOp_D[3:0]),
		.start_D(start_D),
		.mduOp(mduOp_D[3:0]),
		//
		.rs_Tuse(rs_Tuse[1:0]),
		.rt_Tuse(rt_Tuse[1:0]),
		.Tnew_D(Tnew_D[1:0]),
		.D_excCode(D_excCode[4:0]),
		.isAri(isAri_D),
		.cp0Wr(cp0Wr_D),
		.isBr(isBr_D),
		.eret_D(eret_D),
		.mtc0_D(mtc0_D)
	);
	
	d_npc D_npc(
		.PC_F(PC_F[31:0]),
		.PC_D(PC_D[31:0]),
		.nPcSel(nPcSel_D[2:0]),
		.imm(instr_D[25:0]),
		.ra(V1_D[31:0]),
		.PCNext(PCNext_D[31:0]),
		.req(req),
		.eret(eret_D),
		.EPC(EPCOut[31:0])
	);
	
	d_grf D_grf(
		.clk(clk),
		.reset(reset),
		.we(regWrite_W),
		.A1(A1_D[4:0]),
		.A2(A2_D[4:0]),
		.A3(A3_W[4:0]),
		.instr_D(instr_D[31:0]),
		.writeInData(writeInReg_W[31:0]),
		.PC(PC_W[31:0]),
		.RD1(RD1_D[31:0]),
		.RD2(RD2_D[31:0])
	);
	
	d_ext D_ext(
		.extOp(extOp_D[1:0]),
		.imm_in(instr_D[15:0]),
		.imm_out(imm_ext[31:0])
	);
	
	MUX cmp_V1_fwd(
		.src0(RD1_D[31:0]),
		.src1(M_out[31:0]),
		.src2(E_out[31:0]),
		.selOp(cmpV1Fwd[1:0]),
		.result(V1_D[31:0])
	);
	
	MUX cmp_V2_fwd(
		.src0(RD2_D[31:0]),
		.src1(M_out[31:0]),
		.src2(E_out[31:0]),
		.selOp(cmpV2Fwd[1:0]),
		.result(V2_D[31:0])
	);
	
	d_cmp D_cmp(
		.srcA(V1_D[31:0]),
		.srcB(V2_D[31:0]),
		.beqZero(beqZero_D)
	);
	
	E_reg DE_reg(
		.clk(clk),
		.reset(reset),
		.instr_D(instr_D[31:0]),
		.PC_D(PC_D[31:0]),
		.V1_D(V1_D[31:0]),
		.V2_D(V2_D[31:0]),
		.A1_D(A1_D[4:0]),
		.A2_D(A2_D[4:0]),
		.A3_D(A3_D[4:0]),
		.imm_D(imm_ext[31:0]),
		.clr(E_clr),
		.Tnew_D(Tnew_D[1:0]),
		
		.PC_E(PC_E[31:0]),
		.instr_E(instr_E[31:0]),
		.imm_E(imm_E[31:0]),
		.V1_E(V1_E[31:0]),
		.V2_E(V2_E[31:0]),
		.A1_E(A1_E[4:0]),
		.A2_E(A2_E[4:0]),
		.A3_E(A3_E[4:0]),
		.Tnew_E(Tnew_E[1:0]),
		
		// control signals
		.regWrite_D(regWrite_D),
		.regDst_D(regDst_D[1:0]),
		.aluSrc_D(aluSrc_D),
		.aluOp_D(aluOp_D[2:0]),
		.write2reg_D(write2reg_D[2:0]),
		.memWrite_D(memWrite_D),
		.nPcSel_D(nPcSel_D[2:0]),
		.extOp_D(extOp_D[1:0]),
		.lsOp_D(lsOp_D[3:0]),
		.start_D(start_D),
		.mduOp_D(mduOp_D[3:0]),
		
		.regWrite_E(regWrite_E),
		.regDst_E(regDst_E[1:0]),
		.aluSrc_E(aluSrc_E),
		.aluOp_E(aluOp_E[2:0]),
		.write2reg_E(write2reg_E[2:0]),
		.memWrite_E(memWrite_E),
		.nPcSel_E(nPcSel_E[2:0]),
		.extOp_E(extOp_E[1:0]),
		.lsOp_E(lsOp_E[3:0]),
		.start_E(start_E),
		.mduOp_E(mduOp_E[3:0]),
		
		.D_excCode(D_excCode_new[4:0]),
		.E_excCode_old(E_excCode_old[4:0]),
		
		.isAri_D(isAri_D),
		.cp0Wr_D(cp0Wr_D),
		.bd_D(bd_D),
		.isAri_E(isAri_E),
		.cp0Wr_E(cp0Wr_E),
		.bd_E(bd_E),
		.req(req),
		.stall(stall),
		.mtc0_D(mtc0_D),
		.mtc0_E(mtc0_E)
		// 
	);
	
	MUX E_out_mux(
		.src0(imm_E[31:0]),
		.src1(PC8_E[31:0]),
		.selOp({{1{1'b0}}, selEout}),
		.result(E_out[31:0])
	);
	
	MUX alu_srcA_fwd(
		.src0(V1_E[31:0]),
		.src1(W_out[31:0]),
		.src2(M_out[31:0]),
		.selOp(aluSrcAFwd[1:0]),
		.result(V1_E_f[31:0])
	);
	
	MUX alu_srcB_fwd(
		.src0(V2_E[31:0]),
		.src1(W_out[31:0]),
		.src2(M_out[31:0]),
		.selOp(aluSrcBFwd[1:0]),
		.result(V2_E_f[31:0])
	);
	
	MUX alu_srcB_mux(
		.src0(V2_E_f[31:0]),
		.src1(imm_E[31:0]),
		.selOp({{1{1'b0}}, aluSrc_E}),
		.result(aluSrcB_E[31:0])
	);
	
	e_alu E_alu(
		.srcA(V1_E_f[31:0]),
		.srcB(aluSrcB_E[31:0]),
		.aluOp(aluOp_E[2:0]),
		.isAri(isAri_E),
		.aluResult(aluOut_E[31:0]),
		.E_excCode(E_excCode[4:0])
	);
	
	e_MDU E_MDU(
		.clk(clk),
		.reset(reset),
		.start(start_E),
		.mduOp(mduOp_E[3:0]),
		.srcA(V1_E_f[31:0]),
		.srcB(V2_E_f[31:0]),
		.busy(busy_E),
		.hi(hi_E[31:0]),
		.lo(lo_E[31:0]),
		.mduOut(mduOut_E[31:0]),
		.req(req)
	);
	
	MUX alu_result_mux(
		.src0(aluOut_E[31:0]),
		.src1(mduOut_E[31:0]),
		.selOp(isMf_E[1:0]),
		.result(aluResult_E[31:0])
	);
	
	M_reg EM_reg(
		.clk(clk),
		.reset(reset),
		.instr_E(instr_E[31:0]),
		.PC_E(PC_E[31:0]),
		.aluResult_E(aluResult_E[31:0]),
		.V2_E_f(V2_E_f[31:0]),
		.Tnew_E(Tnew_E[1:0]),
		.A2_E(A2_E[4:0]),
		.A3_E(A3_E[4:0]),
		.instr_M(instr_M[31:0]),
		.PC_M(PC_M[31:0]),
		.aluResult_M(aluResult_M[31:0]),
		.V2_M(V2_M[31:0]),
		.Tnew_M(Tnew_M[1:0]),
		.A2_M(A2_M[4:0]),
		.A3_M(A3_M[4:0]),
		
		// control signals
		.regWrite_E(regWrite_E),
		.regDst_E(regDst_E[1:0]),
		.aluSrc_E(aluSrc_E),
		.aluOp_E(aluOp_E[2:0]),
		.write2reg_E(write2reg_E[2:0]),
		.memWrite_E(memWrite_E),
		.nPcSel_E(nPcSel_E[2:0]),
		.extOp_E(extOp_E[1:0]),
		.lsOp_E(lsOp_E[3:0]),
		
		.regWrite_M(regWrite_M),
		.regDst_M(regDst_M[1:0]),
		.aluSrc_M(aluSrc_M),
		.aluOp_M(aluOp_M[2:0]),
		.write2reg_M(write2reg_M[2:0]),
		.memWrite_M(memWrite_M),
		.nPcSel_M(nPcSel_M[2:0]),
		.extOp_M(extOp_M[1:0]),
		.lsOp_M(lsOp_M[3:0]),
		
		.E_excCode(E_excCode_new[4:0]),
		.M_excCode_old(M_excCode_old[4:0]),
		
		.bd_E(bd_E),
		.cp0Wr_E(cp0Wr_E),
		.bd_M(bd_M),
		.cp0Wr_M(cp0Wr_M),
		
		.req(req),
		.stall(stall),
		.mtc0_E(mtc0_E),
		.mtc0_M(mtc0_M)
		// 
	);
	
	MUX M_out_mux(
		.src0(aluResult_M[31:0]),
		.src1(PC8_M[31:0]),
		.selOp({{1{1'b0}}, selMout}),
		.result(M_out[31:0])
	);
	
	MUX dm_wd_fwd(
		.src0(V2_M[31:0]),
		.src1(W_out[31:0]),
		.selOp({{1{1'b0}}, dmWdFwd}),
		.result(V2_M_f[31:0])
	);
	
	/*m_dm M_dm(
		.clk(clk),
		.reset(reset),
		.memWrite(memWrite_M),
		.lsOp(lsOp_M[2:0]),
		.addr(aluResult_M[31:0]),
		.writeData(V2_M_f[31:0]),
		.PC_M(PC_M[31:0]),
		.readData(readData_M[31:0])
	);*/
	
	m_byte_ext M_byte_ext(
		.addr_low2(aluResult_M[1:0]),
		.lsOp_M(lsOp_M[3:0]),
		.V2_M_f(V2_M_f[31:0]),
		.m_data_byteen(m_data_byteen[3:0]),
		.m_data_wdata(m_data_wdata[31:0]),
		.req(req)
	);
	
	m_data_ext M_data_ext(
		.dataIn(m_data_rdata[31:0]),
		.lsOp_M(lsOp_M[3:0]),
		.addr_low2(aluResult_M[1:0]),
		.readData_M(readData_M[31:0])
	);
	
	wire [31:0] readData_M_new = (readData_M != PrRd) ? PrRd : readData_M;
	wire [31:0] cp0Out_M;
	wire [31:0] cp0Out_W;
	wire eret_M = (instr_M[31:26] == 6'b010000) & (instr_M[5:0] == 6'b011000);
	
	
	cp0 CP0(
		.clk(clk),
		.reset(reset),
		.en(cp0Wr_M), 
		.cp0Addr(instr_M[15:11]),
		.cp0In(V2_M_f[31:0]),
		.cp0Out(cp0Out_M[31:0]),
		.VPC(PC_M[31:0]),
		.bdIn(bd_M),
		.excCode_in(M_excCode_new[4:0]),
		.hwInt(hwInt[5:0]),
		.exlClr(eret_M),
		.EPCOut(EPCOut[31:0]),
		.req(req)
	);
	
	
	W_reg MW_reg(
		.clk(clk),
		.reset(reset),
		.readData_M(readData_M_new[31:0]),
		.aluResult_M(aluResult_M[31:0]),
		.instr_M(instr_M[31:0]),
		.PC_M(PC_M[31:0]),
		.Tnew_M(Tnew_M[1:0]),
		.A3_M(A3_M[4:0]),
		.instr_W(instr_W[31:0]),
		.PC_W(PC_W[31:0]),
		.readData_W(readData_W[31:0]),
		.aluResult_W(aluResult_W[31:0]),
		.Tnew_W(Tnew_W[1:0]),
		.A3_W(A3_W[4:0]),
		
		// control signals
		.regWrite_M(regWrite_M),
		.regDst_M(regDst_M[1:0]),
		.aluSrc_M(aluSrc_M),
		.aluOp_M(aluOp_M[2:0]),
		.write2reg_M(write2reg_M[2:0]),
		.memWrite_M(memWrite_M),
		.nPcSel_M(nPcSel_M[2:0]),
		.extOp_M(extOp_M[1:0]),
		.lsOp_M(lsOp_M[3:0]),
		
		.regWrite_W(regWrite_W),
		.regDst_W(regDst_W[1:0]),
		.aluSrc_W(aluSrc_W),
		.aluOp_W(aluOp_W[2:0]),
		.write2reg_W(write2reg_W[2:0]),
		.memWrite_W(memWrite_W),
		.nPcSel_W(nPcSel_W[2:0]),
		.extOp_W(extOp_W[1:0]),
		.lsOp_W(lsOp_W[3:0]),
		.clr(req),
		.cp0Out_M(cp0Out_M[31:0]),
		.cp0Out_W(cp0Out_W[31:0])
		// 
	);
	
	MUX W_out_mux(
		.src0(aluResult_W[31:0]),
		.src1(PC8_W[31:0]),
		.src2(readData_W[31:0]),
		.src3(cp0Out_W[31:0]),
		.selOp(selWout[1:0]),
		.result(W_out[31:0])
	);
	
	/*MUX write_grf_data_mux(
		.src0(32'b0),
		.src1(aluResult_W[31:0]),
		.src2(readData_W[31:0]),
		.src3(PC8_W[31:0]),
		.selOp(write2reg_W[2:0]),
		.result(writeInReg_W[31:0])
	);*/
	
	assign writeInReg_W = (write2reg_W == 3'b001) ? aluResult_W :
													(write2reg_W == 3'b010) ? readData_W :
													(write2reg_W == 3'b011) ? PC8_W :
													(write2reg_W == 3'b100) ?  cp0Out_W : 0;


endmodule
