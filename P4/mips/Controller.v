`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:06:36 11/02/2023 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input [5:0] op,
    input [5:0] func,
    output EXTOp,
    output ALUBSel,
    output [2:0] ALUOp,
    output DMWr,
    output [1:0] RFWDSel,
    output [1:0] RFA3Sel,
    output RFWr,
    output [2:0] NPCOp
    );
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

    assign EXTOp = (beq | sw | lw);
    assign ALUBSel = (ori | lw | sw | lui);
    assign ALUOp = jr ? 3'd4 :
                   lui ? 3'd3 :
                   ori ? 3'd2 :
                   sub ? 3'd1 : 3'd0;
    assign DMWr = sw;
    assign RFWDSel = jal ? 2'd2 :
                     lw ? 2'd1 : 2'd0;
    assign RFA3Sel = jal ? 2'd2 :
                     (add | sub) ? 2'd1 :2'd0;
    assign RFWr = (add | sub | ori | lw | lui | jal);
    assign NPCOp = jr ? 3'd3 : 
                   jal ? 3'd2 :
                   beq ? 3'd1 : 3'd0;

endmodule
