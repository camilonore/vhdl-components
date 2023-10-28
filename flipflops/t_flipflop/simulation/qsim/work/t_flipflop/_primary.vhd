library verilog;
use verilog.vl_types.all;
entity t_flipflop is
    port(
        T               : in     vl_logic;
        R               : in     vl_logic;
        Clk             : in     vl_logic;
        Q               : out    vl_logic;
        nQ              : out    vl_logic
    );
end t_flipflop;
