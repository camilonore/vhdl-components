library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
	port(
		E, R, S : in std_logic;
		Q			 : out std_logic
	);
end rs_latch;

architecture Behavioral of rs_latch is

	signal R_g, S_g, Qa, Qb : std_logic;
	attribute keep : boolean;
	attribute keep of R_g, S_g, Qa, Qb : signal is true;

begin

	R_g <= R and E;
	S_g <= S and E;
	Qa  <= not(R_g or Qb);
	Qb  <= not(S_g or Qa);
	
	Q   <= Qa;
	
end Behavioral;