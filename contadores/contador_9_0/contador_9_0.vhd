library ieee;
use ieee.std_logic_1164.all;

entity contador_9_0 is
	port(
		Clk  : in  std_logic;
		iE   : in  std_logic;
		iR   : in  std_logic := '0';
		iP   : in  std_logic_vector(3 downto 0);
		ovX  : out std_logic_vector(3 downto 0);
		oClk : out std_logic := '0'
	);
end contador_9_0;

architecture Behavioral of contador_9_0 is

	signal sQ : std_logic_vector(3 downto 0) := "0000";
	signal sP : std_logic_vector(3 downto 0) := "0000";
	signal sR : std_logic_vector(3 downto 0) := "0000";
	
	component t_flipflop_inv is
		port(
			T, R, P, Clk : in  std_logic;
			Q, nQ	 	    : out std_logic
		);
	end component;

begin
	
	ff0: t_flipflop_inv port map(
		T   => '1',
		R   => sR(0),
		P 	 => sP(0),
		Clk => Clk,
		Q   => sQ(0)
	);
	
	ff1: t_flipflop_inv port map(
		T   => '1',
		R   => sR(1),
		P 	 => sP(1),
		Clk => sQ(0),
		Q   => sQ(1)
	);
	
	ff2: t_flipflop_inv port map(
		T   => '1',
		R   => sR(2),
		P 	 => sP(2),
		Clk => sQ(1),
		Q   => sQ(2)
	);
	
	ff3: t_flipflop_inv port map(
		T   => '1',
		R   => sR(3),
		P 	 => sP(3),
		Clk => sQ(2),
		Q   => sQ(3)
	);
	
	-- Process to count from 9 to 0
	process(Clk, iE)
	begin
		if iE = '1' then
			sP <= iP;
			sR <= not(iP);
		elsif sQ = "0000" then
			if(rising_edge(Clk)) then
				sP <= "1001";
				sR <= "0110";
			end if;
		else 
			sP <= "0000";
			sR <= "0000";
		end if;
	end process;
	
	ovX  <= sQ;

end Behavioral;