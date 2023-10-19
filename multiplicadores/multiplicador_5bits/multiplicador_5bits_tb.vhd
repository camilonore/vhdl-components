-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity multiplicador_5bits_tb is
	-- port ();
end multiplicador_5bits_tb;

architecture Behavioral of multiplicador_5bits_tb is

	signal ivA_tb, ivB_tb : std_logic_vector(4 downto 0);
	signal ovS_tb			 : std_logic_vector(9 downto 0);

begin

	ivA_tb <= "00001" after 0ns,
				 "10101" after 5ns,
				 "11111" after 10ns,
				 "10101" after 15ns,
				 "11111" after 20ns,
				 "00000" after 25ns;
					
	ivB_tb <= "00001" after 0ns,
				 "00011" after 5ns,
				 "11111" after 10ns,
				 "01001" after 15ns,
				 "11111" after 20ns,
				 "11111" after 25ns;
	
	test: entity work.multiplicador_5bits
	port map (
		ivA => ivA_tb,
		ivB => ivB_tb,
		ovX => ovS_tb
	);

end Behavioral;
