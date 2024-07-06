module tiny_bcd (
	A, B, C, D,
	Qa, Qb, Qc, Qd, Qe, Qf, Qg
);

	input A, B, C, D;
	output Qa, Qb, Qc, Qd, Qe, Qf, Qg;

	wire [3:0] addr;
	assign addr = {D, C, B, A};

	reg [6:0] data;
	assign {Qg, Qf, Qe, Qd, Qc, Qb, Qa} = data;

	always @(addr) begin
		case (addr)
			0: data = 7'h3F;
			1: data = 7'h06;
			2: data = 7'h5B;
			3: data = 7'h4F;
			4: data = 7'h66;
			5: data = 7'h6D;
			6: data = 7'h7D;
			7: data = 7'h27;
			8: data = 7'h7F;
			9: data = 7'h6F;
			10: data = 7'h77;
			11: data = 7'h7C;
			12: data = 7'h39;
			13: data = 7'h5E;
			14: data = 7'h79;
			15: data = 7'h71;
		endcase
	end

endmodule
