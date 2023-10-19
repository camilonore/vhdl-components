library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity multiplicador_4bits is
	port(
		ivA, ivB : in std_logic_vector(3 downto 0);
		ovX	   : out std_logic_vector(7 downto 0)
	);
end multiplicador_4bits;

architecture Behavioral of multiplicador_4bits is
	
	signal A0B, A1B, A2B, A3B 	: std_logic_vector(3 downto 0);
	signal Cin0, Cin1, Cin2   	: std_logic_vector(3 downto 0);
	signal Cout0, Cout1, Cout2 : std_logic_vector(3 downto 0);
	signal S0, S1, S2 			: std_logic_vector(3 downto 0);
	
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

	A1B(0) <= ivA(1) and ivB(0);
	A1B(1) <= ivA(1) and ivB(1);
	A1B(2) <= ivA(1) and ivB(2);
	A1B(3) <= ivA(1) and ivB(3);

	A2B(0) <= ivA(2) and ivB(0);
	A2B(1) <= ivA(2) and ivB(1);
	A2B(2) <= ivA(2) and ivB(2);
	A2B(3) <= ivA(2) and ivB(3);

	A3B(0) <= ivA(3) and ivB(0);
	A3B(1) <= ivA(3) and ivB(1);
	A3B(2) <= ivA(3) and ivB(2);
	A3B(3) <= ivA(3) and ivB(3);


	-- Primera fila de sumadores

	sum1: sumador_1_bit
		port map (
			iA => A1B(0),
			iB => A0B(1),
			Cin => '0',
			oS => S0(0),
			Cout => Cout0(0)
		);
	
	sum2: sumador_1_bit
		port map (
			iA => A2B(0),
			iB => A1B(1),
			Cin => Cout0(0),
			oS => S0(1),
			Cout => Cout0(1)
		);
		
	sum3: sumador_1_bit
		port map (
			iA => A3B(0),
			iB => A2B(1),
			Cin => Cout0(1),
			oS => S0(2),
			Cout => Cout0(2)
		);

	sum4: sumador_1_bit
		port map (
			iA => '0',
			iB => A3B(1),
			Cin => Cout0(2),
			oS => S0(3),
			Cout => Cout0(3)
		);
	
	-- Segunda fila de sumadores

	sum5: sumador_1_bit
		port map (
			iA => S0(1),
			iB => A0B(2),
			Cin => '0',
			oS => S1(0),
			Cout => Cout1(0)
		);

	sum6: sumador_1_bit
		port map (
			iA => S0(2),
			iB => A1B(2),
			Cin => Cout1(0),
			oS => S1(1),
			Cout => Cout1(1)
		);
	
	sum7: sumador_1_bit
		port map (
			iA => S0(3),
			iB => A2B(2),
			Cin => Cout1(1),
			oS => S1(2),
			Cout => Cout1(2)
		);

	sum8: sumador_1_bit
		port map (
			iA => Cout0(3),
			iB => A3B(2),
			Cin => Cout1(2),
			oS => S1(3),
			Cout => Cout1(3)
		);

	-- Tercera fila de sumadores

	sum9: sumador_1_bit
		port map (
			iA => S1(1),
			iB => A0B(3),
			Cin => '0',
			oS => S2(0),
			Cout => Cout2(0)
		);
	
	sum10: sumador_1_bit
		port map (
			iA => S1(2),
			iB => A1B(3),
			Cin => Cout2(0),
			oS => S2(1),
			Cout => Cout2(1)
		);
	
	sum11: sumador_1_bit
		port map (
			iA => S1(3),
			iB => A2B(3),
			Cin => Cout2(1),
			oS => S2(2),
			Cout => Cout2(2)
		);

	sum12: sumador_1_bit
		port map (
			iA => Cout1(3),
			iB => A3B(3),
			Cin => Cout2(2),
			oS => S2(3),
			Cout => Cout2(3)
		);

	-- Salidas
	ovX(0) <= A0B(0);
	ovX(1) <= S0(0);
	ovX(2) <= S1(0);
	ovX(3) <= S2(0);
	ovX(4) <= S2(1);
	ovX(5) <= S2(2);
	ovX(6) <= S2(3);
	ovX(7) <= Cout2(3);
	
end Behavioral;