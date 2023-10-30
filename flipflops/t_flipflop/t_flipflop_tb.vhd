library ieee;
use ieee.std_logic_1164.all;

entity t_flipflop_tb is
	-- port ();
end t_flipflop_tb;

architecture Behavioral of t_flipflop_tb is

	signal clk_tb : std_logic := '0';
	signal T_tb, R_tb, P_tb, Q_tb, nQ_tb : std_logic := '0';

begin

	clk_tb <= not clk_tb after 100ps;
	T_tb   <= '1' after 200ps,
				 '0' after 500ps;

	test: entity work.t_flipflop
	port map (
		T   => T_tb,
		R   => R_tb,
		P   => P_tb,
		Clk => clk_tb,
		Q   => Q_tb,
		nQ  => nQ_tb
	);

end Behavioral;
