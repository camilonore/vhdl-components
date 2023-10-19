library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
	port(
		clk, D : in std_logic;
		Q			 : out std_logic
	);
end d_latch;

architecture Behavioral of d_latch is

	signal R_g, S_g, Qa, Qb : std_logic;
	attribute keep : boolean;
	attribute keep of R_g, S_g, Qa, Qb : signal is true;

begin

	R_g <= D and clk;
	S_g <= not(D) and clk;
	Qa  <= not(R_g or Qb);
	Qb  <= not(S_g or Qa);
	
	Q   <= not(Qa);
	
end Behavioral;