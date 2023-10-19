transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/restador_8bits/restador_8bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/sumadores_x_bits/sumador_8_bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/sumadores_x_bits/sumador_4_bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/sumadores_x_bits/sumador_2_bits.vhd}
vcom -93 -work work {c:/users/caminore/documents/quartus files/sumadores_x_bits/sumador_1_bit.vhd}

vcom -93 -work work {C:/Users/caminore/Documents/Quartus Files/restador_8bits/restador_8bits_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  restador_8bits_tb

add wave *
view structure
view signals
run -all
