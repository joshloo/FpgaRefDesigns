// Verilog netlist produced by program LSE 
// Netlist written on Mon Nov 20 14:10:10 2023
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
// Verilog Description of module axi2axil_M01
// module wrapper written out since it is a black-box. 
//

//

module axi2axil_M01 (clk, rst_n, s_axi_awid, s_axi_awaddr, s_axi_awlen, 
            s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, 
            s_axi_awprot, s_axi_awqos, s_axi_awregion, s_axi_awvalid, 
            s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wlast, s_axi_wvalid, 
            s_axi_wready, s_axi_bid, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
            s_axi_arid, s_axi_araddr, s_axi_arlen, s_axi_arsize, s_axi_arburst, 
            s_axi_arlock, s_axi_arcache, s_axi_arprot, s_axi_arqos, 
            s_axi_arregion, s_axi_arvalid, s_axi_arready, s_axi_rid, 
            s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid, s_axi_rready, 
            s_axi_awuser, s_axi_wuser, s_axi_buser, s_axi_aruser, s_axi_ruser, 
            m_axil_awaddr, m_axil_awprot, m_axil_awvalid, m_axil_awready, 
            m_axil_wdata, m_axil_wstrb, m_axil_wvalid, m_axil_wready, 
            m_axil_bresp, m_axil_bvalid, m_axil_bready, m_axil_araddr, 
            m_axil_arprot, m_axil_arvalid, m_axil_arready, m_axil_rdata, 
            m_axil_rresp, m_axil_rvalid, m_axil_rready) /* synthesis cpe_box=1 */ ; // ( protected RTL ) 
    input clk; // ( protected RTL ) 
    input rst_n; // ( protected RTL ) 
    input s_axi_awid; // ( protected RTL ) 
    input [31:0]s_axi_awaddr; // ( protected RTL ) 
    input [7:0]s_axi_awlen; // ( protected RTL ) 
    input [2:0]s_axi_awsize; // ( protected RTL ) 
    input [1:0]s_axi_awburst; // ( protected RTL ) 
    input s_axi_awlock; // ( protected RTL ) 
    input [3:0]s_axi_awcache; // ( protected RTL ) 
    input [2:0]s_axi_awprot; // ( protected RTL ) 
    input [3:0]s_axi_awqos; // ( protected RTL ) 
    input [3:0]s_axi_awregion; // ( protected RTL ) 
    input s_axi_awvalid; // ( protected RTL ) 
    output s_axi_awready; // ( protected RTL ) 
    input [31:0]s_axi_wdata; // ( protected RTL ) 
    input [3:0]s_axi_wstrb; // ( protected RTL ) 
    input s_axi_wlast; // ( protected RTL ) 
    input s_axi_wvalid; // ( protected RTL ) 
    output s_axi_wready; // ( protected RTL ) 
    output s_axi_bid; // ( protected RTL ) 
    output [1:0]s_axi_bresp; // ( protected RTL ) 
    output s_axi_bvalid; // ( protected RTL ) 
    input s_axi_bready; // ( protected RTL ) 
    input s_axi_arid; // ( protected RTL ) 
    input [31:0]s_axi_araddr; // ( protected RTL ) 
    input [7:0]s_axi_arlen; // ( protected RTL ) 
    input [2:0]s_axi_arsize; // ( protected RTL ) 
    input [1:0]s_axi_arburst; // ( protected RTL ) 
    input s_axi_arlock; // ( protected RTL ) 
    input [3:0]s_axi_arcache; // ( protected RTL ) 
    input [2:0]s_axi_arprot; // ( protected RTL ) 
    input [3:0]s_axi_arqos; // ( protected RTL ) 
    input [3:0]s_axi_arregion; // ( protected RTL ) 
    input s_axi_arvalid; // ( protected RTL ) 
    output s_axi_arready; // ( protected RTL ) 
    output s_axi_rid; // ( protected RTL ) 
    output [31:0]s_axi_rdata; // ( protected RTL ) 
    output [1:0]s_axi_rresp; // ( protected RTL ) 
    output s_axi_rlast; // ( protected RTL ) 
    output s_axi_rvalid; // ( protected RTL ) 
    input s_axi_rready; // ( protected RTL ) 
    input s_axi_awuser; // ( protected RTL ) 
    input s_axi_wuser; // ( protected RTL ) 
    output s_axi_buser; // ( protected RTL ) 
    input s_axi_aruser; // ( protected RTL ) 
    output s_axi_ruser; // ( protected RTL ) 
    output [31:0]m_axil_awaddr; // ( protected RTL ) 
    output [2:0]m_axil_awprot; // ( protected RTL ) 
    output m_axil_awvalid; // ( protected RTL ) 
    input m_axil_awready; // ( protected RTL ) 
    output [31:0]m_axil_wdata; // ( protected RTL ) 
    output [3:0]m_axil_wstrb; // ( protected RTL ) 
    output m_axil_wvalid; // ( protected RTL ) 
    input m_axil_wready; // ( protected RTL ) 
    input [1:0]m_axil_bresp; // ( protected RTL ) 
    input m_axil_bvalid; // ( protected RTL ) 
    output m_axil_bready; // ( protected RTL ) 
    output [31:0]m_axil_araddr; // ( protected RTL ) 
    output [2:0]m_axil_arprot; // ( protected RTL ) 
    output m_axil_arvalid; // ( protected RTL ) 
    input m_axil_arready; // ( protected RTL ) 
    input [31:0]m_axil_rdata; // ( protected RTL ) 
    input [1:0]m_axil_rresp; // ( protected RTL ) 
    input m_axil_rvalid; // ( protected RTL ) 
    output m_axil_rready; // ( protected RTL ) 
    
    
    
endmodule
