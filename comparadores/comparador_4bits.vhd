library ieee;
use ieee.std_logic_1164.all;

entity comparador_4bits is
	port(
		ivA, ivB 	  : in  std_logic_vector(3 downto 0);
		AGB, AEB, ALB : out std_logic
	);
end comparador_4bits;

architecture Behavioral of comparador_4bits is

	signal sAGB1, sAGB2, sAEB1, sAEB2, sALB1, sALB2  : std_logic;
	signal sAGB3, sAGB4, sAEB3, sAEB4, sALB3, sALB4  : std_logic;
	
	component comparador_1bit is
		port(
			iA, iB 		  : in std_logic;
			AGB, AEB, ALB : out std_logic
		);
	end component;

begin

	comp1: comparador_1bit port map(
		iA => ivA(3),
		iB => ivB(3),
		AGB => sAGB1,
		AEB => sAEB1,
		ALB => sALB1
	);
	
	comp2: comparador_1bit port map(
		iA => ivA(2),
		iB => ivB(2),
		AGB => sAGB2,
		AEB => sAEB2,
		ALB => sALB2
	);
	
	comp3: comparador_1bit port map(
		iA => ivA(1),
		iB => ivB(1),
		AGB => sAGB3,
		AEB => sAEB3,
		ALB => sALB3
	);
	
	comp4: comparador_1bit port map(
		iA => ivA(0),
		iB => ivB(0),
		AGB => sAGB4,
		AEB => sAEB4,
		ALB => sALB4
	);
	
	AGB <= sAGB1 or 
			(sAEB1 and sAGB2) or
			(sAEB1 and SAEB2 and sAGB3) or
			(sAEB1 and SAEB2 and sAEB3 and sAGB4);
			
	AEB <= sAEB1 and sAEB2 and sAEB3 and sAEB4;
	
	ALB <= sALB1 or
       	(sAEB1 and sALB2) or
			(sAEB1 and sAEB2 and sALB3) or
			(sAEB1 and sAEB2 and sAEB3 and sALB4);

end Behavioral;


