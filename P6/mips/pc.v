`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:41:10 11/09/2023 
// Design Name: 
// Module Name:    pc 
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
module pc(
    input [31:0] NPC,
    input clk,
    input rst,
    input _en,
    output reg [31:0] PC
    );

    always @(posedge clk ) begin
        if(rst == 1) begin
            PC <= 32'h3000;
        end
        else if(_en == 1) begin
            PC <= PC;
        end
        else begin
            PC <= NPC;
        end
    end

endmodule
