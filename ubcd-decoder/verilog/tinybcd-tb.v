module tb_tiny_bcd;

	wire Qa, Qb, Qc, Qd, Qe, Qf, Qg;
	reg A, B, C, D;

	tiny_bcd bcd(A, B, C, D, Qa, Qb, Qc, Qd, Qe, Qf, Qg);

	initial begin
		A = 0; B = 0; C = 0; D = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0)) $display("PASS 0"); else $display("FAIL 0");
		A = 1; B = 0; C = 0; D = 0; #100;
		if ((Qa == 0) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 0) && (Qg == 0)) $display("PASS 1"); else $display("FAIL 1");
		A = 0; B = 1; C = 0; D = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 0) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 1)) $display("PASS 2"); else $display("FAIL 2");
		A = 1; B = 1; C = 0; D = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 0) && (Qg == 1)) $display("PASS 3"); else $display("FAIL 3");
		A = 0; B = 0; C = 1; D = 0; #100;
		if ((Qa == 0) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 1)) $display("PASS 4"); else $display("FAIL 4");
		A = 1; B = 0; C = 1; D = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1)) $display("PASS 5"); else $display("FAIL 5");
		A = 0; B = 1; C = 1; D = 0; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1)) $display("PASS 6"); else $display("FAIL 6");
		A = 1; B = 1; C = 1; D = 0; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 0) && (Qf == 1) && (Qg == 0)) $display("PASS 7"); else $display("FAIL 7");
		A = 0; B = 0; C = 0; D = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1)) $display("PASS 8"); else $display("FAIL 8");
		A = 1; B = 0; C = 0; D = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 0) && (Qf == 1) && (Qg == 1)) $display("PASS 9"); else $display("FAIL 9");
		A = 0; B = 1; C = 0; D = 1; #100;
		if ((Qa == 1) && (Qb == 1) && (Qc == 1) && (Qd == 0) && (Qe == 1) && (Qf == 1) && (Qg == 1)) $display("PASS A"); else $display("FAIL A");
		A = 1; B = 1; C = 0; D = 1; #100;
		if ((Qa == 0) && (Qb == 0) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1)) $display("PASS B"); else $display("FAIL B");
		A = 0; B = 0; C = 1; D = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 0)) $display("PASS C"); else $display("FAIL C");
		A = 1; B = 0; C = 1; D = 1; #100;
		if ((Qa == 0) && (Qb == 1) && (Qc == 1) && (Qd == 1) && (Qe == 1) && (Qf == 0) && (Qg == 1)) $display("PASS D"); else $display("FAIL D");
		A = 0; B = 1; C = 1; D = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 1) && (Qe == 1) && (Qf == 1) && (Qg == 1)) $display("PASS E"); else $display("FAIL E");
		A = 1; B = 1; C = 1; D = 1; #100;
		if ((Qa == 1) && (Qb == 0) && (Qc == 0) && (Qd == 0) && (Qe == 1) && (Qf == 1) && (Qg == 1)) $display("PASS F"); else $display("FAIL F");
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

endmodule
