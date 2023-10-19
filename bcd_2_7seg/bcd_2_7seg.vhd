library ieee;
use ieee.std_logic_1164.all;

entity bcd_2_7seg is
	port(  
		iBcd: in  std_logic_vector (3 downto 0);
		ovX: out std_logic_vector(6 downto 0)
	); 
end bcd_2_7seg;
 
architecture Behavioral of bcd_2_7seg is

begin

	process (iBcd)
	
		begin
		
		case iBcd is
			when "0000" => ovX <= "0000001"; -- 0
			when "0001" => ovX <= "1001111"; -- 1
			when "0010" => ovX <= "0010010"; -- 2
			when "0011" => ovX <= "0000110"; -- 3
			when "0100" => ovX <= "1001100"; -- 4
			when "0101" => ovX <= "0100100"; -- 5
			when "0110" => ovX <= "0100000"; -- 6
			when "0111" => ovX <= "0001111"; -- 7
			when "1000" => ovX <= "0000000"; -- 8
			when "1001" => ovX <= "0000100"; -- 9
			when others => ovX <= "1111111"; -- Off
		end case;
				 
	end process;
	
end Behavioral;