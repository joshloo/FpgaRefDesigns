component axil2apb0 is
    port(
        S_AXI_ACLK: in std_logic;
        S_AXI_ARESETN: in std_logic;
        S_AXI_AWVALID: in std_logic;
        S_AXI_AWREADY: out std_logic;
        S_AXI_AWADDR: in std_logic_vector(31 downto 0);
        S_AXI_AWPROT: in std_logic_vector(2 downto 0);
        S_AXI_WVALID: in std_logic;
        S_AXI_WREADY: out std_logic;
        S_AXI_WDATA: in std_logic_vector(31 downto 0);
        S_AXI_WSTRB: in std_logic_vector(3 downto 0);
        S_AXI_BVALID: out std_logic;
        S_AXI_BREADY: in std_logic;
        S_AXI_BRESP: out std_logic_vector(1 downto 0);
        S_AXI_ARVALID: in std_logic;
        S_AXI_ARREADY: out std_logic;
        S_AXI_ARADDR: in std_logic_vector(31 downto 0);
        S_AXI_ARPROT: in std_logic_vector(2 downto 0);
        S_AXI_RVALID: out std_logic;
        S_AXI_RREADY: in std_logic;
        S_AXI_RDATA: out std_logic_vector(31 downto 0);
        S_AXI_RRESP: out std_logic_vector(1 downto 0);
        M_APB_PSEL: out std_logic;
        M_APB_PENABLE: out std_logic;
        M_APB_PREADY: in std_logic;
        M_APB_PADDR: out std_logic_vector(31 downto 0);
        M_APB_PWRITE: out std_logic;
        M_APB_PWDATA: out std_logic_vector(31 downto 0);
        M_APB_PRDATA: in std_logic_vector(31 downto 0);
        M_APB_PSLVERR: in std_logic
    );
end component;

__: axil2apb0 port map(
    S_AXI_ACLK=>,
    S_AXI_ARESETN=>,
    S_AXI_AWVALID=>,
    S_AXI_AWREADY=>,
    S_AXI_AWADDR=>,
    S_AXI_AWPROT=>,
    S_AXI_WVALID=>,
    S_AXI_WREADY=>,
    S_AXI_WDATA=>,
    S_AXI_WSTRB=>,
    S_AXI_BVALID=>,
    S_AXI_BREADY=>,
    S_AXI_BRESP=>,
    S_AXI_ARVALID=>,
    S_AXI_ARREADY=>,
    S_AXI_ARADDR=>,
    S_AXI_ARPROT=>,
    S_AXI_RVALID=>,
    S_AXI_RREADY=>,
    S_AXI_RDATA=>,
    S_AXI_RRESP=>,
    M_APB_PSEL=>,
    M_APB_PENABLE=>,
    M_APB_PREADY=>,
    M_APB_PADDR=>,
    M_APB_PWRITE=>,
    M_APB_PWDATA=>,
    M_APB_PRDATA=>,
    M_APB_PSLVERR=>
);
