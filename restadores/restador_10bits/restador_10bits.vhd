library ieee;
use ieee.std_logic_1164.all;

entity restador_10bits is
    port(
        ivA, ivB : in std_logic_vector(9 downto 0);
        ovX      : out std_logic_vector(9 downto 0);
        oSign    : out std_logic
    );
end restador_10bits;

architecture Behavioral of restador_10bits is

    signal svS : std_logic_vector(10 downto 0);
    signal svX : std_logic_vector(9 downto 0);
    signal svB : std_logic_vector(9 downto 0) := "0000000000";
    signal svNB: std_logic_vector(9 downto 0);

    component sumador_10bits is
        port(
            ivA, ivB : in std_logic_vector(9 downto 0);
            Cin      : in std_logic;
            ovX      : out std_logic_vector(9 downto 0);
            Cout     : out std_logic
        );
    end component;

begin

    svNB <= not(ivB);
    
    S1: sumador_10bits port map(
        ivA  => ivA,
        ivB  => svNB,
        Cin  => '1',
        Cout => svS(10),
        ovX  => svS(9 downto 0)
    );
    
    
    svX(0) <= not(svS(0)) xor svS(10);
    svX(1) <= not(svS(1)) xor svS(10);
    svX(2) <= not(svS(2)) xor svS(10);
    svX(3) <= not(svS(3)) xor svS(10);
    svX(4) <= not(svS(4)) xor svS(10);
    svX(5) <= not(svS(5)) xor svS(10);
    svX(6) <= not(svS(6)) xor svS(10);
    svX(7) <= not(svS(7)) xor svS(10);
    svX(8) <= not(svS(8)) xor svS(10);
    svX(9) <= not(svS(9)) xor svS(10);

    oSign  <= svS(10);
    svB(0) <= not(svS(10));
    
    S2: sumador_10bits port map (
        ivA  => svX,
        ivB  => svB,
        Cin  => '0',
        ovX  => ovX,
        Cout => open -- No se usa Cout en el segundo sumador
    );

end Behavioral;