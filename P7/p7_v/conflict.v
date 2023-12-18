`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:06 11/11/2023 
// Design Name: 
// Module Name:    conflict 
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
module conflict(
    input [31:0] D_IR,
    input [31:0] E_IR,
    input [31:0] M_IR,
    input [31:0] W_IR,
    input busy,
	input start,
    input D_eret,
    output Stall,
    output [1:0] FW_D_rs,
    output [1:0] FW_D_rt,
    output [1:0] FW_E_rs,
    output [1:0] FW_E_rt,
    output [1:0] FW_M_rt
    );
    wire [5:0] D_intr;
    wire [4:0] D_A1;
    wire [4:0] D_A2;
    wire [4:0] D_A3;
    wire [5:0] E_intr;
    wire [4:0] E_A1;
    wire [4:0] E_A2;
    wire [4:0] E_A3;
    wire [5:0] M_intr;
    wire [4:0] M_A1;
    wire [4:0] M_A2;
    wire [4:0] M_A3;
    wire [5:0] W_intr;
    wire [4:0] W_A1;
    wire [4:0] W_A2;
    wire [4:0] W_A3;

    decode D_dec(.IR(D_IR),.out(D_intr),.A1(D_A1),.A2(D_A2),.A3(D_A3));
    decode E_dec(.IR(E_IR),.out(E_intr),.A1(E_A1),.A2(E_A2),.A3(E_A3));
    decode M_dec(.IR(M_IR),.out(M_intr),.A1(M_A1),.A2(M_A2),.A3(M_A3));
    decode W_dec(.IR(W_IR),.out(W_intr),.A1(W_A1),.A2(W_A2),.A3(W_A3));

    wire [1:0] E_Tnew;
    wire [1:0] M_Tnew;
    wire [1:0] W_Tnew;
    wire [1:0] D_rs_Tuse;
    wire [1:0] D_rt_Tuse;
    wire [1:0] E_rs_Tuse;
    wire [1:0] E_rt_Tuse;
    wire [1:0] M_rt_Tuse;

    assign E_Tnew = (E_intr == `LW | E_intr == `LH | E_intr == `LB | E_intr == `MFC0) ? 2 :
                    (E_intr == `ADD | E_intr == `SUB | E_intr == `AND | E_intr == `OR | E_intr == `SLT | E_intr == `SLTU | E_intr == `ADDI | E_intr == `ANDI | E_intr == `ORI | E_intr == `LUI | E_intr == `MFHI | E_intr == `MFLO) ? 1 : 0;
    assign M_Tnew = (M_intr == `LW | M_intr == `LH | M_intr == `LB | M_intr == `MFC0) ? 1 : 0;
    assign W_Tnew = 0;
    assign D_rs_Tuse = (D_intr == `JR | D_intr == `BEQ | D_intr == `BNE) ? 0 : 1;
    assign D_rt_Tuse = (D_intr == `SW | D_intr == `SH | D_intr == `SB) ? 2 : 
                       (D_intr == `BEQ | D_intr == `BNE) ? 0 : 1;
    assign E_rs_Tuse = 0;
    assign E_rt_Tuse = (E_intr == `SW | E_intr == `SH | E_intr == `SB) ? 1 : 0;
    assign M_rt_Tuse = 0;

    //block
    wire M_stall_rs = (M_Tnew > D_rs_Tuse) && (D_A1 == M_A3) && (D_A1 != 0);
    wire M_stall_rt = (M_Tnew > D_rt_Tuse) && (D_A2 == M_A3) && (D_A2 != 0);
    wire E_stall_rs = (E_Tnew > D_rs_Tuse) && (D_A1 == E_A3) && (D_A1 != 0);
    wire E_stall_rt = (E_Tnew > D_rt_Tuse) && (D_A2 == E_A3) && (D_A2 != 0);
    wire MD_stall = (busy | start) && (D_intr == `MULT | D_intr == `MULTU | D_intr == `DIV | D_intr == `DIVU | D_intr == `MFLO | D_intr == `MFHI | D_intr == `MTLO | D_intr == `MTHI);
    wire eret_stall = D_eret && ((E_intr == `MTC0 && E_IR[15:11] == 5'd14) || (M_intr == `MTC0 && M_IR[15:11] == 5'd14));
    assign Stall = M_stall_rs | M_stall_rt | E_stall_rs | E_stall_rt | MD_stall | eret_stall;

    //forward
    assign FW_M_rt = (W_Tnew == 0) && (W_A3 == M_A2) && (M_A2 != 0);

    wire W_FW_E_rs = (W_Tnew == 0) && (W_A3 == E_A1) && (E_A1 != 0);
    wire M_FW_E_rs = (M_Tnew == 0) && (M_A3 == E_A1) && (E_A1 != 0);
    assign FW_E_rs = M_FW_E_rs ? 2'd2 :
                     W_FW_E_rs ? 2'd1 : 2'd0;
    
    wire W_FW_E_rt = (W_Tnew == 0) && (W_A3 == E_A2) && (E_A2 != 0);
    wire M_FW_E_rt = (M_Tnew == 0) && (M_A3 == E_A2) && (E_A2 != 0);
    assign FW_E_rt = M_FW_E_rt ? 2'd2 :
                     W_FW_E_rt ? 2'd1 : 2'd0;
    
    wire W_FW_D_rs = (W_Tnew == 0) && (W_A3 == D_A1) && (D_A1 != 0);
    wire M_FW_D_rs = (M_Tnew == 0) && (M_A3 == D_A1) && (D_A1 != 0);
    wire E_FW_D_rs = (E_Tnew == 0) && (E_A3 == D_A1) && (D_A1 != 0);
    assign FW_D_rs = E_FW_D_rs ? 2'd3 :
                     M_FW_D_rs ? 2'd2 :
                     W_FW_D_rs ? 2'd1 : 2'd0;

    wire W_FW_D_rt = (W_Tnew == 0) && (W_A3 == D_A2) && (D_A2 != 0);
    wire M_FW_D_rt = (M_Tnew == 0) && (M_A3 == D_A2) && (D_A2 != 0);
    wire E_FW_D_rt = (E_Tnew == 0) && (E_A3 == D_A2) && (D_A2 != 0);
    assign FW_D_rt = E_FW_D_rt ? 2'd3 :
                     M_FW_D_rt ? 2'd2 :
                     W_FW_D_rt ? 2'd1 : 2'd0;

endmodule
