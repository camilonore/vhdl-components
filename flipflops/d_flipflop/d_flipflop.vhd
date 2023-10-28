library ieee;
use ieee.std_logic_1164.all;

entity d_flipflop is
	port(
		Clk, R, D : in  std_logic;
		Q, nQ		 : out std_logic
	);
end d_flipflop;

architecture Behavioral of d_flipflop is

begin
	process(Clk, R)
	begin
		if R = '1' then
			Q  <= '0';
			nQ <= '1';
		elsif (Clk'event and Clk='1') then
			Q  <= D;
			nQ <= not(D);
		end if;
	end process;
end Behavioral;
