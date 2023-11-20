/*******************************************************************************
    Verilog netlist generated by IPGEN Lattice Propel (64-bit)
    2.2.2202251229
    Soft IP Version: 0.1.0
    2022 03 01 16:07:35
*******************************************************************************/
/*******************************************************************************
    Wrapper Module generated per user settings.
*******************************************************************************/
module cdc_M00 (S_AXI_ACLK, S_AXI_ARESETN, M_AXI_ACLK, M_AXI_ARESETN,
    S_AXI_AWID, S_AXI_AWADDR, S_AXI_AWLEN, S_AXI_AWSIZE, S_AXI_AWBURST,
    S_AXI_AWLOCK, S_AXI_AWCACHE, S_AXI_AWPROT, S_AXI_AWQOS, S_AXI_AWVALID,
    S_AXI_AWREADY, S_AXI_WDATA, S_AXI_WSTRB, S_AXI_WLAST, S_AXI_WVALID,
    S_AXI_WREADY, S_AXI_BID, S_AXI_BRESP, S_AXI_BVALID, S_AXI_BREADY,
    S_AXI_ARID, S_AXI_ARADDR, S_AXI_ARLEN, S_AXI_ARSIZE, S_AXI_ARBURST,
    S_AXI_ARLOCK, S_AXI_ARCACHE, S_AXI_ARPROT, S_AXI_ARQOS, S_AXI_ARVALID,
    S_AXI_ARREADY, S_AXI_RID, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RLAST,
    S_AXI_RVALID, S_AXI_RREADY, s_axi_awuser, s_axi_wuser, s_axi_buser,
    s_axi_aruser, s_axi_ruser, M_AXI_AWID, M_AXI_AWADDR, M_AXI_AWLEN,
    M_AXI_AWSIZE, M_AXI_AWBURST, M_AXI_AWLOCK, M_AXI_AWCACHE, M_AXI_AWPROT,
    M_AXI_AWQOS, m_axi_awregion, m_axi_awuser, M_AXI_AWVALID, M_AXI_AWREADY,
    M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WLAST, m_axi_wuser, M_AXI_WVALID,
    M_AXI_WREADY, M_AXI_BID, M_AXI_BRESP, m_axi_buser, M_AXI_BVALID,
    M_AXI_BREADY, M_AXI_ARID, M_AXI_ARADDR, M_AXI_ARLEN, M_AXI_ARSIZE,
    M_AXI_ARBURST, M_AXI_ARLOCK, M_AXI_ARCACHE, M_AXI_ARPROT, M_AXI_ARQOS,
    m_axi_arregion, m_axi_aruser, M_AXI_ARVALID, M_AXI_ARREADY, M_AXI_RID,
    M_AXI_RDATA, M_AXI_RRESP, M_AXI_RLAST, m_axi_ruser, M_AXI_RVALID,
    M_AXI_RREADY)/* synthesis syn_black_box syn_declare_black_box=1 */;
    input  S_AXI_ACLK;
    input  S_AXI_ARESETN;
    input  M_AXI_ACLK;
    output  M_AXI_ARESETN;
    input  S_AXI_AWID;
    input  [31:0]  S_AXI_AWADDR;
    input  [7:0]  S_AXI_AWLEN;
    input  [2:0]  S_AXI_AWSIZE;
    input  [1:0]  S_AXI_AWBURST;
    input  S_AXI_AWLOCK;
    input  [3:0]  S_AXI_AWCACHE;
    input  [2:0]  S_AXI_AWPROT;
    input  [3:0]  S_AXI_AWQOS;
    input  S_AXI_AWVALID;
    output  S_AXI_AWREADY;
    input  [31:0]  S_AXI_WDATA;
    input  [3:0]  S_AXI_WSTRB;
    input  S_AXI_WLAST;
    input  S_AXI_WVALID;
    output  S_AXI_WREADY;
    output  S_AXI_BID;
    output  [1:0]  S_AXI_BRESP;
    output  S_AXI_BVALID;
    input  S_AXI_BREADY;
    input  S_AXI_ARID;
    input  [31:0]  S_AXI_ARADDR;
    input  [7:0]  S_AXI_ARLEN;
    input  [2:0]  S_AXI_ARSIZE;
    input  [1:0]  S_AXI_ARBURST;
    input  S_AXI_ARLOCK;
    input  [3:0]  S_AXI_ARCACHE;
    input  [2:0]  S_AXI_ARPROT;
    input  [3:0]  S_AXI_ARQOS;
    input  S_AXI_ARVALID;
    output  S_AXI_ARREADY;
    output  S_AXI_RID;
    output  [31:0]  S_AXI_RDATA;
    output  [1:0]  S_AXI_RRESP;
    output  S_AXI_RLAST;
    output  S_AXI_RVALID;
    input  S_AXI_RREADY;
    input  s_axi_awuser;
    input  s_axi_wuser;
    output  s_axi_buser;
    input  s_axi_aruser;
    output  s_axi_ruser;
    output  M_AXI_AWID;
    output  [31:0]  M_AXI_AWADDR;
    output  [7:0]  M_AXI_AWLEN;
    output  [2:0]  M_AXI_AWSIZE;
    output  [1:0]  M_AXI_AWBURST;
    output  M_AXI_AWLOCK;
    output  [3:0]  M_AXI_AWCACHE;
    output  [2:0]  M_AXI_AWPROT;
    output  [3:0]  M_AXI_AWQOS;
    output  [3:0]  m_axi_awregion;
    output  m_axi_awuser;
    output  M_AXI_AWVALID;
    input  [0:0]  M_AXI_AWREADY;
    output  [31:0]  M_AXI_WDATA;
    output  [3:0]  M_AXI_WSTRB;
    output  M_AXI_WLAST;
    output  m_axi_wuser;
    output  M_AXI_WVALID;
    input  M_AXI_WREADY;
    input  M_AXI_BID;
    input  [1:0]  M_AXI_BRESP;
    input  m_axi_buser;
    input  M_AXI_BVALID;
    output  M_AXI_BREADY;
    output  M_AXI_ARID;
    output  [31:0]  M_AXI_ARADDR;
    output  [7:0]  M_AXI_ARLEN;
    output  [2:0]  M_AXI_ARSIZE;
    output  [1:0]  M_AXI_ARBURST;
    output  M_AXI_ARLOCK;
    output  [3:0]  M_AXI_ARCACHE;
    output  [2:0]  M_AXI_ARPROT;
    output  [3:0]  M_AXI_ARQOS;
    output  [3:0]  m_axi_arregion;
    output  m_axi_aruser;
    output  M_AXI_ARVALID;
    input  M_AXI_ARREADY;
    input  M_AXI_RID;
    input  [31:0]  M_AXI_RDATA;
    input  [1:0]  M_AXI_RRESP;
    input  M_AXI_RLAST;
    input  m_axi_ruser;
    input  M_AXI_RVALID;
    output  M_AXI_RREADY;
endmodule