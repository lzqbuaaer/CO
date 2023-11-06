`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:10:28 11/02/2023 
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
module mips(
    input clk,
    input reset
    );
	//Controller
    wire extop_wire;
    wire alubsel_wire;
    wire [2:0] aluop_wire;
    wire dmwr_wire;
    wire [1:0] rfwdsel_wire;
    wire [1:0] rfa3sel_wire;
    wire rfwr_wire;
    wire [2:0] npcop_wire;
    //PC
    wire [31:0] pc_wire;
    //NPC
    wire [31:0] pc4_wire;
    wire [31:0] npc_wire;
    //IM
    wire [31:0] im_wire;
    //EXT
    wire [31:0] ext_wire;
    //RF
    wire [4:0] rfa3_wire;
    assign rfa3_wire = (rfa3sel_wire == 2) ? 5'b11111 :
                       (rfa3sel_wire == 1) ? im_wire[15:11] : im_wire[20:16];
    wire [31:0] rfwd_wire;
    assign rfwd_wire = (rfwdsel_wire == 2) ? pc4_wire :
                       (rfwdsel_wire == 1) ? dmrd_wire : aluc_wire;
    wire [31:0] rfrd1_wire;
    wire [31:0] rfrd2_wire;
    //ALU
    wire [31:0] alub_wire;
    assign alub_wire = alubsel_wire ? ext_wire : rfrd2_wire;
    wire [31:0] aluc_wire;
    wire zero_wire;
    //DM
    wire [31:0] dmrd_wire;

    Controller ctrl(
        .op(im_wire[31:26]),
        .func(im_wire[5:0]),
        .EXTOp(extop_wire),
        .ALUBSel(alubsel_wire),
        .ALUOp(aluop_wire),
        .DMWr(dmwr_wire),
        .RFWDSel(rfwdsel_wire),
        .RFA3Sel(rfa3sel_wire),
        .RFWr(rfwr_wire),
        .NPCOp(npcop_wire)
    );
	PC pc(
        .clk(clk),
        .rst(reset),
        .in(npc_wire),
        .out(pc_wire)
    ); 
    IM im(
        .A(pc_wire),
        .D(im_wire)
    );
    EXT ext(
        .in(im_wire[15:0]),
        .out(ext_wire),
		  .EXTOp(extop_wire)
    );
    RF grf(
        .clk(clk),
        .rst(reset),
        .RFWr(rfwr_wire),
        .A1(im_wire[25:21]),
        .A2(im_wire[20:16]),
        .A3(rfa3_wire),
        .WD(rfwd_wire),
        .RD1(rfrd1_wire),
        .RD2(rfrd2_wire),
        .pc(pc_wire)
    );
    ALU alu(
        .ALUOp(aluop_wire),
        .A(rfrd1_wire),
        .B(alub_wire),
        .C(aluc_wire),
        .zero(zero_wire)
    );
    DM dm(
        .pc(pc_wire),
        .addr(aluc_wire),
        .WD(rfrd2_wire),
        .clk(clk),
        .rst(reset),
        .DMWr(dmwr_wire),
        .RD(dmrd_wire)
    );
    NPC npc(
        .pc(pc_wire),
        .imm(im_wire[25:0]),
        .ra(aluc_wire),
        .zero(zero_wire),
        .NPCOp(npcop_wire),
        .pc4(pc4_wire),
        .npc(npc_wire)
    );

endmodule
