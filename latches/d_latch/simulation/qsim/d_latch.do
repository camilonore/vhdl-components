onerror {quit -f}
vlib work
vlog -work work d_latch.vo
vlog -work work d_latch.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.d_latch_vlg_vec_tst
vcd file -direction d_latch.msim.vcd
vcd add -internal d_latch_vlg_vec_tst/*
vcd add -internal d_latch_vlg_vec_tst/i1/*
add wave /*
run -all
