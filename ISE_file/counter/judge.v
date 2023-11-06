`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:59 10/03/2023 
// Design Name: 
// Module Name:    judge 
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
module judge(
    input A,
    input B,
    input C,
    output out
    );
	assign out = A&B | B&C | C&A;

endmodule
