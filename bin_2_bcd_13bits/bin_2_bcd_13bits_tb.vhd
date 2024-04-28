-- Quartus II VHDL Template

library ieee;
use ieee.std_logic_1164.all;

entity bin_2_bcd_13bits_tb is
end bin_2_bcd_13bits_tb;

architecture testbench of bin_2_bcd_13bits_tb is
    signal ivA_tb      : std_logic_vector (12 downto 0) := "0000000000000";
		signal Mil_tb      : std_logic_vector (3 downto 0);
    signal Cen_tb      : std_logic_vector (3 downto 0);
    signal Dec_tb      : std_logic_vector (3 downto 0);
    signal Uni_tb      : std_logic_vector (3 downto 0);

    component bin_2_bcd_13bits
        port (
            ivA : in   std_logic_vector (12 downto 0);
						Mil : out   std_logic_vector (3 downto 0);
            Cen : out  std_logic_vector (3 downto 0);
            Dec : out  std_logic_vector (3 downto 0);
            Uni : out  std_logic_vector (3 downto 0)
        );
    end component;

begin
    uut : bin_2_bcd_13bits
    port map (
        ivA => ivA_tb,
				Mil => Mil_tb,
        Cen => Cen_tb,
        Dec => Dec_tb,
        Uni => Uni_tb
    );

	process
	begin
		ivA_tb <= "0000000000000"; -- 0
		wait for 10 ns;

		ivA_tb <= "0000010101010"; -- 170
		wait for 10 ns;

		ivA_tb <= "0000011111111"; -- 255
		wait for 10 ns;
		  
		ivA_tb <= "1101010101010"; -- 6826
		wait for 10 ns;
		
		ivA_tb <= "1111111111111"; -- 8191
		wait for 10 ns;

		wait;
	end process;

end testbench;
