library verilog;
use verilog.vl_types.all;
entity multiplicador_4bits_vlg_check_tst is
    port(
        ovS             : in     vl_logic_vector(8 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplicador_4bits_vlg_check_tst;
