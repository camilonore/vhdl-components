library ieee;
use ieee.std_logic_1164.all;

entity contador_8_bits is
	port(
		iClk : in std_logic;
		oX	 : out std_logic_vector(7 downto 0)
	);
end contador_8_bits;

architecture Behavioral of contador_8_bits is

	signal sQ : std_logic_vector(7 downto 0) := "00000000";
	
	component t_flipflop is
		port(
			T, Clk : in  std_logic;
			Q 	   : out std_logic
		);
	end component;

begin

	ff0: t_flipflop port map(
		T   => '1',
		Clk => iClk,
		Q   => sQ(0)
	);
	ff1: t_flipflop port map(
		T   => '1',
		Clk => sQ(0),
		Q   => sQ(1)
	);
	ff2: t_flipflop port map(
		T   => '1',
		Clk => sQ(1),
		Q   => sQ(2)
	);
	ff3: t_flipflop port map(
		T   => '1',
		Clk => sQ(2),
		Q   => sQ(3)
	);
	ff4: t_flipflop port map(
		T   => '1',
		Clk => sQ(3),
		Q   => sQ(4)
	);
	ff5: t_flipflop port map(
		T   => '1',
		Clk => sQ(4),
		Q   => sQ(5)
	);
	ff6: t_flipflop port map(
		T   => '1',
		Clk => sQ(5),
		Q   => sQ(6)
	);
	ff7: t_flipflop port map(
		T   => '1',
		Clk => sQ(6),
		Q   => sQ(7)
	);

	oX <= sQ;

end Behavioral;

