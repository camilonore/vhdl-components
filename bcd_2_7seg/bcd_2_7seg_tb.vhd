-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity bcd_2_7seg_tb is
	-- port ();
end bcd_2_7seg_tb;

architecture Behavioral of bcd_2_7seg_tb is

	signal A_tb: std_logic_vector(3 downto 0);
	signal X_tb: std_logic_vector(6 downto 0);

begin

	A_tb <= "0000" after 0ns,
				 "0001" after 10ns,
				 "0010" after 20ns,
				 "0011" after 30ns,
				 "0100" after 40ns,
				 "0101" after 50ns,
				 "0110" after 60ns,
				 "0111" after 70ns,
				 "1000" after 80ns,
				 "1001" after 90ns,
				 "1010" after 100ns;								

	bcd_test: entity work.bcd_2_7seg port map
	(
		ivA => A_tb,
		ovX => X_tb
	);

end Behavioral;
