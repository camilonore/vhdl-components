library ieee;
use ieee.std_logic_1164.all;

entity contador_0_9_MEF is
	port(
		iClk : in  std_logic;
		iX   : in  std_logic_vector(1 downto 0);
		iR   : in  std_logic_vector(3 downto 0);
		iP   : in  std_logic_vector(3 downto 0);
		oX   : out std_logic_vector(3 downto 0);
		oY   : out std_logic := '0'
	);
end contador_0_9_MEF;

architecture Behavioral of contador_0_9_MEF is

	signal TA, TB, TC, TD : std_logic := '0';
	signal A, B, C, D 	  : std_logic := '0';
	signal sTmp					  : std_logic_vector(3 downto 0) := "0000";

	component t_flipflop is
		port(
			T, R, P, Clk : in  std_logic;
						 Q, nQ : out std_logic
		);
	end component;

begin
	
	TA <= (not B and not C and not D and iX(0)) or (not B and not C and iX(1) and iX(0)) or (B and C and iX(1) and not iX(0)) or (B and C and D and not iX(0)) or (A and iX(1)) or (A and D and not iX(0));
	TB <= (C and iX(1) and not iX(0)) or (C and D and not iX(0)) or (B and not C and not D and iX(0)) or (B and not C and iX(1) and iX(0)) or (A and not D and iX(0)) or (A and iX(1) and iX(0));
	TC <= (not A and iX(1) and not iX(0)) or (not A and D and not iX(0)) or (C and not D and iX(0)) or (C and iX(1)) or (B and not D and iX(0)) or (B and iX(1)) or (A and not D and iX(0)) or (A and iX(1) and iX(0));
	TD <= (not iX(1)) or (not D and iX(0)) or (D and not iX(0));
		
	FFT0: t_flipflop port map(
		Clk => iClk,
		T   => TA,
		R   => iR(3),
		P   => iP(3),
		Q   => A
	);
	
	FFT1: t_flipflop port map(
		Clk => iClk,
		T   => TB,
		R   => iR(2),
		P   => iP(2),
		Q   => B
	);
	
	FFT2: t_flipflop port map(
		Clk => iClk,
		T   => TC,
		R   => iR(1),
		P   => iP(1),
		Q   => C
	);
	
	FFT3: t_flipflop port map(
		Clk => iClk,
		T   => TD,
		R   => iR(0),
		P   => iP(0),
		Q   => D
	);
	
	sTmp <= A & B & C & D;
	oX <= sTmp;
	
	process(iClk, sTmp)
	begin
			if falling_edge(iClk) then
				if sTmp = "1000" and iX = "00" then
					oY <= '1';
				elsif sTmp = "0001" and iX = "01" then
					oY <= '1';
				elsif sTmp = "0110" and iX = "10" then
					oY <= '1';
				elsif sTmp = "0011" and iX = "11" then
					oY <= '1';
				else
					oY <= '0';
				end if;
		end if;
	end process;

end Behavioral;