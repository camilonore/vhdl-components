-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity comparador_xbits_tb is
	-- port ();
end comparador_xbits_tb;

architecture Behavioral of comparador_xbits_tb is
	
	signal ivA_tb, ivB_tb 	      : std_logic_vector(3 downto 0);
	signal AGB_tb, AEB_tb, ALB_tb : std_logic;
	
	component comparador_xbits is
		port(
			iA, iB 		  : in std_logic;
			AGB, AEB, ALB : out std_logic
		);
	end component;
	
begin

	ivA_tb <= "0000" after 0ns,
				 "1111" after 5ns,
				 "1110" after 10ns,
				 "0101" after 15ns,
				 "0100" after 20ns,
				 "0011" after 25ns,
				 "1001" after 30ns;
					
	ivB_tb <= "0000" after 0ns,
				 "1110" after 5ns,
				 "1111" after 10ns,
				 "1001" after 15ns,
				 "1010" after 20ns,
				 "0101" after 25ns,
				 "0011" after 30ns;
	
	test: entity work.comparador_xbits
	port map (
		ivA => ivA_tb,
		ivB => ivB_tb,
		AGB => AGB_tb,
		AEB => AEB_tb,
		ALB => ALB_tb
	);

end Behavioral;
