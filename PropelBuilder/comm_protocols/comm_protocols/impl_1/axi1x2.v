// Verilog netlist produced by program LSE 
// Netlist written on Mon Nov 20 14:10:16 2023
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
// Verilog Description of module axi1x2
// module wrapper written out since it is a black-box. 
//

//

module axi1x2 (clk_i, lite_m00_axil_araddr, lite_m00_axil_arprot, lite_m00_axil_arready, 
            lite_m00_axil_arvalid, lite_m00_axil_awaddr, lite_m00_axil_awprot, 
            lite_m00_axil_awready, lite_m00_axil_awvalid, lite_m00_axil_bready, 
            lite_m00_axil_bresp, lite_m00_axil_bvalid, lite_m00_axil_rdata, 
            lite_m00_axil_rready, lite_m00_axil_rresp, lite_m00_axil_rvalid, 
            lite_m00_axil_wdata, lite_m00_axil_wready, lite_m00_axil_wstrb, 
            lite_m00_axil_wvalid, lite_m01_axil_araddr, lite_m01_axil_arprot, 
            lite_m01_axil_arready, lite_m01_axil_arvalid, lite_m01_axil_awaddr, 
            lite_m01_axil_awprot, lite_m01_axil_awready, lite_m01_axil_awvalid, 
            lite_m01_axil_bready, lite_m01_axil_bresp, lite_m01_axil_bvalid, 
            lite_m01_axil_rdata, lite_m01_axil_rready, lite_m01_axil_rresp, 
            lite_m01_axil_rvalid, lite_m01_axil_wdata, lite_m01_axil_wready, 
            lite_m01_axil_wstrb, lite_m01_axil_wvalid, rstn_i, s00_axi_araddr, 
            s00_axi_arburst, s00_axi_arcache, s00_axi_arid, s00_axi_arlen, 
            s00_axi_arlock, s00_axi_arprot, s00_axi_arqos, s00_axi_arready, 
            s00_axi_arregion, s00_axi_arsize, s00_axi_aruser, s00_axi_arvalid, 
            s00_axi_awaddr, s00_axi_awburst, s00_axi_awcache, s00_axi_awid, 
            s00_axi_awlen, s00_axi_awlock, s00_axi_awprot, s00_axi_awqos, 
            s00_axi_awready, s00_axi_awregion, s00_axi_awsize, s00_axi_awuser, 
            s00_axi_awvalid, s00_axi_bid, s00_axi_bready, s00_axi_bresp, 
            s00_axi_buser, s00_axi_bvalid, s00_axi_rdata, s00_axi_rid, 
            s00_axi_rlast, s00_axi_rready, s00_axi_rresp, s00_axi_ruser, 
            s00_axi_rvalid, s00_axi_wdata, s00_axi_wlast, s00_axi_wready, 
            s00_axi_wstrb, s00_axi_wuser, s00_axi_wvalid) /* synthesis cpe_box=1 */ ;
    input clk_i;
    output [31:0]lite_m00_axil_araddr;
    output [2:0]lite_m00_axil_arprot;
    input lite_m00_axil_arready;
    output lite_m00_axil_arvalid;
    output [31:0]lite_m00_axil_awaddr;
    output [2:0]lite_m00_axil_awprot;
    input lite_m00_axil_awready;
    output lite_m00_axil_awvalid;
    output lite_m00_axil_bready;
    input [1:0]lite_m00_axil_bresp;
    input lite_m00_axil_bvalid;
    input [31:0]lite_m00_axil_rdata;
    output lite_m00_axil_rready;
    input [1:0]lite_m00_axil_rresp;
    input lite_m00_axil_rvalid;
    output [31:0]lite_m00_axil_wdata;
    input lite_m00_axil_wready;
    output [3:0]lite_m00_axil_wstrb;
    output lite_m00_axil_wvalid;
    output [31:0]lite_m01_axil_araddr;
    output [2:0]lite_m01_axil_arprot;
    input lite_m01_axil_arready;
    output lite_m01_axil_arvalid;
    output [31:0]lite_m01_axil_awaddr;
    output [2:0]lite_m01_axil_awprot;
    input lite_m01_axil_awready;
    output lite_m01_axil_awvalid;
    output lite_m01_axil_bready;
    input [1:0]lite_m01_axil_bresp;
    input lite_m01_axil_bvalid;
    input [31:0]lite_m01_axil_rdata;
    output lite_m01_axil_rready;
    input [1:0]lite_m01_axil_rresp;
    input lite_m01_axil_rvalid;
    output [31:0]lite_m01_axil_wdata;
    input lite_m01_axil_wready;
    output [3:0]lite_m01_axil_wstrb;
    output lite_m01_axil_wvalid;
    input rstn_i;
    input [31:0]s00_axi_araddr;
    input [1:0]s00_axi_arburst;
    input [3:0]s00_axi_arcache;
    input [0:0]s00_axi_arid;
    input [7:0]s00_axi_arlen;
    input [0:0]s00_axi_arlock;
    input [2:0]s00_axi_arprot;
    input [3:0]s00_axi_arqos;
    output [0:0]s00_axi_arready;
    input [3:0]s00_axi_arregion;
    input [2:0]s00_axi_arsize;
    input [0:0]s00_axi_aruser;
    input [0:0]s00_axi_arvalid;
    input [31:0]s00_axi_awaddr;
    input [1:0]s00_axi_awburst;
    input [3:0]s00_axi_awcache;
    input [0:0]s00_axi_awid;
    input [7:0]s00_axi_awlen;
    input [0:0]s00_axi_awlock;
    input [2:0]s00_axi_awprot;
    input [3:0]s00_axi_awqos;
    output [0:0]s00_axi_awready;
    input [3:0]s00_axi_awregion;
    input [2:0]s00_axi_awsize;
    input [0:0]s00_axi_awuser;
    input [0:0]s00_axi_awvalid;
    output [0:0]s00_axi_bid;
    input [0:0]s00_axi_bready;
    output [1:0]s00_axi_bresp;
    output [0:0]s00_axi_buser;
    output [0:0]s00_axi_bvalid;
    output [31:0]s00_axi_rdata;
    output [0:0]s00_axi_rid;
    output [0:0]s00_axi_rlast;
    input [0:0]s00_axi_rready;
    output [1:0]s00_axi_rresp;
    output [0:0]s00_axi_ruser;
    output [0:0]s00_axi_rvalid;
    input [31:0]s00_axi_wdata;
    input [0:0]s00_axi_wlast;
    output [0:0]s00_axi_wready;
    input [3:0]s00_axi_wstrb;
    input [0:0]s00_axi_wuser;
    input [0:0]s00_axi_wvalid;
    
    
    
endmodule
