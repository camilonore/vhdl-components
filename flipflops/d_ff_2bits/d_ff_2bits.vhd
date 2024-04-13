library ieee;
use ieee.std_logic_1164.all;

entity d_ff_2bits is
	port(
		D      : in  std_logic_vector(1 downto 0);
		Clk, R : in  std_logic;
		Q, nQ	 : out std_logic_vector(1 downto 0)
	);
end d_ff_2bits;

architecture Behavioral of d_ff_2bits is

	component d_flipflop is
		port(
			Clk, R, D : in  std_logic;
			Q, nQ		 : out std_logic
		);
	end component;

begin

	ff0: d_flipflop port map(
		D   => D(0),
		R   => R,
		Clk => Clk,
		Q   => Q(0),
		nQ  => nQ(0)
	);
	
	ff1: d_flipflop port map(
		D   => D(1),
		R   => R,
		Clk => Clk,
		Q   => Q(1),
		nQ  => nQ(1)
	);

end Behavioral;