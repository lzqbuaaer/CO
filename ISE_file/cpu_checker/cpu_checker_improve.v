`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:42:03 09/04/2023 
// Design Name: 
// Module Name:    cpu_checker_improve 
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
module cpu_checker(
    input clk,
    input reset,
    input [7:0] char,
    input [15:0] freq,
    output [1:0] format_type,
    output [3:0] error_code
    );

	 parameter INIT_DEC = 3'd1;
    parameter TOP_DEC = 3'd4;
    parameter INIT_HEX = 4'd1;
    parameter TOP_HEX = 4'd8;
    parameter YES = 1'b1;
    parameter NO = 1'b0;

    reg type = 1'b0;
    reg [3:0] status = 4'd0;
    reg [3:0] decReg = INIT_DEC;
    reg [3:0] hexReg = INIT_HEX;
	 reg [15:0] tim = 16'b0;
	 reg [31:0] pc = 32'b0;
	 reg [31:0] addr = 32'b0;
	 reg [15:0] grf = 16'b0;
	 reg [3:0] error = 4'b0;

    wire isdec = (char >= "0" && char <= "9") ? YES : NO;
    wire ishex = (isdec == YES) ? YES :
                    (char >= "a" && char <= "f") ? YES : NO;
						  
	 assign format_type = (status != 4'd14) ? 2'b00 :
                        (type == 1'b0) ? 2'b01 : 2'b10;
	 assign error_code = (format_type == 2'b00) ? 4'd0 : error;

    always @(posedge clk ) begin
        if(reset == YES) begin
            type <= 1'b0;
            status <= 4'd0;
            decReg <= INIT_DEC;
            hexReg <= INIT_HEX;
        end
        else begin
            case (status)
                4'd0: begin 
						  tim <= 16'b0;
                    pc <= 32'b0;	  
                    addr <= 32'b0;
                    grf <= 16'b0;
                    error <= 4'b0;
                    if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end 
                4'd1: begin 
					pc <= 32'b0;	  
                    addr <= 32'b0;
                    grf <= 16'b0;
                    error <= 4'b0;
                    if(isdec == YES) begin
                        decReg <= INIT_DEC;
                        status <= 4'd2;
                        tim <= (char - 48);
                    end
                    else if(char == "^") begin
						      status <= 4'd1;
								tim <= 16'b0;
						  end
                    else status <= 4'd0;
                end
                4'd2: begin 
                    if(char == "@") status <= 4'd3;
                    else if(isdec == YES) begin
                        decReg <= decReg + 1;
                        if(decReg + 1 <= TOP_DEC) begin
                            status <= 4'd2;
                            tim <= (tim<<3) + (tim<<1) + (char - 48);
                        end
                        else status <= 4'd0;
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd3: begin 
                    if((tim << 1) & (freq - 1) == 0) error <= error;
                    else error <= error | 4'b0001;
                    if(ishex == YES) begin
                        hexReg <= INIT_HEX;
                        status <= 4'd4;
                        if(isdec == YES) pc <= (char - 48);
                        else pc <= (char - 87);
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd4: begin 
                    if(char == ":") begin
                        if(hexReg == TOP_HEX) begin 
                            status <= 4'd5;
                            if(pc >= 32'h3000 && pc <= 32'h4fff && (pc & 32'd3 == 0)) error <= error;
                            else error <= error | 4'b0010;
                        end
                        else status <= 4'd0;
                    end
                    else if (ishex == YES) begin
                        hexReg <= hexReg + 1;
                        if(hexReg + 1 <= TOP_HEX) begin 
                            status <= 4'd4;
                            if(isdec == YES) pc <= (pc<<4) + (char - 48);
                            else pc <= (pc<<4) + (char - 87);
                        end
                        else status <= 4'd0;
                    end
                    else if (char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd5: begin 
                    if(char == "$") status <= 4'd6;
                    else if(char == " ") status <= 4'd5;
                    else if(char == 8'd42) status <= 4'd7;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd6: begin 
                    type <= 1'b0;
                    if(isdec == YES) begin
                        decReg <= INIT_DEC;
                        status <= 4'd8;
                        grf <= (char - 48);
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd7: begin 
                    type <= 1'b1;
                    if (ishex == YES) begin
                        hexReg <= INIT_HEX;
                        status <= 4'd9;
                        if(isdec == YES) addr <= (char - 48);
                        else addr <= (char - 87);
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd8: begin 
                    if(char == "<") status <= 4'd11;
                    else if(char == " ") status <= 4'd10;
                    else if(isdec == YES) begin
                        decReg <= decReg + 1;
                        if(decReg + 1 <= TOP_DEC) begin
                            status <= 4'd8;
                            grf <= (grf<<3) + (grf<<1) + (char - 48);
                        end
                        else status <= 4'd0;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd9: begin 
                    if(char == " " || char == "<") begin
                        if(hexReg == TOP_HEX) begin
                            if(addr >= 32'h0000 && addr <= 32'h2fff &&(addr & 32'd3 == 0)) error <= error;
                            else error <= error | 4'b0100;
                            if(char == " ") status <= 4'd10;
                            else status <= 4'd11;
                        end
                        else status <= 4'd0;
                    end
                    else if(ishex == YES) begin
                        hexReg <= hexReg + 1;
                        if(hexReg + 1 <= TOP_HEX) begin
                            status <= 4'd9;
                            if(isdec == YES) addr <= (addr << 4) + (char - 48);
                            else addr <= (addr << 4) + (char - 87);
                        end
                        else status <= 4'd0;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd10: begin 
                    if(char == "<") status <= 4'd11;
                    else if(char == " ") status <= 4'd10;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd11: begin 
                    if(grf >= 16'd0 && grf <= 16'd31) error <= error;
                    else error <= error | 4'b1000;
                    if(char == "=") status <= 4'd12;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd12: begin 
                    if (ishex == YES) begin
                        hexReg <= INIT_HEX;
                        status <= 4'd13;
                    end
                    else if(char == " ") status <= 4'd12;
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd13: begin 
                    if(char == "#") begin
                        if(hexReg == TOP_HEX) status<= 4'd14;
                        else status <= 4'd0;
                    end
                    else if(ishex == YES) begin
                        hexReg <= hexReg + 1;
                        if(hexReg + 1 <= TOP_HEX) status <= 4'd13;
                        else status <= 4'd0;
                    end
                    else if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                4'd14: begin 
                    if(char == "^") status <= 4'd1;
                    else status <= 4'd0;
                end
                default: status <= 4'd0;
            endcase
        end
    end

endmodule
