library ieee;
use ieee.std_logic_1164.all;

entity d_ff_4bits is
	port(
		D      : in  std_logic_vector(3 downto 0);
		Clk, R : in  std_logic;
		Q, nQ	 : out std_logic_vector(3 downto 0)
	);
end d_ff_4bits;

architecture Behavioral of d_ff_4bits is

	component d_ff_2bits is
		port(
			D      : in  std_logic_vector(1 downto 0);
			Clk, R : in  std_logic;
			Q, nQ	 : out std_logic_vector(1 downto 0)
		);
	end component;

begin

	ff0: d_ff_2bits port map(
		D     => D(1 downto 0),
		R     => R,
		Clk   => Clk,
		Q     => Q(1 downto 0),
		nQ    => nQ(1 downto 0)
	);
	
	ff1: d_ff_2bits port map(
		D    => D(3 downto 2),
		R     => R,
		Clk   => Clk,
		Q   => Q(3 downto 2),
		nQ  => nQ(3 downto 2)
	);


end Behavioral;