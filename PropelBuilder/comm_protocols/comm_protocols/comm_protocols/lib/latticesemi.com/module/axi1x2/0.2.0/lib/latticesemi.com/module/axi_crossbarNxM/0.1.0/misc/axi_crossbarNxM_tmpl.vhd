component axi_crossbarNxM is
    port(
        clk: in std_logic;
        rst_n: in std_logic;
        s00_axi_awid: in std_logic_vector(0 to 0);
        s00_axi_awaddr: in std_logic_vector(31 downto 0);
        s00_axi_awlen: in std_logic_vector(7 downto 0);
        s00_axi_awsize: in std_logic_vector(2 downto 0);
        s00_axi_awburst: in std_logic_vector(1 downto 0);
        s00_axi_awlock: in std_logic_vector(0 to 0);
        s00_axi_awcache: in std_logic_vector(3 downto 0);
        s00_axi_awprot: in std_logic_vector(2 downto 0);
        s00_axi_awqos: in std_logic_vector(3 downto 0);
        s00_axi_awregion: in std_logic_vector(3 downto 0);
        s00_axi_awuser: in std_logic_vector(0 to 0);
        s00_axi_awvalid: in std_logic_vector(0 to 0);
        s00_axi_awready: out std_logic_vector(0 to 0);
        s00_axi_wdata: in std_logic_vector(31 downto 0);
        s00_axi_wstrb: in std_logic_vector(3 downto 0);
        s00_axi_wlast: in std_logic_vector(0 to 0);
        s00_axi_wuser: in std_logic_vector(0 to 0);
        s00_axi_wvalid: in std_logic_vector(0 to 0);
        s00_axi_wready: out std_logic_vector(0 to 0);
        s00_axi_bid: out std_logic_vector(0 to 0);
        s00_axi_bresp: out std_logic_vector(1 downto 0);
        s00_axi_buser: out std_logic_vector(0 to 0);
        s00_axi_bvalid: out std_logic_vector(0 to 0);
        s00_axi_bready: in std_logic_vector(0 to 0);
        s00_axi_arid: in std_logic_vector(0 to 0);
        s00_axi_araddr: in std_logic_vector(31 downto 0);
        s00_axi_arlen: in std_logic_vector(7 downto 0);
        s00_axi_arsize: in std_logic_vector(2 downto 0);
        s00_axi_arburst: in std_logic_vector(1 downto 0);
        s00_axi_arlock: in std_logic_vector(0 to 0);
        s00_axi_arcache: in std_logic_vector(3 downto 0);
        s00_axi_arprot: in std_logic_vector(2 downto 0);
        s00_axi_arqos: in std_logic_vector(3 downto 0);
        s00_axi_arregion: in std_logic_vector(3 downto 0);
        s00_axi_aruser: in std_logic_vector(0 to 0);
        s00_axi_arvalid: in std_logic_vector(0 to 0);
        s00_axi_arready: out std_logic_vector(0 to 0);
        s00_axi_rid: out std_logic_vector(0 to 0);
        s00_axi_rdata: out std_logic_vector(31 downto 0);
        s00_axi_rresp: out std_logic_vector(1 downto 0);
        s00_axi_rlast: out std_logic_vector(0 to 0);
        s00_axi_ruser: out std_logic_vector(0 to 0);
        s00_axi_rvalid: out std_logic_vector(0 to 0);
        s00_axi_rready: in std_logic_vector(0 to 0);
        m01_axi_awid: out std_logic_vector(0 to 0);
        m01_axi_awaddr: out std_logic_vector(31 downto 0);
        m01_axi_awlen: out std_logic_vector(7 downto 0);
        m01_axi_awsize: out std_logic_vector(2 downto 0);
        m01_axi_awburst: out std_logic_vector(1 downto 0);
        m01_axi_awlock: out std_logic_vector(0 to 0);
        m01_axi_awcache: out std_logic_vector(3 downto 0);
        m01_axi_awprot: out std_logic_vector(2 downto 0);
        m01_axi_awqos: out std_logic_vector(3 downto 0);
        m01_axi_awregion: out std_logic_vector(3 downto 0);
        m01_axi_awuser: out std_logic_vector(0 to 0);
        m01_axi_awvalid: out std_logic_vector(0 to 0);
        m01_axi_awready: in std_logic_vector(0 to 0);
        m01_axi_wdata: out std_logic_vector(31 downto 0);
        m01_axi_wstrb: out std_logic_vector(3 downto 0);
        m01_axi_wlast: out std_logic_vector(0 to 0);
        m01_axi_wuser: out std_logic_vector(0 to 0);
        m01_axi_wvalid: out std_logic_vector(0 to 0);
        m01_axi_wready: in std_logic_vector(0 to 0);
        m01_axi_bid: in std_logic_vector(0 to 0);
        m01_axi_bresp: in std_logic_vector(1 downto 0);
        m01_axi_buser: in std_logic_vector(0 to 0);
        m01_axi_bvalid: in std_logic_vector(0 to 0);
        m01_axi_bready: out std_logic_vector(0 to 0);
        m01_axi_arid: out std_logic_vector(0 to 0);
        m01_axi_araddr: out std_logic_vector(31 downto 0);
        m01_axi_arlen: out std_logic_vector(7 downto 0);
        m01_axi_arsize: out std_logic_vector(2 downto 0);
        m01_axi_arburst: out std_logic_vector(1 downto 0);
        m01_axi_arlock: out std_logic_vector(0 to 0);
        m01_axi_arcache: out std_logic_vector(3 downto 0);
        m01_axi_arprot: out std_logic_vector(2 downto 0);
        m01_axi_arqos: out std_logic_vector(3 downto 0);
        m01_axi_arregion: out std_logic_vector(3 downto 0);
        m01_axi_aruser: out std_logic_vector(0 to 0);
        m01_axi_arvalid: out std_logic_vector(0 to 0);
        m01_axi_arready: in std_logic_vector(0 to 0);
        m01_axi_rid: in std_logic_vector(0 to 0);
        m01_axi_rdata: in std_logic_vector(31 downto 0);
        m01_axi_rresp: in std_logic_vector(1 downto 0);
        m01_axi_rlast: in std_logic_vector(0 to 0);
        m01_axi_ruser: in std_logic_vector(0 to 0);
        m01_axi_rvalid: in std_logic_vector(0 to 0);
        m01_axi_rready: out std_logic_vector(0 to 0);
        m00_axi_awid: out std_logic_vector(0 to 0);
        m00_axi_awaddr: out std_logic_vector(31 downto 0);
        m00_axi_awlen: out std_logic_vector(7 downto 0);
        m00_axi_awsize: out std_logic_vector(2 downto 0);
        m00_axi_awburst: out std_logic_vector(1 downto 0);
        m00_axi_awlock: out std_logic_vector(0 to 0);
        m00_axi_awcache: out std_logic_vector(3 downto 0);
        m00_axi_awprot: out std_logic_vector(2 downto 0);
        m00_axi_awqos: out std_logic_vector(3 downto 0);
        m00_axi_awregion: out std_logic_vector(3 downto 0);
        m00_axi_awuser: out std_logic_vector(0 to 0);
        m00_axi_awvalid: out std_logic_vector(0 to 0);
        m00_axi_awready: in std_logic_vector(0 to 0);
        m00_axi_wdata: out std_logic_vector(31 downto 0);
        m00_axi_wstrb: out std_logic_vector(3 downto 0);
        m00_axi_wlast: out std_logic_vector(0 to 0);
        m00_axi_wuser: out std_logic_vector(0 to 0);
        m00_axi_wvalid: out std_logic_vector(0 to 0);
        m00_axi_wready: in std_logic_vector(0 to 0);
        m00_axi_bid: in std_logic_vector(0 to 0);
        m00_axi_bresp: in std_logic_vector(1 downto 0);
        m00_axi_buser: in std_logic_vector(0 to 0);
        m00_axi_bvalid: in std_logic_vector(0 to 0);
        m00_axi_bready: out std_logic_vector(0 to 0);
        m00_axi_arid: out std_logic_vector(0 to 0);
        m00_axi_araddr: out std_logic_vector(31 downto 0);
        m00_axi_arlen: out std_logic_vector(7 downto 0);
        m00_axi_arsize: out std_logic_vector(2 downto 0);
        m00_axi_arburst: out std_logic_vector(1 downto 0);
        m00_axi_arlock: out std_logic_vector(0 to 0);
        m00_axi_arcache: out std_logic_vector(3 downto 0);
        m00_axi_arprot: out std_logic_vector(2 downto 0);
        m00_axi_arqos: out std_logic_vector(3 downto 0);
        m00_axi_arregion: out std_logic_vector(3 downto 0);
        m00_axi_aruser: out std_logic_vector(0 to 0);
        m00_axi_arvalid: out std_logic_vector(0 to 0);
        m00_axi_arready: in std_logic_vector(0 to 0);
        m00_axi_rid: in std_logic_vector(0 to 0);
        m00_axi_rdata: in std_logic_vector(31 downto 0);
        m00_axi_rresp: in std_logic_vector(1 downto 0);
        m00_axi_rlast: in std_logic_vector(0 to 0);
        m00_axi_ruser: in std_logic_vector(0 to 0);
        m00_axi_rvalid: in std_logic_vector(0 to 0);
        m00_axi_rready: out std_logic_vector(0 to 0)
    );
end component;

__: axi_crossbarNxM port map(
    clk=>,
    rst_n=>,
    s00_axi_awid=>,
    s00_axi_awaddr=>,
    s00_axi_awlen=>,
    s00_axi_awsize=>,
    s00_axi_awburst=>,
    s00_axi_awlock=>,
    s00_axi_awcache=>,
    s00_axi_awprot=>,
    s00_axi_awqos=>,
    s00_axi_awregion=>,
    s00_axi_awuser=>,
    s00_axi_awvalid=>,
    s00_axi_awready=>,
    s00_axi_wdata=>,
    s00_axi_wstrb=>,
    s00_axi_wlast=>,
    s00_axi_wuser=>,
    s00_axi_wvalid=>,
    s00_axi_wready=>,
    s00_axi_bid=>,
    s00_axi_bresp=>,
    s00_axi_buser=>,
    s00_axi_bvalid=>,
    s00_axi_bready=>,
    s00_axi_arid=>,
    s00_axi_araddr=>,
    s00_axi_arlen=>,
    s00_axi_arsize=>,
    s00_axi_arburst=>,
    s00_axi_arlock=>,
    s00_axi_arcache=>,
    s00_axi_arprot=>,
    s00_axi_arqos=>,
    s00_axi_arregion=>,
    s00_axi_aruser=>,
    s00_axi_arvalid=>,
    s00_axi_arready=>,
    s00_axi_rid=>,
    s00_axi_rdata=>,
    s00_axi_rresp=>,
    s00_axi_rlast=>,
    s00_axi_ruser=>,
    s00_axi_rvalid=>,
    s00_axi_rready=>,
    m01_axi_awid=>,
    m01_axi_awaddr=>,
    m01_axi_awlen=>,
    m01_axi_awsize=>,
    m01_axi_awburst=>,
    m01_axi_awlock=>,
    m01_axi_awcache=>,
    m01_axi_awprot=>,
    m01_axi_awqos=>,
    m01_axi_awregion=>,
    m01_axi_awuser=>,
    m01_axi_awvalid=>,
    m01_axi_awready=>,
    m01_axi_wdata=>,
    m01_axi_wstrb=>,
    m01_axi_wlast=>,
    m01_axi_wuser=>,
    m01_axi_wvalid=>,
    m01_axi_wready=>,
    m01_axi_bid=>,
    m01_axi_bresp=>,
    m01_axi_buser=>,
    m01_axi_bvalid=>,
    m01_axi_bready=>,
    m01_axi_arid=>,
    m01_axi_araddr=>,
    m01_axi_arlen=>,
    m01_axi_arsize=>,
    m01_axi_arburst=>,
    m01_axi_arlock=>,
    m01_axi_arcache=>,
    m01_axi_arprot=>,
    m01_axi_arqos=>,
    m01_axi_arregion=>,
    m01_axi_aruser=>,
    m01_axi_arvalid=>,
    m01_axi_arready=>,
    m01_axi_rid=>,
    m01_axi_rdata=>,
    m01_axi_rresp=>,
    m01_axi_rlast=>,
    m01_axi_ruser=>,
    m01_axi_rvalid=>,
    m01_axi_rready=>,
    m00_axi_awid=>,
    m00_axi_awaddr=>,
    m00_axi_awlen=>,
    m00_axi_awsize=>,
    m00_axi_awburst=>,
    m00_axi_awlock=>,
    m00_axi_awcache=>,
    m00_axi_awprot=>,
    m00_axi_awqos=>,
    m00_axi_awregion=>,
    m00_axi_awuser=>,
    m00_axi_awvalid=>,
    m00_axi_awready=>,
    m00_axi_wdata=>,
    m00_axi_wstrb=>,
    m00_axi_wlast=>,
    m00_axi_wuser=>,
    m00_axi_wvalid=>,
    m00_axi_wready=>,
    m00_axi_bid=>,
    m00_axi_bresp=>,
    m00_axi_buser=>,
    m00_axi_bvalid=>,
    m00_axi_bready=>,
    m00_axi_arid=>,
    m00_axi_araddr=>,
    m00_axi_arlen=>,
    m00_axi_arsize=>,
    m00_axi_arburst=>,
    m00_axi_arlock=>,
    m00_axi_arcache=>,
    m00_axi_arprot=>,
    m00_axi_arqos=>,
    m00_axi_arregion=>,
    m00_axi_aruser=>,
    m00_axi_arvalid=>,
    m00_axi_arready=>,
    m00_axi_rid=>,
    m00_axi_rdata=>,
    m00_axi_rresp=>,
    m00_axi_rlast=>,
    m00_axi_ruser=>,
    m00_axi_rvalid=>,
    m00_axi_rready=>
);
