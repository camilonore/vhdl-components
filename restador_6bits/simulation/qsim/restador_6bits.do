onerror {quit -f}
vlib work
vlog -work work restador_6bits.vo
vlog -work work restador_6bits.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.restador_6bits_vlg_vec_tst
vcd file -direction restador_6bits.msim.vcd
vcd add -internal restador_6bits_vlg_vec_tst/*
vcd add -internal restador_6bits_vlg_vec_tst/i1/*
add wave /*
run -all
