library ieee;
use ieee.std_logic_1164.all;

entity comparador_2bits is
	port(
		ivA, ivB 	  : in  std_logic_vector(1 downto 0);
		AGB, AEB, ALB : out std_logic
	);
end comparador_2bits;

architecture Behavioral of comparador_2bits is

	signal sAGB1, sAGB2, sAEB1, sAEB2, sALB1, sALB2  : std_logic;
	
	component comparador_1bit is
		port(
			iA, iB 		  : in std_logic;
			AGB, AEB, ALB : out std_logic
		);
	end component;

begin

	comp1: comparador_1bit port map(
		iA => ivA(1),
		iB => ivB(1),
		AGB => sAGB1,
		AEB => sAEB1,
		ALB => sALB1
	);
	
	comp2: comparador_1bit port map(
		iA => ivA(0),
		iB => ivB(0),
		AGB => sAGB2,
		AEB => sAEB2,
		ALB => sALB2
	);
	
	AGB <= sAGB1 or (sAEB1 and sAGB2);
	AEB <= sAGB1 or (sAEB1 and sAEB2);
	ALB <= sALB1 or (sAEB1 and sALB2);

end Behavioral;


