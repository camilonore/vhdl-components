onerror {quit -f}
vlib work
vlog -work work divisor_2_25.vo
vlog -work work divisor_2_25.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.divisor_2_25_vlg_vec_tst
vcd file -direction divisor_2_25.msim.vcd
vcd add -internal divisor_2_25_vlg_vec_tst/*
vcd add -internal divisor_2_25_vlg_vec_tst/i1/*
add wave /*
run -all
