library ieee;
use ieee.std_logic_1164.all;

entity tb_dual_cistercian_decoder is
end entity tb_dual_cistercian_decoder;

architecture tb_dcd_arch of tb_dual_cistercian_decoder is
	component dual_cistercian_decoder
		port (
			BI, AL : in std_logic;
			LT1, A1, B1, C1, D1 : in std_logic;
			LT2, A2, B2, C2, D2 : in std_logic;
			U1, V1, W1, X1, Y1 : out std_logic;
			U2, V2, W2, X2, Y2 : out std_logic
		);
	end component;
	signal BI, AL : std_logic;
	signal LT1, A1, B1, C1, D1 : std_logic;
	signal LT2, A2, B2, C2, D2 : std_logic;
	signal U1, V1, W1, X1, Y1 : std_logic;
	signal U2, V2, W2, X2, Y2 : std_logic;
	begin
		uut: dual_cistercian_decoder port map (
			BI => BI, AL => AL,
			LT1 => LT1, A1 => A1, B1 => B1, C1 => C1, D1 => D1,
			LT2 => LT2, A2 => A2, B2 => B2, C2 => C2, D2 => D2,
			U1 => U1, V1 => V1, W1 => W1, X1 => X1, Y1 => Y1,
			U2 => U2, V2 => V2, W2 => W2, X2 => X2, Y2 => Y2
		);
		stim_proc: process
			begin
				BI <= '1';
				AL <= '1';
				LT1 <= '1';
				LT2 <= '1';

				A1 <= '0'; B1 <= '0'; C1 <= '0'; D1 <= '0';
				A2 <= '1'; B2 <= '1'; C2 <= '1'; D2 <= '1';
				wait for 100 ns;

				A1 <= '1'; B1 <= '0'; C1 <= '0'; D1 <= '0';
				A2 <= '0'; B2 <= '1'; C2 <= '1'; D2 <= '1';
				wait for 100 ns;

				A1 <= '0'; B1 <= '1'; C1 <= '0'; D1 <= '0';
				A2 <= '1'; B2 <= '0'; C2 <= '1'; D2 <= '1';
				wait for 100 ns;

				A1 <= '1'; B1 <= '1'; C1 <= '0'; D1 <= '0';
				A2 <= '0'; B2 <= '0'; C2 <= '1'; D2 <= '1';
				wait for 100 ns;

				A1 <= '0'; B1 <= '0'; C1 <= '1'; D1 <= '0';
				A2 <= '1'; B2 <= '1'; C2 <= '0'; D2 <= '1';
				wait for 100 ns;

				A1 <= '1'; B1 <= '0'; C1 <= '1'; D1 <= '0';
				A2 <= '0'; B2 <= '1'; C2 <= '0'; D2 <= '1';
				wait for 100 ns;

				A1 <= '0'; B1 <= '1'; C1 <= '1'; D1 <= '0';
				A2 <= '1'; B2 <= '0'; C2 <= '0'; D2 <= '1';
				wait for 100 ns;

				A1 <= '1'; B1 <= '1'; C1 <= '1'; D1 <= '0';
				A2 <= '0'; B2 <= '0'; C2 <= '0'; D2 <= '1';
				wait for 100 ns;

				A1 <= '0'; B1 <= '0'; C1 <= '0'; D1 <= '1';
				A2 <= '1'; B2 <= '1'; C2 <= '1'; D2 <= '0';
				wait for 100 ns;

				A1 <= '1'; B1 <= '0'; C1 <= '0'; D1 <= '1';
				A2 <= '0'; B2 <= '1'; C2 <= '1'; D2 <= '0';
				wait for 100 ns;

				A1 <= '0'; B1 <= '1'; C1 <= '0'; D1 <= '1';
				A2 <= '1'; B2 <= '0'; C2 <= '1'; D2 <= '0';
				wait for 100 ns;

				A1 <= '1'; B1 <= '1'; C1 <= '0'; D1 <= '1';
				A2 <= '0'; B2 <= '0'; C2 <= '1'; D2 <= '0';
				wait for 100 ns;

				A1 <= '0'; B1 <= '0'; C1 <= '1'; D1 <= '1';
				A2 <= '1'; B2 <= '1'; C2 <= '0'; D2 <= '0';
				wait for 100 ns;

				A1 <= '1'; B1 <= '0'; C1 <= '1'; D1 <= '1';
				A2 <= '0'; B2 <= '1'; C2 <= '0'; D2 <= '0';
				wait for 100 ns;

				A1 <= '0'; B1 <= '1'; C1 <= '1'; D1 <= '1';
				A2 <= '1'; B2 <= '0'; C2 <= '0'; D2 <= '0';
				wait for 100 ns;

				A1 <= '1'; B1 <= '1'; C1 <= '1'; D1 <= '1';
				A2 <= '0'; B2 <= '0'; C2 <= '0'; D2 <= '0';
				wait for 100 ns;
		end process;
end architecture tb_dcd_arch;
