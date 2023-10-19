library ieee;
use ieee.std_logic_1164.all;

entity sumador_2_bits is
	port(
		ivA, ivB : in std_logic_vector(1 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(1 downto 0)
	);
end sumador_2_bits;

architecture Behavioral of sumador_2_bits is

	signal S_carry: std_logic := '0';

	component sumador_1_bit is
	port (
		iA, iB, Cin : in std_logic;
		Cout, oS 		: out std_logic
	);
	end component;
	
begin

	sum_1: sumador_1_bit 
		port map(
			iA 	  => ivA(0),
			iB     => ivB(0),
			Cin => Cin,
			Cout => S_carry,
			oS 	  => ovS(0)
		);
		
	sum_2: sumador_1_bit 
		port map(
			iA 	  => ivA(1),
			iB     => ivB(1),
			Cin => S_carry,
			Cout => Cout,
			oS 	  => ovS(1)
		);

end Behavioral;