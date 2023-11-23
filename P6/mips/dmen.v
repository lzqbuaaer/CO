`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:02 11/17/2023 
// Design Name: 
// Module Name:    DMEN 
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
module dmen(
    output [3:0] byteen,
    input [2:0] ENSel,
    input [1:0] addr
    );
    assign byteen = (ENSel == `DMEN_OTH) ? 4'b0000 :
                    (ENSel == `DMEN_SW) ? 4'b1111 :
                    (ENSel == `DMEN_SH && addr[1] == 0) ? 4'b0011 :
                    (ENSel == `DMEN_SH && addr[1] == 1) ? 4'b1100 :
                    (ENSel == `DMEN_SB && addr == 0) ? 4'b0001 :
                    (ENSel == `DMEN_SB && addr == 1) ? 4'b0010 :
                    (ENSel == `DMEN_SB && addr == 2) ? 4'b0100 :
                    (ENSel == `DMEN_SB && addr == 3) ? 4'b1000 : 4'b0000;

endmodule
