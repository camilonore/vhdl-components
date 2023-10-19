library ieee;
use ieee.std_logic_1164.all;

entity sumador_condicional is
	port(
		ivA : in std_logic_vector(3 downto 0);
		oX_v : out std_logic_vector(3 downto 0);
		Cout: out std_logic
	);
end sumador_condicional;

architecture Behavioral of sumador_condicional is

	component sumador_4_bits is
		port (
			ivA, ivB : in std_logic_vector(3 downto 0);
			Cin  	 : in std_logic;
			Cout   	 : out std_logic;
			ovS 		 : out std_logic_vector(3 downto 0)
		);
	end component;

begin

	sum: sumador_4_bits port map(
		ivA => ivA,
		ivB => "0011",
		Cin => '0',
		Cout => Cout
	);

end Behavioral;

