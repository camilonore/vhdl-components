-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity bin_2_bcd_tb is
end bin_2_bcd_tb;

architecture testbench of bin_2_bcd_tb is
    signal Bin_tb      : std_logic_vector (8 downto 0) := "000000000";
    signal Cen_tb      : std_logic_vector (3 downto 0);
    signal Dec_tb      : std_logic_vector (3 downto 0);
    signal Uni_tb      : std_logic_vector (3 downto 0);

    component bin_2_bcd
        port (
            Bin : in   std_logic_vector (8 downto 0);
            Cen : out  std_logic_vector (3 downto 0);
            Dec : out  std_logic_vector (3 downto 0);
            Uni : out  std_logic_vector (3 downto 0)
        );
    end component;

begin
    uut : bin_2_bcd
    port map (
        Bin => Bin_tb,
        Cen => Cen_tb,
        Dec => Dec_tb,
        Uni => Uni_tb
    );

	process
	begin

		Bin_tb <= "000000000"; -- 0
		wait for 10 ns;

		Bin_tb <= "010101010"; -- 170
		wait for 10 ns;

		Bin_tb <= "011111111"; -- 255
		wait for 10 ns;
		  
		Bin_tb <= "010000101"; -- 133
		wait for 10 ns;
		
		Bin_tb <= "001100100"; -- 100
		wait for 10 ns;

		Bin_tb <= "111111110"; -- 510
		wait for 10 ns;

		wait;
	end process;

end testbench;
