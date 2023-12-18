`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:06:08 12/14/2023 
// Design Name: 
// Module Name:    bridge 
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
module bridge(
	input [31:0] PrAddr,
	input [31:0] PrWd,
	output [31:0] PrRd,
	
	output [31:0] devAddr,
	output [31:0] devWd,
	input [31:0] dev0Rd,
	input [31:0] dev1Rd,
	
	input [31:0] m_data_rdata,
	output int_byteen,
	
	output dev0En,
	output dev1En
    );

	wire hitdev0 = (PrAddr >= 32'h00007f00) & (PrAddr <= 32'h00007f0b);
	wire hitdev1 = (PrAddr >= 32'h00007f10) & (PrAddr <= 32'h00007f1b);
	wire hitdm = (PrAddr >= 32'h00000000) & (PrAddr <= 32'h00002fff);
	
	assign PrRd = hitdev0 ? dev0Rd :
								hitdev1 ? dev1Rd :
								hitdm ? m_data_rdata : 0; 
								
	assign devAddr = PrAddr;
	assign devWd = PrWd;
	
	assign int_byteen = (PrAddr >= 32'h00007f20) & (PrAddr <= 32'h00007f23);
	
	// assign dev0En = hitdev0 & 
								
	
								

endmodule
