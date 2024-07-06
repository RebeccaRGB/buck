module universal_bcd_ascii_decoder (
	D0_A, D1_D, D2_RBI, D3_BI, D4_LT, D5_C, D6_B,
	AL, X6, X9, X7, V0_LC, V2_ABI, V1_FS, ASCII,
	LTR_RBO, Qe, Qd, Qc, Qb, Qa, Qg, Qf
);

	input D0_A, D1_D, D2_RBI, D3_BI, D4_LT, D5_C, D6_B;
	input AL, X6, X9, X7, V0_LC, V2_ABI, V1_FS, ASCII;
	output LTR_RBO, Qe, Qd, Qc, Qb, Qa, Qg, Qf;

	wire LTR, AQe, AQd, AQc, AQb, AQa, AQg, AQf;
	wire RBO, BQe, BQd, BQc, BQb, BQa, BQg, BQf;
	assign LTR_RBO = ASCII ? LTR : RBO;
	assign Qa = ASCII ? AQa : BQa;
	assign Qb = ASCII ? AQb : BQb;
	assign Qc = ASCII ? AQc : BQc;
	assign Qd = ASCII ? AQd : BQd;
	assign Qe = ASCII ? AQe : BQe;
	assign Qf = ASCII ? AQf : BQf;
	assign Qg = ASCII ? AQg : BQg;

	ascii_decoder ad(
		V2_ABI, AL, V0_LC, V1_FS, X6, X7, X9,
		D0_A, D1_D, D2_RBI, D3_BI, D4_LT, D5_C, D6_B,
		LTR, AQa, AQb, AQc, AQd, AQe, AQf, AQg
	);

	universal_bcd_decoder ubcd(
		D2_RBI, D3_BI, D4_LT, AL,
		V0_LC, V1_FS, V2_ABI,
		X6, X7, X9,
		D0_A, D6_B, D5_C, D1_D,
		RBO, BQa, BQb, BQc, BQd, BQe, BQf, BQg
	);

endmodule
