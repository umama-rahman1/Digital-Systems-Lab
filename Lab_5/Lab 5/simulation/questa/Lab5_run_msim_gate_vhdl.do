transcript on
if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib vhdl_libs/altera
vmap altera ./vhdl_libs/altera
vcom -93 -work altera {e:/quartus/quartus/eda/sim_lib/altera_syn_attributes.vhd}
vcom -93 -work altera {e:/quartus/quartus/eda/sim_lib/altera_standard_functions.vhd}
vcom -93 -work altera {e:/quartus/quartus/eda/sim_lib/alt_dspbuilder_package.vhd}
vcom -93 -work altera {e:/quartus/quartus/eda/sim_lib/altera_europa_support_lib.vhd}
vcom -93 -work altera {e:/quartus/quartus/eda/sim_lib/altera_primitives_components.vhd}
vcom -93 -work altera {e:/quartus/quartus/eda/sim_lib/altera_primitives.vhd}

vlib vhdl_libs/altera_lnsim
vmap altera_lnsim ./vhdl_libs/altera_lnsim
vlog -sv -work altera_lnsim {e:/quartus/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv}
vcom -93 -work altera_lnsim {e:/quartus/quartus/eda/sim_lib/altera_lnsim_components.vhd}

vlib vhdl_libs/cyclonev
vmap cyclonev ./vhdl_libs/cyclonev
vlog -vlog01compat -work cyclonev {e:/quartus/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vcom -93 -work cyclonev {e:/quartus/quartus/eda/sim_lib/cyclonev_atoms.vhd}
vcom -93 -work cyclonev {e:/quartus/quartus/eda/sim_lib/cyclonev_components.vhd}

vlib vhdl_libs/lpm
vmap lpm ./vhdl_libs/lpm
vcom -93 -work lpm {e:/quartus/quartus/eda/sim_lib/220pack.vhd}
vcom -93 -work lpm {e:/quartus/quartus/eda/sim_lib/220model.vhd}

vlib vhdl_libs/sgate
vmap sgate ./vhdl_libs/sgate
vcom -93 -work sgate {e:/quartus/quartus/eda/sim_lib/sgate_pack.vhd}
vcom -93 -work sgate {e:/quartus/quartus/eda/sim_lib/sgate.vhd}

vlib vhdl_libs/cyclonev_hssi
vmap cyclonev_hssi ./vhdl_libs/cyclonev_hssi
vcom -93 -work cyclonev_hssi {e:/quartus/quartus/eda/sim_lib/cyclonev_hssi_components.vhd}
vlog -vlog01compat -work cyclonev_hssi {e:/quartus/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vcom -93 -work cyclonev_hssi {e:/quartus/quartus/eda/sim_lib/cyclonev_hssi_atoms.vhd}

if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Lab5.vho}

