library verilog;
use verilog.vl_types.all;
entity t_flipflop_vlg_check_tst is
    port(
        nQ              : in     vl_logic;
        Q               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end t_flipflop_vlg_check_tst;
