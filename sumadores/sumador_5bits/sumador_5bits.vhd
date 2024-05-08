library ieee;
use ieee.std_logic_1164.all;

entity sumador_5bits is
	port(
		ivA, ivB : in std_logic_vector(4 downto 0);
		Cin  	   : in std_logic;
		Cout   	 : out std_logic;
		ovX 		 : out std_logic_vector(4 downto 0)
	);
end sumador_5bits;

architecture Behavioral of sumador_5bits is

	signal S_carry: std_logic := '0';
	
	component sumador_4bits is
		port (
			ivA, ivB : in std_logic_vector(3 downto 0);
			Cin  	 : in std_logic;
			Cout   	 : out std_logic;
			ovX 		 : out std_logic_vector(3 downto 0)
		);
	end component;
	
	component sumador_1bit is
		port(
			iA, iB, Cin : in std_logic;
			Cout, oX : out std_logic
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
		
	sum_2: sumador_1bit 
		port map(
			iA => ivA(4),
			
			iB => ivB(4),
			
			Cin  => S_carry,
			Cout  => Cout,
			
			oX => ovX(4)
		);

end Behavioral;