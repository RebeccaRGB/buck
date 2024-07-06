module tb_universal_bcd_decoder;

	wire RBO;
	wire [6:0] data;

	reg RBI, BI, LT, AL;
	reg [2:0] version;
	reg [2:0] extras;
	reg [3:0] value;

	universal_bcd_decoder ubcd(
		RBI, BI, LT, AL,
		version[0], version[1], version[2],
		extras[0], extras[1], extras[2],
		value[0], value[1], value[2], value[3],
		RBO, data[0], data[1], data[2], data[3], data[4], data[5], data[6]
	);

	initial begin
		RBI = 1; BI = 1; LT = 1; AL = 1;

		version = 0; extras = 0;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7C) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h07) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h67) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h00) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h00) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h00) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h00) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h00) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h00) $display("PASS 15"); else $display("FAIL 15");

		version = 1; extras = 1;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7D) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h07) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h67) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h58) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h4C) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h62) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h69) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h78) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h00) $display("PASS 15"); else $display("FAIL 15");

		version = 2; extras = 2;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7C) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h27) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h67) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h5C) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h63) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h01) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h40) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h08) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h00) $display("PASS 15"); else $display("FAIL 15");

		version = 3; extras = 3;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7D) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h27) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h67) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h3F) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h06) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h5B) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h4F) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h66) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h6D) $display("PASS 15"); else $display("FAIL 15");

		version = 4; extras = 4;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7C) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h07) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h6F) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h08) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h48) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h49) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h41) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h01) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h00) $display("PASS 15"); else $display("FAIL 15");

		version = 5; extras = 5;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7D) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h07) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h6F) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h40) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h38) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h39) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h31) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h79) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h00) $display("PASS 15"); else $display("FAIL 15");

		version = 6; extras = 6;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7C) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h27) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h6F) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h40) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h79) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h76) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h38) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h73) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h00) $display("PASS 15"); else $display("FAIL 15");

		version = 7; extras = 7;
		value = 0; #100; if (data == 7'h3F) $display("PASS 0"); else $display("FAIL 0");
		value = 1; #100; if (data == 7'h06) $display("PASS 1"); else $display("FAIL 1");
		value = 2; #100; if (data == 7'h5B) $display("PASS 2"); else $display("FAIL 2");
		value = 3; #100; if (data == 7'h4F) $display("PASS 3"); else $display("FAIL 3");
		value = 4; #100; if (data == 7'h66) $display("PASS 4"); else $display("FAIL 4");
		value = 5; #100; if (data == 7'h6D) $display("PASS 5"); else $display("FAIL 5");
		value = 6; #100; if (data == 7'h7D) $display("PASS 6"); else $display("FAIL 6");
		value = 7; #100; if (data == 7'h27) $display("PASS 7"); else $display("FAIL 7");
		value = 8; #100; if (data == 7'h7F) $display("PASS 8"); else $display("FAIL 8");
		value = 9; #100; if (data == 7'h6F) $display("PASS 9"); else $display("FAIL 9");
		value = 10; #100; if (data == 7'h77) $display("PASS 10"); else $display("FAIL 10");
		value = 11; #100; if (data == 7'h7C) $display("PASS 11"); else $display("FAIL 11");
		value = 12; #100; if (data == 7'h39) $display("PASS 12"); else $display("FAIL 12");
		value = 13; #100; if (data == 7'h5E) $display("PASS 13"); else $display("FAIL 13");
		value = 14; #100; if (data == 7'h79) $display("PASS 14"); else $display("FAIL 14");
		value = 15; #100; if (data == 7'h71) $display("PASS 15"); else $display("FAIL 15");

		LT = 0; #100;
		if (data == 7'h7F) $display("PASS LT"); else $display("FAIL LT");

		AL = 0; #100;
		if (data == 7'h00) $display("PASS AL"); else $display("FAIL AL");

		BI = 0; #100;
		if (data == 7'h7F) $display("PASS BI"); else $display("FAIL BI");
	end

	initial begin
		$dumpfile("dump.vcd");
		$dumpvars;
	end

endmodule
