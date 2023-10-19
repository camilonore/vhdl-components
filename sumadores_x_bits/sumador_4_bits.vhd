library ieee;
use ieee.std_logic_1164.all;

entity sumador_4_bits is
	port(
		ivA, ivB : in std_logic_vector(3 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(3 downto 0)
	);
end sumador_4_bits;

architecture Behavioral of sumador_4_bits is

	signal S_carry: std_logic := '0';

	component sumador_2_bits is
	port (
		ivA, ivB : in std_logic_vector(1 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(1 downto 0)
	);
	end component;
	
begin

	sum_1: sumador_2_bits
		port map(
			ivA(0) => ivA(0),
			ivA(1) => ivA(1),
			
			ivB(0) => ivB(0),
			ivB(1) => ivB(1),
			
			Cin  => Cin,
			Cout  => S_carry,
			ovS(0) => ovS(0),
			ovS(1) => ovS(1)
		);
		
	sum_2: sumador_2_bits 
		port map(
			ivA(0) => ivA(2),
			ivA(1) => ivA(3),
			
			ivB(0) => ivB(2),
			ivB(1) => ivB(3),
			
			Cin  => S_carry,
			Cout  => Cout,
			ovS(0) => ovS(2),
			ovS(1) => ovS(3)
		);

end Behavioral;