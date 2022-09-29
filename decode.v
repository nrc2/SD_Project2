module decode(display1, display2, X, EN);
	output reg [0:6] display1, display2;
	input EN;
	input [6:0] X;
	parameter zero = 7'b0000001, um = 7'b1001111, dois = 7'b0010010, tres = 7'b0000110, quatro = 7'b1001100, cinco = 7'b0100100;
	parameter seis = 7'b0100000, sete = 7'b0001111, oito = 7'b0000000, nove = 7'b0000100;
	
	always@(X || EN) begin
		if(EN == 0) begin
			display1 <= 7'b1111111;
			display2 <= 7'b1111111;
		end
		else begin
			case(X)
				0: begin
					display1 <= zero;
					display2 <= zero;
				end
				1: begin
					display1 <= um;
					display2 <= zero;
				end
				2: begin
					display1 <= dois;
					display2 <= zero;
				end
				3: begin
					display1 <= tres;
					display2 <= zero;
				end
				4: begin
					display1 <= quatro;
					display2 <= zero;
				end
				5: begin
					display1 <= cinco;
					display2 <= zero;
				end
				6: begin
					display1 <= seis;
					display2 <= zero;
				end
				7: begin
					display1 <= sete;
					display2 <= zero;
				end
				8: begin
					display1 <= oito;
					display2 <= zero;
				end
				9: begin
					display1 <= nove;
					display2 <= zero;
				end
				10: begin
					display1 <= zero;
					display2 <= um;
				end
				11: begin
					display1 <= um;
					display2 <= um;
				end
				12: begin
					display1 <= dois;
					display2 <= um;
				end
				13: begin
					display1 <= tres;
					display2 <= um;
				end
				14: begin
					display1 <= quatro;
					display2 <= um;
				end
				15: begin
					display1 <= cinco;
					display2 <= um;
				end
				16: begin
					display1 <= seis;
					display2 <= um;
				end
				17: begin
					display1 <= sete;
					display2 <= um;
				end
				18: begin
					display1 <= oito;
					display2 <= um;
				end
				19: begin
					display1 <= nove;
					display2 <= um;
				end
				20: begin
					display1 <= zero;
					display2 <= dois;
				end
				21: begin
					display1 <= um;
					display2 <= dois;
				end
				22: begin
					display1 <= dois;
					display2 <= dois;
				end
				23: begin
					display1 <= tres;
					display2 <= dois;
				end
				24: begin
					display1 <= quatro;
					display2 <= dois;
				end
				25: begin
					display1 <= cinco;
					display2 <= dois;
				end
				26: begin
					display1 <= seis;
					display2 <= dois;
				end
				27: begin
					display1 <= sete;
					display2 <= dois;
				end
				28: begin
					display1 <= oito;
					display2 <= dois;
				end
				29: begin
					display1 <= nove;
					display2 <= dois;
				end
				30: begin
					display1 <= zero;
					display2 <= tres;
				end
				31: begin
					display1 <= um;
					display2 <= tres;
				end
				32: begin
					display1 <= dois;
					display2 <= tres;
				end
				33: begin
					display1 <= tres;
					display2 <= tres;
				end
				34: begin
					display1 <= quatro;
					display2 <= tres;
				end
				35: begin
					display1 <= cinco;
					display2 <= tres;
				end
				36: begin
					display1 <= seis;
					display2 <= tres;
				end
				37: begin
					display1 <= sete;
					display2 <= tres;
				end
				38: begin
					display1 <= oito;
					display2 <= tres;
				end
				39: begin
					display1 <= nove;
					display2 <= tres;
				end
				40: begin
					display1 <= zero;
					display2 <= quatro;
				end
				41: begin
					display1 <= um;
					display2 <= quatro;
				end
				42: begin
					display1 <= dois;
					display2 <= quatro;
				end
				43: begin
					display1 <= tres;
					display2 <= quatro;
				end
				44: begin
					display1 <= quatro;
					display2 <= quatro;
				end
				45: begin
					display1 <= cinco;
					display2 <= quatro;
				end
				46: begin
					display1 <= seis;
					display2 <= quatro;
				end
				47: begin
					display1 <= sete;
					display2 <= quatro;
				end
				48: begin
					display1 <= oito;
					display2 <= quatro;
				end
				49: begin
					display1 <= nove;
					display2 <= quatro;
				end
				50: begin
					display1 <= zero;
					display2 <= cinco;
				end
				51: begin
					display1 <= um;
					display2 <= cinco;
				end
				52: begin
					display1 <= dois;
					display2 <= cinco;
				end
				53: begin
					display1 <= tres;
					display2 <= cinco;
				end
				54: begin
					display1 <= quatro;
					display2 <= cinco;
				end
				55: begin
					display1 <= cinco;
					display2 <= cinco;
				end
				56: begin
					display1 <= seis;
					display2 <= cinco;
				end
				57: begin
					display1 <= sete;
					display2 <= cinco;
				end
				58: begin
					display1 <= oito;
					display2 <= cinco;
				end
				59: begin
					display1 <= nove;
					display2 <= cinco;
				end
				60: begin
					display1 <= zero;
					display2 <= seis;
				end
				61: begin
					display1 <= um;
					display2 <= seis;
				end
				62: begin
					display1 <= dois;
					display2 <= seis;
				end
				63: begin
					display1 <= tres;
					display2 <= seis;
				end
				64: begin
					display1 <= quatro;
					display2 <= seis;
				end
				65: begin
					display1 <= cinco;
					display2 <= seis;
				end
				66: begin
					display1 <= seis;
					display2 <= seis;
				end
				67: begin
					display1 <= sete;
					display2 <= seis;
				end
				68: begin
					display1 <= oito;
					display2 <= seis;
				end
				69: begin
					display1 <= nove;
					display2 <= seis;
				end
				70: begin
					display1 <= zero;
					display2 <= sete;
				end
				71: begin
					display1 <= um;
					display2 <= sete;
				end
				72: begin
					display1 <= dois;
					display2 <= sete;
				end
				73: begin
					display1 <= tres;
					display2 <= sete;
				end
				74: begin
					display1 <= quatro;
					display2 <= sete;
				end
				75: begin
					display1 <= cinco;
					display2 <= sete;
				end
				76: begin
					display1 <= seis;
					display2 <= sete;
				end
				77: begin
					display1 <= sete;
					display2 <= sete;
				end
				78: begin
					display1 <= oito;
					display2 <= sete;
				end
				79: begin
					display1 <= nove;
					display2 <= sete;
				end
				80: begin
					display1 <= zero;
					display2 <= oito;
				end
				81: begin
					display1 <= um;
					display2 <= oito;
				end
				82: begin
					display1 <= dois;
					display2 <= oito;
				end
				83: begin
					display1 <= tres;
					display2 <= oito;
				end
				84: begin
					display1 <= quatro;
					display2 <= oito;
				end
				85: begin
					display1 <= cinco;
					display2 <= oito;
				end
				86: begin
					display1 <= seis;
					display2 <= oito;
				end
				87: begin
					display1 <= sete;
					display2 <= oito;
				end
				88: begin
					display1 <= oito;
					display2 <= oito;
				end
				89: begin
					display1 <= nove;
					display2 <= oito;
				end
				90: begin
					display1 <= zero;
					display2 <= nove;
				end
				91: begin
					display1 <= um;
					display2 <= nove;
				end
				92: begin
					display1 <= dois;
					display2 <= nove;
				end
				93: begin
					display1 <= tres;
					display2 <= nove;
				end
				94: begin
					display1 <= quatro;
					display2 <= nove;
				end
				95: begin
					display1 <= cinco;
					display2 <= nove;
				end
				96: begin
					display1 <= seis;
					display2 <= nove;
				end
				97: begin
					display1 <= sete;
					display2 <= nove;
				end
				98: begin
					display1 <= oito;
					display2 <= nove;
				end
				default: begin
					display1 <= nove;
					display2 <= nove;
				end
			endcase
		end
	end
endmodule