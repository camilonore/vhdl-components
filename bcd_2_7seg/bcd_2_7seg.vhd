library ieee;
use ieee.std_logic_1164.all;

entity bcd_2_7seg is
	port(  
		ivA: in  std_logic_vector (3 downto 0);
		ovX: out std_logic_vector(6 downto 0)
	); 
end bcd_2_7seg;
 
architecture Behavioral of bcd_2_7seg is

begin

	ovX <= "1000000" when ivA = "0000" else -- 0 (64)
				 "1111001" when ivA = "0001" else -- 1 (121)
				 "0100100" when ivA = "0010" else -- 2 (36)
				 "0110000" when ivA = "0011" else -- 3 (48)
				 "0011001" when ivA = "0100" else -- 4 (25)
				 "0010010" when ivA = "0101" else -- 5 (18)
				 "0000010" when ivA = "0110" else -- 6 (2)
				 "1111000" when ivA = "0111" else -- 7 (120)
				 "0000000" when ivA = "1000" else -- 8 (0)
				 "0010000" when ivA = "1001" else -- 9 (16)
				 "1111111";							  			  -- Off (127) 
				 
end Behavioral;