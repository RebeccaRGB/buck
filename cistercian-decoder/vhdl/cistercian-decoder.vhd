library ieee;
use ieee.std_logic_1164.all;

entity dual_cistercian_decoder is
	port (
		BI, AL : in std_logic;
		LT1, A1, B1, C1, D1 : in std_logic;
		LT2, A2, B2, C2, D2 : in std_logic;
		U1, V1, W1, X1, Y1 : out std_logic;
		U2, V2, W2, X2, Y2 : out std_logic
	);
end entity dual_cistercian_decoder;

architecture dcd_arch of dual_cistercian_decoder is
	begin
		U1 <= (A1 and B1 and C1 and D1 and not AL and LT1) or (A1 and not B1 and AL and BI) or (A1 and C1 and not D1 and AL and BI) or (not A1 and not B1 and not C1 and not AL and LT1) or (not A1 and C1 and D1 and AL and BI) or (not A1 and not D1 and not AL and LT1) or (B1 and not C1 and D1 and AL and BI) or (B1 and not C1 and not D1 and not AL and LT1) or (AL and BI and not LT1) or (not AL and not BI);
		V1 <= (A1 and B1 and not C1 and not AL and LT1) or (A1 and C1 and D1 and AL and BI) or (not A1 and B1 and C1 and not AL and LT1) or (not A1 and B1 and not C1 and AL and BI) or (not B1 and D1 and AL and BI) or (not B1 and not D1 and not AL and LT1) or (C1 and not D1 and not AL and LT1) or (AL and BI and not LT1) or (not AL and not BI);
		W1 <= (A1 and B1 and not C1 and not D1 and AL and BI) or (A1 and not B1 and not AL and LT1) or (A1 and not C1 and D1 and not AL and LT1) or (not A1 and B1 and D1 and AL and BI) or (not A1 and C1 and D1 and AL and BI) or (not A1 and not D1 and not AL and LT1) or (B1 and C1 and D1 and AL and BI) or (not B1 and not C1 and not AL and LT1) or (C1 and not D1 and not AL and LT1) or (AL and BI and not LT1) or (not AL and not BI);
		X1 <= (A1 and C1 and D1 and AL and BI) or (not A1 and not B1 and D1 and not AL and LT1) or (B1 and D1 and AL and BI) or (B1 and not D1 and not AL and LT1) or (not B1 and C1 and not D1 and AL and BI) or (not B1 and not C1 and not AL and LT1) or (AL and BI and not LT1) or (not AL and not BI);
		Y1 <= (A1 and D1 and AL and BI) or (not A1 and B1 and not C1 and not AL and LT1) or (B1 and C1 and AL and BI) or (not B1 and D1 and AL and BI) or (not B1 and not D1 and not AL and LT1) or (not C1 and not D1 and not AL and LT1) or (AL and BI and not LT1) or (not AL and not BI);
		U2 <= (A2 and B2 and C2 and D2 and not AL and LT2) or (A2 and not B2 and AL and BI) or (A2 and C2 and not D2 and AL and BI) or (not A2 and not B2 and not C2 and not AL and LT2) or (not A2 and C2 and D2 and AL and BI) or (not A2 and not D2 and not AL and LT2) or (B2 and not C2 and D2 and AL and BI) or (B2 and not C2 and not D2 and not AL and LT2) or (AL and BI and not LT2) or (not AL and not BI);
		V2 <= (A2 and B2 and not C2 and not AL and LT2) or (A2 and C2 and D2 and AL and BI) or (not A2 and B2 and C2 and not AL and LT2) or (not A2 and B2 and not C2 and AL and BI) or (not B2 and D2 and AL and BI) or (not B2 and not D2 and not AL and LT2) or (C2 and not D2 and not AL and LT2) or (AL and BI and not LT2) or (not AL and not BI);
		W2 <= (A2 and B2 and not C2 and not D2 and AL and BI) or (A2 and not B2 and not AL and LT2) or (A2 and not C2 and D2 and not AL and LT2) or (not A2 and B2 and D2 and AL and BI) or (not A2 and C2 and D2 and AL and BI) or (not A2 and not D2 and not AL and LT2) or (B2 and C2 and D2 and AL and BI) or (not B2 and not C2 and not AL and LT2) or (C2 and not D2 and not AL and LT2) or (AL and BI and not LT2) or (not AL and not BI);
		X2 <= (A2 and C2 and D2 and AL and BI) or (not A2 and not B2 and D2 and not AL and LT2) or (B2 and D2 and AL and BI) or (B2 and not D2 and not AL and LT2) or (not B2 and C2 and not D2 and AL and BI) or (not B2 and not C2 and not AL and LT2) or (AL and BI and not LT2) or (not AL and not BI);
		Y2 <= (A2 and D2 and AL and BI) or (not A2 and B2 and not C2 and not AL and LT2) or (B2 and C2 and AL and BI) or (not B2 and D2 and AL and BI) or (not B2 and not D2 and not AL and LT2) or (not C2 and not D2 and not AL and LT2) or (AL and BI and not LT2) or (not AL and not BI);
end architecture dcd_arch;
