transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Rosane/Quartus/ULAV4/sum4bits.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/mux4_1.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/mux2_1.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/flags.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/controle.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/comp.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/clor.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/clmag.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/cland.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/ulav2.vhd}
vcom -93 -work work {D:/Rosane/Quartus/ULAV4/contador.vhd}

vcom -93 -work work {D:/Rosane/Quartus/ULAV4/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run 110 us
