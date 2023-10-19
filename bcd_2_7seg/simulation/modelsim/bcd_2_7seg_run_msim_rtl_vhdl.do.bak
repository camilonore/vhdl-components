transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/bcd_2_7seg/bcd_2_7seg.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/bcd_2_7seg/bcd_2_7seg_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  bcd_2_7seg_tb

add wave *
view structure
view signals
run -all
