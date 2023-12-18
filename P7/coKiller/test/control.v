`timescale 1ns / 1ps
`include "const.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:03:58 11/23/2023 
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
module control(
    input [31:0] instr,
    input beqZero,
    output regWrite,
    output [1:0] regDst,
    output aluSrc,
    output [2:0] write2reg,
    output memWrite,
    output [2:0] aluOp,
    output [2:0] nPcSel,
    output [1:0] extOp,
	output [3:0] lsOp,
	output start_D,
	output [3:0] mduOp,
	//
	output [1:0] rs_Tuse,
	output [1:0] rt_Tuse,
	output [1:0] Tnew_D,
	
	output [4:0] D_excCode,
	output isAri,
	
	output cp0Wr,
	
	output isBr,
	output eret_D,
	output mtc0_D
	
    );
	
	wire [5:0] opcode = instr[31:26];
	wire [5:0] funct = instr[5:0];
	
	wire rType = (opcode == 0);
	wire ori = (opcode == 6'b001101);
	wire lw = (opcode == 6'b100011);
	wire sw = (opcode == 6'b101011);
	wire lui = (opcode == 6'b001111);
	wire beq = (opcode == 6'b000100);
	wire bne = (opcode == 6'b000101);
	wire jal = (opcode == 6'b000011);
	wire lb = (opcode == 6'b100000);
	wire lbu = (opcode ==6'b100100);
	wire lh = (opcode == 6'b100001);
	wire lhu = (opcode == 6'b100101);
	wire sh = (opcode == 6'b101001);
	wire sb = (opcode == 6'b101000);
	wire addi = (opcode == 6'b001000);
	wire andi = (opcode == 6'b001100);
	
	wire mtc0 = (opcode == 6'b010000) & (instr[25:21] == 5'b00100);
	wire mfc0 = (opcode == 6'b010000) & (instr[25:21] == 5'b00000);
	wire eret = (opcode == 6'b010000) & (funct == 6'b011000);
	 
	wire andOp = rType & (funct == 6'b100100);
	wire add = rType & (funct == 6'b100000);
	wire sub = rType & (funct == 6'b100010);
	wire orOp = rType & (funct == 6'b100101);
	wire jr = rType & (funct == 6'b001000);
	wire mult = rType & (funct == 6'b011000);
	wire multu = rType & (funct == 6'b011001);
	wire div = rType & (funct == 6'b011010);
	wire divu = rType & (funct == 6'b011011);
	wire mfhi = rType & (funct == 6'b010000);
	wire mflo = rType & (funct == 6'b010010);
	wire mthi = rType & (funct == 6'b010001);
	wire mtlo = rType & (funct == 6'b010011);
	wire slt = rType & (funct == 6'b101010);
	wire sltu = rType & (funct == 6'b101011);
	wire syscall = rType & (funct == 6'b001100);
	
	wire md = mult | multu | div | divu;
	wire mt = mtlo | mthi;
	wire mf = mflo | mfhi;
	 
	assign aluOp = (andOp | andi) ? 3'b001 :
							(ori | orOp) ? 3'b010 :
							(add  | addi | lw | sw | lui | lb | lbu | lh | lhu | sh | sb) ? 3'b011 :   // every time we add a new instr, 						
							(sub) ? 3'b100 :
							(slt) ? 3'b101 :
							(sltu) ? 3'b110 : 3'b000;			// we need to decide if it executes add or sub or anything else
							
	assign regWrite = add | sub | orOp | andOp | slt | sltu | ori | andi | addi | lw | lui | jal | lb | lbu | lh | lhu | mf | mfc0;
	assign regDst = (add | sub | orOp | andOp | slt | sltu | mf) ? 2'b01 : 
							(ori | lui | lw | lb | lbu | lh | lhu | addi | andi | mfc0) ? 2'b10 :
							(jal) ? 2'b11 : 2'b00;
	assign aluSrc = (ori | lui | andi | addi | lw | sw | lb | lbu | lh | lhu | sb | sh) ? 1 : 0;
	assign write2reg = (add | sub | orOp | andOp | slt | sltu | ori | lui | andi | addi | mf) ? 3'b001 : 
								(lw | lb | lbu | lh | lhu) ? 3'b010 :
								(jal) ? 3'b011 :
								mfc0 ? 3'b100 : 3'b000;
	assign nPcSel = ((beq & (beqZero == 1)) | (bne & (beqZero == 0))) ? 3'b001 :
							(jal) ? 3'b010 :
							(jr) ?3'b011 : 3'b000; // if not beq not jal not jr, then it is a normal instr
	assign extOp = (ori | andi) ? 2'b01 :
							(lw | lb | lbu | lh | lhu | sw | sb | sh | addi) ? 2'b10 :
							(lui) ? 2'b11 : 2'b00;
	assign lsOp = (lw) ? 4'b0001 :
								(lh) ? 4'b0010 :
								(lhu) ? 4'b0011 :
								(lb) ? 4'b0100 : 
								(lbu) ? 4'b0101 : 
								(sw) ? 4'b0110 :
								(sh) ? 4'b0111 : 
								(sb) ? 4'b1000 : 4'b0000;
								
	assign rs_Tuse = (beq  | bne | jr) ? 2'b00 :
										(add | sub | andOp | orOp | slt | sltu | ori  | andi | addi | lw | lh | lhu | lb | lbu | sw | sh | sb | md | mt) ? 2'b01 : 2'b11;
	assign rt_Tuse = (beq | bne) ? 2'b00 : 
										(add | sub | andOp | orOp | slt | sltu | md) ? 2'b01 :
										(sw | sh | sb | mtc0) ? 2'b10 : 2'b11;
	assign Tnew_D = (jal | lui) ? 2'b00 :
										(add | sub | andOp | orOp | slt | sltu | ori | andi | addi | mf) ? 2'b01 :
										(lw | lh | lhu | lb | lbu | mfc0) ? 2'b10 : 2'b11;
										
	assign start_D = md ? 1 : 0;
	assign mduOp[3:0] = (mult) ? 4'b0001 :
												(multu) ? 4'b0010 :
												(div) ? 4'b0011 :
												(divu) ? 4'b0100 :
												(mfhi) ? 4'b0101 : 
												(mflo) ? 4'b0110 :
												(mthi) ? 4'b0111 :
												(mtlo) ? 4'b1000 :
																4'b0000;
	
	assign D_excCode = !(add | sub | andOp | orOp | slt | sltu | lui | addi | andi | ori | 
											lb | lbu | lh | lhu | lw | sb | sh | sw | mult | mult | multu | 
											div | divu | mfhi | mflo | mthi | mtlo | (opcode == 6'b000000 & funct == 6'b000000) |
											mtc0 | mfc0 | eret | jal | jr | beq | bne) ? `RI :
											(syscall) ? `sysExc : `noneExc;
											
	assign isAri = add | addi | sub;
	
	assign cp0Wr = mtc0;
	
	assign isBr = beq | bne | jal | jr;
	
	assign eret_D = eret;
	assign mtc0_D = mtc0;
	
	

endmodule
