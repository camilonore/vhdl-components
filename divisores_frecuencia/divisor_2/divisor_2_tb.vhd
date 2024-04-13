library ieee;
use ieee.std_logic_1164.all;

entity divisor_2_tb is
	-- port ();
end divisor_2_tb;

architecture Behavioral of divisor_2_tb is

	signal Clk_tb : std_logic;
	signal oClk_tb : std_logic;

begin

--	clk_tb <= not clk_tb after 1ns;
	Clk_tb <= '0' after 0ns,
				 '1' after 5ns,
				 '0' after 10ns,
				 '1' after 15ns,
				 '0' after 20ns,
				 '1' after 25ns,
				 '0' after 30ns;

	test: entity work.divisor_2
	port map (
		Clk  => Clk_tb,
		oClk => oClk_tb
	);

end Behavioral;




