library ieee;
use ieee.std_logic_1164.all;

entity sumadores_x_bits is
	port(
		ivA, ivB : in std_logic_vector(8 downto 0);
		Cin 		: in std_logic;
		ovS		: out std_logic_vector(8 downto 0);
		Cout 		: out std_logic
	);
end sumadores_x_bits;

architecture Behavioral of sumadores_x_bits is

	component sumador_9_bits is
		port (
			ivA, ivB  : in std_logic_vector(8 downto 0);
			Cin  	    : in std_logic;
			Cout   	 : out std_logic;
			ovS 		 : out std_logic_vector(8 downto 0)
		);
	end component;
	
begin

	sum_1: sumador_9_bits
		port map(
			ivA => ivA,			
			ivB => ivB,
			ovS => ovS,
			
			Cin  => '0',
			Cout => Cout	
		);

end Behavioral;