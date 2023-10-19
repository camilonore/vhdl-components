library ieee;
use ieee.std_logic_1164.all;

entity sumador_1_bit is
	port(
		iA, iB, Cin : in std_logic;
		Cout, oS : out std_logic
	);
end sumador_1_bit;

architecture Behavioral of sumador_1_bit is

begin

	Cout <= (iA and Cin) or 
				  (iA and iB) or 
				  (iB and Cin);
	
	oS <= iA xor iB xor Cin;

end Behavioral;