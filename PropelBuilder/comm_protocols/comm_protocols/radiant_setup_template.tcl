set current_path "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols"

cd $current_path

set radiant_project "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols.rdf"

set DEVICE "LFMXO5-25-7BBG400C"

set DESIGN "comm_protocols"

array set VFILE_LIST ""
set VFILE_LIST(1) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/osc0/1.4.0/osc0.ipx"
set VFILE_LIST(2) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/s0_apb_gpio/1.6.1/s0_apb_gpio.ipx"
set VFILE_LIST(3) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi2axil_M01/0.1.0/axi2axil_M01.ipx"
set VFILE_LIST(4) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/axi1x2.ipx"
set VFILE_LIST(5) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axil2apb0/0.1.0/axil2apb0.ipx"
set VFILE_LIST(6) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/comm_protocols.v"
set VFILE_LIST(7) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/cpu0/2.2.0/cpu0.ipx"
set VFILE_LIST(8) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi_crossbarNxM/0.1.0/axi_crossbarNxM.ipx"
set VFILE_LIST(9) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/tcm0/1.3.9/tcm0.ipx"
set VFILE_LIST(10) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/pll0/1.7.0/pll0.ipx"
set VFILE_LIST(11) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axil2apb1/0.1.0/axil2apb1.ipx"
set VFILE_LIST(12) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/system0/2.0.0/system0.ipx"
set VFILE_LIST(13) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/module/axi1x2/0.2.0/lib/latticesemi.com/module/axi2axil_M00/0.1.0/axi2axil_M00.ipx"
set VFILE_LIST(14) "C:/code/FpgaRefDesigns/PropelBuilder/comm_protocols/comm_protocols/comm_protocols/lib/latticesemi.com/ip/s1_apb_uart/1.3.0/s1_apb_uart.ipx"

set index [array names VFILE_LIST]
if { [file exists $radiant_project] == 1} {
    prj_open $radiant_project
    prj_set_device -part $DEVICE -performance 7_High-Performance_1.0V
} else {
    prj_create -name "comm_protocols" -impl "impl_1" -dev $DEVICE -performance 7_High-Performance_1.0V -synthesis "synplify"
    prj_save
}


foreach i $index {
    if { [catch {prj_add_source $VFILE_LIST($i)} fid] } {
        puts "file already exists in project."
    }
}

prj_set_impl_opt top {comm_protocols}
prj_set_impl_opt -impl "impl_1" "include path" "."
prj_set_impl_opt -impl "impl_1" "top" "comm_protocols"

prj_save

