library ieee;
use ieee.std_logic_1164.all;

entity comparador_1bit is
	port(
		iA, iB 		  : in std_logic;
		AGB, AEB, ALB : out std_logic
	);
end comparador_1bit;

architecture Behavioral of comparador_1bit is

begin

	AGB <= iA and not(iB);
	AEB <= not(iA xor iB);
	ALB <= not(iA) and iB;

end Behavioral;


