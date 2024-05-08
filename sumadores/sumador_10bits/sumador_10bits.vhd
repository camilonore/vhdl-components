library ieee;
use ieee.std_logic_1164.all;

entity sumador_10bits is
    port(
        ivA, ivB : in std_logic_vector(9 downto 0);
        Cin      : in std_logic;
        Cout     : out std_logic;
        ovX      : out std_logic_vector(9 downto 0)
    );
end sumador_10bits;

architecture Behavioral of sumador_10bits is

    signal S_carry: std_logic := '0';

    component sumador_5bits is
        port (
            ivA, ivB : in std_logic_vector(4 downto 0);
            Cin      : in std_logic;
            Cout     : out std_logic;
            ovX      : out std_logic_vector(4 downto 0)
        );
    end component;

begin

    sum_1: sumador_5bits
        port map(
            ivA(0) => ivA(0),
            ivA(1) => ivA(1),
            ivA(2) => ivA(2),
            ivA(3) => ivA(3),
            ivA(4) => ivA(4),
            
            ivB(0) => ivB(0),
            ivB(1) => ivB(1),
            ivB(2) => ivB(2),
            ivB(3) => ivB(3),
            ivB(4) => ivB(4),
            
            Cin  => Cin,
            Cout  => S_carry,
            
            ovX(0) => ovX(0),
            ovX(1) => ovX(1),
            ovX(2) => ovX(2),
            ovX(3) => ovX(3),
            ovX(4) => ovX(4)
        );
        
    sum_2: sumador_5bits 
        port map(
            ivA(0) => ivA(5),
            ivA(1) => ivA(6),
            ivA(2) => ivA(7),
            ivA(3) => ivA(8),
            ivA(4) => ivA(9),
            
            ivB(0) => ivB(5),
            ivB(1) => ivB(6),
            ivB(2) => ivB(7),
            ivB(3) => ivB(8),
            ivB(4) => ivB(9),
            
            Cin  => S_carry,
            Cout  => Cout,
            
            ovX(0) => ovX(5),
            ovX(1) => ovX(6),
            ovX(2) => ovX(7),
            ovX(3) => ovX(8),
            ovX(4) => ovX(9)
        );

end Behavioral;
