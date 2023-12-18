`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:06 11/17/2023 
// Design Name: 
// Module Name:    mudi 
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
module mudi(
    input [31:0] A,
    input [31:0] B,
    input [2:0] MDOp,
    input Start,
    input clk,
    input rst,
    input Req,
    output reg Busy,
    output reg [31:0] LO,
    output reg [31:0] HI
    );
    reg [3:0] cnt = 4'b0;
    reg [31:0] tHI = 32'b0;
    reg [31:0] tLO = 32'b0;
    always @(posedge clk ) begin
        if(rst == 1) begin
            LO <= 32'b0;
            HI <= 32'b0;
            cnt <= 4'b0;
        end
        else if(MDOp == `MUDI_MTHI && !Req) begin
            HI <= A;
        end
        else if(MDOp == `MUDI_MTLO && !Req) begin
            LO <= A;
        end
        else begin
            if(cnt == 0) begin
                if(Start && !Req) begin
                    Busy <= 1;
                    case (MDOp)
                        `MUDI_MULT: begin
                            {tHI,tLO} <= $signed(A) * $signed(B); 
                            cnt <= 5;
                        end
                        `MUDI_MULTU: begin
                            {tHI,tLO} <= A * B; 
                            cnt <= 5;
                        end 
                        `MUDI_DIV: begin
                            tHI <= $signed(A) % $signed(B);
                            tLO <= $signed(A) / $signed(B);
                            cnt <= 10;
                        end
                        `MUDI_DIVU: begin
                            tHI <= A % B;
                            tLO <= A / B;
                            cnt <= 10;
                        end
                        default: begin
                            tHI <= 32'b0;
                            tLO <= 32'b0;
                            cnt <= 0;
                        end
                    endcase 
                end
                else begin
                    cnt <= 0;
                end
            end
            else if(cnt == 1) begin
                cnt <= 0;
                Busy <= 0;
                HI <= tHI;
                LO <= tLO;
            end
            else begin
                cnt <= cnt - 1;
            end
        end
    end

endmodule
