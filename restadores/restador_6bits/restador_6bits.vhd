library ieee;
use ieee.std_logic_1164.all;

entity restador_6bits is
	port(
		ivA, ivB : in std_logic_vector(5 downto 0);
		ovX    	: out std_logic_vector(6 downto 0);
		oSign		: out std_logic
	);
end restador_6bits;

architecture Behavioral of restador_6bits is

	signal svS : std_logic_vector(6 downto 0);
	signal svX : std_logic_vector(5 downto 0);
	signal svB : std_logic_vector(5 downto 0) := "000000";
	signal svNB: std_logic_vector(5 downto 0);

	component sumador_6_bits is
		port(
			ivA, ivB : in std_logic_vector(5 downto 0);
			Cin 		: in std_logic;
			ovX		: out std_logic_vector(5 downto 0);
			Cout 		: out std_logic
		);
	end component;

begin

	svNB <= not(ivB);
	
	S1: sumador_6_bits port map(
		ivA  => ivA,
		ivB  => svNB,
		Cin  => '1',
		Cout => svS(6),
		ovX  => svS(5 downto 0)
	);
	
	
	svX(0) <= not(svS(0)) xor svS(6);
	svX(1) <= not(svS(1)) xor svS(6);
	svX(2) <= not(svS(2)) xor svS(6);
	svX(3) <= not(svS(3)) xor svS(6);
	svX(4) <= not(svS(4)) xor svS(6);
	svX(5) <= not(svS(5)) xor svS(6);

	svB(0) <= not(svS(6));
	oSign  <= sVS(6);
	
	S2: sumador_6_bits port map (
		ivA  => svX,
 		ivB  => svB,
		Cin  => '0',
		Cout => ovX(6),
		ovX  => ovX(5 downto 0)
	);

end Behavioral;