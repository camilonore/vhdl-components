library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_5bits_tb is
end sumador_5bits_tb;

architecture testbench of sumador_5bits_tb is
	signal ivA_tb  : std_logic_vector(4 downto 0) := "00000";
	signal ivB_tb  : std_logic_vector(4 downto 0) := "00000";
	signal Cin_tb  : std_logic := '0';
	signal Cout_tb : std_logic := '0';
	signal ovX_tb  : std_logic_vector(4 downto 0)  := "00000";
 
	component sumador_5bits is
		port(
			ivA, ivB : in std_logic_vector(4 downto 0);
			Cin  	   : in std_logic;
			Cout   	 : out std_logic;
			ovX 		 : out std_logic_vector(4 downto 0)
		);
	end component;

begin

	test : sumador_5bits port map (
	 ivA  => ivA_tb, 
	 ivB  => ivB_tb,
	 Cin  => Cin_tb,
	 Cout => Cout_tb,
	 ovX  => ovX_tb
	);

	process
	begin
		 
		Cin_tb <= '0'; 
		ivA_tb <= "00000";
		ivB_tb <= "00000";
		wait for 110 ps;

		ivA_tb <= "00000";
		ivB_tb <= "11111";
		wait for 100 ps;
		
		ivA_tb <= "01010";
		ivB_tb <= "10101";
		wait for 100 ps;
		
		ivA_tb <= "11111";
		ivB_tb <= "11111";
		wait for 100 ps;

		wait;
		
	end process;

end testbench;





