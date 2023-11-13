transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/flipflops/t_flipflop_inv/t_flipflop_inv.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/flipflops/t_flipflop_inv/t_flipflop_inv_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  t_flipflop_inv_tb

add wave *
view structure
view signals
run -all
