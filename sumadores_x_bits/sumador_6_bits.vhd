library ieee;
use ieee.std_logic_1164.all;

entity sumador_6_bits is
	port(
		ivA, ivB : in std_logic_vector(5 downto 0);
		Cin 		: in std_logic;
		ovS		: out std_logic_vector(5 downto 0);
		Cout 		: out std_logic
	);
end sumador_6_bits;

architecture Behavioral of sumador_6_bits is

signal sCout : std_logic;

component sumador_2_bits is
	port (
		ivA, ivB : in std_logic_vector(1 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(1 downto 0)
	);
end component;

component sumador_4_bits is
	port (
		ivA, ivB : in std_logic_vector(3 downto 0);
		Cin  	 : in std_logic;
		Cout   	 : out std_logic;
		ovS 		 : out std_logic_vector(3 downto 0)
	);
end component;


begin

	S1: sumador_2_bits port map(
		ivA => ivA(1 downto 0),
		ivB => ivB(1 downto 0),
		Cin => Cin,
		Cout => sCout,
		ovS => ovS(1 downto 0)
	);

	S2: sumador_4_bits port map(
		ivA => ivA(5 downto 2),
		ivB => ivB(5 downto 2),
		Cin => sCout,
		Cout => Cout,
		ovS => ovS(5 downto 2)
	);

end Behavioral;


