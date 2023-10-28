transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/flipflops/d_ff_8bits/d_ff_8bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/vhdl-components/flipflops/d_ff_4bits/d_ff_4bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/vhdl-components/flipflops/d_ff_2bits/d_ff_2bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/vhdl-components/flipflops/d_flipflop/d_flipflop.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/vhdl-components/flipflops/d_ff_8bits/d_ff_8bits_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  d_ff_8bits_tb

add wave *
view structure
view signals
run -all
