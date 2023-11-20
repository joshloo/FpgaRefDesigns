/*******************************************************************************
    Verilog netlist generated by IPGEN Lattice Propel (64-bit)
    2.2.2202251229
    Soft IP Version: 0.1.0
    2022 03 01 16:12:47
*******************************************************************************/
/*******************************************************************************
    Wrapper Module generated per user settings.
*******************************************************************************/
module axi2axil_M09 (clk, rst_n, s_axi_awid, s_axi_awaddr, s_axi_awlen,
    s_axi_awsize, s_axi_awburst, s_axi_awlock, s_axi_awcache, s_axi_awprot,
    s_axi_awqos, s_axi_awregion, s_axi_awvalid, s_axi_awready, s_axi_wdata,
    s_axi_wstrb, s_axi_wlast, s_axi_wvalid, s_axi_wready, s_axi_bid,
    s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_arid, s_axi_araddr,
    s_axi_arlen, s_axi_arsize, s_axi_arburst, s_axi_arlock, s_axi_arcache,
    s_axi_arprot, s_axi_arqos, s_axi_arregion, s_axi_arvalid, s_axi_arready,
    s_axi_rid, s_axi_rdata, s_axi_rresp, s_axi_rlast, s_axi_rvalid,
    s_axi_rready, s_axi_awuser, s_axi_wuser, s_axi_buser, s_axi_aruser,
    s_axi_ruser, m_axil_awaddr, m_axil_awprot, m_axil_awvalid, m_axil_awready,
    m_axil_wdata, m_axil_wstrb, m_axil_wvalid, m_axil_wready, m_axil_bresp,
    m_axil_bvalid, m_axil_bready, m_axil_araddr, m_axil_arprot, m_axil_arvalid,
    m_axil_arready, m_axil_rdata, m_axil_rresp, m_axil_rvalid, m_axil_rready)/* synthesis syn_black_box syn_declare_black_box=1 */;
    input  clk;
    input  rst_n;
    input  s_axi_awid;
    input  [31:0]  s_axi_awaddr;
    input  [7:0]  s_axi_awlen;
    input  [2:0]  s_axi_awsize;
    input  [1:0]  s_axi_awburst;
    input  s_axi_awlock;
    input  [3:0]  s_axi_awcache;
    input  [2:0]  s_axi_awprot;
    input  [3:0]  s_axi_awqos;
    input  [3:0]  s_axi_awregion;
    input  s_axi_awvalid;
    output  s_axi_awready;
    input  [31:0]  s_axi_wdata;
    input  [3:0]  s_axi_wstrb;
    input  s_axi_wlast;
    input  s_axi_wvalid;
    output  s_axi_wready;
    output  s_axi_bid;
    output  [1:0]  s_axi_bresp;
    output  s_axi_bvalid;
    input  s_axi_bready;
    input  s_axi_arid;
    input  [31:0]  s_axi_araddr;
    input  [7:0]  s_axi_arlen;
    input  [2:0]  s_axi_arsize;
    input  [1:0]  s_axi_arburst;
    input  s_axi_arlock;
    input  [3:0]  s_axi_arcache;
    input  [2:0]  s_axi_arprot;
    input  [3:0]  s_axi_arqos;
    input  [3:0]  s_axi_arregion;
    input  s_axi_arvalid;
    output  s_axi_arready;
    output  s_axi_rid;
    output  [31:0]  s_axi_rdata;
    output  [1:0]  s_axi_rresp;
    output  s_axi_rlast;
    output  s_axi_rvalid;
    input  s_axi_rready;
    input  s_axi_awuser;
    input  s_axi_wuser;
    output  s_axi_buser;
    input  s_axi_aruser;
    output  s_axi_ruser;
    output  [31:0]  m_axil_awaddr;
    output  [2:0]  m_axil_awprot;
    output  m_axil_awvalid;
    input  m_axil_awready;
    output  [31:0]  m_axil_wdata;
    output  [3:0]  m_axil_wstrb;
    output  m_axil_wvalid;
    input  m_axil_wready;
    input  [1:0]  m_axil_bresp;
    input  m_axil_bvalid;
    output  m_axil_bready;
    output  [31:0]  m_axil_araddr;
    output  [2:0]  m_axil_arprot;
    output  m_axil_arvalid;
    input  m_axil_arready;
    input  [31:0]  m_axil_rdata;
    input  [1:0]  m_axil_rresp;
    input  m_axil_rvalid;
    output  m_axil_rready;
endmodule