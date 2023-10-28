library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity d_ff_4bits_tb is
end d_ff_4bits_tb;

architecture testbench of d_ff_4bits_tb is
    signal D_tb : std_logic_vector(3 downto 0);
    signal Clk_tb : std_logic;
    signal R_tb : std_logic;
    signal Q_tb : std_logic_vector(3 downto 0);
	 
    component d_ff_4bits
        port (
            D : in  std_logic_vector(3 downto 0);
            Clk, R : in  std_logic;
            Q, nQ : out std_logic_vector(3 downto 0)
        );
    end component;

begin

    test : d_ff_4bits port map (
        D => D_tb,
        Clk => Clk_tb,
        R => R_tb,
        Q => Q_tb
    );

    process
    begin
        D_tb   <= "1010";
        Clk_tb <= '0';
        R_tb   <= '0';
        wait for 110 ps;

        D_tb   <= "0101";
        Clk_tb <= '1';
        R_tb   <= '0';
        wait for 100 ps;
		  
        D_tb   <= "0000";
        Clk_tb <= '0';
        R_tb   <= '0';
        wait for 100 ps;
        
        D_tb   <= "1111";
        Clk_tb <= '0';
        R_tb   <= '1';
        wait for 100 ps;

        D_tb   <= "1111";
        Clk_tb <= '1';
        R_tb   <= '0';
        wait for 100 ps;
		  
		  D_tb   <= "0000";
        Clk_tb <= '0';
        R_tb   <= '0';
        wait for 100 ps;
		  
		  D_tb   <= "0000";
        Clk_tb <= '1';
        R_tb   <= '0';
        wait for 100 ps;

        wait;
    end process;

end testbench;