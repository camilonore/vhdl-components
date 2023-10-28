library ieee;
use ieee.std_logic_1164.all;

entity divisor_2 is
	port(
		Clk  : in  std_logic;
		oClk : out std_logic
	);
end divisor_2;

architecture Behavioral of divisor_2 is

	signal sClk : std_logic;

	component t_flipflop is
		port(
			T, R, Clk : in  std_logic;
			Q, nQ	 	 : out std_logic
		);
	end component;
begin

	div1: t_flipflop port map(
		T   => '1',
		R   => '0',
		Clk => Clk,
		Q   => sClk
	);
	
	oClk <= sClk;

end Behavioral;

