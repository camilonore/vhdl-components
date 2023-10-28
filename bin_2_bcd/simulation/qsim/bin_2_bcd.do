onerror {quit -f}
vlib work
vlog -work work bin_2_bcd.vo
vlog -work work bin_2_bcd.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bin_2_bcd_vlg_vec_tst
vcd file -direction bin_2_bcd.msim.vcd
vcd add -internal bin_2_bcd_vlg_vec_tst/*
vcd add -internal bin_2_bcd_vlg_vec_tst/i1/*
add wave /*
run -all
