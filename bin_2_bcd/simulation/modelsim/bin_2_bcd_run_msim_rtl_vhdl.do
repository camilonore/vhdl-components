transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/bin_2_bcd/bin_2_bcd.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/bin_2_bcd/bin_2_bcd_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  bin_2_bcd_tb

add wave *
view structure
view signals
run -all
