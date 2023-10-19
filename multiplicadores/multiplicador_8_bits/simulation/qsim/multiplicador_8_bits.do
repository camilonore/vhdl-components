onerror {quit -f}
vlib work
vlog -work work multiplicador_8_bits.vo
vlog -work work multiplicador_8_bits.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multiplicador_8_bits_vlg_vec_tst
vcd file -direction multiplicador_8_bits.msim.vcd
vcd add -internal multiplicador_8_bits_vlg_vec_tst/*
vcd add -internal multiplicador_8_bits_vlg_vec_tst/i1/*
add wave /*
run -all
