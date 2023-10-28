library verilog;
use verilog.vl_types.all;
entity bin_2_bcd is
    port(
        Bin             : in     vl_logic_vector(7 downto 0);
        Cen             : out    vl_logic_vector(3 downto 0);
        Dec             : out    vl_logic_vector(3 downto 0);
        Uni             : out    vl_logic_vector(3 downto 0)
    );
end bin_2_bcd;
