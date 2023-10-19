library ieee;
use ieee.std_logic_1164.all;

entity restador_6bits_tb is
end restador_6bits_tb;

architecture tb of restador_6bits_tb is
  signal ivA_tb, ivB_tb : std_logic_vector(5 downto 0);
  signal ovS_tb 			: std_logic_vector(6 downto 0);
  signal oSign_tb 		: std_logic;
  
  component restador_6bits is
    port(
		ivA, ivB : in std_logic_vector(5 downto 0);
		ovS    	: out std_logic_vector(6 downto 0);
		oSign		: out std_logic
    );
  end component;

begin

	ivA_tb <= "000001" after 0ns,
				 "010101" after 5ns,
				 "111111" after 10ns,
				 "100101" after 15ns,
				 "100100" after 20ns,
				 "110011" after 25ns,
				 "010101" after 30ns;
					
	ivB_tb <= "000001" after 0ns,
				 "100011" after 5ns,
				 "111111" after 10ns,
				 "101001" after 15ns,
				 "100100" after 20ns,
				 "010101" after 25ns,
				 "110011" after 30ns;

	restador_tb: entity work.restador_6bits 
		port map (
			ivA   => ivA_tb,
			ivB   => ivB_tb,
			ovS   => ovS_tb,
			oSign => oSign_tb
		);
  
end tb;
