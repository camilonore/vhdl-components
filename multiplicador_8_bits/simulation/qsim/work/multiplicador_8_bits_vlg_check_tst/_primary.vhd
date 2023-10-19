library verilog;
use verilog.vl_types.all;
entity multiplicador_8_bits_vlg_check_tst is
    port(
        P               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end multiplicador_8_bits_vlg_check_tst;
