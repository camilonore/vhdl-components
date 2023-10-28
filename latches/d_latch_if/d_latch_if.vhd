library ieee;
use ieee.std_logic_1164.all;

entity d_latch_if is
	port(
		D, E : in  std_logic;
		Q		 : out std_logic
	);
end d_latch_if;

architecture Behavioral of d_latch_if is

begin
	process(D, E)
	begin
		if E = '1' then
			Q <= D;
		end if;
	end process;
end Behavioral;