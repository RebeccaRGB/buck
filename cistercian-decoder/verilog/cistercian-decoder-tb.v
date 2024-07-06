module tb_dual_cistercian_decoder;

	wire U1, V1, W1, X1, Y1;
	wire U2, V2, W2, X2, Y2;

	reg BI, AL;
	reg LT1, A1, B1, C1, D1;
	reg LT2, A2, B2, C2, D2;

	dual_cistercian_decoder dcd(
		BI, AL,
		LT1, A1, B1, C1, D1,
		LT2, A2, B2, C2, D2,
		U1, V1, W1, X1, Y1,
		U2, V2, W2, X2, Y2
	);

	initial begin
		BI = 1;
		AL = 1;
		LT1 = 1;
		LT2 = 1;

		A1 = 0; B1 = 0; C1 = 0; D1 = 0;
		A2 = 1; B2 = 1; C2 = 1; D2 = 1;
		#100;

		if ((U1 == 0) && (V1 == 0) && (W1 == 0) && (X1 == 0) && (Y1 == 0)) $display("PASS 0"); else $display("FAIL 0");
		if ((U2 == 0) && (V2 == 1) && (W2 == 1) && (X2 == 1) && (Y2 == 1)) $display("PASS F"); else $display("FAIL F");

		A1 = 1; B1 = 0; C1 = 0; D1 = 0;
		A2 = 0; B2 = 1; C2 = 1; D2 = 1;
		#100;

		if ((U1 == 1) && (V1 == 0) && (W1 == 0) && (X1 == 0) && (Y1 == 0)) $display("PASS 1"); else $display("FAIL 1");
		if ((U2 == 1) && (V2 == 0) && (W2 == 1) && (X2 == 1) && (Y2 == 1)) $display("PASS E"); else $display("FAIL E");

		A1 = 0; B1 = 1; C1 = 0; D1 = 0;
		A2 = 1; B2 = 0; C2 = 1; D2 = 1;
		#100;

		if ((U1 == 0) && (V1 == 1) && (W1 == 0) && (X1 == 0) && (Y1 == 0)) $display("PASS 2"); else $display("FAIL 2");
		if ((U2 == 1) && (V2 == 1) && (W2 == 0) && (X2 == 1) && (Y2 == 1)) $display("PASS D"); else $display("FAIL D");

		A1 = 1; B1 = 1; C1 = 0; D1 = 0;
		A2 = 0; B2 = 0; C2 = 1; D2 = 1;
		#100;

		if ((U1 == 0) && (V1 == 0) && (W1 == 1) && (X1 == 0) && (Y1 == 0)) $display("PASS 3"); else $display("FAIL 3");
		if ((U2 == 1) && (V2 == 1) && (W2 == 1) && (X2 == 0) && (Y2 == 1)) $display("PASS C"); else $display("FAIL C");

		A1 = 0; B1 = 0; C1 = 1; D1 = 0;
		A2 = 1; B2 = 1; C2 = 0; D2 = 1;
		#100;

		if ((U1 == 0) && (V1 == 0) && (W1 == 0) && (X1 == 1) && (Y1 == 0)) $display("PASS 4"); else $display("FAIL 4");
		if ((U2 == 1) && (V2 == 0) && (W2 == 0) && (X2 == 1) && (Y2 == 1)) $display("PASS B"); else $display("FAIL B");

		A1 = 1; B1 = 0; C1 = 1; D1 = 0;
		A2 = 0; B2 = 1; C2 = 0; D2 = 1;
		#100;

		if ((U1 == 1) && (V1 == 0) && (W1 == 0) && (X1 == 1) && (Y1 == 0)) $display("PASS 5"); else $display("FAIL 5");
		if ((U2 == 1) && (V2 == 1) && (W2 == 1) && (X2 == 1) && (Y2 == 0)) $display("PASS A"); else $display("FAIL A");

		A1 = 0; B1 = 1; C1 = 1; D1 = 0;
		A2 = 1; B2 = 0; C2 = 0; D2 = 1;
		#100;

		if ((U1 == 0) && (V1 == 0) && (W1 == 0) && (X1 == 0) && (Y1 == 1)) $display("PASS 6"); else $display("FAIL 6");
		if ((U2 == 1) && (V2 == 1) && (W2 == 0) && (X2 == 0) && (Y2 == 1)) $display("PASS 9"); else $display("FAIL 9");

		A1 = 1; B1 = 1; C1 = 1; D1 = 0;
		A2 = 0; B2 = 0; C2 = 0; D2 = 1;
		#100;

		if ((U1 == 1) && (V1 == 0) && (W1 == 0) && (X1 == 0) && (Y1 == 1)) $display("PASS 7"); else $display("FAIL 7");
		if ((U2 == 0) && (V2 == 1) && (W2 == 0) && (X2 == 0) && (Y2 == 1)) $display("PASS 8"); else $display("FAIL 8");

		A1 = 0; B1 = 0; C1 = 0; D1 = 1;
		A2 = 1; B2 = 1; C2 = 1; D2 = 0;
		#100;

		if ((U1 == 0) && (V1 == 1) && (W1 == 0) && (X1 == 0) && (Y1 == 1)) $display("PASS 8"); else $display("FAIL 8");
		if ((U2 == 1) && (V2 == 0) && (W2 == 0) && (X2 == 0) && (Y2 == 1)) $display("PASS 7"); else $display("FAIL 7");

		A1 = 1; B1 = 0; C1 = 0; D1 = 1;
		A2 = 0; B2 = 1; C2 = 1; D2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 1) && (W1 == 0) && (X1 == 0) && (Y1 == 1)) $display("PASS 9"); else $display("FAIL 9");
		if ((U2 == 0) && (V2 == 0) && (W2 == 0) && (X2 == 0) && (Y2 == 1)) $display("PASS 6"); else $display("FAIL 6");

		A1 = 0; B1 = 1; C1 = 0; D1 = 1;
		A2 = 1; B2 = 0; C2 = 1; D2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 1) && (W1 == 1) && (X1 == 1) && (Y1 == 0)) $display("PASS A"); else $display("FAIL A");
		if ((U2 == 1) && (V2 == 0) && (W2 == 0) && (X2 == 1) && (Y2 == 0)) $display("PASS 5"); else $display("FAIL 5");

		A1 = 1; B1 = 1; C1 = 0; D1 = 1;
		A2 = 0; B2 = 0; C2 = 1; D2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 0) && (W1 == 0) && (X1 == 1) && (Y1 == 1)) $display("PASS B"); else $display("FAIL B");
		if ((U2 == 0) && (V2 == 0) && (W2 == 0) && (X2 == 1) && (Y2 == 0)) $display("PASS 4"); else $display("FAIL 4");

		A1 = 0; B1 = 0; C1 = 1; D1 = 1;
		A2 = 1; B2 = 1; C2 = 0; D2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 1) && (W1 == 1) && (X1 == 0) && (Y1 == 1)) $display("PASS C"); else $display("FAIL C");
		if ((U2 == 0) && (V2 == 0) && (W2 == 1) && (X2 == 0) && (Y2 == 0)) $display("PASS 3"); else $display("FAIL 3");

		A1 = 1; B1 = 0; C1 = 1; D1 = 1;
		A2 = 0; B2 = 1; C2 = 0; D2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 1) && (W1 == 0) && (X1 == 1) && (Y1 == 1)) $display("PASS D"); else $display("FAIL D");
		if ((U2 == 0) && (V2 == 1) && (W2 == 0) && (X2 == 0) && (Y2 == 0)) $display("PASS 2"); else $display("FAIL 2");

		A1 = 0; B1 = 1; C1 = 1; D1 = 1;
		A2 = 1; B2 = 0; C2 = 0; D2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 0) && (W1 == 1) && (X1 == 1) && (Y1 == 1)) $display("PASS E"); else $display("FAIL E");
		if ((U2 == 1) && (V2 == 0) && (W2 == 0) && (X2 == 0) && (Y2 == 0)) $display("PASS 1"); else $display("FAIL 1");

		A1 = 1; B1 = 1; C1 = 1; D1 = 1;
		A2 = 0; B2 = 0; C2 = 0; D2 = 0;
		#100;

		if ((U1 == 0) && (V1 == 1) && (W1 == 1) && (X1 == 1) && (Y1 == 1)) $display("PASS F"); else $display("FAIL F");
		if ((U2 == 0) && (V2 == 0) && (W2 == 0) && (X2 == 0) && (Y2 == 0)) $display("PASS 0"); else $display("FAIL 0");

		LT1 = 0;
		LT2 = 0;
		#100;

		if ((U1 == 1) && (V1 == 1) && (W1 == 1) && (X1 == 1) && (Y1 == 1)) $display("PASS LT"); else $display("FAIL LT");
		if ((U2 == 1) && (V2 == 1) && (W2 == 1) && (X2 == 1) && (Y2 == 1)) $display("PASS LT"); else $display("FAIL LT");

		AL = 0;
		#100;

		if ((U1 == 0) && (V1 == 0) && (W1 == 0) && (X1 == 0) && (Y1 == 0)) $display("PASS AL"); else $display("FAIL AL");
		if ((U2 == 0) && (V2 == 0) && (W2 == 0) && (X2 == 0) && (Y2 == 0)) $display("PASS AL"); else $display("FAIL AL");

		BI = 0;
		#100;

		if ((U1 == 1) && (V1 == 1) && (W1 == 1) && (X1 == 1) && (Y1 == 1)) $display("PASS BI"); else $display("FAIL BI");
		if ((U2 == 1) && (V2 == 1) && (W2 == 1) && (X2 == 1) && (Y2 == 1)) $display("PASS BI"); else $display("FAIL BI");
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

endmodule
