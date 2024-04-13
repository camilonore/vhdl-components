library ieee;
use ieee.std_logic_1164.ALL;

entity jk_flipflop is port ( 
	J,K  : in  std_logic;
	iClk : in  std_logic;
	Q    : out std_logic
	);
end jk_flipflop;

architecture Behavioral of jk_flipflop is

	signal sQ : std_logic := '0'; 

begin

process (iClk, J, K, sQ)

begin
  
	if rising_edge (iClk) then
		if J = '0' and K  = '0' then 
			sQ <= sQ;
		elsif	J = '0' and K  = '1' then 
			sQ <= '0';
		elsif	J = '1' and K  = '0' then 
			sQ <= '1';
			elsif	J = '1' and K  = '1' then 
			sQ <= not sQ;	
		end if;	     
	end if;
           
Q <= sQ;
			  
end process;

end Behavioral;