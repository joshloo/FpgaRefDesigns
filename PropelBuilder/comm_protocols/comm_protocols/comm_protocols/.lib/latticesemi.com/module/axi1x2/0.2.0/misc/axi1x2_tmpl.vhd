component axi1x2 is
    port(
        clk_i: in std_logic;
        rstn_i: in std_logic;
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
        lite_m01_axil_awaddr: out std_logic_vector(31 downto 0);
        lite_m01_axil_awprot: out std_logic_vector(2 downto 0);
        lite_m01_axil_awvalid: out std_logic;
        lite_m01_axil_awready: in std_logic;
        lite_m01_axil_wdata: out std_logic_vector(31 downto 0);
        lite_m01_axil_wstrb: out std_logic_vector(3 downto 0);
        lite_m01_axil_wvalid: out std_logic;
        lite_m01_axil_wready: in std_logic;
        lite_m01_axil_bresp: in std_logic_vector(1 downto 0);
        lite_m01_axil_bvalid: in std_logic;
        lite_m01_axil_bready: out std_logic;
        lite_m01_axil_araddr: out std_logic_vector(31 downto 0);
        lite_m01_axil_arprot: out std_logic_vector(2 downto 0);
        lite_m01_axil_arvalid: out std_logic;
        lite_m01_axil_arready: in std_logic;
        lite_m01_axil_rdata: in std_logic_vector(31 downto 0);
        lite_m01_axil_rresp: in std_logic_vector(1 downto 0);
        lite_m01_axil_rvalid: in std_logic;
        lite_m01_axil_rready: out std_logic;
        lite_m00_axil_awaddr: out std_logic_vector(31 downto 0);
        lite_m00_axil_awprot: out std_logic_vector(2 downto 0);
        lite_m00_axil_awvalid: out std_logic;
        lite_m00_axil_awready: in std_logic;
        lite_m00_axil_wdata: out std_logic_vector(31 downto 0);
        lite_m00_axil_wstrb: out std_logic_vector(3 downto 0);
        lite_m00_axil_wvalid: out std_logic;
        lite_m00_axil_wready: in std_logic;
        lite_m00_axil_bresp: in std_logic_vector(1 downto 0);
        lite_m00_axil_bvalid: in std_logic;
        lite_m00_axil_bready: out std_logic;
        lite_m00_axil_araddr: out std_logic_vector(31 downto 0);
        lite_m00_axil_arprot: out std_logic_vector(2 downto 0);
        lite_m00_axil_arvalid: out std_logic;
        lite_m00_axil_arready: in std_logic;
        lite_m00_axil_rdata: in std_logic_vector(31 downto 0);
        lite_m00_axil_rresp: in std_logic_vector(1 downto 0);
        lite_m00_axil_rvalid: in std_logic;
        lite_m00_axil_rready: out std_logic
    );
end component;

__: axi1x2 port map(
    clk_i=>,
    rstn_i=>,
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
    lite_m01_axil_awaddr=>,
    lite_m01_axil_awprot=>,
    lite_m01_axil_awvalid=>,
    lite_m01_axil_awready=>,
    lite_m01_axil_wdata=>,
    lite_m01_axil_wstrb=>,
    lite_m01_axil_wvalid=>,
    lite_m01_axil_wready=>,
    lite_m01_axil_bresp=>,
    lite_m01_axil_bvalid=>,
    lite_m01_axil_bready=>,
    lite_m01_axil_araddr=>,
    lite_m01_axil_arprot=>,
    lite_m01_axil_arvalid=>,
    lite_m01_axil_arready=>,
    lite_m01_axil_rdata=>,
    lite_m01_axil_rresp=>,
    lite_m01_axil_rvalid=>,
    lite_m01_axil_rready=>,
    lite_m00_axil_awaddr=>,
    lite_m00_axil_awprot=>,
    lite_m00_axil_awvalid=>,
    lite_m00_axil_awready=>,
    lite_m00_axil_wdata=>,
    lite_m00_axil_wstrb=>,
    lite_m00_axil_wvalid=>,
    lite_m00_axil_wready=>,
    lite_m00_axil_bresp=>,
    lite_m00_axil_bvalid=>,
    lite_m00_axil_bready=>,
    lite_m00_axil_araddr=>,
    lite_m00_axil_arprot=>,
    lite_m00_axil_arvalid=>,
    lite_m00_axil_arready=>,
    lite_m00_axil_rdata=>,
    lite_m00_axil_rresp=>,
    lite_m00_axil_rvalid=>,
    lite_m00_axil_rready=>
);
