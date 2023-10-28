library ieee;
use ieee.std_logic_1164.all;

entity divisor_2_25 is
	port(
		Clk  : in  std_logic;
		oClk : out std_logic
	);
end divisor_2_25;

architecture Behavioral of divisor_2_25 is

	signal sClk : std_logic_vector(2 downto 0);

	component divisor_2_16 is
		port(
			Clk  : in  std_logic;
			oClk : out std_logic
		);
	end component;
	
	component divisor_2_8 is
		port(
			Clk  : in  std_logic;
			oClk : out std_logic
		);
	end component;
	
	component divisor_2 is
		port(
			Clk  : in  std_logic;
			oClk : out std_logic
		);
	end component;

	
begin

	div1: divisor_2_16 port map(
		Clk  => Clk,
		oClk => sClk(0)
	);
	
	div2: divisor_2_8 port map(
		Clk  => sClk(0),
		oClk => sClk(1)
	);
	
--	div3: divisor_2 port map(
--		Clk  => sClk(1),
--		oClk => sClk(2)
--	);
	
	oClk <= sClk(1);

end Behavioral;