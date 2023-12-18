`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:03 11/30/2023 
// Design Name: 
// Module Name:    cp0 
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
module cp0(
    input clk,
    input reset,
    input en,
    input [4:0] addr,
    input [31:0] in,
    output [31:0] out,
    input [31:0] VPC,
    inout BDIn,
    input [4:0] ExcCodeIn,
    input [5:0] HWInt,
    input EXLClr,
    output [31:0] EPCOut,
    output Req,
    output reg IntResponse
    );
    reg [31:0] SR;
    reg [31:0] Cause;
    reg [31:0] EPC;

    assign out = (addr == 12) ? SR :
                 (addr == 13) ? Cause :
                 (addr == 14) ? EPC : 32'b0;
    
    wire IntReq = ((HWInt & `IM) != 0) & !`EXL & `IE;
    wire ExcReq = (ExcCodeIn != 0) & !`EXL;
    assign Req = IntReq | ExcReq;
    wire [31:2] EPCIn = BDIn ? (VPC[31:2] - 1) : VPC[31:2];
    assign EPCOut = EPC;

    always @(posedge clk ) begin
        if(reset == 1) begin
            SR <= 32'b0;
            Cause <= 32'b0;
            EPC <= 32'b0;
            IntResponse <= 1'b0;
        end
        else if(EXLClr) begin
            `IP <= HWInt;
            `EXL <= 1'b0;
            IntResponse <= 1'b0;
        end
        else begin
            `IP <= HWInt;
            if(Req) begin
                `ExcCode <= IntReq ? 5'b0 : ExcCodeIn;
                `EXL <= 1'b1;
                EPC[31:2] <= EPCIn;
                `BD <= BDIn;
                IntResponse <= IntReq ? 1'b1 : 1'b0;
            end
            else if(en) begin
                case (addr)
                    12: SR <= in;
                    13: Cause <= in;
                    14: EPC <= in; 
                    default: begin
                        SR <= SR;
                        Cause <= Cause;
                        EPC <= EPC;
                    end
                endcase
            end
        end
    end

endmodule
