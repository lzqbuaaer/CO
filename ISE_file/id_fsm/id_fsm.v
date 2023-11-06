`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:06 08/24/2023 
// Design Name: 
// Module Name:    id_fsm 
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
module id_fsm(
    input [7:0] char,
    input clk,
    output out
    );
    reg [1:0] status = 2'b00;
    wire [1:0] type;

    assign out = (status == 2'b10) ? 1'b1 : 1'b0;
    assign type = (char >= 8'd48 && char <= 8'd57) ? 2'b10 :
                ((char >= 8'd65 && char <= 8'd90) || (char >= 8'd97 && char <= 8'd122)) ? 2'b01 :
                2'b00;
    always @(posedge clk ) begin
        if(status == 2'b00) begin
            if(type == 2'b01) begin
                status <= 2'b01;
            end
            else begin
                status <= 2'b00;
            end
        end
        else if(status == 2'b01) begin
            if(type == 2'b10) begin
                status <= 2'b10;
            end
            else if(type == 2'b01) begin
               status <= 2'b01;
            end
            else begin
                status <= 2'b00;
            end 
        end
        else if(status == 2'b10) begin 
            if(type == 2'b10) begin
                status <= 2'b10;
            end
            else if(type == 2'b01) begin
               status <= 2'b01;
            end
            else begin
                status <= 2'b00;
            end 
        end
        else begin 
            status <= status;
        end
    end

endmodule
