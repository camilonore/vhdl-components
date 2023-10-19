library verilog;
use verilog.vl_types.all;
entity restador_6bits_vlg_sample_tst is
    port(
        ivA             : in     vl_logic_vector(5 downto 0);
        ivB             : in     vl_logic_vector(5 downto 0);
        sampler_tx      : out    vl_logic
    );
end restador_6bits_vlg_sample_tst;
