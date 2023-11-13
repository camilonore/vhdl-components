library ieee;
use ieee.std_logic_1164.all;

entity contador_9_0_tb is
	-- port ();
end contador_9_0_tb;

architecture Behavioral of contador_9_0_tb is

signal Clk_tb  : std_logic := '0';
signal oClk_tb : std_logic := '0';
signal iE_tb   : std_logic := '0';
signal iR_tb   : std_logic := '0';

signal ovX_tb  : std_logic_vector(3 downto 0) := "0000";
signal iP_tb   : std_logic_vector(3 downto 0) := "0000";


begin

	clk_tb <= not clk_tb after 1ns;
	
	iP_tb <= "0101";
--				"0000" after 1.2ns;
--				"0101" after 52.8ns,
--				"0000" after 53.2ns;
--	iR_tb <= '1' after 70ns;
				 
	iE_tb  <= '1',
				 '0' after 1.2ns,
				 '1' after 50ns,
				 '0' after 51.2ns;

	test: entity work.contador_9_0
	port map (
		Clk  => Clk_tb,
		iE   => iE_tb,
		oClk => oClk_tb,
		iR   => iR_tb,
		iP   => iP_tb,
		ovX  => ovX_tb
	);

end Behavioral;