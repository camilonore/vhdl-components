library verilog;
use verilog.vl_types.all;
entity restador_4bits is
    port(
        ivA             : in     vl_logic_vector(3 downto 0);
        ivB             : in     vl_logic_vector(3 downto 0);
        ovS             : out    vl_logic_vector(3 downto 0);
        oSign           : out    vl_logic
    );
end restador_4bits;
