library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumador_10bits_tb is
end sumador_10bits_tb;

architecture testbench of sumador_10bits_tb is
    signal ivA_tb  : std_logic_vector(9 downto 0) := (others => '0');
    signal ivB_tb  : std_logic_vector(9 downto 0) := (others => '0');
    signal Cin_tb  : std_logic := '0';
    signal Cout_tb : std_logic := '0';
    signal ovX_tb  : std_logic_vector(9 downto 0)  := (others => '0');

    component sumador_10bits is
        port(
            ivA, ivB : in std_logic_vector(9 downto 0);
            Cin      : in std_logic;
            Cout     : out std_logic;
            ovX      : out std_logic_vector(9 downto 0)
        );
    end component;

begin

    test : sumador_10bits port map (
        ivA  => ivA_tb, 
        ivB  => ivB_tb,
        Cin  => Cin_tb,
        Cout => Cout_tb,
        ovX  => ovX_tb
    );

    process
    begin
         
        Cin_tb <= '0'; 
        ivA_tb <= (others => '0');
        ivB_tb <= (others => '0');
        wait for 110 ps;

        ivA_tb <= (others => '0');
        ivB_tb <= "1111111111";
        wait for 100 ps;
        
        ivA_tb <= "0101010101";
        ivB_tb <= "1010101010";
        wait for 100 ps;
        
        ivA_tb <= "1111111111";
        ivB_tb <= "1111111111";
        wait for 100 ps;

        wait;
        
    end process;

end testbench;
