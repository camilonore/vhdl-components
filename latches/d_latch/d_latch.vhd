library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
	port(
		E, D : in std_logic;
		Q, nQ	 : out std_logic
	);
end d_latch;

architecture Behavioral of d_latch is

	signal R_g, S_g, Qa, Qb : std_logic;
	attribute keep : boolean;
	attribute keep of R_g, S_g, Qa, Qb : signal is true;

begin

	R_g <= not(D) and E;
	S_g <= D and E;
	Qa  <= not(R_g or Qb);
	Qb  <= not(S_g or Qa);
	
	Q   <= Qa;
	nQ  <= not(Qa);
	
end Behavioral;