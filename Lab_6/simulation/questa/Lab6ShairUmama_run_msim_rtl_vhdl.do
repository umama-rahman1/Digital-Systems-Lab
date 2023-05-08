transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {d:/intelfpga/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {d:/intelfpga/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {d:/intelfpga/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {d:/intelfpga/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {d:/intelfpga/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {d:/intelfpga/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {d:/intelfpga/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {d:/intelfpga/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {d:/intelfpga/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {d:/intelfpga/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/altera_mf
vmap altera_mf ./vhdl_libs/altera_mf
vcom -93 -work altera_mf {d:/intelfpga/quartus/eda/sim_lib/altera_mf_components.vhd}
vcom -93 -work altera_mf {d:/intelfpga/quartus/eda/sim_lib/altera_mf.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {d:/intelfpga/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {d:/intelfpga/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclonev
vmap cyclonev ./vhdl_libs/cyclonev
vlog -vlog01compat -work cyclonev {d:/intelfpga/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vcom -93 -work cyclonev {d:/intelfpga/quartus/eda/sim_lib/cyclonev_atoms.vhd}
vcom -93 -work cyclonev {d:/intelfpga/quartus/eda/sim_lib/cyclonev_components.vhd}

vlib vhdl_libs/cyclonev_hssi
vmap cyclonev_hssi ./vhdl_libs/cyclonev_hssi
vcom -93 -work cyclonev_hssi {d:/intelfpga/quartus/eda/sim_lib/cyclonev_hssi_components.vhd}
vlog -vlog01compat -work cyclonev_hssi {d:/intelfpga/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vcom -93 -work cyclonev_hssi {d:/intelfpga/quartus/eda/sim_lib/cyclonev_hssi_atoms.vhd}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Downloads/Lab 6 - Shair-20230405T133704Z-001/Lab 6 - Shair/Lab 6-tbworks/Components.vhd}
vcom -93 -work work {D:/Downloads/Lab 6 - Shair-20230405T133704Z-001/Lab 6 - Shair/Lab 6-tbworks/tb_counter26.vhd}

