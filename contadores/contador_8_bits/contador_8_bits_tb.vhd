library ieee;
use ieee.std_logic_1164.all;

entity contador_8_bits_tb is
	-- port ();
end contador_8_bits_tb;

architecture Behavioral of contador_8_bits_tb is

	signal clk_tb : std_logic := '0';
	signal oX_tb : std_logic_vector(7 downto 0);

begin

	clk_tb <= not clk_tb after 100ps;

	test: entity work.contador_8_bits
	port map (
		iClk => clk_tb,
		oX	 => oX_tb
	);

end Behavioral;
