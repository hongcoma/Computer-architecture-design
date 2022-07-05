transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab_08_cudp_6_1200mv_85c_slow.vho}

vcom -93 -work work {C:/altera/13.1/quartus/bin64/work/lab_08_cudp_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lab_08_cudp_6_1200mv_85c_vhd_slow.sdo -L altera_mf -L altera -L lpm -L sgate -L cycloneiv_hssi -L cycloneiv_pcie_hip -L cycloneiv -L gate_work -L work -voptargs="+acc"  lab_08_cudp_tb

add wave *
view structure
view signals
run -all
