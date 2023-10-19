library ieee;
use ieee.std_logic_1164.all;

entity sumador_7_bits is
	port(
		ivA, ivB : in std_logic_vector(6 downto 0);
		Cin 		: in std_logic;
		ovS		: out std_logic_vector(6 downto 0);
		Cout 		: out std_logic
	);
end sumador_7_bits;

architecture Behavioral of sumador_7_bits is

signal sCout : std_logic;

component sumador_1_bit is
	port(
		iA, iB, Cin : in std_logic;
		Cout, oS : out std_logic
	);
end component;

component sumador_6_bits is
	port (
		ivA, ivB : in std_logic_vector(5 downto 0);
		Cin 		: in std_logic;
		ovS		: out std_logic_vector(5 downto 0);
		Cout 		: out std_logic
	);
end component;

begin

	S1: sumador_1_bit port map(
		iA => ivA(0),
		iB => ivB(0),
		Cin => Cin,
		Cout => sCout,
		oS => ovS(0)
	);

	S2: sumador_6_bits port map(
		ivA => ivA(6 downto 1),
		ivB => ivB(6 downto 1),
		Cin => sCout,
		Cout => Cout,
		ovS => ovS(6 downto 1)
	);

end Behavioral;


