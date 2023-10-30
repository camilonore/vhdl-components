library ieee;
use ieee.std_logic_1164.all;

entity contador_09 is
	port(
		Clk  : in  std_logic;
		iR   : in  std_logic;
		oClk : out std_logic;
		iP   : in  std_logic_vector(3 downto 0);
		ovX  : out std_logic_vector(3 downto 0);
		ovnX : out std_logic_vector(3 downto 0)
	);
end contador_09;

architecture Behavioral of contador_09 is

	signal sQ  : std_logic_vector(3 downto 0) := "0000";
	signal snQ : std_logic_vector(3 downto 0) := "0000";
	signal sR  : std_logic := '0';
	
	component t_flipflop is
		port(
			T, R, P, Clk : in  std_logic;
			Q, nQ	 	    : out std_logic
		);
	end component;

begin

	ff0: t_flipflop port map(
		T   => '1',
		R   => sR,
		P 	 => iP(0),
		Clk => Clk,
		Q   => sQ(0),
		nQ  => snQ(0)
	);
	
	ff1: t_flipflop port map(
		T   => '1',
		R   => sR,
		P 	 => iP(1),
		Clk => sQ(0),
		Q   => sQ(1),
		nQ  => snQ(1)
	);
	
	ff2: t_flipflop port map(
		T   => '1',
		P 	 => iP(2),
		R   => sR,
		Clk => sQ(1),
		Q   => sQ(2),
		nQ  => snQ(2)
	);
	
	ff3: t_flipflop port map(
		T   => '1',
		R   => sR,
		P 	 => iP(3),
		Clk => sQ(2),
		Q   => sQ(3),
		nQ  => snQ(3)
	);
	
	sR <= (sQ(3)) and (not(sQ(2))) and (sQ(1)) and (not(sQ(0)));
	
	oClk <= sR;
	ovX  <= sQ;
	ovnX <= snQ;

end Behavioral;