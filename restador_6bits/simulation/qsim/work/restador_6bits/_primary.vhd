library verilog;
use verilog.vl_types.all;
entity restador_6bits is
    port(
        ivA             : in     vl_logic_vector(5 downto 0);
        ivB             : in     vl_logic_vector(5 downto 0);
        ovS             : out    vl_logic_vector(6 downto 0)
    );
end restador_6bits;
