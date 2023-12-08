library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
	port(
		Clk, R, D : in  std_logic;
		Q, nQ		 : out std_logic
	);
end d_flipflop;

architecture Behavioral of d_flipflop is
	signal sQ  : std_logic := '0';
	signal snQ : std_logic := '0';

begin
	process(Clk, R)
	begin
		if R = '1' then
			sQ  <= '0';
			snQ <= '1';
		elsif falling_edge(Clk) then
			sQ  <= D;
			snQ <= not(D);
		end if;
	end process;
	
	Q  <= sQ;
	nQ <= snQ;
	
end Behavioral;
