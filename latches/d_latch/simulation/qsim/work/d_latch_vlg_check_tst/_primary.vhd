library verilog;
use verilog.vl_types.all;
entity d_latch_vlg_check_tst is
    port(
        nQ              : in     vl_logic;
        Q               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end d_latch_vlg_check_tst;
