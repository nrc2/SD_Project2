module calculadora(A, B, Y, clk, b_lig, b_soma, b_sub, b_multi, sinal, EN);
	input [6:0] A, B;
	input b_lig, b_soma, b_sub, b_multi, clk;
	output reg [13:0] Y;
	reg [2:0] estado, prox_estado;
	reg pressed_soma, pressed_sub, pressed_multi, pressed_lig;
	output reg sinal, EN;
	parameter desligado = 0, ligado = 1, soma = 2, sub = 3, multi = 4;
	initial estado = desligado;
	initial prox_estado = desligado;
	initial EN = 0;
	initial sinal = 0;
	initial pressed_lig = 0;
	initial pressed_soma = 0;
	initial pressed_sub = 0;
	initial pressed_multi = 0;
	
	always@(posedge clk) begin
		if(estado != prox_estado) estado <= prox_estado;
		if(!b_lig) pressed_lig <= 1;
		if(!b_soma) pressed_soma <= 1;
		if(!b_sub) pressed_sub <= 1;
		if(!b_multi) pressed_multi <= 1;

		case(estado)
			desligado: begin
				if(b_lig && pressed_lig) begin 
					prox_estado <= ligado;
					pressed_lig <= 0;
				end
			end
			ligado: begin
				if(b_lig && pressed_lig) begin
					prox_estado <= desligado;
					pressed_lig <= 0;
				end	
				if(b_soma && pressed_soma) begin
					prox_estado <= soma;
					pressed_soma <= 0;
				end
				if(b_sub && pressed_sub) begin
					prox_estado <= sub;
					pressed_sub <= 0;
				end
				if(b_multi && pressed_multi) begin
					prox_estado <= multi;
					pressed_multi <= 0;
				end
			end
			soma: begin
				if(b_lig && pressed_lig) begin
					prox_estado <= desligado;
					pressed_lig <= 0;
				end
				if(b_sub && pressed_sub) begin
					prox_estado <= sub;
					pressed_sub <= 0;
				end
				if(b_multi && pressed_multi) begin
					prox_estado <= multi;
					pressed_sub <= 0;
				end
			end
			sub: begin
				if(b_lig && pressed_lig)begin
					prox_estado <= desligado;
					pressed_lig <= 0;
				end
				if(b_soma && pressed_soma)begin
					prox_estado <= soma;
					pressed_soma <= 0;
				end	
				if(b_multi && pressed_multi)begin
					prox_estado <= multi;
					pressed_multi <= 0;
				end
			end
			multi: begin
				if(b_lig && pressed_lig)begin
					prox_estado <= desligado;
					pressed_lig <= 0;
				end
				if(b_soma && pressed_soma)begin 
					prox_estado <= soma;
					pressed_soma <= 0;
				end
				if(b_sub && pressed_sub)begin 
					prox_estado <= sub;
					pressed_sub <= 0;
				end
			end
		endcase
	end
	
	always@(A or B or b_soma or b_sub or b_multi or b_lig) begin
		case(estado)
			desligado: begin
				EN = 1'd0;
			end
			ligado: begin
				EN = 1'd1;
				Y = 1'd0;
				sinal = 1'd0;
			end
			soma: begin
				Y = (A > 7'd99 ? 7'd99 : A) + (B > 7'd99 ? 7'd99 : B);
				sinal = 1'd0;
				EN = 1'd1;
			end
			sub: begin
				EN = 1'd1;
				if((B > 7'd99 ? 7'd99 : B) > (A > 7'd99 ? 7'd99 : A)) begin
					sinal = 1'd1;
			        Y = (B > 7'd99 ? 7'd99 : B) - (A > 7'd99 ? 7'd99 : A);
			    end
				else begin
					sinal = 1'd0;
					Y = (A > 7'd99 ? 7'd99 : A) - (B > 7'd99 ? 7'd99 : B);
				end
			end
			multi: begin
				Y = (A > 7'd99 ? 7'd99 : A) * (B > 7'd99 ? 7'd99 : B);
				EN = 1'd1;
				sinal = 1'd0;
			end
		endcase
	end

endmodule