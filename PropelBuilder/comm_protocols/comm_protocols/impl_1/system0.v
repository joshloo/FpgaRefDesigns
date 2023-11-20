// Verilog netlist produced by program LSE 
// Netlist written on Mon Nov 20 14:10:14 2023
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
// Verilog Description of module system0
// module wrapper written out since it is a black-box. 
//

//

module system0 (axi_aclk_i, axi_resetn_i, axi_s0_awaddr_i, axi_s0_awvalid_i, 
            axi_s0_awprot_i, axi_s0_awready_o, axi_s0_awid_i, axi_s0_awlen_i, 
            axi_s0_awsize_i, axi_s0_awburst_i, axi_s0_awlock_i, axi_s0_awcache_i, 
            axi_s0_awqos_i, axi_s0_awregion_i, axi_s0_wdata_i, axi_s0_wstrb_i, 
            axi_s0_wvalid_i, axi_s0_wready_o, axi_s0_wlast_i, axi_s0_bready_i, 
            axi_s0_bresp_o, axi_s0_bvalid_o, axi_s0_bid_o, axi_s0_araddr_i, 
            axi_s0_arvalid_i, axi_s0_arprot_i, axi_s0_arready_o, axi_s0_arid_i, 
            axi_s0_arlen_i, axi_s0_arsize_i, axi_s0_arburst_i, axi_s0_arlock_i, 
            axi_s0_arcache_i, axi_s0_arqos_i, axi_s0_arregion_i, axi_s0_rdata_o, 
            axi_s0_rready_i, axi_s0_rresp_o, axi_s0_rvalid_o, axi_s0_rid_o, 
            axi_s0_rlast_o) /* synthesis cpe_box=1 */ ;
    input axi_aclk_i;
    input axi_resetn_i;
    input [31:0]axi_s0_awaddr_i;
    input axi_s0_awvalid_i;
    input [2:0]axi_s0_awprot_i;
    output axi_s0_awready_o;
    input [3:0]axi_s0_awid_i;
    input [7:0]axi_s0_awlen_i;
    input [2:0]axi_s0_awsize_i;
    input [1:0]axi_s0_awburst_i;
    input axi_s0_awlock_i;
    input [3:0]axi_s0_awcache_i;
    input [3:0]axi_s0_awqos_i;
    input [3:0]axi_s0_awregion_i;
    input [31:0]axi_s0_wdata_i;
    input [3:0]axi_s0_wstrb_i;
    input axi_s0_wvalid_i;
    output axi_s0_wready_o;
    input axi_s0_wlast_i;
    input axi_s0_bready_i;
    output [1:0]axi_s0_bresp_o;
    output axi_s0_bvalid_o;
    output [3:0]axi_s0_bid_o;
    input [31:0]axi_s0_araddr_i;
    input axi_s0_arvalid_i;
    input [2:0]axi_s0_arprot_i;
    output axi_s0_arready_o;
    input [3:0]axi_s0_arid_i;
    input [7:0]axi_s0_arlen_i;
    input [2:0]axi_s0_arsize_i;
    input [1:0]axi_s0_arburst_i;
    input axi_s0_arlock_i;
    input [3:0]axi_s0_arcache_i;
    input [3:0]axi_s0_arqos_i;
    input [3:0]axi_s0_arregion_i;
    output [31:0]axi_s0_rdata_o;
    input axi_s0_rready_i;
    output [1:0]axi_s0_rresp_o;
    output axi_s0_rvalid_o;
    output [3:0]axi_s0_rid_o;
    output axi_s0_rlast_o;
    
    
    
endmodule
