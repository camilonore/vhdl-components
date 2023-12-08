transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/contadores/contador_0_9_S_MEF/contador_0_9_S_MEF.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/library/t_flipflop.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/contadores/contador_0_9_S_MEF/contador_0_9_S_MEF_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  contador_0_9_S_MEF_tb

add wave *
view structure
view signals
run -all
