library ieee;
use ieee.std_logic_1164.all;

entity divisor_2_4 is
	port(
		Clk  : in  std_logic;
		oClk : out std_logic
	);
end divisor_2_4;

architecture Behavioral of divisor_2_4 is

	signal sClk : std_logic_vector(1 downto 0);

	component divisor_2_2 is
		port(
			Clk  : in  std_logic;
			oClk : out std_logic
		);
	end component;
begin

	div1: divisor_2_2 port map(
		Clk  => Clk,
		oClk => sClk(0)
	);
	
	div2: divisor_2_2 port map(
		Clk  => sClk(0),
		oClk => sClk(1)
	);
	
	oClk <= sClk(1);

end Behavioral;

