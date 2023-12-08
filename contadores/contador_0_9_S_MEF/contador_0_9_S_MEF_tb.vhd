library ieee;
use ieee.std_logic_1164.all;

entity contador_0_9_S_MEF_tb is
	-- port ();
end contador_0_9_S_MEF_tb;

architecture Behavioral of contador_0_9_S_MEF_tb is

	signal clk_tb : std_logic := '0';
	signal iX_tb	: std_logic_vector(1 downto 0) := "00";
	signal iR_tb  : std_logic_vector(3 downto 0) := "0000";
	signal iP_tb  : std_logic_vector(3 downto 0) := "0000";
	signal oX_tb  : std_logic_vector(3 downto 0) := "0000";
	signal oY_tb  : std_logic;


begin

	clk_tb <= not clk_tb after 100ps;
	
	iX_tb <= "00" after 0ns,
					 "01" after 4ns,
					 "10" after 8ns,
					 "11" after 12ns;
					 
	iR_tb <= "1111" after 16ns,
					 "0000" after 16.2ns,
					 "1010" after 20ns,
					 "0000" after 20.2ns;
					 
	iP_tb <= "0101" after 20ns,
					 "0000" after 20.2ns;

	test: entity work.contador_0_9_S_MEF
	port map (
		iClk => clk_tb,
		iX   => iX_tb,
		iR   => iR_tb,
		iP   => iP_tb,
		oX   => oX_tb,
		oY   => oY_tb
	);

	
end Behavioral;
