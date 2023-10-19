library ieee;
use ieee.std_logic_1164.all;

entity restador_4bits is
	port(
		ivA, ivB : in std_logic_vector(3 downto 0);
		ovS    	: out std_logic_vector(3 downto 0);
		oSign		: out std_logic
	);
end restador_4bits;

architecture Behavioral of restador_4bits is

	signal svS : std_logic_vector(4 downto 0);
	signal svX : std_logic_vector(3 downto 0);
	signal svB : std_logic_vector(3 downto 0) := "0000";
	signal svNB: std_logic_vector(3 downto 0);

	component sumador_4_bits is
		port(
			ivA, ivB : in std_logic_vector(3 downto 0);
			Cin  	 : in std_logic;
			Cout   	 : out std_logic;
			ovS 		 : out std_logic_vector(3 downto 0)
		);
	end component;

begin

	svNB <= not(ivB);
	
	S1: sumador_4_bits port map(
		ivA  => ivA,
		ivB  => svNB,
		Cin  => '1',
		Cout => svS(4),
		ovS  => svS(3 downto 0)
	);
	
	
	svX(0) <= not(svS(0)) xor svS(4);
	svX(1) <= not(svS(1)) xor svS(4);
	svX(2) <= not(svS(2)) xor svS(4);
	svX(3) <= not(svS(3)) xor svS(4);

	svB(0) <= not(svS(4));
	oSign  <= sVS(4);
	
	S2: sumador_4_bits port map (
		ivA  => svX,
 		ivB  => svB,
		Cin  => '0',
		ovS  => ovS
	);

end Behavioral;