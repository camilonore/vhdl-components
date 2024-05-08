library ieee;
use ieee.std_logic_1164.all;

entity restador_10bits_tb is
end restador_10bits_tb;

architecture testbench of restador_10bits_tb is
    signal ivA_tb  : std_logic_vector(9 downto 0) := (others => '0');
    signal ivB_tb  : std_logic_vector(9 downto 0) := (others => '0');
    signal ovX_tb  : std_logic_vector(9 downto 0) := (others => '0');
    signal oSign_tb: std_logic := '0';

    component restador_10bits is
        port(
            ivA, ivB : in std_logic_vector(9 downto 0);
            ovX      : out std_logic_vector(9 downto 0);
            oSign    : out std_logic
        );
    end component;

begin

    test : restador_10bits port map (
        ivA    => ivA_tb, 
        ivB    => ivB_tb,
        ovX    => ovX_tb,
        oSign  => oSign_tb
    );

    process
    begin
         
        ivA_tb <= (others => '0');
        ivB_tb <= (others => '0');
        wait for 110 ps;

        ivA_tb <= (others => '0');
        ivB_tb <= (others => '1');
        wait for 100 ps;
        
        ivA_tb <= "0101011101";
        ivB_tb <= "1101110111";
        wait for 100 ps;
        
        ivA_tb <= "1111111111";
        ivB_tb <= "0000000001";
        wait for 100 ps;

        wait;
        
    end process;

end testbench;
