module tb_kaktovik_decoder;

	wire RBO, V;
	wire Qa, Qb, Qc, Qd, Qe, Qf, Qg, Qh;

	reg RBI, BI, LT, AL, VBI;
	reg A, B, C, D, E;

	kaktovik_decoder kd(
		RBI, BI, LT, AL, VBI,
		A, B, C, D, E,
		RBO, V,
		Qa, Qb, Qc, Qd, Qe, Qf, Qg, Qh
	);

	initial begin
		RBI = 1; BI = 1; LT = 1; AL = 1; VBI = 1;

		A = 0; B = 0; C = 0; D = 0; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 00"); else $display("FAIL 00");
		A = 1; B = 0; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 01"); else $display("FAIL 01");
		A = 0; B = 1; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 02"); else $display("FAIL 02");
		A = 1; B = 1; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 03"); else $display("FAIL 03");
		A = 0; B = 0; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 04"); else $display("FAIL 04");
		A = 1; B = 0; C = 1; D = 0; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 05"); else $display("FAIL 05");
		A = 0; B = 1; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 06"); else $display("FAIL 06");
		A = 1; B = 1; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 07"); else $display("FAIL 07");
		A = 0; B = 0; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 08"); else $display("FAIL 08");
		A = 1; B = 0; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 09"); else $display("FAIL 09");
		A = 0; B = 1; C = 0; D = 1; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 10"); else $display("FAIL 10");
		A = 1; B = 1; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 11"); else $display("FAIL 11");
		A = 0; B = 0; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 12"); else $display("FAIL 12");
		A = 1; B = 0; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 13"); else $display("FAIL 13");
		A = 0; B = 1; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 14"); else $display("FAIL 14");
		A = 1; B = 1; C = 1; D = 1; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 15"); else $display("FAIL 15");
		A = 0; B = 0; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 16"); else $display("FAIL 16");
		A = 1; B = 0; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 17"); else $display("FAIL 17");
		A = 0; B = 1; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 18"); else $display("FAIL 18");
		A = 1; B = 1; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 19"); else $display("FAIL 19");
		A = 0; B = 0; C = 1; D = 0; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V0"); else $display("FAIL V0");
		A = 1; B = 0; C = 1; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V1"); else $display("FAIL V1");
		A = 0; B = 1; C = 1; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V2"); else $display("FAIL V2");
		A = 1; B = 1; C = 1; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V3"); else $display("FAIL V3");
		A = 0; B = 0; C = 0; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V4"); else $display("FAIL V4");
		A = 1; B = 0; C = 0; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V5"); else $display("FAIL V5");
		A = 0; B = 1; C = 0; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V6"); else $display("FAIL V6");
		A = 1; B = 1; C = 0; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V7"); else $display("FAIL V7");
		A = 0; B = 0; C = 1; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V8"); else $display("FAIL V8");
		A = 1; B = 0; C = 1; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V9"); else $display("FAIL V9");
		A = 0; B = 1; C = 1; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS VX"); else $display("FAIL VX");
		A = 1; B = 1; C = 1; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS VY"); else $display("FAIL VY");

		RBI = 0;

		A = 0; B = 0; C = 0; D = 0; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 0) && (V == 0)) $display("PASS 00"); else $display("FAIL 00");
		A = 1; B = 0; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 01"); else $display("FAIL 01");
		A = 0; B = 1; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 02"); else $display("FAIL 02");
		A = 1; B = 1; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 03"); else $display("FAIL 03");
		A = 0; B = 0; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 04"); else $display("FAIL 04");
		A = 1; B = 0; C = 1; D = 0; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 05"); else $display("FAIL 05");
		A = 0; B = 1; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 06"); else $display("FAIL 06");
		A = 1; B = 1; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 07"); else $display("FAIL 07");
		A = 0; B = 0; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 08"); else $display("FAIL 08");
		A = 1; B = 0; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 09"); else $display("FAIL 09");
		A = 0; B = 1; C = 0; D = 1; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 10"); else $display("FAIL 10");
		A = 1; B = 1; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 11"); else $display("FAIL 11");
		A = 0; B = 0; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 12"); else $display("FAIL 12");
		A = 1; B = 0; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 13"); else $display("FAIL 13");
		A = 0; B = 1; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 14"); else $display("FAIL 14");
		A = 1; B = 1; C = 1; D = 1; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 15"); else $display("FAIL 15");
		A = 0; B = 0; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 16"); else $display("FAIL 16");
		A = 1; B = 0; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 17"); else $display("FAIL 17");
		A = 0; B = 1; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 18"); else $display("FAIL 18");
		A = 1; B = 1; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 19"); else $display("FAIL 19");
		A = 0; B = 0; C = 1; D = 0; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V0"); else $display("FAIL V0");
		A = 1; B = 0; C = 1; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V1"); else $display("FAIL V1");
		A = 0; B = 1; C = 1; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V2"); else $display("FAIL V2");
		A = 1; B = 1; C = 1; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V3"); else $display("FAIL V3");
		A = 0; B = 0; C = 0; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V4"); else $display("FAIL V4");
		A = 1; B = 0; C = 0; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V5"); else $display("FAIL V5");
		A = 0; B = 1; C = 0; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V6"); else $display("FAIL V6");
		A = 1; B = 1; C = 0; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V7"); else $display("FAIL V7");
		A = 0; B = 0; C = 1; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V8"); else $display("FAIL V8");
		A = 1; B = 0; C = 1; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS V9"); else $display("FAIL V9");
		A = 0; B = 1; C = 1; D = 1; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS VX"); else $display("FAIL VX");
		A = 1; B = 1; C = 1; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS VY"); else $display("FAIL VY");

		VBI = 0;

		A = 0; B = 0; C = 0; D = 0; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 0) && (V == 0)) $display("PASS 00"); else $display("FAIL 00");
		A = 1; B = 0; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 01"); else $display("FAIL 01");
		A = 0; B = 1; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 02"); else $display("FAIL 02");
		A = 1; B = 1; C = 0; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 03"); else $display("FAIL 03");
		A = 0; B = 0; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 04"); else $display("FAIL 04");
		A = 1; B = 0; C = 1; D = 0; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 05"); else $display("FAIL 05");
		A = 0; B = 1; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 06"); else $display("FAIL 06");
		A = 1; B = 1; C = 1; D = 0; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 07"); else $display("FAIL 07");
		A = 0; B = 0; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 08"); else $display("FAIL 08");
		A = 1; B = 0; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 09"); else $display("FAIL 09");
		A = 0; B = 1; C = 0; D = 1; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 10"); else $display("FAIL 10");
		A = 1; B = 1; C = 0; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 11"); else $display("FAIL 11");
		A = 0; B = 0; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 12"); else $display("FAIL 12");
		A = 1; B = 0; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 13"); else $display("FAIL 13");
		A = 0; B = 1; C = 1; D = 1; E = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 0) && (RBO == 1) && (V == 0)) $display("PASS 14"); else $display("FAIL 14");
		A = 1; B = 1; C = 1; D = 1; E = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 15"); else $display("FAIL 15");
		A = 0; B = 0; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 16"); else $display("FAIL 16");
		A = 1; B = 0; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 17"); else $display("FAIL 17");
		A = 0; B = 1; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 18"); else $display("FAIL 18");
		A = 1; B = 1; C = 0; D = 0; E = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 0)) $display("PASS 19"); else $display("FAIL 19");
		A = 0; B = 0; C = 1; D = 0; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V0"); else $display("FAIL V0");
		A = 1; B = 0; C = 1; D = 0; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V1"); else $display("FAIL V1");
		A = 0; B = 1; C = 1; D = 0; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V2"); else $display("FAIL V2");
		A = 1; B = 1; C = 1; D = 0; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V3"); else $display("FAIL V3");
		A = 0; B = 0; C = 0; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V4"); else $display("FAIL V4");
		A = 1; B = 0; C = 0; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V5"); else $display("FAIL V5");
		A = 0; B = 1; C = 0; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V6"); else $display("FAIL V6");
		A = 1; B = 1; C = 0; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V7"); else $display("FAIL V7");
		A = 0; B = 0; C = 1; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V8"); else $display("FAIL V8");
		A = 1; B = 0; C = 1; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS V9"); else $display("FAIL V9");
		A = 0; B = 1; C = 1; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS VX"); else $display("FAIL VX");
		A = 1; B = 1; C = 1; D = 1; E = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS VY"); else $display("FAIL VY");

		LT = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 1) && (V == 1)) $display("PASS LT"); else $display("FAIL LT");

		AL = 0; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0) && (Qh == 0) && (RBO == 1) && (V == 1)) $display("PASS AL"); else $display("FAIL AL");

		BI = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1) && (Qh == 1) && (RBO == 0) && (V == 1)) $display("PASS BI"); else $display("FAIL BI");
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

endmodule
