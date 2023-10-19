library ieee;
use ieee.std_logic_1164.all;

entity multiplicador_5bits is
	port(
		ivA, ivB	: in std_logic_vector(4 downto 0);
		ovS		: out std_logic_vector(9 downto 0)
	);
end multiplicador_5bits;

architecture Behavioral of multiplicador_5bits is

	signal A0B, A1B, A2B, A3B, A4B    : std_logic_vector(4 downto 0);
	signal Cin0, Cin1, Cin2, Cin3   	 : std_logic_vector(4 downto 0);
	signal Cout0, Cout1, Cout2, Cout3 : std_logic_vector(4 downto 0);
	signal S0, S1, S2, S3  			    : std_logic_vector(4 downto 0);
	
	component sumador_1_bit is
		port(
			iA, iB, Cin : in std_logic;
			Cout, oS : out std_logic
		);
	end component;

begin

	A0B(0) <= ivA(0) and ivB(0);
	A0B(1) <= ivA(0) and ivB(1);
	A0B(2) <= ivA(0) and ivB(2);
	A0B(3) <= ivA(0) and ivB(3);
	A0B(4) <= ivA(0) and ivB(4);

	A1B(0) <= ivA(1) and ivB(0);
	A1B(1) <= ivA(1) and ivB(1);
	A1B(2) <= ivA(1) and ivB(2);
	A1B(3) <= ivA(1) and ivB(3);
	A1B(4) <= ivA(1) and ivB(4);

	A2B(0) <= ivA(2) and ivB(0);
	A2B(1) <= ivA(2) and ivB(1);
	A2B(2) <= ivA(2) and ivB(2);
	A2B(3) <= ivA(2) and ivB(3);
	A2B(4) <= ivA(2) and ivB(4);

	A3B(0) <= ivA(3) and ivB(0);
	A3B(1) <= ivA(3) and ivB(1);
	A3B(2) <= ivA(3) and ivB(2);
	A3B(3) <= ivA(3) and ivB(3);
	A3B(4) <= ivA(3) and ivB(4);
	
	A4B(0) <= ivA(4) and ivB(0);
	A4B(1) <= ivA(4) and ivB(1);
	A4B(2) <= ivA(4) and ivB(2);
	A4B(3) <= ivA(4) and ivB(3);
	A4B(4) <= ivA(4) and ivB(4);

	-- Primera fila de sumadores

	sum1: sumador_1_bit
		port map (
			iA   => A1B(0),
			iB   => A0B(1),
			Cin  => '0',
			oS   => S0(0),
			Cout => Cout0(0)
		);
		
	sum2: sumador_1_bit
		port map (
			iA   => A2B(0),
			iB   => A1B(1),
			Cin  => Cout0(0),
			oS   => S0(1),
			Cout => Cout0(1)
		);
		
	sum3: sumador_1_bit
		port map (
			iA   => A3B(0),
			iB   => A2B(1),
			Cin  => Cout0(1),
			oS   => S0(2),
			Cout => Cout0(2)
		);

	sum4: sumador_1_bit
		port map (
			iA   => A4B(0),
			iB   => A3B(1),
			Cin  => Cout0(2),
			oS   => S0(3),
			Cout => Cout0(3)
		);
		
	sum5: sumador_1_bit
		port map (
			iA   => '0',
			iB   => A4B(1),
			Cin  => Cout0(3),
			oS   => S0(4),
			Cout => Cout0(4)
		);
		
	-- Segunda fila de sumadores

	sum6: sumador_1_bit
		port map (
			iA   => S0(1),
			iB   => A0B(2),
			Cin  => '0',
			oS   => S1(0),
			Cout => Cout1(0)
		);
		
	sum7: sumador_1_bit
		port map (
			iA   => S0(2),
			iB   => A1B(2),
			Cin  => Cout1(0),
			oS   => S1(1),
			Cout => Cout1(1)
		);
		
	sum8: sumador_1_bit
		port map (
			iA   => S0(3),
			iB   => A2B(2),
			Cin  => Cout1(1),
			oS   => S1(2),
			Cout => Cout1(2)
		);

	sum9: sumador_1_bit
		port map (
			iA   => S0(4),
			iB   => A3B(2),
			Cin  => Cout1(2),
			oS   => S1(3),
			Cout => Cout1(3)
		);
		
	sum10: sumador_1_bit
		port map (
			iA   => Cout0(4),
			iB   => A4B(2),
			Cin  => Cout1(3),
			oS   => S1(4),
			Cout => Cout1(4)
		);
		
	-- Tercera fila de sumadores

	sum11: sumador_1_bit
		port map (
			iA   => S1(1),
			iB   => A0B(3),
			Cin  => '0',
			oS   => S2(0),
			Cout => Cout2(0)
		);
		
	sum12: sumador_1_bit
		port map (
			iA   => S1(2),
			iB   => A1B(3),
			Cin  => Cout2(0),
			oS   => S2(1),
			Cout => Cout2(1)
		);
		
	sum13: sumador_1_bit
		port map (
			iA   => S1(3),
			iB   => A2B(3),
			Cin  => Cout2(1),
			oS   => S2(2),
			Cout => Cout2(2)
		);

	sum14: sumador_1_bit
		port map (
			iA   => S1(4),
			iB   => A3B(3),
			Cin  => Cout2(2),
			oS   => S2(3),
			Cout => Cout2(3)
		);
		
	sum15: sumador_1_bit
		port map (
			iA   => Cout1(4),
			iB   => A4B(3),
			Cin  => Cout2(3),
			oS   => S2(4),
			Cout => Cout2(4)
		);

	-- Cuarta fila de sumadores

	sum16: sumador_1_bit
		port map (
			iA   => S2(1),
			iB   => A0B(4),
			Cin  => '0',
			oS   => S3(0),
			Cout => Cout3(0)
		);
		
	sum17: sumador_1_bit
		port map (
			iA   => S2(2),
			iB   => A1B(4),
			Cin  => Cout3(0),
			oS   => S3(1),
			Cout => Cout3(1)
		);
		
	sum18: sumador_1_bit
		port map (
			iA   => S2(3),
			iB   => A2B(4),
			Cin  => Cout3(1),
			oS   => S3(2),
			Cout => Cout3(2)
		);

	sum19: sumador_1_bit
		port map (
			iA   => S2(4),
			iB   => A3B(4),
			Cin  => Cout3(2),
			oS   => S3(3),
			Cout => Cout3(3)
		);
		
	sum20: sumador_1_bit
		port map (
			iA   => Cout2(4),
			iB   => A4B(4),
			Cin  => Cout3(3),
			oS   => S3(4),
			Cout => Cout3(4)
		);


	-- Salidas
	ovS(0) <= A0B(0);
	ovS(1) <= S0(0);
	ovS(2) <= S1(0);
	ovS(3) <= S2(0);
	ovS(4) <= S3(0);
	ovS(5) <= S3(1);
	ovS(6) <= S3(2);
	ovS(7) <= S3(3);
	ovS(8) <= S3(4);
	ovS(9) <= Cout3(4);

end Behavioral;


