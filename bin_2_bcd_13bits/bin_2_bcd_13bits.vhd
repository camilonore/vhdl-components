library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bin_2_bcd_13bits is
	port ( 
	 ivA : in   std_logic_vector(12 downto 0);
	 Cen : out  std_logic_vector(3 downto 0);
	 Dec : out  std_logic_vector(3 downto 0);
	 Uni : out  std_logic_vector(3 downto 0);
	 Mil : out  std_logic_vector(3 downto 0)
	);
end bin_2_bcd_13bits;

architecture Behavioral of bin_2_bcd_13bits is

begin

    process(ivA)
        variable Z: std_logic_vector (25 downto 0);
    begin
        for i in 0 to 25 loop
            Z(i) := '0';
        end loop;

        Z(12 downto 0) := ivA;

        for i in 0 to 9 loop
				
            if Z(13 downto 10) > "0100" then
                Z(13 downto 10) := Z(13 downto 10) + "0011";
            end if;
             
            if Z(17 downto 14) > "0100" then
                Z(17 downto 14) := Z(17 downto 14) + "0011";
            end if;
						
						if Z(21 downto 18) > "0100" then
                Z(21 downto 18) := Z(21 downto 18) + "0011";
            end if;
             
            Z(25 downto 1) := Z(24 downto 0);
        end loop; 
         
				Mil <= Z(25 downto 22); 
        Cen <= Z(21 downto 18);
        Dec <= Z(17 downto 14);
        Uni <= Z(13 downto 10);
    end process;
    
end Behavioral;