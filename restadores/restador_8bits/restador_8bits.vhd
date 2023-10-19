library ieee;
use ieee.std_logic_1164.all;

entity restador_8bits is
	port(
		ivA, ivB : in std_logic_vector(7 downto 0);
		ovX    	: out std_logic_vector(7 downto 0);
		oSign		: out std_logic
	);
end restador_8bits;

architecture Behavioral of restador_8bits is

	signal svS : std_logic_vector(8 downto 0);
	signal svX : std_logic_vector(7 downto 0);
	signal svB : std_logic_vector(7 downto 0) := "00000000";
	signal svNB: std_logic_vector(7 downto 0);

	component sumador_8_bits is
		port(
			ivA, ivB : in std_logic_vector(7 downto 0);
			Cin 		: in std_logic;
			ovX		: out std_logic_vector(7 downto 0);
			Cout 		: out std_logic
		);
	end component;

begin

	svNB <= not(ivB);
	
	S1: sumador_8_bits port map(
		ivA  => ivA,
		ivB  => svNB,
		Cin  => '1',
		Cout => svS(8),
		ovX  => svS(7 downto 0)
	);
	
	
	svX(0) <= not(svS(0)) xor svS(8);
	svX(1) <= not(svS(1)) xor svS(8);
	svX(2) <= not(svS(2)) xor svS(8);
	svX(3) <= not(svS(3)) xor svS(8);
	svX(4) <= not(svS(4)) xor svS(8);
	svX(5) <= not(svS(5)) xor svS(8);
	svX(6) <= not(svS(6)) xor svS(8);
	svX(7) <= not(svS(7)) xor svS(8);

	oSign  <= sVS(8);
	svB(0) <= not(svS(8));
	
	S2: sumador_8_bits port map (
		ivA  => svX,
 		ivB  => svB,
		Cin  => '0',
		ovX  => ovX
	);

end Behavioral;