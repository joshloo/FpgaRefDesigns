/*******************************************************************************
    Verilog netlist generated by IPGEN Lattice Propel (64-bit)
    2023.1.2304252251
    Soft IP Version: 0.1.0
    2023 04 28 13:34:32
*******************************************************************************/
/*******************************************************************************
    Wrapper Module generated per user settings.
*******************************************************************************/
module axil2apb1 (S_AXI_ACLK, S_AXI_ARESETN, S_AXI_AWVALID, S_AXI_AWREADY,
    S_AXI_AWADDR, S_AXI_AWPROT, S_AXI_WVALID, S_AXI_WREADY, S_AXI_WDATA,
    S_AXI_WSTRB, S_AXI_BVALID, S_AXI_BREADY, S_AXI_BRESP, S_AXI_ARVALID,
    S_AXI_ARREADY, S_AXI_ARADDR, S_AXI_ARPROT, S_AXI_RVALID, S_AXI_RREADY,
    S_AXI_RDATA, S_AXI_RRESP, M_APB_PSEL, M_APB_PENABLE, M_APB_PREADY,
    M_APB_PADDR, M_APB_PWRITE, M_APB_PWDATA, M_APB_PRDATA, M_APB_PSLVERR)/* synthesis syn_black_box syn_declare_black_box=1 */;
    input  S_AXI_ACLK;
    input  S_AXI_ARESETN;
    input  S_AXI_AWVALID;
    output  S_AXI_AWREADY;
    input  [31:0]  S_AXI_AWADDR;
    input  [2:0]  S_AXI_AWPROT;
    input  S_AXI_WVALID;
    output  S_AXI_WREADY;
    input  [31:0]  S_AXI_WDATA;
    input  [3:0]  S_AXI_WSTRB;
    output  S_AXI_BVALID;
    input  S_AXI_BREADY;
    output  [1:0]  S_AXI_BRESP;
    input  S_AXI_ARVALID;
    output  S_AXI_ARREADY;
    input  [31:0]  S_AXI_ARADDR;
    input  [2:0]  S_AXI_ARPROT;
    output  S_AXI_RVALID;
    input  S_AXI_RREADY;
    output  [31:0]  S_AXI_RDATA;
    output  [1:0]  S_AXI_RRESP;
    output  M_APB_PSEL;
    output  M_APB_PENABLE;
    input  M_APB_PREADY;
    output  [31:0]  M_APB_PADDR;
    output  M_APB_PWRITE;
    output  [31:0]  M_APB_PWDATA;
    input  [31:0]  M_APB_PRDATA;
    input  M_APB_PSLVERR;
endmodule