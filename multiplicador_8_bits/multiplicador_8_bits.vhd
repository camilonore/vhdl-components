library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity multiplicador_8_bits is
	port(
		ivA, ivB 						: in std_logic_vector(3 downto 0);
		ovX0, ovX1, ovX2, ovX3 		: out std_logic_vector(6 downto 0)
	);
end multiplicador_8_bits;

architecture Behavioral of multiplicador_8_bits is
	
	signal A0B, A1B, A2B, A3B 	: std_logic_vector(3 downto 0);
	signal Cin0, Cin1, Cin2   	: std_logic_vector(3 downto 0);
	signal Cout0, Cout1, Cout2 : std_logic_vector(3 downto 0);
	signal S0, S1, S2 			: std_logic_vector(3 downto 0);
	signal Cen, Dec, Uni 		: std_logic_vector(3 downto 0);
	signal ovP						: std_logic_vector(8 downto 0);
	
	component sumador_xbits_operadores is
		generic (width: integer := 1);
		port(
			ivA, ivB : in std_logic_vector(width - 1 downto 0);
			Cin		: in std_logic;
			ovX 		: out std_logic_vector(width - 1 downto 0);
			Cout		: out std_logic
		); 
	end component;
	
	component bin_2_bcd is
		port (
		  Bin : in   std_logic_vector (8 downto 0);
        Cen : out  std_logic_vector (3 downto 0);
        Dec : out  std_logic_vector (3 downto 0);
        Uni : out  std_logic_vector (3 downto 0)
		);
	end component;
	
	component bcd_2_7seg is
		port (
			iBcd: in  std_logic_vector (3 downto 0);
			ovX: out std_logic_vector(6 downto 0)
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

	sum1: sumador_xbits_operadores
		port map (
			ivA(0) => A1B(0),
			ivB(0) => A0B(1),
			Cin => '0',
			ovX(0) => S0(0),
			Cout => Cout0(0)
		);
	
	sum2: sumador_xbits_operadores
		port map (
			ivA(0) => A2B(0),
			ivB(0) => A1B(1),
			Cin => Cout0(0),
			ovX(0) => S0(1),
			Cout => Cout0(1)
		);
		
	sum3: sumador_xbits_operadores
		port map (
			ivA(0) => A3B(0),
			ivB(0) => A2B(1),
			Cin => Cout0(1),
			ovX(0) => S0(2),
			Cout => Cout0(2)
		);

	sum4: sumador_xbits_operadores
		port map (
			ivA(0) => '0',
			ivB(0) => A3B(1),
			Cin => Cout0(2),
			ovX(0) => S0(3),
			Cout => Cout0(3)
		);
	
	-- Segunda fila de sumadores

	sum5: sumador_xbits_operadores
		port map (
			ivA(0) => S0(1),
			ivB(0) => A0B(2),
			Cin => '0',
			ovX(0) => S1(0),
			Cout => Cout1(0)
		);

	sum6: sumador_xbits_operadores
		port map (
			ivA(0) => S0(2),
			ivB(0) => A1B(2),
			Cin => Cout1(0),
			ovX(0) => S1(1),
			Cout => Cout1(1)
		);
	
	sum7: sumador_xbits_operadores
		port map (
			ivA(0) => S0(3),
			ivB(0) => A2B(2),
			Cin => Cout1(1),
			ovX(0) => S1(2),
			Cout => Cout1(2)
		);

	sum8: sumador_xbits_operadores
		port map (
			ivA(0) => Cout0(3),
			ivB(0) => A3B(2),
			Cin => Cout1(2),
			ovX(0) => S1(3),
			Cout => Cout1(3)
		);

	-- Tercera fila de sumadores

	sum9: sumador_xbits_operadores
		port map (
			ivA(0) => S1(1),
			ivB(0) => A0B(3),
			Cin => '0',
			ovX(0) => S2(0),
			Cout => Cout2(0)
		);
	
	sum10: sumador_xbits_operadores
		port map (
			ivA(0) => S1(2),
			ivB(0) => A1B(3),
			Cin => Cout2(0),
			ovX(0) => S2(1),
			Cout => Cout2(1)
		);
	
	sum11: sumador_xbits_operadores
		port map (
			ivA(0) => S1(3),
			ivB(0) => A2B(3),
			Cin => Cout2(1),
			ovX(0) => S2(2),
			Cout => Cout2(2)
		);

	sum12: sumador_xbits_operadores
		port map (
			ivA(0) => Cout1(3),
			ivB(0) => A3B(3),
			Cin => Cout2(2),
			ovX(0) => S2(3),
			Cout => Cout2(3)
		);

	-- Salidas
	ovP(0) <= A0B(0);
	ovP(1) <= S0(0);
	ovP(2) <= S1(0);
	ovP(3) <= S2(0);
	ovP(4) <= S2(1);
	ovP(5) <= S2(2);
	ovP(6) <= S2(3);
	ovP(7) <= Cout2(3);
	ovP(8) <= '0';
	
	bin2bcd: bin_2_bcd
		port map(
			Bin => ovP,
			Cen => Cen,
			Dec => Dec,
			Uni => Uni 
		);
		
	segm_A: bcd_2_7seg
		port map(
			iBcd => Uni,
			ovX => ovX0
		);
		
	segm_B: bcd_2_7seg
		port map(
			iBcd => Dec,
			ovX => ovX1
		);		
		
	segm_C: bcd_2_7seg
		port map(
			iBcd => Cen,
			ovX => ovX2
		);
		
	ovX3 <= "1111111";

end Behavioral;

