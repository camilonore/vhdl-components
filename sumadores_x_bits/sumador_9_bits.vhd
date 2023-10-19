library ieee;
use ieee.std_logic_1164.all;

entity sumador_9_bits is
	port(
		ivA, ivB  : in std_logic_vector(8 downto 0);
		Cin  	    : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(8 downto 0)
	);
end sumador_9_bits;

architecture Behavioral of sumador_9_bits is

	signal svCarry: std_logic_vector(1 downto 0) := "00";

	component sumador_4_bits is
	port (
		ivA, ivB : in std_logic_vector(3 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(3 downto 0)
	);
	end component;
	
	component sumador_1_bit is
		port(
			iA, iB, Cin : in std_logic;
			Cout, oS : out std_logic
		);
	end component;
	
begin
	sum_1: sumador_1_bit
		port map(
		 iA   => ivA(0),
		 iB   => ivB(0),
		 Cin  => Cin,
		 Cout => svCarry(0),
		 oS   => ovS(0)
		);
		
	sum_2: sumador_4_bits
		port map(
			ivA(0) => ivA(1),
			ivA(1) => ivA(2),
			ivA(2) => ivA(3),
			ivA(3) => ivA(4),
			
			ivB(0) => ivB(1),
			ivB(1) => ivB(2),
			ivB(2) => ivB(3),
			ivB(3) => ivB(4),
			
			Cin  => svCarry(0),
			Cout  => svCarry(1),
			
			ovS(0) => ovS(1),
			ovS(1) => ovS(2),
			ovS(2) => ovS(3),
			ovS(3) => ovS(4)
		);
		
	sum_3: sumador_4_bits 
		port map(
			ivA(0) => ivA(5),
			ivA(1) => ivA(6),
			ivA(2) => ivA(7),
			ivA(3) => ivA(8),
			
			ivB(0) => ivB(5),
			ivB(1) => ivB(6),
			ivB(2) => ivB(7),
			ivB(3) => ivB(8),
			
			Cin  => svCarry(1),
			Cout  => Cout,
			
			ovS(0) => ovS(5),
			ovS(1) => ovS(6),
			ovS(2) => ovS(7),
			ovS(3) => ovS(8)
		);

end Behavioral;