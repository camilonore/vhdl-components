library ieee;
use ieee.std_logic_1164.all;

entity contador_0_9_tb is
	-- port ();
end contador_0_9_tb;

architecture Behavioral of contador_0_9_tb is

signal Clk_tb  : std_logic := '0';
signal oClk_tb : std_logic := '0';
signal reset 	: std_logic := '0';

signal ovX_tb  : std_logic_vector(3 downto 0) := "0000";
signal ovnX_tb : std_logic_vector(3 downto 0) := "0000";
signal iP_tb   : std_logic_vector(3 downto 0) := "0000";


begin

	clk_tb <= not clk_tb after 1ns;
--	iP_tb  <= "0100" after 1ns,
--				 "0000" after 4ns;

	test: entity work.contador_0_9
	port map (
		Clk  => Clk_tb,
		oClk => oClk_tb,
		iR   => reset,
		iP   => iP_tb,
		ovX  => ovX_tb,
		ovnX => ovnX_tb
	);

end Behavioral;