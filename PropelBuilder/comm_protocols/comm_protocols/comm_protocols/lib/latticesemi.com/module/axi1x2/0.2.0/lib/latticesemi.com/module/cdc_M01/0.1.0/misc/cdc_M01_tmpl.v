    cdc_M01 __(.S_AXI_ACLK( ),
        .S_AXI_ARESETN( ),
        .M_AXI_ACLK( ),
        .M_AXI_ARESETN( ),
        .S_AXI_AWID( ),
        .S_AXI_AWADDR( ),
        .S_AXI_AWLEN( ),
        .S_AXI_AWSIZE( ),
        .S_AXI_AWBURST( ),
        .S_AXI_AWLOCK( ),
        .S_AXI_AWCACHE( ),
        .S_AXI_AWPROT( ),
        .S_AXI_AWQOS( ),
        .S_AXI_AWVALID( ),
        .S_AXI_AWREADY( ),
        .S_AXI_WDATA( ),
        .S_AXI_WSTRB( ),
        .S_AXI_WLAST( ),
        .S_AXI_WVALID( ),
        .S_AXI_WREADY( ),
        .S_AXI_BID( ),
        .S_AXI_BRESP( ),
        .S_AXI_BVALID( ),
        .S_AXI_BREADY( ),
        .S_AXI_ARID( ),
        .S_AXI_ARADDR( ),
        .S_AXI_ARLEN( ),
        .S_AXI_ARSIZE( ),
        .S_AXI_ARBURST( ),
        .S_AXI_ARLOCK( ),
        .S_AXI_ARCACHE( ),
        .S_AXI_ARPROT( ),
        .S_AXI_ARQOS( ),
        .S_AXI_ARVALID( ),
        .S_AXI_ARREADY( ),
        .S_AXI_RID( ),
        .S_AXI_RDATA( ),
        .S_AXI_RRESP( ),
        .S_AXI_RLAST( ),
        .S_AXI_RVALID( ),
        .S_AXI_RREADY( ),
        .s_axi_awuser( ),
        .s_axi_wuser( ),
        .s_axi_buser( ),
        .s_axi_aruser( ),
        .s_axi_ruser( ),
        .M_AXI_AWID( ),
        .M_AXI_AWADDR( ),
        .M_AXI_AWLEN( ),
        .M_AXI_AWSIZE( ),
        .M_AXI_AWBURST( ),
        .M_AXI_AWLOCK( ),
        .M_AXI_AWCACHE( ),
        .M_AXI_AWPROT( ),
        .M_AXI_AWQOS( ),
        .m_axi_awregion( ),
        .m_axi_awuser( ),
        .M_AXI_AWVALID( ),
        .M_AXI_AWREADY( ),
        .M_AXI_WDATA( ),
        .M_AXI_WSTRB( ),
        .M_AXI_WLAST( ),
        .m_axi_wuser( ),
        .M_AXI_WVALID( ),
        .M_AXI_WREADY( ),
        .M_AXI_BID( ),
        .M_AXI_BRESP( ),
        .m_axi_buser( ),
        .M_AXI_BVALID( ),
        .M_AXI_BREADY( ),
        .M_AXI_ARID( ),
        .M_AXI_ARADDR( ),
        .M_AXI_ARLEN( ),
        .M_AXI_ARSIZE( ),
        .M_AXI_ARBURST( ),
        .M_AXI_ARLOCK( ),
        .M_AXI_ARCACHE( ),
        .M_AXI_ARPROT( ),
        .M_AXI_ARQOS( ),
        .m_axi_arregion( ),
        .m_axi_aruser( ),
        .M_AXI_ARVALID( ),
        .M_AXI_ARREADY( ),
        .M_AXI_RID( ),
        .M_AXI_RDATA( ),
        .M_AXI_RRESP( ),
        .M_AXI_RLAST( ),
        .m_axi_ruser( ),
        .M_AXI_RVALID( ),
        .M_AXI_RREADY( ));
