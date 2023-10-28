library verilog;
use verilog.vl_types.all;
entity bin_2_bcd_vlg_check_tst is
    port(
        Cen             : in     vl_logic_vector(3 downto 0);
        Dec             : in     vl_logic_vector(3 downto 0);
        Uni             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end bin_2_bcd_vlg_check_tst;
