library verilog;
use verilog.vl_types.all;
entity d_latch is
    port(
        clk             : in     vl_logic;
        D               : in     vl_logic;
        Q               : out    vl_logic;
        nQ              : out    vl_logic
    );
end d_latch;
