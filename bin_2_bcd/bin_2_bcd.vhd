library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bin_2_bcd is
	port ( 
	 ivA : in   std_logic_vector (8 downto 0);
	 Cen : out  std_logic_vector (3 downto 0);
	 Dec : out  std_logic_vector (3 downto 0);
	 Uni : out  std_logic_vector (3 downto 0)
	);
end bin_2_bcd;

architecture Behavioral of bin_2_bcd is

begin

    process(ivA)
        variable Z: std_logic_vector (17 downto 0);
    begin
        for i in 0 to 17 loop
            Z(i) := '0';
        end loop;

        Z(8 downto 0) := ivA;

        for i in 0 to 5 loop
            if Z(9 downto 6) > "0100" then
                Z(9 downto 6) := Z(9 downto 6) + "0011";
            end if;
             
            if Z(13 downto 10) > "0100" then
                Z(13 downto 10) := Z(13 downto 10) + "0011";
            end if;
             
            Z(16 downto 1) := Z(15 downto 0);
        end loop; 
          
        Cen <= Z(17 downto 14);
        Dec <= Z(13 downto 10);
        Uni <= Z(9 downto 6);
    end process;
    
end Behavioral;