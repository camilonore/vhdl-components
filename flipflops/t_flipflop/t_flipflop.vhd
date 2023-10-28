library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop is
	port(
		T, R, Clk : in  std_logic;
		Q, nQ	 	 : out std_logic
	);
end t_flipflop;

architecture Behavioral of t_flipflop is
	
	signal tmp : std_logic;

begin

	process(T, R, Clk)
	begin
		if ( R = '1' ) then
			tmp <= '0';
		elsif (Clk'event and Clk = '1') then
			if ( T = '1' ) then
				tmp <= not(tmp);
			else
				tmp <= tmp;
			end if;
		end if;
	end process;
	
	Q  <= tmp;
	nQ <= not(tmp);
	
end Behavioral;