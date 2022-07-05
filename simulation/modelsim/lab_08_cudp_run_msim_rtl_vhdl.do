transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_08_cudp.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_08_cu.vhd}
vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_08_dp.vhd}

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_08_cudp_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L rtl_work -L work -voptargs="+acc"  lab_08_cudp_tb

add wave *
view structure
view signals
run -all
