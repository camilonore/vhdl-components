library verilog;
use verilog.vl_types.all;
entity multiplicador_4bits is
    port(
        ivA             : in     vl_logic_vector(3 downto 0);
        ivB             : in     vl_logic_vector(3 downto 0);
        ovS             : out    vl_logic_vector(8 downto 0)
    );
end multiplicador_4bits;
