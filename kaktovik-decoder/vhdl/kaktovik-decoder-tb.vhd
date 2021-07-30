library ieee;
use ieee.std_logic_1164.all;

entity tb_kaktovik_decoder is
end entity tb_kaktovik_decoder;

architecture tb_kak_arch of tb_kaktovik_decoder is
	component kaktovik_decoder
		port (
			RBI, BI, LT, AL, VBI : in std_logic;
			A, B, C, D, E : in std_logic;
			RBO, V : out std_logic;
			Qa, Qb, Qc, Qd, Qe, Qf, Qg, Qh : out std_logic
		);
	end component;
	signal RBI, BI, LT, AL, VBI : std_logic;
	signal A, B, C, D, E : std_logic;
	signal RBO, V : std_logic;
	signal Qa, Qb, Qc, Qd, Qe, Qf, Qg, Qh : std_logic;
	begin
		uut: kaktovik_decoder port map (
			RBI => RBI, BI => BI, LT => LT, AL => AL, VBI => VBI,
			A => A, B => B, C => C, D => D, E => E,
			RBO => RBO, V => V,
			Qa => Qa, Qb => Qb, Qc => Qc, Qd => Qd,
			Qe => Qe, Qf => Qf, Qg => Qg, Qh => Qh
		);
		stim_proc: process
			begin
				RBI <= '1'; BI <= '1'; LT <= '1'; AL <= '1'; VBI <= '1';
				A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '0'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '0'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '0'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '1'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '1'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '1'; D <= '0'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '0'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '0'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '0'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '1'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '1'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '1'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '0'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '0'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '0'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '0'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '0'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '1'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '1'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '1'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '1'; D <= '0'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '0'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '0'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '0'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '0'; C <= '1'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '0'; C <= '1'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '0'; B <= '1'; C <= '1'; D <= '1'; E <= '1'; wait for 100 ns;
				A <= '1'; B <= '1'; C <= '1'; D <= '1'; E <= '1'; wait for 100 ns;
		end process;
end architecture tb_kak_arch;
