library verilog;
use verilog.vl_types.all;
entity multiplicador_8_bits is
    port(
        ivA             : in     vl_logic_vector(3 downto 0);
        ivB             : in     vl_logic_vector(3 downto 0);
        P               : out    vl_logic_vector(7 downto 0)
    );
end multiplicador_8_bits;
