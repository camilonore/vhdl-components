library ieee;
use ieee.std_logic_1164.all;

entity bin_2_7seg_hex is
	port(
		iX : in std_logic_vector(3 downto 0);
		oY : out std_logic_vector(6 downto 0)
	);
end bin_2_7seg_hex;

architecture Behavioral of bin_2_7seg_hex is

begin
	
	oY <= "1000000" when iX = "0000" else -- 0 (64)
			  "1111001" when iX = "0001" else -- 1 (121)
			  "0100100" when iX = "0010" else -- 2 (36)
			  "0110000" when iX = "0011" else -- 3 (48)
			  "0011001" when iX = "0100" else -- 4 (25)
			  "0010010" when iX = "0101" else -- 5 (18)
			  "0000010" when iX = "0110" else -- 6 (2)
			  "1111000" when iX = "0111" else -- 7 (120)
			  "0000000" when iX = "1000" else -- 8 (0)
			  "0010000" when iX = "1001" else -- 9 (16)
				"0001000" when iX = "1010" else -- A ()
			  "0000011" when iX = "1011" else -- B ()
			  "1000110" when iX = "1100" else -- C ()
			  "0100001" when iX = "1101" else -- D ()
			  "0000110" when iX = "1110" else -- E ()
			  "0001110" when iX = "1111" else -- F ()
			  "1111111";							  			  -- Off (127) 

end Behavioral;

