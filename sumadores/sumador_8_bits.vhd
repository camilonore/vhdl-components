library ieee;
use ieee.std_logic_1164.all;

entity sumador_8_bits is
	port(
		ivA, ivB : in std_logic_vector(7 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(7 downto 0)
	);
end sumador_8_bits;

architecture Behavioral of sumador_8_bits is

	signal S_carry: std_logic := '0';

	component sumador_4_bits is
	port (
		ivA, ivB : in std_logic_vector(3 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(3 downto 0)
	);
	end component;
	
begin

	sum_1: sumador_4_bits
		port map(
			ivA(0) => ivA(0),
			ivA(1) => ivA(1),
			ivA(2) => ivA(2),
			ivA(3) => ivA(3),
			
			ivB(0) => ivB(0),
			ivB(1) => ivB(1),
			ivB(2) => ivB(2),
			ivB(3) => ivB(3),
			
			Cin  => Cin,
			Cout  => S_carry,
			
			ovS(0) => ovS(0),
			ovS(1) => ovS(1),
			ovS(2) => ovS(2),
			ovS(3) => ovS(3)
		);
		
	sum_2: sumador_4_bits 
		port map(
			ivA(0) => ivA(4),
			ivA(1) => ivA(5),
			ivA(2) => ivA(6),
			ivA(3) => ivA(7),
			
			ivB(0) => ivB(4),
			ivB(1) => ivB(5),
			ivB(2) => ivB(6),
			ivB(3) => ivB(7),
			
			Cin  => S_carry,
			Cout  => Cout,
			
			ovS(0) => ovS(4),
			ovS(1) => ovS(5),
			ovS(2) => ovS(6),
			ovS(3) => ovS(7)
		);

end Behavioral;