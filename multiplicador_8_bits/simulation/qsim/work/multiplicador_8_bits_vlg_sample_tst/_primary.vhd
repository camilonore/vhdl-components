library verilog;
use verilog.vl_types.all;
entity multiplicador_8_bits_vlg_sample_tst is
    port(
        ivA             : in     vl_logic_vector(3 downto 0);
        ivB             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end multiplicador_8_bits_vlg_sample_tst;
