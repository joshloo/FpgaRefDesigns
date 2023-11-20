// Verilog netlist produced by program LSE 
// Netlist written on Mon Nov 20 14:10:07 2023
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
// Verilog Description of module axi_crossbarNxM
// module wrapper written out since it is a black-box. 
//

//

module axi_crossbarNxM (clk, rst_n, s00_axi_awid, s00_axi_awaddr, s00_axi_awlen, 
            s00_axi_awsize, s00_axi_awburst, s00_axi_awlock, s00_axi_awcache, 
            s00_axi_awprot, s00_axi_awqos, s00_axi_awregion, s00_axi_awuser, 
            s00_axi_awvalid, s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, 
            s00_axi_wlast, s00_axi_wuser, s00_axi_wvalid, s00_axi_wready, 
            s00_axi_bid, s00_axi_bresp, s00_axi_buser, s00_axi_bvalid, 
            s00_axi_bready, s00_axi_arid, s00_axi_araddr, s00_axi_arlen, 
            s00_axi_arsize, s00_axi_arburst, s00_axi_arlock, s00_axi_arcache, 
            s00_axi_arprot, s00_axi_arqos, s00_axi_arregion, s00_axi_aruser, 
            s00_axi_arvalid, s00_axi_arready, s00_axi_rid, s00_axi_rdata, 
            s00_axi_rresp, s00_axi_rlast, s00_axi_ruser, s00_axi_rvalid, 
            s00_axi_rready, m01_axi_awid, m01_axi_awaddr, m01_axi_awlen, 
            m01_axi_awsize, m01_axi_awburst, m01_axi_awlock, m01_axi_awcache, 
            m01_axi_awprot, m01_axi_awqos, m01_axi_awregion, m01_axi_awuser, 
            m01_axi_awvalid, m01_axi_awready, m01_axi_wdata, m01_axi_wstrb, 
            m01_axi_wlast, m01_axi_wuser, m01_axi_wvalid, m01_axi_wready, 
            m01_axi_bid, m01_axi_bresp, m01_axi_buser, m01_axi_bvalid, 
            m01_axi_bready, m01_axi_arid, m01_axi_araddr, m01_axi_arlen, 
            m01_axi_arsize, m01_axi_arburst, m01_axi_arlock, m01_axi_arcache, 
            m01_axi_arprot, m01_axi_arqos, m01_axi_arregion, m01_axi_aruser, 
            m01_axi_arvalid, m01_axi_arready, m01_axi_rid, m01_axi_rdata, 
            m01_axi_rresp, m01_axi_rlast, m01_axi_ruser, m01_axi_rvalid, 
            m01_axi_rready, m00_axi_awid, m00_axi_awaddr, m00_axi_awlen, 
            m00_axi_awsize, m00_axi_awburst, m00_axi_awlock, m00_axi_awcache, 
            m00_axi_awprot, m00_axi_awqos, m00_axi_awregion, m00_axi_awuser, 
            m00_axi_awvalid, m00_axi_awready, m00_axi_wdata, m00_axi_wstrb, 
            m00_axi_wlast, m00_axi_wuser, m00_axi_wvalid, m00_axi_wready, 
            m00_axi_bid, m00_axi_bresp, m00_axi_buser, m00_axi_bvalid, 
            m00_axi_bready, m00_axi_arid, m00_axi_araddr, m00_axi_arlen, 
            m00_axi_arsize, m00_axi_arburst, m00_axi_arlock, m00_axi_arcache, 
            m00_axi_arprot, m00_axi_arqos, m00_axi_arregion, m00_axi_aruser, 
            m00_axi_arvalid, m00_axi_arready, m00_axi_rid, m00_axi_rdata, 
            m00_axi_rresp, m00_axi_rlast, m00_axi_ruser, m00_axi_rvalid, 
            m00_axi_rready) /* synthesis cpe_box=1 */ ;
    input clk;
    input rst_n;
    input [0:0]s00_axi_awid;
    input [31:0]s00_axi_awaddr;
    input [7:0]s00_axi_awlen;
    input [2:0]s00_axi_awsize;
    input [1:0]s00_axi_awburst;
    input [0:0]s00_axi_awlock;
    input [3:0]s00_axi_awcache;
    input [2:0]s00_axi_awprot;
    input [3:0]s00_axi_awqos;
    input [3:0]s00_axi_awregion;
    input [0:0]s00_axi_awuser;
    input [0:0]s00_axi_awvalid;
    output [0:0]s00_axi_awready;
    input [31:0]s00_axi_wdata;
    input [3:0]s00_axi_wstrb;
    input [0:0]s00_axi_wlast;
    input [0:0]s00_axi_wuser;
    input [0:0]s00_axi_wvalid;
    output [0:0]s00_axi_wready;
    output [0:0]s00_axi_bid;
    output [1:0]s00_axi_bresp;
    output [0:0]s00_axi_buser;
    output [0:0]s00_axi_bvalid;
    input [0:0]s00_axi_bready;
    input [0:0]s00_axi_arid;
    input [31:0]s00_axi_araddr;
    input [7:0]s00_axi_arlen;
    input [2:0]s00_axi_arsize;
    input [1:0]s00_axi_arburst;
    input [0:0]s00_axi_arlock;
    input [3:0]s00_axi_arcache;
    input [2:0]s00_axi_arprot;
    input [3:0]s00_axi_arqos;
    input [3:0]s00_axi_arregion;
    input [0:0]s00_axi_aruser;
    input [0:0]s00_axi_arvalid;
    output [0:0]s00_axi_arready;
    output [0:0]s00_axi_rid;
    output [31:0]s00_axi_rdata;
    output [1:0]s00_axi_rresp;
    output [0:0]s00_axi_rlast;
    output [0:0]s00_axi_ruser;
    output [0:0]s00_axi_rvalid;
    input [0:0]s00_axi_rready;
    output [0:0]m01_axi_awid;
    output [31:0]m01_axi_awaddr;
    output [7:0]m01_axi_awlen;
    output [2:0]m01_axi_awsize;
    output [1:0]m01_axi_awburst;
    output [0:0]m01_axi_awlock;
    output [3:0]m01_axi_awcache;
    output [2:0]m01_axi_awprot;
    output [3:0]m01_axi_awqos;
    output [3:0]m01_axi_awregion;
    output [0:0]m01_axi_awuser;
    output [0:0]m01_axi_awvalid;
    input [0:0]m01_axi_awready;
    output [31:0]m01_axi_wdata;
    output [3:0]m01_axi_wstrb;
    output [0:0]m01_axi_wlast;
    output [0:0]m01_axi_wuser;
    output [0:0]m01_axi_wvalid;
    input [0:0]m01_axi_wready;
    input [0:0]m01_axi_bid;
    input [1:0]m01_axi_bresp;
    input [0:0]m01_axi_buser;
    input [0:0]m01_axi_bvalid;
    output [0:0]m01_axi_bready;
    output [0:0]m01_axi_arid;
    output [31:0]m01_axi_araddr;
    output [7:0]m01_axi_arlen;
    output [2:0]m01_axi_arsize;
    output [1:0]m01_axi_arburst;
    output [0:0]m01_axi_arlock;
    output [3:0]m01_axi_arcache;
    output [2:0]m01_axi_arprot;
    output [3:0]m01_axi_arqos;
    output [3:0]m01_axi_arregion;
    output [0:0]m01_axi_aruser;
    output [0:0]m01_axi_arvalid;
    input [0:0]m01_axi_arready;
    input [0:0]m01_axi_rid;
    input [31:0]m01_axi_rdata;
    input [1:0]m01_axi_rresp;
    input [0:0]m01_axi_rlast;
    input [0:0]m01_axi_ruser;
    input [0:0]m01_axi_rvalid;
    output [0:0]m01_axi_rready;
    output [0:0]m00_axi_awid;
    output [31:0]m00_axi_awaddr;
    output [7:0]m00_axi_awlen;
    output [2:0]m00_axi_awsize;
    output [1:0]m00_axi_awburst;
    output [0:0]m00_axi_awlock;
    output [3:0]m00_axi_awcache;
    output [2:0]m00_axi_awprot;
    output [3:0]m00_axi_awqos;
    output [3:0]m00_axi_awregion;
    output [0:0]m00_axi_awuser;
    output [0:0]m00_axi_awvalid;
    input [0:0]m00_axi_awready;
    output [31:0]m00_axi_wdata;
    output [3:0]m00_axi_wstrb;
    output [0:0]m00_axi_wlast;
    output [0:0]m00_axi_wuser;
    output [0:0]m00_axi_wvalid;
    input [0:0]m00_axi_wready;
    input [0:0]m00_axi_bid;
    input [1:0]m00_axi_bresp;
    input [0:0]m00_axi_buser;
    input [0:0]m00_axi_bvalid;
    output [0:0]m00_axi_bready;
    output [0:0]m00_axi_arid;
    output [31:0]m00_axi_araddr;
    output [7:0]m00_axi_arlen;
    output [2:0]m00_axi_arsize;
    output [1:0]m00_axi_arburst;
    output [0:0]m00_axi_arlock;
    output [3:0]m00_axi_arcache;
    output [2:0]m00_axi_arprot;
    output [3:0]m00_axi_arqos;
    output [3:0]m00_axi_arregion;
    output [0:0]m00_axi_aruser;
    output [0:0]m00_axi_arvalid;
    input [0:0]m00_axi_arready;
    input [0:0]m00_axi_rid;
    input [31:0]m00_axi_rdata;
    input [1:0]m00_axi_rresp;
    input [0:0]m00_axi_rlast;
    input [0:0]m00_axi_ruser;
    input [0:0]m00_axi_rvalid;
    output [0:0]m00_axi_rready;
    
    
    
endmodule
