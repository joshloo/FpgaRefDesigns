
module axi1x2 (clk_i, 
        lite_m00_axil_araddr, 
        lite_m00_axil_arprot, 
        lite_m00_axil_arready, 
        lite_m00_axil_arvalid, 
        lite_m00_axil_awaddr, 
        lite_m00_axil_awprot, 
        lite_m00_axil_awready, 
        lite_m00_axil_awvalid, 
        lite_m00_axil_bready, 
        lite_m00_axil_bresp, 
        lite_m00_axil_bvalid, 
        lite_m00_axil_rdata, 
        lite_m00_axil_rready, 
        lite_m00_axil_rresp, 
        lite_m00_axil_rvalid, 
        lite_m00_axil_wdata, 
        lite_m00_axil_wready, 
        lite_m00_axil_wstrb, 
        lite_m00_axil_wvalid, 
        lite_m01_axil_araddr, 
        lite_m01_axil_arprot, 
        lite_m01_axil_arready, 
        lite_m01_axil_arvalid, 
        lite_m01_axil_awaddr, 
        lite_m01_axil_awprot, 
        lite_m01_axil_awready, 
        lite_m01_axil_awvalid, 
        lite_m01_axil_bready, 
        lite_m01_axil_bresp, 
        lite_m01_axil_bvalid, 
        lite_m01_axil_rdata, 
        lite_m01_axil_rready, 
        lite_m01_axil_rresp, 
        lite_m01_axil_rvalid, 
        lite_m01_axil_wdata, 
        lite_m01_axil_wready, 
        lite_m01_axil_wstrb, 
        lite_m01_axil_wvalid, 
        rstn_i, 
        s00_axi_araddr, 
        s00_axi_arburst, 
        s00_axi_arcache, 
        s00_axi_arid, 
        s00_axi_arlen, 
        s00_axi_arlock, 
        s00_axi_arprot, 
        s00_axi_arqos, 
        s00_axi_arready, 
        s00_axi_arregion, 
        s00_axi_arsize, 
        s00_axi_aruser, 
        s00_axi_arvalid, 
        s00_axi_awaddr, 
        s00_axi_awburst, 
        s00_axi_awcache, 
        s00_axi_awid, 
        s00_axi_awlen, 
        s00_axi_awlock, 
        s00_axi_awprot, 
        s00_axi_awqos, 
        s00_axi_awready, 
        s00_axi_awregion, 
        s00_axi_awsize, 
        s00_axi_awuser, 
        s00_axi_awvalid, 
        s00_axi_bid, 
        s00_axi_bready, 
        s00_axi_bresp, 
        s00_axi_buser, 
        s00_axi_bvalid, 
        s00_axi_rdata, 
        s00_axi_rid, 
        s00_axi_rlast, 
        s00_axi_rready, 
        s00_axi_rresp, 
        s00_axi_ruser, 
        s00_axi_rvalid, 
        s00_axi_wdata, 
        s00_axi_wlast, 
        s00_axi_wready, 
        s00_axi_wstrb, 
        s00_axi_wuser, 
        s00_axi_wvalid) ;
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wvalid ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wready ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rvalid ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rready ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bvalid ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bready ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awvalid ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awready ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arvalid ; 
    wire axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arready ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wvalid ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wready ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rvalid ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rready ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bvalid ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bready ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awvalid ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awready ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arvalid ; 
    wire axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arready ; 
    wire buf_rstn_i_net ; 
    wire buf_clk_i_net ; 
    parameter ENABLE_M00_2_LITE = 1 ; 
    parameter ENABLE_M00_CDC = 0 ; 
    parameter ENABLE_M00_REG_SLICE = 0 ; 
    parameter ENABLE_M01_2_LITE = 1 ; 
    parameter ENABLE_M01_CDC = 0 ; 
    parameter ENABLE_M01_REG_SLICE = 0 ; 
    parameter ENABLE_M02_2_LITE = 0 ; 
    parameter ENABLE_M02_CDC = 0 ; 
    parameter ENABLE_M02_REG_SLICE = 0 ; 
    parameter ENABLE_M03_2_LITE = 0 ; 
    parameter ENABLE_M03_CDC = 0 ; 
    parameter ENABLE_M03_REG_SLICE = 0 ; 
    parameter ENABLE_M04_2_LITE = 0 ; 
    parameter ENABLE_M04_CDC = 0 ; 
    parameter ENABLE_M04_REG_SLICE = 0 ; 
    parameter ENABLE_M05_2_LITE = 0 ; 
    parameter ENABLE_M05_CDC = 0 ; 
    parameter ENABLE_M05_REG_SLICE = 0 ; 
    parameter ENABLE_M06_2_LITE = 0 ; 
    parameter ENABLE_M06_CDC = 0 ; 
    parameter ENABLE_M06_REG_SLICE = 0 ; 
    parameter ENABLE_M07_2_LITE = 0 ; 
    parameter ENABLE_M07_CDC = 0 ; 
    parameter ENABLE_M07_REG_SLICE = 0 ; 
    parameter ENABLE_M08_2_LITE = 0 ; 
    parameter ENABLE_M08_CDC = 0 ; 
    parameter ENABLE_M08_REG_SLICE = 0 ; 
    parameter ENABLE_M09_2_LITE = 0 ; 
    parameter ENABLE_M09_CDC = 0 ; 
    parameter ENABLE_M09_REG_SLICE = 0 ; 
    parameter ENABLE_S00_REG_SLICE = 0 ; 
    parameter ENABLE_S01_REG_SLICE = 0 ; 
    parameter ENABLE_S02_REG_SLICE = 0 ; 
    parameter ENABLE_S03_REG_SLICE = 0 ; 
    parameter ENABLE_S04_REG_SLICE = 0 ; 
    parameter EN_LITE_M00 = 1 ; 
    parameter EN_LITE_M01 = 1 ; 
    parameter EN_LITE_M02 = 0 ; 
    parameter EN_LITE_M03 = 0 ; 
    parameter EN_LITE_M04 = 0 ; 
    parameter EN_LITE_M05 = 0 ; 
    parameter EN_LITE_M06 = 0 ; 
    parameter EN_LITE_M07 = 0 ; 
    parameter EN_LITE_M08 = 0 ; 
    parameter EN_LITE_M09 = 0 ; 
    parameter EN_M00 = 0 ; 
    parameter EN_M01 = 0 ; 
    parameter EN_M02 = 0 ; 
    parameter EN_M03 = 0 ; 
    parameter EN_M04 = 0 ; 
    parameter EN_M05 = 0 ; 
    parameter EN_M06 = 0 ; 
    parameter EN_M07 = 0 ; 
    parameter EN_M08 = 0 ; 
    parameter EN_M09 = 0 ; 
    parameter EN_S00 = 1 ; 
    parameter EN_S01 = 0 ; 
    parameter EN_S02 = 0 ; 
    parameter EN_S03 = 0 ; 
    parameter EN_S04 = 0 ; 
    parameter M_ADDR_WIDTH = 0 ; 
    parameter M_BASE_ADDR = 0 ; 
    parameter reg_slice_M00_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M00_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M00_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M00_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M00_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M01_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M01_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M01_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M01_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M01_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M02_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M02_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M02_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M02_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M02_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M03_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M03_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M03_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M03_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M03_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M04_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M04_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M04_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M04_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M04_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M05_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M05_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M05_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M05_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M05_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M06_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M06_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M06_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M06_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M06_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M07_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M07_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M07_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M07_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M07_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M08_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M08_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M08_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M08_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M08_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_M09_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_M09_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_M09_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_M09_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_M09_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_S00_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_S00_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_S00_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_S00_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_S00_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_S01_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_S01_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_S01_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_S01_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_S01_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_S02_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_S02_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_S02_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_S02_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_S02_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_S03_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_S03_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_S03_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_S03_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_S03_inst_W_REG_TYPE = 1 ; 
    parameter reg_slice_S04_inst_AR_REG_TYPE = 1 ; 
    parameter reg_slice_S04_inst_AW_REG_TYPE = 1 ; 
    parameter reg_slice_S04_inst_B_REG_TYPE = 1 ; 
    parameter reg_slice_S04_inst_R_REG_TYPE = 1 ; 
    parameter reg_slice_S04_inst_W_REG_TYPE = 1 ; 
    input clk_i ; 
    output [31:0] lite_m00_axil_araddr ; 
    output [2:0] lite_m00_axil_arprot ; 
    input lite_m00_axil_arready ; 
    output lite_m00_axil_arvalid ; 
    output [31:0] lite_m00_axil_awaddr ; 
    output [2:0] lite_m00_axil_awprot ; 
    input lite_m00_axil_awready ; 
    output lite_m00_axil_awvalid ; 
    output lite_m00_axil_bready ; 
    input [1:0] lite_m00_axil_bresp ; 
    input lite_m00_axil_bvalid ; 
    input [31:0] lite_m00_axil_rdata ; 
    output lite_m00_axil_rready ; 
    input [1:0] lite_m00_axil_rresp ; 
    input lite_m00_axil_rvalid ; 
    output [31:0] lite_m00_axil_wdata ; 
    input lite_m00_axil_wready ; 
    output [3:0] lite_m00_axil_wstrb ; 
    output lite_m00_axil_wvalid ; 
    output [31:0] lite_m01_axil_araddr ; 
    output [2:0] lite_m01_axil_arprot ; 
    input lite_m01_axil_arready ; 
    output lite_m01_axil_arvalid ; 
    output [31:0] lite_m01_axil_awaddr ; 
    output [2:0] lite_m01_axil_awprot ; 
    input lite_m01_axil_awready ; 
    output lite_m01_axil_awvalid ; 
    output lite_m01_axil_bready ; 
    input [1:0] lite_m01_axil_bresp ; 
    input lite_m01_axil_bvalid ; 
    input [31:0] lite_m01_axil_rdata ; 
    output lite_m01_axil_rready ; 
    input [1:0] lite_m01_axil_rresp ; 
    input lite_m01_axil_rvalid ; 
    output [31:0] lite_m01_axil_wdata ; 
    input lite_m01_axil_wready ; 
    output [3:0] lite_m01_axil_wstrb ; 
    output lite_m01_axil_wvalid ; 
    input rstn_i ; 
    input [31:0] s00_axi_araddr ; 
    input [1:0] s00_axi_arburst ; 
    input [3:0] s00_axi_arcache ; 
    input [0:0] s00_axi_arid ; 
    input [7:0] s00_axi_arlen ; 
    input [0:0] s00_axi_arlock ; 
    input [2:0] s00_axi_arprot ; 
    input [3:0] s00_axi_arqos ; 
    output [0:0] s00_axi_arready ; 
    input [3:0] s00_axi_arregion ; 
    input [2:0] s00_axi_arsize ; 
    input [0:0] s00_axi_aruser ; 
    input [0:0] s00_axi_arvalid ; 
    input [31:0] s00_axi_awaddr ; 
    input [1:0] s00_axi_awburst ; 
    input [3:0] s00_axi_awcache ; 
    input [0:0] s00_axi_awid ; 
    input [7:0] s00_axi_awlen ; 
    input [0:0] s00_axi_awlock ; 
    input [2:0] s00_axi_awprot ; 
    input [3:0] s00_axi_awqos ; 
    output [0:0] s00_axi_awready ; 
    input [3:0] s00_axi_awregion ; 
    input [2:0] s00_axi_awsize ; 
    input [0:0] s00_axi_awuser ; 
    input [0:0] s00_axi_awvalid ; 
    output [0:0] s00_axi_bid ; 
    input [0:0] s00_axi_bready ; 
    output [1:0] s00_axi_bresp ; 
    output [0:0] s00_axi_buser ; 
    output [0:0] s00_axi_bvalid ; 
    output [31:0] s00_axi_rdata ; 
    output [0:0] s00_axi_rid ; 
    output [0:0] s00_axi_rlast ; 
    input [0:0] s00_axi_rready ; 
    output [1:0] s00_axi_rresp ; 
    output [0:0] s00_axi_ruser ; 
    output [0:0] s00_axi_rvalid ; 
    input [31:0] s00_axi_wdata ; 
    input [0:0] s00_axi_wlast ; 
    output [0:0] s00_axi_wready ; 
    input [3:0] s00_axi_wstrb ; 
    input [0:0] s00_axi_wuser ; 
    input [0:0] s00_axi_wvalid ; 
    wire [31:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_araddr ; 
    wire [2:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arprot ; 
    wire [31:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awaddr ; 
    wire [2:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awprot ; 
    wire [1:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bresp ; 
    wire [31:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rdata ; 
    wire [1:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rresp ; 
    wire [31:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wdata ; 
    wire [3:0] axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wstrb ; 
    wire [31:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_araddr ; 
    wire [2:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arprot ; 
    wire [31:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awaddr ; 
    wire [2:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awprot ; 
    wire [1:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bresp ; 
    wire [31:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rdata ; 
    wire [1:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rresp ; 
    wire [31:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wdata ; 
    wire [3:0] axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wstrb ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_araddr ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arburst ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arcache ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arid ; 
    wire [7:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arlen ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arlock ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arprot ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arqos ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arready ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arregion ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arsize ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_aruser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awaddr ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awburst ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awcache ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awid ; 
    wire [7:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awlen ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awlock ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awprot ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awqos ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awready ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awregion ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awsize ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awuser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awvalid ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bid ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bready ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bresp ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_buser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rdata ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rid ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rlast ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rready ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rresp ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_ruser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wdata ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wlast ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wready ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wstrb ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wuser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_araddr ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arburst ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arcache ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arid ; 
    wire [7:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arlen ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arlock ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arprot ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arqos ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arready ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arregion ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arsize ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_aruser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awaddr ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awburst ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awcache ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awid ; 
    wire [7:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awlen ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awlock ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awprot ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awqos ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awready ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awregion ; 
    wire [2:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awsize ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awuser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awvalid ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bid ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bready ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bresp ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_buser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rdata ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rid ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rlast ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rready ; 
    wire [1:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rresp ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_ruser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rvalid ; 
    wire [31:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wdata ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wlast ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wready ; 
    wire [3:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wstrb ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wuser ; 
    wire [0:0] axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wvalid ; 
    wire [31:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_araddr ; 
    wire [1:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arburst ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arcache ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arid ; 
    wire [7:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arlen ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arlock ; 
    wire [2:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arprot ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arqos ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arready ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arregion ; 
    wire [2:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arsize ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_aruser ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arvalid ; 
    wire [31:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awaddr ; 
    wire [1:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awburst ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awcache ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awid ; 
    wire [7:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awlen ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awlock ; 
    wire [2:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awprot ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awqos ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awready ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awregion ; 
    wire [2:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awsize ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awuser ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awvalid ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bid ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bready ; 
    wire [1:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bresp ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_buser ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bvalid ; 
    wire [31:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rdata ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rid ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rlast ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rready ; 
    wire [1:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rresp ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_ruser ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rvalid ; 
    wire [31:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wdata ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wlast ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wready ; 
    wire [3:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wstrb ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wuser ; 
    wire [0:0] reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wvalid ; 
    axi2axil_M00 axi2axil_M00_inst (.clk(buf_clk_i_net), 
                .rst_n(buf_rstn_i_net), 
                .m_axil_araddr(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_araddr), 
                .m_axil_arprot(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arprot), 
                .m_axil_arready(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arready), 
                .m_axil_arvalid(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arvalid), 
                .m_axil_awaddr(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awaddr), 
                .m_axil_awprot(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awprot), 
                .m_axil_awready(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awready), 
                .m_axil_awvalid(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awvalid), 
                .m_axil_bready(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bready), 
                .m_axil_bresp(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bresp), 
                .m_axil_bvalid(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bvalid), 
                .m_axil_rdata(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rdata), 
                .m_axil_rready(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rready), 
                .m_axil_rresp(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rresp), 
                .m_axil_rvalid(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rvalid), 
                .m_axil_wdata(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wdata), 
                .m_axil_wready(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wready), 
                .m_axil_wstrb(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wstrb), 
                .m_axil_wvalid(axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wvalid), 
                .s_axi_araddr(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_araddr), 
                .s_axi_arburst(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arburst), 
                .s_axi_arcache(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arcache), 
                .s_axi_arid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arid), 
                .s_axi_arlen(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arlen), 
                .s_axi_arlock(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arlock), 
                .s_axi_arprot(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arprot), 
                .s_axi_arqos(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arqos), 
                .s_axi_arready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arready), 
                .s_axi_arregion(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arregion), 
                .s_axi_arsize(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arsize), 
                .s_axi_aruser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_aruser), 
                .s_axi_arvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arvalid), 
                .s_axi_awaddr(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awaddr), 
                .s_axi_awburst(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awburst), 
                .s_axi_awcache(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awcache), 
                .s_axi_awid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awid), 
                .s_axi_awlen(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awlen), 
                .s_axi_awlock(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awlock), 
                .s_axi_awprot(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awprot), 
                .s_axi_awqos(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awqos), 
                .s_axi_awready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awready), 
                .s_axi_awregion(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awregion), 
                .s_axi_awsize(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awsize), 
                .s_axi_awuser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awuser), 
                .s_axi_awvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awvalid), 
                .s_axi_bid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bid), 
                .s_axi_bready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bready), 
                .s_axi_bresp(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bresp), 
                .s_axi_buser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_buser), 
                .s_axi_bvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bvalid), 
                .s_axi_rdata(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rdata), 
                .s_axi_rid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rid), 
                .s_axi_rlast(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rlast), 
                .s_axi_rready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rready), 
                .s_axi_rresp(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rresp), 
                .s_axi_ruser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_ruser), 
                .s_axi_rvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rvalid), 
                .s_axi_wdata(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wdata), 
                .s_axi_wlast(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wlast), 
                .s_axi_wready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wready), 
                .s_axi_wstrb(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wstrb), 
                .s_axi_wuser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wuser), 
                .s_axi_wvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wvalid)) ; 
    axi2axil_M01 axi2axil_M01_inst (.clk(buf_clk_i_net), 
                .rst_n(buf_rstn_i_net), 
                .m_axil_araddr(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_araddr), 
                .m_axil_arprot(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arprot), 
                .m_axil_arready(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arready), 
                .m_axil_arvalid(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arvalid), 
                .m_axil_awaddr(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awaddr), 
                .m_axil_awprot(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awprot), 
                .m_axil_awready(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awready), 
                .m_axil_awvalid(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awvalid), 
                .m_axil_bready(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bready), 
                .m_axil_bresp(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bresp), 
                .m_axil_bvalid(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bvalid), 
                .m_axil_rdata(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rdata), 
                .m_axil_rready(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rready), 
                .m_axil_rresp(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rresp), 
                .m_axil_rvalid(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rvalid), 
                .m_axil_wdata(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wdata), 
                .m_axil_wready(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wready), 
                .m_axil_wstrb(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wstrb), 
                .m_axil_wvalid(axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wvalid), 
                .s_axi_araddr(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_araddr), 
                .s_axi_arburst(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arburst), 
                .s_axi_arcache(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arcache), 
                .s_axi_arid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arid), 
                .s_axi_arlen(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arlen), 
                .s_axi_arlock(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arlock), 
                .s_axi_arprot(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arprot), 
                .s_axi_arqos(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arqos), 
                .s_axi_arready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arready), 
                .s_axi_arregion(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arregion), 
                .s_axi_arsize(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arsize), 
                .s_axi_aruser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_aruser), 
                .s_axi_arvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arvalid), 
                .s_axi_awaddr(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awaddr), 
                .s_axi_awburst(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awburst), 
                .s_axi_awcache(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awcache), 
                .s_axi_awid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awid), 
                .s_axi_awlen(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awlen), 
                .s_axi_awlock(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awlock), 
                .s_axi_awprot(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awprot), 
                .s_axi_awqos(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awqos), 
                .s_axi_awready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awready), 
                .s_axi_awregion(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awregion), 
                .s_axi_awsize(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awsize), 
                .s_axi_awuser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awuser), 
                .s_axi_awvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awvalid), 
                .s_axi_bid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bid), 
                .s_axi_bready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bready), 
                .s_axi_bresp(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bresp), 
                .s_axi_buser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_buser), 
                .s_axi_bvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bvalid), 
                .s_axi_rdata(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rdata), 
                .s_axi_rid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rid), 
                .s_axi_rlast(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rlast), 
                .s_axi_rready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rready), 
                .s_axi_rresp(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rresp), 
                .s_axi_ruser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_ruser), 
                .s_axi_rvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rvalid), 
                .s_axi_wdata(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wdata), 
                .s_axi_wlast(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wlast), 
                .s_axi_wready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wready), 
                .s_axi_wstrb(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wstrb), 
                .s_axi_wuser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wuser), 
                .s_axi_wvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wvalid)) ; 
    axi_crossbarNxM #(.M_ADDR_WIDTH(M_ADDR_WIDTH),
            .M_BASE_ADDR(M_BASE_ADDR)) axi_crossbarNxM_inst (.clk(buf_clk_i_net), 
                .rst_n(buf_rstn_i_net), 
                .m00_axi_araddr(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_araddr), 
                .m00_axi_arburst(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arburst), 
                .m00_axi_arcache(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arcache), 
                .m00_axi_arid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arid), 
                .m00_axi_arlen(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arlen), 
                .m00_axi_arlock(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arlock), 
                .m00_axi_arprot(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arprot), 
                .m00_axi_arqos(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arqos), 
                .m00_axi_arready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arready), 
                .m00_axi_arregion(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arregion), 
                .m00_axi_arsize(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arsize), 
                .m00_axi_aruser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_aruser), 
                .m00_axi_arvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_arvalid), 
                .m00_axi_awaddr(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awaddr), 
                .m00_axi_awburst(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awburst), 
                .m00_axi_awcache(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awcache), 
                .m00_axi_awid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awid), 
                .m00_axi_awlen(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awlen), 
                .m00_axi_awlock(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awlock), 
                .m00_axi_awprot(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awprot), 
                .m00_axi_awqos(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awqos), 
                .m00_axi_awready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awready), 
                .m00_axi_awregion(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awregion), 
                .m00_axi_awsize(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awsize), 
                .m00_axi_awuser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awuser), 
                .m00_axi_awvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_awvalid), 
                .m00_axi_bid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bid), 
                .m00_axi_bready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bready), 
                .m00_axi_bresp(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bresp), 
                .m00_axi_buser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_buser), 
                .m00_axi_bvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_bvalid), 
                .m00_axi_rdata(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rdata), 
                .m00_axi_rid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rid), 
                .m00_axi_rlast(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rlast), 
                .m00_axi_rready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rready), 
                .m00_axi_rresp(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rresp), 
                .m00_axi_ruser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_ruser), 
                .m00_axi_rvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_rvalid), 
                .m00_axi_wdata(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wdata), 
                .m00_axi_wlast(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wlast), 
                .m00_axi_wready(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wready), 
                .m00_axi_wstrb(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wstrb), 
                .m00_axi_wuser(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wuser), 
                .m00_axi_wvalid(axi_crossbarNxM_inst_AXI_M00_interconnect_m00_axi_wvalid), 
                .m01_axi_araddr(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_araddr), 
                .m01_axi_arburst(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arburst), 
                .m01_axi_arcache(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arcache), 
                .m01_axi_arid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arid), 
                .m01_axi_arlen(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arlen), 
                .m01_axi_arlock(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arlock), 
                .m01_axi_arprot(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arprot), 
                .m01_axi_arqos(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arqos), 
                .m01_axi_arready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arready), 
                .m01_axi_arregion(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arregion), 
                .m01_axi_arsize(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arsize), 
                .m01_axi_aruser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_aruser), 
                .m01_axi_arvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_arvalid), 
                .m01_axi_awaddr(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awaddr), 
                .m01_axi_awburst(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awburst), 
                .m01_axi_awcache(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awcache), 
                .m01_axi_awid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awid), 
                .m01_axi_awlen(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awlen), 
                .m01_axi_awlock(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awlock), 
                .m01_axi_awprot(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awprot), 
                .m01_axi_awqos(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awqos), 
                .m01_axi_awready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awready), 
                .m01_axi_awregion(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awregion), 
                .m01_axi_awsize(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awsize), 
                .m01_axi_awuser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awuser), 
                .m01_axi_awvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_awvalid), 
                .m01_axi_bid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bid), 
                .m01_axi_bready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bready), 
                .m01_axi_bresp(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bresp), 
                .m01_axi_buser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_buser), 
                .m01_axi_bvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_bvalid), 
                .m01_axi_rdata(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rdata), 
                .m01_axi_rid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rid), 
                .m01_axi_rlast(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rlast), 
                .m01_axi_rready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rready), 
                .m01_axi_rresp(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rresp), 
                .m01_axi_ruser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_ruser), 
                .m01_axi_rvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_rvalid), 
                .m01_axi_wdata(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wdata), 
                .m01_axi_wlast(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wlast), 
                .m01_axi_wready(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wready), 
                .m01_axi_wstrb(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wstrb), 
                .m01_axi_wuser(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wuser), 
                .m01_axi_wvalid(axi_crossbarNxM_inst_AXI_M01_interconnect_m01_axi_wvalid), 
                .s00_axi_araddr(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_araddr), 
                .s00_axi_arburst(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arburst), 
                .s00_axi_arcache(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arcache), 
                .s00_axi_arid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arid), 
                .s00_axi_arlen(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arlen), 
                .s00_axi_arlock(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arlock), 
                .s00_axi_arprot(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arprot), 
                .s00_axi_arqos(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arqos), 
                .s00_axi_arready(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arready), 
                .s00_axi_arregion(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arregion), 
                .s00_axi_arsize(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arsize), 
                .s00_axi_aruser(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_aruser), 
                .s00_axi_arvalid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arvalid), 
                .s00_axi_awaddr(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awaddr), 
                .s00_axi_awburst(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awburst), 
                .s00_axi_awcache(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awcache), 
                .s00_axi_awid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awid), 
                .s00_axi_awlen(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awlen), 
                .s00_axi_awlock(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awlock), 
                .s00_axi_awprot(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awprot), 
                .s00_axi_awqos(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awqos), 
                .s00_axi_awready(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awready), 
                .s00_axi_awregion(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awregion), 
                .s00_axi_awsize(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awsize), 
                .s00_axi_awuser(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awuser), 
                .s00_axi_awvalid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awvalid), 
                .s00_axi_bid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bid), 
                .s00_axi_bready(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bready), 
                .s00_axi_bresp(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bresp), 
                .s00_axi_buser(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_buser), 
                .s00_axi_bvalid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bvalid), 
                .s00_axi_rdata(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rdata), 
                .s00_axi_rid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rid), 
                .s00_axi_rlast(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rlast), 
                .s00_axi_rready(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rready), 
                .s00_axi_rresp(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rresp), 
                .s00_axi_ruser(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_ruser), 
                .s00_axi_rvalid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rvalid), 
                .s00_axi_wdata(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wdata), 
                .s00_axi_wlast(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wlast), 
                .s00_axi_wready(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wready), 
                .s00_axi_wstrb(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wstrb), 
                .s00_axi_wuser(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wuser), 
                .s00_axi_wvalid(reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wvalid)) ; 
    assign buf_clk_i_net = clk_i ; 
    assign buf_rstn_i_net = rstn_i ; 
    assign lite_m00_axil_araddr = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_araddr ; 
    assign lite_m00_axil_arprot = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arprot ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arready = lite_m00_axil_arready ; 
    assign lite_m00_axil_arvalid = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_arvalid ; 
    assign lite_m00_axil_awaddr = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awaddr ; 
    assign lite_m00_axil_awprot = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awprot ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awready = lite_m00_axil_awready ; 
    assign lite_m00_axil_awvalid = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_awvalid ; 
    assign lite_m00_axil_bready = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bready ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bresp = lite_m00_axil_bresp ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_bvalid = lite_m00_axil_bvalid ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rdata = lite_m00_axil_rdata ; 
    assign lite_m00_axil_rready = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rready ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rresp = lite_m00_axil_rresp ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_rvalid = lite_m00_axil_rvalid ; 
    assign lite_m00_axil_wdata = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wdata ; 
    assign axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wready = lite_m00_axil_wready ; 
    assign lite_m00_axil_wstrb = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wstrb ; 
    assign lite_m00_axil_wvalid = axi2axil_M00_inst_AXIL_M00_interconnect_m_axil_wvalid ; 
    assign lite_m01_axil_araddr = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_araddr ; 
    assign lite_m01_axil_arprot = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arprot ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arready = lite_m01_axil_arready ; 
    assign lite_m01_axil_arvalid = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_arvalid ; 
    assign lite_m01_axil_awaddr = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awaddr ; 
    assign lite_m01_axil_awprot = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awprot ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awready = lite_m01_axil_awready ; 
    assign lite_m01_axil_awvalid = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_awvalid ; 
    assign lite_m01_axil_bready = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bready ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bresp = lite_m01_axil_bresp ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_bvalid = lite_m01_axil_bvalid ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rdata = lite_m01_axil_rdata ; 
    assign lite_m01_axil_rready = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rready ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rresp = lite_m01_axil_rresp ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_rvalid = lite_m01_axil_rvalid ; 
    assign lite_m01_axil_wdata = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wdata ; 
    assign axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wready = lite_m01_axil_wready ; 
    assign lite_m01_axil_wstrb = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wstrb ; 
    assign lite_m01_axil_wvalid = axi2axil_M01_inst_AXIL_M00_interconnect_m_axil_wvalid ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_araddr = s00_axi_araddr ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arburst = s00_axi_arburst ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arcache = s00_axi_arcache ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arid = s00_axi_arid ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arlen = s00_axi_arlen ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arlock = s00_axi_arlock ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arprot = s00_axi_arprot ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arqos = s00_axi_arqos ; 
    assign s00_axi_arready = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arready ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arregion = s00_axi_arregion ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arsize = s00_axi_arsize ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_aruser = s00_axi_aruser ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_arvalid = s00_axi_arvalid ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awaddr = s00_axi_awaddr ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awburst = s00_axi_awburst ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awcache = s00_axi_awcache ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awid = s00_axi_awid ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awlen = s00_axi_awlen ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awlock = s00_axi_awlock ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awprot = s00_axi_awprot ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awqos = s00_axi_awqos ; 
    assign s00_axi_awready = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awready ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awregion = s00_axi_awregion ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awsize = s00_axi_awsize ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awuser = s00_axi_awuser ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_awvalid = s00_axi_awvalid ; 
    assign s00_axi_bid = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bid ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bready = s00_axi_bready ; 
    assign s00_axi_bresp = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bresp ; 
    assign s00_axi_buser = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_buser ; 
    assign s00_axi_bvalid = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_bvalid ; 
    assign s00_axi_rdata = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rdata ; 
    assign s00_axi_rid = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rid ; 
    assign s00_axi_rlast = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rlast ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rready = s00_axi_rready ; 
    assign s00_axi_rresp = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rresp ; 
    assign s00_axi_ruser = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_ruser ; 
    assign s00_axi_rvalid = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_rvalid ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wdata = s00_axi_wdata ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wlast = s00_axi_wlast ; 
    assign s00_axi_wready = reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wready ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wstrb = s00_axi_wstrb ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wuser = s00_axi_wuser ; 
    assign reg_slice_S00_inst_AXI_S00_interconnect_s00_axi_wvalid = s00_axi_wvalid ; 
endmodule


