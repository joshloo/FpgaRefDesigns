#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology LFMXO5
set_option -part LFMXO5_25
set_option -package BBG400C
set_option -speed_grade -7
#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog standard option
set_option -vlog_std v2001

#map options
set_option -frequency 200
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -retiming false; set_option -pipe true
set_option -force_gsr auto
set_option -compiler_compatible 0


set_option -default_enum_encoding default

#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 0
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -rw_check_on_ram 0
set_option -seqshift_no_replicate 0

#-- set any command lines input by customer

set_option -dup false
set_option -disable_io_insertion false
add_file -constraint {comm_protocols_impl_1_cpe.ldc}
add_file -verilog {C:/lscc/radiant/2023.1/ip/pmi/pmi_lfmxo5.v}
add_file -vhdl -lib pmi {C:/lscc/radiant/2023.1/ip/pmi/pmi_lfmxo5.vhd}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axil2apb1/0.1.0/rtl/axil2apb1.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/s0_apb_gpio/1.6.1/rtl/s0_apb_gpio.v}
add_file -verilog -vlog_std sysv {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/cpu0/2.2.0/rtl/cpu0.sv}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi_crossbarNxM/0.1.0/rtl/axi_crossbarNxM.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/comm_protocols.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi2axil_M00/0.1.0/rtl/axi2axil_M00.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/pll0/1.7.0/rtl/pll0.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi2axil_M01/0.1.0/rtl/axi2axil_M01.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/tcm0/1.3.9/rtl/tcm0.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/osc0/1.4.0/rtl/osc0.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/system0/2.0.0/rtl/system0.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/s1_apb_uart/1.3.0/rtl/s1_apb_uart.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/rtl/axi1x2.v}
add_file -verilog -vlog_std v2001 {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axil2apb0/0.1.0/rtl/axil2apb0.v}
#-- top module name
set_option -top_module comm_protocols
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/cpu0/2.2.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/s0_apb_gpio/1.6.1}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/s1_apb_uart/1.3.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/system0/2.0.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/tcm0/1.3.9}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi2axil_M00/0.1.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi2axil_M01/0.1.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi_crossbarNxM/0.1.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axil2apb0/0.1.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axil2apb1/0.1.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/osc0/1.4.0}
set_option -include_path {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/pll0/1.7.0}

#-- set result format/file last
project -result_format "vm"
project -result_file {C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/impl_1/comm_protocols_impl_1.vm}

#-- error message log file
project -log_file {comm_protocols_impl_1.srf}
project -run -clean
