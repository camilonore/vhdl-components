library ieee;
use ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.ALL;
use ieee.std_logic_unsigned.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk is port ( 
		iClk : in  std_logic;
		oClk : out std_logic		
	);
end clk;

architecture rtl of clk is

signal contador: integer range 0 to 10000000; --  esto sirve para declarar variables 

signal aux: std_logic:='0'; 

begin

	process(iClk)

	begin

		if rising_edge(iClk) then

			contador<=contador+1;

			if contador = 10000000 then 

				aux<= NOT aux;

			end if;

		end if;

	end process;

	oClk <= aux;

end rtl;