if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/2023.1} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols"
# synthesize IPs
# synthesize VMs
# propgate constraints
file delete -force -- comm_protocols_impl_1_cpe.ldc
run_engine_newmsg cpe -f "comm_protocols_impl_1.cprj" "axil2apb1.cprj" "s0_apb_gpio.cprj" "cpu0.cprj" "axi_crossbarNxM.cprj" "axi2axil_M00.cprj" "pll0.cprj" "axi2axil_M01.cprj" "tcm0.cprj" "osc0.cprj" "system0.cprj" "s1_apb_uart.cprj" "axi1x2.cprj" "axil2apb0.cprj" -a "LFMXO5"  -o comm_protocols_impl_1_cpe.ldc
# synthesize top design
file delete -force -- comm_protocols_impl_1.vm comm_protocols_impl_1.ldc
run_engine synpwrap -prj "comm_protocols_impl_1_synplify.tcl" -log "comm_protocols_impl_1.srf"
run_postsyn [list -a LFMXO5 -p LFMXO5-25 -t BBG400 -sp 7_High-Performance_1.0V -oc Commercial -top -w -o comm_protocols_impl_1_syn.udb comm_protocols_impl_1.vm] "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/impl_1/comm_protocols_impl_1.ldc"

} out]} {
   runtime_log $out
   exit 1
}
