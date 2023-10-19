-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity sumadores_x_bits_tb is
	-- port ();
end sumadores_x_bits_tb;

architecture Behavioral of sumadores_x_bits_tb is
	
	signal ivA_tb	: std_logic_vector(8 downto 0); 
	signal ivB_tb 	: std_logic_vector(8 downto 0);
	signal Cin_tb  : std_logic := '0';
	signal Cout_tb : std_logic;
	signal ovS_tb	: std_logic_vector(8 downto 0);

begin

	ivA_tb <= "000000001" after 0ns,
				 "101010101" after 5ns,
				 "111111111" after 10ns,
				 "001100101" after 15ns,
				 "101100100" after 20ns;
					
	ivB_tb <= "000000001" after 0ns,
				 "001100011" after 5ns,
				 "111111111" after 10ns,
				 "101101001" after 15ns,
				 "111100100" after 20ns;

	sumador_tb: entity work.sumadores_x_bits 
		port map (
			ivA   => ivA_tb,
			ivB   => ivB_tb,
			Cin => Cin_tb,
			Cout => Cout_tb,
			ovS => ovS_tb
		);

end Behavioral;
