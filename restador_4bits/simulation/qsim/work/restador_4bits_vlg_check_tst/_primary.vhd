library verilog;
use verilog.vl_types.all;
entity restador_4bits_vlg_check_tst is
    port(
        oSign           : in     vl_logic;
        ovS             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end restador_4bits_vlg_check_tst;
