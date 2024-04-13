library ieee;
use ieee.std_logic_1164.all;

entity restador_8bits_tb is
end restador_8bits_tb;

architecture tb of restador_8bits_tb is
  signal ivA_tb, ivB_tb : std_logic_vector(7 downto 0);
  signal ovS_tb 			: std_logic_vector(7 downto 0);
  signal oSign_tb 		: std_logic;

begin

	ivA_tb <= "00000001" after 0ns,
				 "10010101" after 5ns,
				 "11111111" after 10ns,
				 "10100101" after 15ns,
				 "11100100" after 20ns,
				 "10110011" after 25ns,
				 "11010101" after 30ns,
				 "00000010" after 35ns;
					
	ivB_tb <= "00000001" after 0ns,
				 "01100011" after 5ns,
				 "11111111" after 10ns,
				 "11101001" after 15ns,
				 "01100000" after 20ns,
				 "10010101" after 25ns,
				 "01110011" after 30ns,
				 "00000100" after 35ns;

	restador_tb: entity work.restador_8bits 
		port map (
			ivA   => ivA_tb,
			ivB   => ivB_tb,
			ovX   => ovS_tb,
			oSign => oSign_tb
		);
  
end tb;
