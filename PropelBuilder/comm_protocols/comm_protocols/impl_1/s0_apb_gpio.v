// Verilog netlist produced by program LSE 
// Netlist written on Mon Nov 20 14:10:02 2023
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "c:/lscc/radiant/2023.1/ip/avant/fifo/rtl/lscc_fifo.v"
// file 1 "c:/lscc/radiant/2023.1/ip/avant/fifo_dc/rtl/lscc_fifo_dc.v"
// file 2 "c:/lscc/radiant/2023.1/ip/avant/ram_dp/rtl/lscc_ram_dp.v"
// file 3 "c:/lscc/radiant/2023.1/ip/avant/ram_dp_true/rtl/lscc_ram_dp_true.v"
// file 4 "c:/lscc/radiant/2023.1/ip/avant/ram_dq/rtl/lscc_ram_dq.v"
// file 5 "c:/lscc/radiant/2023.1/ip/avant/rom/rtl/lscc_rom.v"
// file 6 "c:/lscc/radiant/2023.1/ip/common/adder/rtl/lscc_adder.v"
// file 7 "c:/lscc/radiant/2023.1/ip/common/adder_subtractor/rtl/lscc_add_sub.v"
// file 8 "c:/lscc/radiant/2023.1/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 9 "c:/lscc/radiant/2023.1/ip/common/counter/rtl/lscc_cntr.v"
// file 10 "c:/lscc/radiant/2023.1/ip/common/distributed_dpram/rtl/lscc_distributed_dpram.v"
// file 11 "c:/lscc/radiant/2023.1/ip/common/distributed_rom/rtl/lscc_distributed_rom.v"
// file 12 "c:/lscc/radiant/2023.1/ip/common/distributed_spram/rtl/lscc_distributed_spram.v"
// file 13 "c:/lscc/radiant/2023.1/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 14 "c:/lscc/radiant/2023.1/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 15 "c:/lscc/radiant/2023.1/ip/common/mult_add_sub_sum/rtl/lscc_mult_add_sub_sum.v"
// file 16 "c:/lscc/radiant/2023.1/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 17 "c:/lscc/radiant/2023.1/ip/common/ram_shift_reg/rtl/lscc_shift_register.v"
// file 18 "c:/lscc/radiant/2023.1/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 19 "c:/lscc/radiant/2023.1/ip/pmi/pmi_add.v"
// file 20 "c:/lscc/radiant/2023.1/ip/pmi/pmi_addsub.v"
// file 21 "c:/lscc/radiant/2023.1/ip/pmi/pmi_complex_mult.v"
// file 22 "c:/lscc/radiant/2023.1/ip/pmi/pmi_counter.v"
// file 23 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_dpram.v"
// file 24 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_rom.v"
// file 25 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_shift_reg.v"
// file 26 "c:/lscc/radiant/2023.1/ip/pmi/pmi_distributed_spram.v"
// file 27 "c:/lscc/radiant/2023.1/ip/pmi/pmi_fifo.v"
// file 28 "c:/lscc/radiant/2023.1/ip/pmi/pmi_fifo_dc.v"
// file 29 "c:/lscc/radiant/2023.1/ip/pmi/pmi_mac.v"
// file 30 "c:/lscc/radiant/2023.1/ip/pmi/pmi_mult.v"
// file 31 "c:/lscc/radiant/2023.1/ip/pmi/pmi_multaddsub.v"
// file 32 "c:/lscc/radiant/2023.1/ip/pmi/pmi_multaddsubsum.v"
// file 33 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dp.v"
// file 34 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dp_be.v"
// file 35 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dp_true.v"
// file 36 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dq.v"
// file 37 "c:/lscc/radiant/2023.1/ip/pmi/pmi_ram_dq_be.v"
// file 38 "c:/lscc/radiant/2023.1/ip/pmi/pmi_rom.v"
// file 39 "c:/lscc/radiant/2023.1/ip/pmi/pmi_sub.v"
// file 40 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/acc54.v"
// file 41 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/adc.v"
// file 42 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bb_adc.v"
// file 43 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bb_cdr.v"
// file 44 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bb_i3c_a.v"
// file 45 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bfd1p3kx.v"
// file 46 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bfd1p3lx.v"
// file 47 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/bnkref18.v"
// file 48 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/config_ip.v"
// file 49 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/config_lmmib.v"
// file 50 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ddrdll.v"
// file 51 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/diffio18.v"
// file 52 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dlldel.v"
// file 53 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dp16k.v"
// file 54 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dpsc512k.v"
// file 55 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/dqsbuf.v"
// file 56 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ebr.v"
// file 57 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/eclkdiv.v"
// file 58 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/eclksync.v"
// file 59 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/fifo16k.v"
// file 60 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/i2cfifo.v"
// file 61 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3bx.v"
// file 62 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3dx.v"
// file 63 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3ix.v"
// file 64 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ifd1p3jx.v"
// file 65 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/jtag.v"
// file 66 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/lram.v"
// file 67 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/m18x36.v"
// file 68 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mipi.v"
// file 69 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult18.v"
// file 70 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult18x18.v"
// file 71 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult18x36.v"
// file 72 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult36.v"
// file 73 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult36x36.v"
// file 74 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult9.v"
// file 75 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/mult9x9.v"
// file 76 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub18x18.v"
// file 77 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub18x18wide.v"
// file 78 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub18x36.v"
// file 79 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub36x36.v"
// file 80 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multaddsub9x9wide.v"
// file 81 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multiboot.v"
// file 82 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multpreadd18x18.v"
// file 83 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/multpreadd9x9.v"
// file 84 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3bx.v"
// file 85 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3dx.v"
// file 86 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3ix.v"
// file 87 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/ofd1p3jx.v"
// file 88 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/osc.v"
// file 89 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/osca.v"
// file 90 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pdp16k.v"
// file 91 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pdpsc16k.v"
// file 92 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pdpsc512k.v"
// file 93 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pll.v"
// file 94 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/plla.v"
// file 95 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pllrefcs.v"
// file 96 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/pmu.v"
// file 97 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/preadd9.v"
// file 98 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/refmux.v"
// file 99 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/reg18.v"
// file 100 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sedc.v"
// file 101 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/seio18.v"
// file 102 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/seio33.v"
// file 103 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sgmiicdr.v"
// file 104 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sp16k.v"
// file 105 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/sp512k.v"
// file 106 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/tsalla.v"
// file 107 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/lfmxo5/wdt.v"
// file 108 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/dpr16x4.v"
// file 109 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3bx.v"
// file 110 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3dx.v"
// file 111 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3ix.v"
// file 112 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/fd1p3jx.v"
// file 113 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/gsr.v"
// file 114 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/ib.v"
// file 115 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/ob.v"
// file 116 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/obz.v"
// file 117 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/pclkdivsp.v"
// file 118 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/spr16x4.v"
// file 119 "c:/lscc/radiant/2023.1/cae_library/simulation/verilog/uaplatform/widefn9.v"

//
// Verilog Description of module s0_apb_gpio
// module wrapper written out since it is a black-box. 
//

//

module s0_apb_gpio (gpio_io, clk_i, resetn_i, apb_penable_i, apb_psel_i, 
            apb_pwrite_i, apb_paddr_i, apb_pwdata_i, apb_prdata_o, apb_pslverr_o, 
            apb_pready_o, int_o) /* synthesis cpe_box=1 */ ;
    inout [15:0]gpio_io;
    input clk_i;
    input resetn_i;
    input apb_penable_i;
    input apb_psel_i;
    input apb_pwrite_i;
    input [5:0]apb_paddr_i;
    input [31:0]apb_pwdata_i;
    output [31:0]apb_prdata_o;
    output apb_pslverr_o;
    output apb_pready_o;
    output int_o;
    
    
    
endmodule
