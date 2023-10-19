library ieee;
use ieee.std_logic_1164.all;

entity sumador_1bit is
	port(
		iA, iB, Cin : in std_logic;
		Cout, oX : out std_logic
	);
end sumador_1bit;

architecture Behavioral of sumador_1bit is

begin

	Cout <= (iA and Cin) or 
				  (iA and iB) or 
				  (iB and Cin);
	
	oX <= iA xor iB xor Cin;

end Behavioral;