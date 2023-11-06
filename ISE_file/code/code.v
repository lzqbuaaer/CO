`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:54 08/24/2023 
// Design Name: 
// Module Name:    code 
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
module code(
    input Clk,
    input Reset,
    input Slt,
    input En,
    output [63:0] Output0,
    output [63:0] Output1
    );
	reg [63:0] out0;
	reg [63:0] out1;
    reg [1:0] cnt;
    reg flag;

    initial begin
        cnt <= 2'b1;
        out0 <= 64'b0;
        out1 <= 64'b0;
    end

    always @(posedge Clk ) begin
        if(Reset == 1) begin
            out0 <= 64'b0;
            out1 <= 64'b0;
        end else if(En == 1) begin
            if(Slt == 0) begin 
                out0 <= out0 + 1;
                out1 <= out1;
            end else begin 
                cnt <= cnt + 1;
                out0 <= out0;
                if(cnt == 2'b0) begin 
                    out1 <= out1 + 1;
                end else begin 
                    out1 <= out1;
                end
            end
        end else begin
            out0 <= out0;
            out1 <= out1;
        end
    end
    
    assign Output0 = out0;
	assign Output1 = out1;

endmodule
