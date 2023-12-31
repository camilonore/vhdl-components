transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/comparador_xbits/comparador_xbits.vhd}
vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/comparador_xbits/comparador_1bit.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/comparador_xbits/comparador_xbits_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  comparador_xbits_tb

add wave *
view structure
view signals
run -all
