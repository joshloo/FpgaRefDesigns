// Verilog netlist produced by program LSE 
// Netlist written on Mon Nov 20 14:10:05 2023
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "c:/code/fpgarefdesigns/propelbuilder/comm_protocols/comm_protocols/bht_ini.bin"
// file 1 "c:/code/fpgarefdesigns/propelbuilder/comm_protocols/comm_protocols/reginit.bin"
// file 2 "c:/lscc/radiant/2023.1/ip/avant/fifo/rtl/lscc_fifo.v"
// file 3 "c:/lscc/radiant/2023.1/ip/avant/fifo_dc/rtl/lscc_fifo_dc.v"
// file 4 "c:/lscc/radiant/2023.1/ip/avant/ram_dp/rtl/lscc_ram_dp.v"
// file 5 "c:/lscc/radiant/2023.1/ip/avant/ram_dp_true/rtl/lscc_ram_dp_true.v"
// file 6 "c:/lscc/radiant/2023.1/ip/avant/ram_dq/rtl/lscc_ram_dq.v"
// file 7 "c:/lscc/radiant/2023.1/ip/avant/rom/rtl/lscc_rom.v"
// file 8 "c:/lscc/radiant/2023.1/ip/common/adder/rtl/lscc_adder.v"
// file 9 "c:/lscc/radiant/2023.1/ip/common/adder_subtractor/rtl/lscc_add_sub.v"
// file 10 "c:/lscc/radiant/2023.1/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 11 "c:/lscc/radiant/2023.1/ip/common/counter/rtl/lscc_cntr.v"
// file 12 "c:/lscc/radiant/2023.1/ip/common/distributed_dpram/rtl/lscc_distributed_dpram.v"
// file 13 "c:/lscc/radiant/2023.1/ip/common/distributed_rom/rtl/lscc_distributed_rom.v"
// file 14 "c:/lscc/radiant/2023.1/ip/common/distributed_spram/rtl/lscc_distributed_spram.v"
// file 15 "c:/lscc/radiant/2023.1/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 16 "c:/lscc/radiant/2023.1/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 17 "c:/lscc/radiant/2023.1/ip/common/mult_add_sub_sum/rtl/lscc_mult_add_sub_sum.v"
// file 18 "c:/lscc/radiant/2023.1/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 19 "c:/lscc/radiant/2023.1/ip/common/ram_shift_reg/rtl/lscc_shift_register.v"
// file 20 "c:/lscc/radiant/2023.1/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 21 "c:/lscc/radiant/2023.1/ip/pmi/pmi_add.v"
// file 22 "c:/lscc/radiant/2023.1/ip/pmi/pmi_addsub.v"
// file 23 "c:/lscc/radiant/2023.1/ip/pmi/pmi_complex_mult.v"
// file 24 "c:/lscc/radiant/2023.1/ip/pmi/pmi_counter.v"
// file 25 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_dpram.v"
// file 26 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_rom.v"
// file 27 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_shift_reg.v"
// file 28 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_spram.v"
// file 29 "c:/lscc/radiant/2023.1/ip/pmi/pmi_fifo.v"
// file 30 "c:/lscc/radiant/2023.1/ip/pmi/pmi_fifo_dc.v"
// file 31 "c:/lscc/radiant/2023.1/ip/pmi/pmi_mac.v"
// file 32 "c:/lscc/radiant/2023.1/ip/pmi/pmi_mult.v"
// file 33 "c:/lscc/radiant/2023.1/ip/pmi/pmi_multaddsub.v"
// file 34 "c:/lscc/radiant/2023.1/ip/pmi/pmi_multaddsubsum.v"
// file 35 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dp.v"
// file 36 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dp_be.v"
// file 37 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dp_true.v"
// file 38 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dq.v"
// file 39 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dq_be.v"
// file 40 "c:/lscc/radiant/2023.1/ip/pmi/pmi_rom.v"
// file 41 "c:/lscc/radiant/2023.1/ip/pmi/pmi_sub.v"
// file 42 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/acc54.v"
// file 43 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/adc.v"
// file 44 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bb_adc.v"
// file 45 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bb_cdr.v"
// file 46 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bb_i3c_a.v"
// file 47 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bfd1p3kx.v"
// file 48 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bfd1p3lx.v"
// file 49 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bnkref18.v"
// file 50 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/config_ip.v"
// file 51 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/config_lmmib.v"
// file 52 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ddrdll.v"
// file 53 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/diffio18.v"
// file 54 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dlldel.v"
// file 55 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dp16k.v"
// file 56 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dpsc512k.v"
// file 57 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dqsbuf.v"
// file 58 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ebr.v"
// file 59 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/eclkdiv.v"
// file 60 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/eclksync.v"
// file 61 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/fifo16k.v"
// file 62 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/i2cfifo.v"
// file 63 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3bx.v"
// file 64 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3dx.v"
// file 65 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3ix.v"
// file 66 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3jx.v"
// file 67 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/jtag.v"
// file 68 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/lram.v"
// file 69 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/m18x36.v"
// file 70 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mipi.v"
// file 71 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult18.v"
// file 72 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult18x18.v"
// file 73 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult18x36.v"
// file 74 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult36.v"
// file 75 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult36x36.v"
// file 76 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult9.v"
// file 77 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult9x9.v"
// file 78 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub18x18.v"
// file 79 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub18x18wide.v"
// file 80 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub18x36.v"
// file 81 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub36x36.v"
// file 82 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub9x9wide.v"
// file 83 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multiboot.v"
// file 84 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multpreadd18x18.v"
// file 85 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multpreadd9x9.v"
// file 86 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3bx.v"
// file 87 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3dx.v"
// file 88 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3ix.v"
// file 89 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3jx.v"
// file 90 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/osc.v"
// file 91 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/osca.v"
// file 92 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pdp16k.v"
// file 93 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pdpsc16k.v"
// file 94 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pdpsc512k.v"
// file 95 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pll.v"
// file 96 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/plla.v"
// file 97 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pllrefcs.v"
// file 98 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pmu.v"
// file 99 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/preadd9.v"
// file 100 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/refmux.v"
// file 101 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/reg18.v"
// file 102 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sedc.v"
// file 103 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/seio18.v"
// file 104 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/seio33.v"
// file 105 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sgmiicdr.v"
// file 106 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sp16k.v"
// file 107 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sp512k.v"
// file 108 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/tsalla.v"
// file 109 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/wdt.v"
// file 110 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/dpr16x4.v"
// file 111 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3bx.v"
// file 112 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3dx.v"
// file 113 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3ix.v"
// file 114 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3jx.v"
// file 115 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/gsr.v"
// file 116 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/ib.v"
// file 117 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/ob.v"
// file 118 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/obz.v"
// file 119 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/pclkdivsp.v"
// file 120 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/spr16x4.v"
// file 121 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/widefn9.v"

//
// Verilog Description of module cpu0
// module wrapper written out since it is a black-box. 
//

//

module cpu0 (clk_system_i, clk_realtime_i, rstn_i, system_resetn_o, 
            irq3_i, irq2_i, dBusAxi_aw_payload_id, dBusAxi_aw_payload_addr, 
            dBusAxi_aw_payload_len, dBusAxi_aw_payload_size, dBusAxi_aw_payload_burst, 
            dBusAxi_aw_payload_lock, dBusAxi_aw_payload_cache, dBusAxi_aw_payload_prot, 
            dBusAxi_aw_payload_qos, dBusAxi_aw_payload_region, dBusAxi_aw_valid, 
            dBusAxi_aw_ready, dBusAxi_w_payload_data, dBusAxi_w_payload_strb, 
            dBusAxi_w_payload_last, dBusAxi_w_valid, dBusAxi_w_ready, 
            dBusAxi_b_payload_id, dBusAxi_b_payload_resp, dBusAxi_b_valid, 
            dBusAxi_b_ready, dBusAxi_ar_payload_id, dBusAxi_ar_payload_addr, 
            dBusAxi_ar_payload_len, dBusAxi_ar_payload_size, dBusAxi_ar_payload_burst, 
            dBusAxi_ar_payload_lock, dBusAxi_ar_payload_cache, dBusAxi_ar_payload_prot, 
            dBusAxi_ar_payload_qos, dBusAxi_ar_payload_region, dBusAxi_ar_valid, 
            dBusAxi_ar_ready, dBusAxi_r_payload_id, dBusAxi_r_payload_data, 
            dBusAxi_r_payload_resp, dBusAxi_r_payload_last, dBusAxi_r_valid, 
            dBusAxi_r_ready, iBusAxi_aw_payload_id, iBusAxi_aw_payload_addr, 
            iBusAxi_aw_payload_len, iBusAxi_aw_payload_size, iBusAxi_aw_payload_burst, 
            iBusAxi_aw_payload_lock, iBusAxi_aw_payload_cache, iBusAxi_aw_payload_prot, 
            iBusAxi_aw_payload_qos, iBusAxi_aw_payload_region, iBusAxi_aw_valid, 
            iBusAxi_aw_ready, iBusAxi_w_payload_data, iBusAxi_w_payload_strb, 
            iBusAxi_w_payload_last, iBusAxi_w_valid, iBusAxi_w_ready, 
            iBusAxi_b_payload_id, iBusAxi_b_payload_resp, iBusAxi_b_valid, 
            iBusAxi_b_ready, iBusAxi_ar_payload_id, iBusAxi_ar_payload_addr, 
            iBusAxi_ar_payload_len, iBusAxi_ar_payload_size, iBusAxi_ar_payload_burst, 
            iBusAxi_ar_payload_lock, iBusAxi_ar_payload_cache, iBusAxi_ar_payload_prot, 
            iBusAxi_ar_payload_qos, iBusAxi_ar_payload_region, iBusAxi_ar_valid, 
            iBusAxi_ar_ready, iBusAxi_r_payload_id, iBusAxi_r_payload_data, 
            iBusAxi_r_payload_resp, iBusAxi_r_payload_last, iBusAxi_r_valid, 
            iBusAxi_r_ready, ibus_cmd_valid, ibus_cmd_ready, ibus_cmd_payload_wr, 
            ibus_cmd_payload_uncached, ibus_cmd_payload_address, ibus_cmd_payload_data, 
            ibus_cmd_payload_mask, ibus_cmd_payload_size, ibus_cmd_payload_last, 
            ibus_rsp_valid, ibus_rsp_payload_last, ibus_rsp_payload_data, 
            ibus_rsp_payload_error, dbus_cmd_valid, dbus_cmd_ready, dbus_cmd_payload_wr, 
            dbus_cmd_payload_uncached, dbus_cmd_payload_address, dbus_cmd_payload_data, 
            dbus_cmd_payload_mask, dbus_cmd_payload_size, dbus_cmd_payload_last, 
            dbus_rsp_valid, dbus_rsp_payload_last, dbus_rsp_payload_data, 
            dbus_rsp_payload_error) /* synthesis cpe_box=1 */ ;
    input clk_system_i;
    input clk_realtime_i;
    input rstn_i;
    output system_resetn_o;
    input [0:0]irq3_i;
    input [0:0]irq2_i;
    output dBusAxi_aw_payload_id;
    output [31:0]dBusAxi_aw_payload_addr;
    output [7:0]dBusAxi_aw_payload_len;
    output [2:0]dBusAxi_aw_payload_size;
    output [1:0]dBusAxi_aw_payload_burst;
    output dBusAxi_aw_payload_lock;
    output [3:0]dBusAxi_aw_payload_cache;
    output [2:0]dBusAxi_aw_payload_prot;
    output [3:0]dBusAxi_aw_payload_qos;
    output [3:0]dBusAxi_aw_payload_region;
    output dBusAxi_aw_valid;
    input dBusAxi_aw_ready;
    output [31:0]dBusAxi_w_payload_data;
    output [3:0]dBusAxi_w_payload_strb;
    output dBusAxi_w_payload_last;
    output dBusAxi_w_valid;
    input dBusAxi_w_ready;
    input dBusAxi_b_payload_id;
    input [1:0]dBusAxi_b_payload_resp;
    input dBusAxi_b_valid;
    output dBusAxi_b_ready;
    output dBusAxi_ar_payload_id;
    output [31:0]dBusAxi_ar_payload_addr;
    output [7:0]dBusAxi_ar_payload_len;
    output [2:0]dBusAxi_ar_payload_size;
    output [1:0]dBusAxi_ar_payload_burst;
    output dBusAxi_ar_payload_lock;
    output [3:0]dBusAxi_ar_payload_cache;
    output [2:0]dBusAxi_ar_payload_prot;
    output [3:0]dBusAxi_ar_payload_qos;
    output [3:0]dBusAxi_ar_payload_region;
    output dBusAxi_ar_valid;
    input dBusAxi_ar_ready;
    input dBusAxi_r_payload_id;
    input [31:0]dBusAxi_r_payload_data;
    input [1:0]dBusAxi_r_payload_resp;
    input dBusAxi_r_payload_last;
    input dBusAxi_r_valid;
    output dBusAxi_r_ready;
    output iBusAxi_aw_payload_id;
    output [31:0]iBusAxi_aw_payload_addr;
    output [7:0]iBusAxi_aw_payload_len;
    output [2:0]iBusAxi_aw_payload_size;
    output [1:0]iBusAxi_aw_payload_burst;
    output iBusAxi_aw_payload_lock;
    output [3:0]iBusAxi_aw_payload_cache;
    output [2:0]iBusAxi_aw_payload_prot;
    output [3:0]iBusAxi_aw_payload_qos;
    output [3:0]iBusAxi_aw_payload_region;
    output iBusAxi_aw_valid;
    input iBusAxi_aw_ready;
    output [31:0]iBusAxi_w_payload_data;
    output [3:0]iBusAxi_w_payload_strb;
    output iBusAxi_w_payload_last;
    output iBusAxi_w_valid;
    input iBusAxi_w_ready;
    input iBusAxi_b_payload_id;
    input [1:0]iBusAxi_b_payload_resp;
    input iBusAxi_b_valid;
    output iBusAxi_b_ready;
    output iBusAxi_ar_payload_id;
    output [31:0]iBusAxi_ar_payload_addr;
    output [7:0]iBusAxi_ar_payload_len;
    output [2:0]iBusAxi_ar_payload_size;
    output [1:0]iBusAxi_ar_payload_burst;
    output iBusAxi_ar_payload_lock;
    output [3:0]iBusAxi_ar_payload_cache;
    output [2:0]iBusAxi_ar_payload_prot;
    output [3:0]iBusAxi_ar_payload_qos;
    output [3:0]iBusAxi_ar_payload_region;
    output iBusAxi_ar_valid;
    input iBusAxi_ar_ready;
    input iBusAxi_r_payload_id;
    input [31:0]iBusAxi_r_payload_data;
    input [1:0]iBusAxi_r_payload_resp;
    input iBusAxi_r_payload_last;
    input iBusAxi_r_valid;
    output iBusAxi_r_ready;
    output ibus_cmd_valid;
    input ibus_cmd_ready;
    output ibus_cmd_payload_wr;
    output ibus_cmd_payload_uncached;
    output [31:0]ibus_cmd_payload_address;
    output [31:0]ibus_cmd_payload_data;
    output [3:0]ibus_cmd_payload_mask;
    output [2:0]ibus_cmd_payload_size;
    output ibus_cmd_payload_last;
    input ibus_rsp_valid;
    input ibus_rsp_payload_last;
    input [31:0]ibus_rsp_payload_data;
    input ibus_rsp_payload_error;
    output dbus_cmd_valid;
    input dbus_cmd_ready;
    output dbus_cmd_payload_wr;
    output dbus_cmd_payload_uncached;
    output [31:0]dbus_cmd_payload_address;
    output [31:0]dbus_cmd_payload_data;
    output [3:0]dbus_cmd_payload_mask;
    output [2:0]dbus_cmd_payload_size;
    output dbus_cmd_payload_last;
    input dbus_rsp_valid;
    input dbus_rsp_payload_last;
    input [31:0]dbus_rsp_payload_data;
    input dbus_rsp_payload_error;
    
    
    
endmodule
