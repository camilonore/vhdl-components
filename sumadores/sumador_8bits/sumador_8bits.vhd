library ieee;
use ieee.std_logic_1164.all;

entity sumador_8bits is
	port(
		ivA, ivB : in std_logic_vector(7 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovX 		 : out std_logic_vector(7 downto 0)
	);
end sumador_8bits;

architecture Behavioral of sumador_8bits is

	signal S_carry: std_logic := '0';
	
	component sumador_4bits is
		port (
			ivA, ivB : in std_logic_vector(3 downto 0);
			Cin  	 : in std_logic;
			Cout   	 : out std_logic;
			ovX 		 : out std_logic_vector(3 downto 0)
		);
	end component;
	
begin

	sum_1: sumador_4bits
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
			
			ovX(0) => ovX(0),
			ovX(1) => ovX(1),
			ovX(2) => ovX(2),
			ovX(3) => ovX(3)
		);
		
	sum_2: sumador_4bits 
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
			
			ovX(0) => ovX(4),
			ovX(1) => ovX(5),
			ovX(2) => ovX(6),
			ovX(3) => ovX(7)
		);

end Behavioral;