library verilog;
use verilog.vl_types.all;
entity restador_6bits_vlg_check_tst is
    port(
        ovS             : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end restador_6bits_vlg_check_tst;
