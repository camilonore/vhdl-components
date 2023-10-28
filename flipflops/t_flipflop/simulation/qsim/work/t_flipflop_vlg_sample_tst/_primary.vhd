library verilog;
use verilog.vl_types.all;
entity t_flipflop_vlg_sample_tst is
    port(
        Clk             : in     vl_logic;
        R               : in     vl_logic;
        T               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end t_flipflop_vlg_sample_tst;
