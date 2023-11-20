/*******************************************************************************
    Verilog netlist generated by IPGEN Lattice Propel (64-bit)
    2023.1.2304252251
    Soft IP Version: 0.1.0
    2023 04 28 13:34:09
*******************************************************************************/
/*******************************************************************************
    Wrapper Module generated per user settings.
*******************************************************************************/
module axi_crossbarNxM (clk, rst_n, s00_axi_awid, s00_axi_awaddr,
    s00_axi_awlen, s00_axi_awsize, s00_axi_awburst, s00_axi_awlock,
    s00_axi_awcache, s00_axi_awprot, s00_axi_awqos, s00_axi_awregion,
    s00_axi_awuser, s00_axi_awvalid, s00_axi_awready, s00_axi_wdata,
    s00_axi_wstrb, s00_axi_wlast, s00_axi_wuser, s00_axi_wvalid,
    s00_axi_wready, s00_axi_bid, s00_axi_bresp, s00_axi_buser, s00_axi_bvalid,
    s00_axi_bready, s00_axi_arid, s00_axi_araddr, s00_axi_arlen,
    s00_axi_arsize, s00_axi_arburst, s00_axi_arlock, s00_axi_arcache,
    s00_axi_arprot, s00_axi_arqos, s00_axi_arregion, s00_axi_aruser,
    s00_axi_arvalid, s00_axi_arready, s00_axi_rid, s00_axi_rdata,
    s00_axi_rresp, s00_axi_rlast, s00_axi_ruser, s00_axi_rvalid,
    s00_axi_rready, m01_axi_awid, m01_axi_awaddr, m01_axi_awlen,
    m01_axi_awsize, m01_axi_awburst, m01_axi_awlock, m01_axi_awcache,
    m01_axi_awprot, m01_axi_awqos, m01_axi_awregion, m01_axi_awuser,
    m01_axi_awvalid, m01_axi_awready, m01_axi_wdata, m01_axi_wstrb,
    m01_axi_wlast, m01_axi_wuser, m01_axi_wvalid, m01_axi_wready, m01_axi_bid,
    m01_axi_bresp, m01_axi_buser, m01_axi_bvalid, m01_axi_bready, m01_axi_arid,
    m01_axi_araddr, m01_axi_arlen, m01_axi_arsize, m01_axi_arburst,
    m01_axi_arlock, m01_axi_arcache, m01_axi_arprot, m01_axi_arqos,
    m01_axi_arregion, m01_axi_aruser, m01_axi_arvalid, m01_axi_arready,
    m01_axi_rid, m01_axi_rdata, m01_axi_rresp, m01_axi_rlast, m01_axi_ruser,
    m01_axi_rvalid, m01_axi_rready, m00_axi_awid, m00_axi_awaddr,
    m00_axi_awlen, m00_axi_awsize, m00_axi_awburst, m00_axi_awlock,
    m00_axi_awcache, m00_axi_awprot, m00_axi_awqos, m00_axi_awregion,
    m00_axi_awuser, m00_axi_awvalid, m00_axi_awready, m00_axi_wdata,
    m00_axi_wstrb, m00_axi_wlast, m00_axi_wuser, m00_axi_wvalid,
    m00_axi_wready, m00_axi_bid, m00_axi_bresp, m00_axi_buser, m00_axi_bvalid,
    m00_axi_bready, m00_axi_arid, m00_axi_araddr, m00_axi_arlen,
    m00_axi_arsize, m00_axi_arburst, m00_axi_arlock, m00_axi_arcache,
    m00_axi_arprot, m00_axi_arqos, m00_axi_arregion, m00_axi_aruser,
    m00_axi_arvalid, m00_axi_arready, m00_axi_rid, m00_axi_rdata,
    m00_axi_rresp, m00_axi_rlast, m00_axi_ruser, m00_axi_rvalid,
    m00_axi_rready)/* synthesis syn_black_box syn_declare_black_box=1 */;
    input  clk;
    input  rst_n;
    input  [0:0]  s00_axi_awid;
    input  [31:0]  s00_axi_awaddr;
    input  [7:0]  s00_axi_awlen;
    input  [2:0]  s00_axi_awsize;
    input  [1:0]  s00_axi_awburst;
    input  [0:0]  s00_axi_awlock;
    input  [3:0]  s00_axi_awcache;
    input  [2:0]  s00_axi_awprot;
    input  [3:0]  s00_axi_awqos;
    input  [3:0]  s00_axi_awregion;
    input  [0:0]  s00_axi_awuser;
    input  [0:0]  s00_axi_awvalid;
    output  [0:0]  s00_axi_awready;
    input  [31:0]  s00_axi_wdata;
    input  [3:0]  s00_axi_wstrb;
    input  [0:0]  s00_axi_wlast;
    input  [0:0]  s00_axi_wuser;
    input  [0:0]  s00_axi_wvalid;
    output  [0:0]  s00_axi_wready;
    output  [0:0]  s00_axi_bid;
    output  [1:0]  s00_axi_bresp;
    output  [0:0]  s00_axi_buser;
    output  [0:0]  s00_axi_bvalid;
    input  [0:0]  s00_axi_bready;
    input  [0:0]  s00_axi_arid;
    input  [31:0]  s00_axi_araddr;
    input  [7:0]  s00_axi_arlen;
    input  [2:0]  s00_axi_arsize;
    input  [1:0]  s00_axi_arburst;
    input  [0:0]  s00_axi_arlock;
    input  [3:0]  s00_axi_arcache;
    input  [2:0]  s00_axi_arprot;
    input  [3:0]  s00_axi_arqos;
    input  [3:0]  s00_axi_arregion;
    input  [0:0]  s00_axi_aruser;
    input  [0:0]  s00_axi_arvalid;
    output  [0:0]  s00_axi_arready;
    output  [0:0]  s00_axi_rid;
    output  [31:0]  s00_axi_rdata;
    output  [1:0]  s00_axi_rresp;
    output  [0:0]  s00_axi_rlast;
    output  [0:0]  s00_axi_ruser;
    output  [0:0]  s00_axi_rvalid;
    input  [0:0]  s00_axi_rready;
    output  [0:0]  m01_axi_awid;
    output  [31:0]  m01_axi_awaddr;
    output  [7:0]  m01_axi_awlen;
    output  [2:0]  m01_axi_awsize;
    output  [1:0]  m01_axi_awburst;
    output  [0:0]  m01_axi_awlock;
    output  [3:0]  m01_axi_awcache;
    output  [2:0]  m01_axi_awprot;
    output  [3:0]  m01_axi_awqos;
    output  [3:0]  m01_axi_awregion;
    output  [0:0]  m01_axi_awuser;
    output  [0:0]  m01_axi_awvalid;
    input  [0:0]  m01_axi_awready;
    output  [31:0]  m01_axi_wdata;
    output  [3:0]  m01_axi_wstrb;
    output  [0:0]  m01_axi_wlast;
    output  [0:0]  m01_axi_wuser;
    output  [0:0]  m01_axi_wvalid;
    input  [0:0]  m01_axi_wready;
    input  [0:0]  m01_axi_bid;
    input  [1:0]  m01_axi_bresp;
    input  [0:0]  m01_axi_buser;
    input  [0:0]  m01_axi_bvalid;
    output  [0:0]  m01_axi_bready;
    output  [0:0]  m01_axi_arid;
    output  [31:0]  m01_axi_araddr;
    output  [7:0]  m01_axi_arlen;
    output  [2:0]  m01_axi_arsize;
    output  [1:0]  m01_axi_arburst;
    output  [0:0]  m01_axi_arlock;
    output  [3:0]  m01_axi_arcache;
    output  [2:0]  m01_axi_arprot;
    output  [3:0]  m01_axi_arqos;
    output  [3:0]  m01_axi_arregion;
    output  [0:0]  m01_axi_aruser;
    output  [0:0]  m01_axi_arvalid;
    input  [0:0]  m01_axi_arready;
    input  [0:0]  m01_axi_rid;
    input  [31:0]  m01_axi_rdata;
    input  [1:0]  m01_axi_rresp;
    input  [0:0]  m01_axi_rlast;
    input  [0:0]  m01_axi_ruser;
    input  [0:0]  m01_axi_rvalid;
    output  [0:0]  m01_axi_rready;
    output  [0:0]  m00_axi_awid;
    output  [31:0]  m00_axi_awaddr;
    output  [7:0]  m00_axi_awlen;
    output  [2:0]  m00_axi_awsize;
    output  [1:0]  m00_axi_awburst;
    output  [0:0]  m00_axi_awlock;
    output  [3:0]  m00_axi_awcache;
    output  [2:0]  m00_axi_awprot;
    output  [3:0]  m00_axi_awqos;
    output  [3:0]  m00_axi_awregion;
    output  [0:0]  m00_axi_awuser;
    output  [0:0]  m00_axi_awvalid;
    input  [0:0]  m00_axi_awready;
    output  [31:0]  m00_axi_wdata;
    output  [3:0]  m00_axi_wstrb;
    output  [0:0]  m00_axi_wlast;
    output  [0:0]  m00_axi_wuser;
    output  [0:0]  m00_axi_wvalid;
    input  [0:0]  m00_axi_wready;
    input  [0:0]  m00_axi_bid;
    input  [1:0]  m00_axi_bresp;
    input  [0:0]  m00_axi_buser;
    input  [0:0]  m00_axi_bvalid;
    output  [0:0]  m00_axi_bready;
    output  [0:0]  m00_axi_arid;
    output  [31:0]  m00_axi_araddr;
    output  [7:0]  m00_axi_arlen;
    output  [2:0]  m00_axi_arsize;
    output  [1:0]  m00_axi_arburst;
    output  [0:0]  m00_axi_arlock;
    output  [3:0]  m00_axi_arcache;
    output  [2:0]  m00_axi_arprot;
    output  [3:0]  m00_axi_arqos;
    output  [3:0]  m00_axi_arregion;
    output  [0:0]  m00_axi_aruser;
    output  [0:0]  m00_axi_arvalid;
    input  [0:0]  m00_axi_arready;
    input  [0:0]  m00_axi_rid;
    input  [31:0]  m00_axi_rdata;
    input  [1:0]  m00_axi_rresp;
    input  [0:0]  m00_axi_rlast;
    input  [0:0]  m00_axi_ruser;
    input  [0:0]  m00_axi_rvalid;
    output  [0:0]  m00_axi_rready;
endmodule