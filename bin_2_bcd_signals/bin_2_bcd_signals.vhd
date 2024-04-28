library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity bin_2_bcd is
	port ( 
	 Bin : in   std_logic_vector (8 downto 0);
	 Cen : out  std_logic_vector (3 downto 0);
	 Dec : out  std_logic_vector (3 downto 0);
	 Uni : out  std_logic_vector (3 downto 0)
	);
end bin_2_bcd;

architecture Behavioral of bin_2_bcd is

	signal operacion0  : std_logic_vector(11 downto 0) := (others => '0');
	signal operacion1  : std_logic_vector(11 downto 0) := (others => '0');
	signal operacion2  : std_logic_vector(11 downto 0) := (others => '0');
	signal operacion3  : std_logic_vector(11 downto 0) := (others => '0');
	signal operacion4  : std_logic_vector(11 downto 0) := (others => '0');
	signal operacion5  : std_logic_vector(11 downto 0) := (others => '0');
	signal operacion6  : std_logic_vector(11 downto 0) := (others => '0');
	
	signal suma1 : std_logic_vector(3 downto 0);
	signal suma2 : std_logic_vector(3 downto 0);
	signal suma3 : std_logic_vector(3 downto 0);
	signal suma4 : std_logic_vector(3 downto 0);
	signal suma5 : std_logic_vector(3 downto 0);
	signal suma6 : std_logic_vector(3 downto 0);
	signal suma7 : std_logic_vector(3 downto 0);
	signal suma8 : std_logic_vector(3 downto 0);
	signal suma9 : std_logic_vector(3 downto 0);
	
	signal sAGB : std_logic_vector(9 downto 0);
	
	component comparator is
		port(
			ivA, ivB 	  : in  std_logic_vector(3 downto 0);
			AGB, AEB, ALB : out std_logic
		);
	end component;

begin
	
	operacion0(8 downto 0) <= Bin;
	
	------------- OPERACION 1 ------------------

	comp1: comparator port map(
		ivA => operacion0(9 downto 6),
		ivB => "0100",
		AGB => sAGB(0)
	);
	
	suma1 <= (operacion0(9 downto 6) + "0011") when sAGB(0) = '1' else
				(operacion0(9 downto 6));
				
	operacion1(4 downto 1) <= suma1;
	operacion1(0) <= operacion0(5);
	
	------------- OPERACION 2 ------------------

	comp2: comparator port map(
		ivA => operacion1(3 downto 0),
		ivB => "0100",
		AGB => sAGB(1)
	);
	
	suma2 <= (operacion1(3 downto 0) + "0011") when sAGB(1) = '1' else
				(operacion1(3 downto 0));
				
	operacion2(4 downto 1) <= suma2;
	operacion2(0) <= operacion0(4);
	operacion2(5) <= operacion1(4);

	------------- OPERACION 3 ------------------

	comp3: comparator port map(
		ivA => operacion2(3 downto 0),
		ivB => "0100",
		AGB => sAGB(3)
	);
	
	suma3 <= (operacion2(3 downto 0) + "0011") when sAGB(3) = '1' else
				(operacion2(3 downto 0));																																																																																																						
				
	operacion3(4 downto 1) <= suma3;
	operacion3(0) <= operacion0(3);
	operacion3(5) <= operacion2(4);
	operacion3(6) <= operacion2(5);

	------------- OPERACION 4 ------------------

	comp4: comparator port map(
		ivA => operacion3(3 downto 0),
		ivB => "0100",
		AGB => sAGB(4)
	);
	comp5: comparator port map(
		ivA => operacion3(7 downto 4),
		ivB => "0100",
		AGB => sAGB(5)
	);
	
	suma4 <= (operacion3(3 downto 0) + "0011") when sAGB(4) = '1' else
				(operacion3(3 downto 0));	
				
	suma5 <= (operacion3(7 downto 4) + "0011") when sAGB(5) = '1' else
				(operacion3(7 downto 4));
				
	operacion4(4 downto 1) <= suma4;
	operacion4(8 downto 5) <= suma5;
	
	operacion4(0) <= operacion0(2);
	
	------------- OPERACION 5 ------------------

	comp6: comparator port map(
		ivA => operacion4(3 downto 0),
		ivB => "0100",
		AGB => sAGB(6)
	);
	comp7: comparator port map(
		ivA => operacion4(7 downto 4),
		ivB => "0100",
		AGB => sAGB(7)
	);
	
	suma6 <= (operacion4(3 downto 0) + "0011") when sAGB(6) = '1' else
				(operacion4(3 downto 0));	
				
	suma7 <= (operacion4(7 downto 4) + "0011") when sAGB(7) = '1' else
				(operacion4(7 downto 4));
				
	operacion5(4 downto 1) <= suma6;
	operacion5(8 downto 5) <= suma7;
	
	operacion5(9) <= operacion4(8);
	operacion5(0) <= operacion0(1);
	
		------------- OPERACION 6 ------------------

	comp8: comparator port map(
		ivA => operacion5(3 downto 0),
		ivB => "0100",
		AGB => sAGB(8)
	);
	comp9: comparator port map(
		ivA => operacion5(7 downto 4),
		ivB => "0100",
		AGB => sAGB(9)
	);
	
	suma8 <= (operacion5(3 downto 0) + "0011") when sAGB(8) = '1' else
				(operacion5(3 downto 0));	
				
	suma9 <= (operacion5(7 downto 4) + "0011") when sAGB(9) = '1' else
				(operacion5(7 downto 4));
				
	operacion6(4 downto 1) <= suma8;
	operacion6(8 downto 5) <= suma9;
	
	operacion6(9)  <= operacion5(8);
	operacion6(10) <= operacion5(9);
	operacion6(0)  <= operacion0(0);
	
	------------- RESULTADOS ------------------
	
	Cen <= operacion6(11 downto 8);
	Dec <= operacion6(7 downto 4);
	Uni <= operacion6(3 downto 0);
    
end Behavioral;