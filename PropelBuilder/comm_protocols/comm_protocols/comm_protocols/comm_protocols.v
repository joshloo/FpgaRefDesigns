// >>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// ------------------------------------------------------------------
// Copyright (c) 2019-2023 by Lattice Semiconductor Corporation
// ALL RIGHTS RESERVED
// ------------------------------------------------------------------
//
// IMPORTANT: THIS FILE IS USED BY OR GENERATED BY the LATTICE PROPEL�
// DEVELOPMENT SUITE, WHICH INCLUDES PROPEL BUILDER AND PROPEL SDK.
//
// Lattice grants permission to use this code pursuant to the
// terms of the Lattice Propel License Agreement.
//
// DISCLAIMER:
//
//  LATTICE MAKES NO WARRANTIES ON THIS FILE OR ITS CONTENTS, WHETHER
//  EXPRESSED, IMPLIED, STATUTORY, OR IN ANY PROVISION OF THE LATTICE
//  PROPEL LICENSE AGREEMENT OR COMMUNICATION WITH LICENSEE, AND LATTICE
//  SPECIFICALLY DISCLAIMS ANY IMPLIED WARRANTY OF MERCHANTABILITY OR
//  FITNESS FOR A PARTICULAR PURPOSE.  LATTICE DOES NOT WARRANT THAT THE
//  FUNCTIONS CONTAINED HEREIN WILL MEET LICENSEE'S REQUIREMENTS, OR THAT
//  LICENSEE'S OPERATION OF ANY DEVICE, SOFTWARE OR SYSTEM USING THIS FILE
//  OR ITS CONTENTS WILL BE UNINTERRUPTED OR ERROR FREE, OR THAT DEFECTS
//  HEREIN WILL BE CORRECTED.  LICENSEE ASSUMES RESPONSIBILITY FOR 
//  SELECTION OF MATERIALS TO ACHIEVE ITS INTENDED RESULTS, AND FOR THE
//  PROPER INSTALLATION, USE, AND RESULTS OBTAINED THEREFROM.  LICENSEE
//  ASSUMES THE ENTIRE RISK OF THE FILE AND ITS CONTENTS PROVING DEFECTIVE
//  OR FAILING TO PERFORM PROPERLY AND IN SUCH EVENT, LICENSEE SHALL
//  ASSUME THE ENTIRE COST AND RISK OF ANY REPAIR, SERVICE, CORRECTION, OR
//  ANY OTHER LIABILITIES OR DAMAGES CAUSED BY OR ASSOCIATED WITH THE
//  SOFTWARE.  IN NO EVENT SHALL LATTICE BE LIABLE TO ANY PARTY FOR DIRECT,
//  INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST
//  PROFITS, ARISING OUT OF THE USE OF THIS FILE OR ITS CONTENTS, EVEN IF
//  LATTICE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. LATTICE'S
//  SOLE LIABILITY, AND LICENSEE'S SOLE REMEDY, IS SET FORTH ABOVE. 
//  LATTICE DOES NOT WARRANT OR REPRESENT THAT THIS FILE, ITS CONTENTS OR
//  USE THEREOF DOES NOT INFRINGE ON THIRD PARTIES' INTELLECTUAL PROPERTY
//  RIGHTS, INCLUDING ANY PATENT. IT IS THE USER'S RESPONSIBILITY TO VERIFY
//  THE USER SOFTWARE DESIGN FOR CONSISTENCY AND FUNCTIONALITY THROUGH THE
//  USE OF FORMAL SOFTWARE VALIDATION METHODS.
// ------------------------------------------------------------------

/* synthesis translate_off*/
`define SBP_SIMULATION
/* synthesis translate_on*/
`ifndef SBP_SIMULATION
`define SBP_SYNTHESIS
`endif



//
// Verific Verilog Description of module comm_protocols
//
module comm_protocols (s0_gpio, rstn_i, s1_uart_rxd_i, s1_uart_txd_o);
    inout [15:0]s0_gpio;
    input rstn_i;
    input s1_uart_rxd_i;
    output s1_uart_txd_o;
    
    wire [31:0]axi1x2_inst_AXIL_M00_interconnect_ARADDR;
    wire [2:0]axi1x2_inst_AXIL_M00_interconnect_ARPROT;
    wire [31:0]axi1x2_inst_AXIL_M00_interconnect_AWADDR;
    wire [2:0]axi1x2_inst_AXIL_M00_interconnect_AWPROT;
    wire [1:0]axi1x2_inst_AXIL_M00_interconnect_BRESP;
    wire [31:0]axi1x2_inst_AXIL_M00_interconnect_RDATA;
    wire [1:0]axi1x2_inst_AXIL_M00_interconnect_RRESP;
    wire [31:0]axi1x2_inst_AXIL_M00_interconnect_WDATA;
    wire [3:0]axi1x2_inst_AXIL_M00_interconnect_WSTRB;
    wire [31:0]axi1x2_inst_AXIL_M01_interconnect_ARADDR;
    wire [2:0]axi1x2_inst_AXIL_M01_interconnect_ARPROT;
    wire [31:0]axi1x2_inst_AXIL_M01_interconnect_AWADDR;
    wire [2:0]axi1x2_inst_AXIL_M01_interconnect_AWPROT;
    wire [1:0]axi1x2_inst_AXIL_M01_interconnect_BRESP;
    wire [31:0]axi1x2_inst_AXIL_M01_interconnect_RDATA;
    wire [1:0]axi1x2_inst_AXIL_M01_interconnect_RRESP;
    wire [31:0]axi1x2_inst_AXIL_M01_interconnect_WDATA;
    wire [3:0]axi1x2_inst_AXIL_M01_interconnect_WSTRB;
    wire [31:0]cpu0_inst_AXI_M_DATA_interconnect_ARADDR;
    wire [1:0]cpu0_inst_AXI_M_DATA_interconnect_ARBURST;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_ARCACHE;
    wire [7:0]cpu0_inst_AXI_M_DATA_interconnect_ARLEN;
    wire [2:0]cpu0_inst_AXI_M_DATA_interconnect_ARPROT;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_ARQOS;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_ARREGION;
    wire [2:0]cpu0_inst_AXI_M_DATA_interconnect_ARSIZE;
    wire [31:0]cpu0_inst_AXI_M_DATA_interconnect_AWADDR;
    wire [1:0]cpu0_inst_AXI_M_DATA_interconnect_AWBURST;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_AWCACHE;
    wire [7:0]cpu0_inst_AXI_M_DATA_interconnect_AWLEN;
    wire [2:0]cpu0_inst_AXI_M_DATA_interconnect_AWPROT;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_AWQOS;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_AWREGION;
    wire [2:0]cpu0_inst_AXI_M_DATA_interconnect_AWSIZE;
    wire [1:0]cpu0_inst_AXI_M_DATA_interconnect_BRESP;
    wire [31:0]cpu0_inst_AXI_M_DATA_interconnect_RDATA;
    wire [1:0]cpu0_inst_AXI_M_DATA_interconnect_RRESP;
    wire [31:0]cpu0_inst_AXI_M_DATA_interconnect_WDATA;
    wire [3:0]cpu0_inst_AXI_M_DATA_interconnect_WSTRB;
    
    wire pll0_inst_clkop_o_net, axi1x2_inst_AXIL_M00_interconnect_ARREADY, 
        axi1x2_inst_AXIL_M00_interconnect_ARVALID, axi1x2_inst_AXIL_M00_interconnect_AWREADY, 
        axi1x2_inst_AXIL_M00_interconnect_AWVALID, axi1x2_inst_AXIL_M00_interconnect_BREADY, 
        axi1x2_inst_AXIL_M00_interconnect_BVALID, axi1x2_inst_AXIL_M00_interconnect_RREADY, 
        axi1x2_inst_AXIL_M00_interconnect_RVALID, axi1x2_inst_AXIL_M00_interconnect_WREADY, 
        axi1x2_inst_AXIL_M00_interconnect_WVALID, axi1x2_inst_AXIL_M01_interconnect_ARREADY, 
        axi1x2_inst_AXIL_M01_interconnect_ARVALID, axi1x2_inst_AXIL_M01_interconnect_AWREADY, 
        axi1x2_inst_AXIL_M01_interconnect_AWVALID, axi1x2_inst_AXIL_M01_interconnect_BREADY, 
        axi1x2_inst_AXIL_M01_interconnect_BVALID, axi1x2_inst_AXIL_M01_interconnect_RREADY, 
        axi1x2_inst_AXIL_M01_interconnect_RVALID, axi1x2_inst_AXIL_M01_interconnect_WREADY, 
        axi1x2_inst_AXIL_M01_interconnect_WVALID, cpu0_inst_system_resetn_o_net, 
        cpu0_inst_AXI_M_DATA_interconnect_ARID, cpu0_inst_AXI_M_DATA_interconnect_ARLOCK, 
        cpu0_inst_AXI_M_DATA_interconnect_ARREADY, cpu0_inst_AXI_M_DATA_interconnect_ARVALID, 
        cpu0_inst_AXI_M_DATA_interconnect_AWID, cpu0_inst_AXI_M_DATA_interconnect_AWLOCK, 
        cpu0_inst_AXI_M_DATA_interconnect_AWREADY, cpu0_inst_AXI_M_DATA_interconnect_AWVALID, 
        cpu0_inst_AXI_M_DATA_interconnect_BID, cpu0_inst_AXI_M_DATA_interconnect_BREADY, 
        cpu0_inst_AXI_M_DATA_interconnect_BVALID, cpu0_inst_AXI_M_DATA_interconnect_RID, 
        cpu0_inst_AXI_M_DATA_interconnect_RLAST, cpu0_inst_AXI_M_DATA_interconnect_RREADY, 
        cpu0_inst_AXI_M_DATA_interconnect_RVALID, cpu0_inst_AXI_M_DATA_interconnect_WLAST, 
        cpu0_inst_AXI_M_DATA_interconnect_WREADY, cpu0_inst_AXI_M_DATA_interconnect_WVALID;
    wire [31:0]axil2apb0_inst_APB_M00_interconnect_PADDR;
    wire [31:0]axil2apb0_inst_APB_M00_interconnect_PRDATA;
    wire [31:0]axil2apb0_inst_APB_M00_interconnect_PWDATA;
    
    wire axil2apb0_inst_APB_M00_interconnect_PENABLE, axil2apb0_inst_APB_M00_interconnect_PREADY, 
        axil2apb0_inst_APB_M00_interconnect_PSELx, axil2apb0_inst_APB_M00_interconnect_PSLVERR, 
        axil2apb0_inst_APB_M00_interconnect_PWRITE;
    wire [31:0]axil2apb1_inst_APB_M00_interconnect_PADDR;
    wire [31:0]axil2apb1_inst_APB_M00_interconnect_PRDATA;
    wire [31:0]axil2apb1_inst_APB_M00_interconnect_PWDATA;
    
    wire axil2apb1_inst_APB_M00_interconnect_PENABLE, axil2apb1_inst_APB_M00_interconnect_PREADY, 
        axil2apb1_inst_APB_M00_interconnect_PSELx, axil2apb1_inst_APB_M00_interconnect_PSLVERR, 
        axil2apb1_inst_APB_M00_interconnect_PWRITE;
    wire [31:0]cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_address;
    wire [31:0]cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_data;
    wire [3:0]cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_mask;
    wire [2:0]cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_size;
    wire [31:0]cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_data;
    wire [31:0]cpu0_inst_AXI_M_INSTR_interconnect_ARADDR;
    wire [1:0]cpu0_inst_AXI_M_INSTR_interconnect_ARBURST;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_ARCACHE;
    wire [7:0]cpu0_inst_AXI_M_INSTR_interconnect_ARLEN;
    wire [2:0]cpu0_inst_AXI_M_INSTR_interconnect_ARPROT;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_ARQOS;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_ARREGION;
    wire [2:0]cpu0_inst_AXI_M_INSTR_interconnect_ARSIZE;
    wire [31:0]cpu0_inst_AXI_M_INSTR_interconnect_AWADDR;
    wire [1:0]cpu0_inst_AXI_M_INSTR_interconnect_AWBURST;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_AWCACHE;
    wire [7:0]cpu0_inst_AXI_M_INSTR_interconnect_AWLEN;
    wire [2:0]cpu0_inst_AXI_M_INSTR_interconnect_AWPROT;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_AWQOS;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_AWREGION;
    wire [2:0]cpu0_inst_AXI_M_INSTR_interconnect_AWSIZE;
    wire [1:0]cpu0_inst_AXI_M_INSTR_interconnect_BRESP;
    wire [31:0]cpu0_inst_AXI_M_INSTR_interconnect_RDATA;
    wire [1:0]cpu0_inst_AXI_M_INSTR_interconnect_RRESP;
    wire [31:0]cpu0_inst_AXI_M_INSTR_interconnect_WDATA;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_WSTRB;
    wire [31:0]cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_address;
    wire [31:0]cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_data;
    wire [3:0]cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_mask;
    wire [2:0]cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_size;
    wire [31:0]cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_data;
    
    wire osc0_inst_lf_clk_out_o_net, cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_last, 
        cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_uncached, cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_wr, 
        cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_ready, cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_valid, 
        cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_error, cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_last, 
        cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_valid, cpu0_inst_AXI_M_INSTR_interconnect_ARID, 
        cpu0_inst_AXI_M_INSTR_interconnect_ARLOCK, cpu0_inst_AXI_M_INSTR_interconnect_ARREADY, 
        cpu0_inst_AXI_M_INSTR_interconnect_ARVALID, cpu0_inst_AXI_M_INSTR_interconnect_AWID, 
        cpu0_inst_AXI_M_INSTR_interconnect_AWLOCK, cpu0_inst_AXI_M_INSTR_interconnect_AWREADY, 
        cpu0_inst_AXI_M_INSTR_interconnect_AWVALID, cpu0_inst_AXI_M_INSTR_interconnect_BID, 
        cpu0_inst_AXI_M_INSTR_interconnect_BREADY, cpu0_inst_AXI_M_INSTR_interconnect_BVALID, 
        cpu0_inst_AXI_M_INSTR_interconnect_RID, cpu0_inst_AXI_M_INSTR_interconnect_RLAST, 
        cpu0_inst_AXI_M_INSTR_interconnect_RREADY, cpu0_inst_AXI_M_INSTR_interconnect_RVALID, 
        cpu0_inst_AXI_M_INSTR_interconnect_WLAST, cpu0_inst_AXI_M_INSTR_interconnect_WREADY, 
        cpu0_inst_AXI_M_INSTR_interconnect_WVALID, cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_last, 
        cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_uncached, cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_wr, 
        cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_ready, cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_valid, 
        cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_error, cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_last, 
        cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_valid, s0_apb_gpio_inst_INTR_interconnect_IRQ, 
        s1_apb_uart_inst_INT_M0_interconnect_IRQ, equation_module_inst_O_net, 
        osc0_inst_hf_clk_out_o_net, pll0_inst_lock_o_net;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_ARID_2;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_AWID_2;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_BID_2;
    wire [3:0]cpu0_inst_AXI_M_INSTR_interconnect_RID_2;
    
    
    assign equation_module_inst_O_net = (pll0_inst_lock_o_net & rstn_i) ; 

    axi1x2 axi1x2_inst (.lite_m00_axil_araddr({axi1x2_inst_AXIL_M00_interconnect_ARADDR}), 
           .lite_m00_axil_arprot({axi1x2_inst_AXIL_M00_interconnect_ARPROT}), 
           .lite_m00_axil_awaddr({axi1x2_inst_AXIL_M00_interconnect_AWADDR}), 
           .lite_m00_axil_awprot({axi1x2_inst_AXIL_M00_interconnect_AWPROT}), 
           .lite_m00_axil_bresp({axi1x2_inst_AXIL_M00_interconnect_BRESP}), 
           .lite_m00_axil_rdata({axi1x2_inst_AXIL_M00_interconnect_RDATA}), 
           .lite_m00_axil_rresp({axi1x2_inst_AXIL_M00_interconnect_RRESP}), 
           .lite_m00_axil_wdata({axi1x2_inst_AXIL_M00_interconnect_WDATA}), 
           .lite_m00_axil_wstrb({axi1x2_inst_AXIL_M00_interconnect_WSTRB}), 
           .lite_m01_axil_araddr({axi1x2_inst_AXIL_M01_interconnect_ARADDR}), 
           .lite_m01_axil_arprot({axi1x2_inst_AXIL_M01_interconnect_ARPROT}), 
           .lite_m01_axil_awaddr({axi1x2_inst_AXIL_M01_interconnect_AWADDR}), 
           .lite_m01_axil_awprot({axi1x2_inst_AXIL_M01_interconnect_AWPROT}), 
           .lite_m01_axil_bresp({axi1x2_inst_AXIL_M01_interconnect_BRESP}), 
           .lite_m01_axil_rdata({axi1x2_inst_AXIL_M01_interconnect_RDATA}), 
           .lite_m01_axil_rresp({axi1x2_inst_AXIL_M01_interconnect_RRESP}), 
           .lite_m01_axil_wdata({axi1x2_inst_AXIL_M01_interconnect_WDATA}), 
           .lite_m01_axil_wstrb({axi1x2_inst_AXIL_M01_interconnect_WSTRB}), 
           .s00_axi_araddr({cpu0_inst_AXI_M_DATA_interconnect_ARADDR}), .s00_axi_arburst({cpu0_inst_AXI_M_DATA_interconnect_ARBURST}), 
           .s00_axi_arcache({cpu0_inst_AXI_M_DATA_interconnect_ARCACHE}), 
           .s00_axi_arlen({cpu0_inst_AXI_M_DATA_interconnect_ARLEN}), .s00_axi_arprot({cpu0_inst_AXI_M_DATA_interconnect_ARPROT}), 
           .s00_axi_arqos({cpu0_inst_AXI_M_DATA_interconnect_ARQOS}), .s00_axi_arregion({cpu0_inst_AXI_M_DATA_interconnect_ARREGION}), 
           .s00_axi_arsize({cpu0_inst_AXI_M_DATA_interconnect_ARSIZE}), .s00_axi_awaddr({cpu0_inst_AXI_M_DATA_interconnect_AWADDR}), 
           .s00_axi_awburst({cpu0_inst_AXI_M_DATA_interconnect_AWBURST}), 
           .s00_axi_awcache({cpu0_inst_AXI_M_DATA_interconnect_AWCACHE}), 
           .s00_axi_awlen({cpu0_inst_AXI_M_DATA_interconnect_AWLEN}), .s00_axi_awprot({cpu0_inst_AXI_M_DATA_interconnect_AWPROT}), 
           .s00_axi_awqos({cpu0_inst_AXI_M_DATA_interconnect_AWQOS}), .s00_axi_awregion({cpu0_inst_AXI_M_DATA_interconnect_AWREGION}), 
           .s00_axi_awsize({cpu0_inst_AXI_M_DATA_interconnect_AWSIZE}), .s00_axi_bresp({cpu0_inst_AXI_M_DATA_interconnect_BRESP}), 
           .s00_axi_rdata({cpu0_inst_AXI_M_DATA_interconnect_RDATA}), .s00_axi_rresp({cpu0_inst_AXI_M_DATA_interconnect_RRESP}), 
           .s00_axi_wdata({cpu0_inst_AXI_M_DATA_interconnect_WDATA}), .s00_axi_wstrb({cpu0_inst_AXI_M_DATA_interconnect_WSTRB}), 
           .clk_i(pll0_inst_clkop_o_net), .lite_m00_axil_arready(axi1x2_inst_AXIL_M00_interconnect_ARREADY), 
           .lite_m00_axil_arvalid(axi1x2_inst_AXIL_M00_interconnect_ARVALID), 
           .lite_m00_axil_awready(axi1x2_inst_AXIL_M00_interconnect_AWREADY), 
           .lite_m00_axil_awvalid(axi1x2_inst_AXIL_M00_interconnect_AWVALID), 
           .lite_m00_axil_bready(axi1x2_inst_AXIL_M00_interconnect_BREADY), 
           .lite_m00_axil_bvalid(axi1x2_inst_AXIL_M00_interconnect_BVALID), 
           .lite_m00_axil_rready(axi1x2_inst_AXIL_M00_interconnect_RREADY), 
           .lite_m00_axil_rvalid(axi1x2_inst_AXIL_M00_interconnect_RVALID), 
           .lite_m00_axil_wready(axi1x2_inst_AXIL_M00_interconnect_WREADY), 
           .lite_m00_axil_wvalid(axi1x2_inst_AXIL_M00_interconnect_WVALID), 
           .lite_m01_axil_arready(axi1x2_inst_AXIL_M01_interconnect_ARREADY), 
           .lite_m01_axil_arvalid(axi1x2_inst_AXIL_M01_interconnect_ARVALID), 
           .lite_m01_axil_awready(axi1x2_inst_AXIL_M01_interconnect_AWREADY), 
           .lite_m01_axil_awvalid(axi1x2_inst_AXIL_M01_interconnect_AWVALID), 
           .lite_m01_axil_bready(axi1x2_inst_AXIL_M01_interconnect_BREADY), 
           .lite_m01_axil_bvalid(axi1x2_inst_AXIL_M01_interconnect_BVALID), 
           .lite_m01_axil_rready(axi1x2_inst_AXIL_M01_interconnect_RREADY), 
           .lite_m01_axil_rvalid(axi1x2_inst_AXIL_M01_interconnect_RVALID), 
           .lite_m01_axil_wready(axi1x2_inst_AXIL_M01_interconnect_WREADY), 
           .lite_m01_axil_wvalid(axi1x2_inst_AXIL_M01_interconnect_WVALID), 
           .rstn_i(cpu0_inst_system_resetn_o_net), .s00_axi_arid(cpu0_inst_AXI_M_DATA_interconnect_ARID), 
           .s00_axi_arlock(cpu0_inst_AXI_M_DATA_interconnect_ARLOCK), .s00_axi_arready(cpu0_inst_AXI_M_DATA_interconnect_ARREADY), 
           .s00_axi_arvalid(cpu0_inst_AXI_M_DATA_interconnect_ARVALID), .s00_axi_awid(cpu0_inst_AXI_M_DATA_interconnect_AWID), 
           .s00_axi_awlock(cpu0_inst_AXI_M_DATA_interconnect_AWLOCK), .s00_axi_awready(cpu0_inst_AXI_M_DATA_interconnect_AWREADY), 
           .s00_axi_awvalid(cpu0_inst_AXI_M_DATA_interconnect_AWVALID), .s00_axi_bid(cpu0_inst_AXI_M_DATA_interconnect_BID), 
           .s00_axi_bready(cpu0_inst_AXI_M_DATA_interconnect_BREADY), .s00_axi_bvalid(cpu0_inst_AXI_M_DATA_interconnect_BVALID), 
           .s00_axi_rid(cpu0_inst_AXI_M_DATA_interconnect_RID), .s00_axi_rlast(cpu0_inst_AXI_M_DATA_interconnect_RLAST), 
           .s00_axi_rready(cpu0_inst_AXI_M_DATA_interconnect_RREADY), .s00_axi_rvalid(cpu0_inst_AXI_M_DATA_interconnect_RVALID), 
           .s00_axi_wlast(cpu0_inst_AXI_M_DATA_interconnect_WLAST), .s00_axi_wready(cpu0_inst_AXI_M_DATA_interconnect_WREADY), 
           .s00_axi_wvalid(cpu0_inst_AXI_M_DATA_interconnect_WVALID));
    defparam axi1x2_inst.ENABLE_M00_2_LITE = 1;
    defparam axi1x2_inst.ENABLE_M00_CDC = 0;
    defparam axi1x2_inst.ENABLE_M00_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M01_2_LITE = 1;
    defparam axi1x2_inst.ENABLE_M01_CDC = 0;
    defparam axi1x2_inst.ENABLE_M01_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M02_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M02_CDC = 0;
    defparam axi1x2_inst.ENABLE_M02_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M03_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M03_CDC = 0;
    defparam axi1x2_inst.ENABLE_M03_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M04_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M04_CDC = 0;
    defparam axi1x2_inst.ENABLE_M04_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M05_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M05_CDC = 0;
    defparam axi1x2_inst.ENABLE_M05_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M06_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M06_CDC = 0;
    defparam axi1x2_inst.ENABLE_M06_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M07_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M07_CDC = 0;
    defparam axi1x2_inst.ENABLE_M07_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M08_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M08_CDC = 0;
    defparam axi1x2_inst.ENABLE_M08_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_M09_2_LITE = 0;
    defparam axi1x2_inst.ENABLE_M09_CDC = 0;
    defparam axi1x2_inst.ENABLE_M09_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_S00_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_S01_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_S02_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_S03_REG_SLICE = 0;
    defparam axi1x2_inst.ENABLE_S04_REG_SLICE = 0;
    defparam axi1x2_inst.EN_LITE_M00 = 1;
    defparam axi1x2_inst.EN_LITE_M01 = 1;
    defparam axi1x2_inst.EN_LITE_M02 = 0;
    defparam axi1x2_inst.EN_LITE_M03 = 0;
    defparam axi1x2_inst.EN_LITE_M04 = 0;
    defparam axi1x2_inst.EN_LITE_M05 = 0;
    defparam axi1x2_inst.EN_LITE_M06 = 0;
    defparam axi1x2_inst.EN_LITE_M07 = 0;
    defparam axi1x2_inst.EN_LITE_M08 = 0;
    defparam axi1x2_inst.EN_LITE_M09 = 0;
    defparam axi1x2_inst.EN_M00 = 0;
    defparam axi1x2_inst.EN_M01 = 0;
    defparam axi1x2_inst.EN_M02 = 0;
    defparam axi1x2_inst.EN_S00 = 1;
    defparam axi1x2_inst.EN_S01 = 0;
    defparam axi1x2_inst.EN_S02 = 0;
    defparam axi1x2_inst.EN_S03 = 0;
    defparam axi1x2_inst.EN_S04 = 0;
    defparam axi1x2_inst.M_ADDR_WIDTH = {32'd12,32'd12};
    defparam axi1x2_inst.M_BASE_ADDR = {32'h10001000,32'h10000000};
    axil2apb0 axil2apb0_inst (.M_APB_PADDR({axil2apb0_inst_APB_M00_interconnect_PADDR}), 
            .M_APB_PRDATA({axil2apb0_inst_APB_M00_interconnect_PRDATA}), .M_APB_PWDATA({axil2apb0_inst_APB_M00_interconnect_PWDATA}), 
            .S_AXI_ARADDR({axi1x2_inst_AXIL_M01_interconnect_ARADDR}), .S_AXI_ARPROT({axi1x2_inst_AXIL_M01_interconnect_ARPROT}), 
            .S_AXI_AWADDR({axi1x2_inst_AXIL_M01_interconnect_AWADDR}), .S_AXI_AWPROT({axi1x2_inst_AXIL_M01_interconnect_AWPROT}), 
            .S_AXI_BRESP({axi1x2_inst_AXIL_M01_interconnect_BRESP}), .S_AXI_RDATA({axi1x2_inst_AXIL_M01_interconnect_RDATA}), 
            .S_AXI_RRESP({axi1x2_inst_AXIL_M01_interconnect_RRESP}), .S_AXI_WDATA({axi1x2_inst_AXIL_M01_interconnect_WDATA}), 
            .S_AXI_WSTRB({axi1x2_inst_AXIL_M01_interconnect_WSTRB}), .M_APB_PENABLE(axil2apb0_inst_APB_M00_interconnect_PENABLE), 
            .M_APB_PREADY(axil2apb0_inst_APB_M00_interconnect_PREADY), .M_APB_PSEL(axil2apb0_inst_APB_M00_interconnect_PSELx), 
            .M_APB_PSLVERR(axil2apb0_inst_APB_M00_interconnect_PSLVERR), .M_APB_PWRITE(axil2apb0_inst_APB_M00_interconnect_PWRITE), 
            .S_AXI_ACLK(pll0_inst_clkop_o_net), .S_AXI_ARESETN(cpu0_inst_system_resetn_o_net), 
            .S_AXI_ARREADY(axi1x2_inst_AXIL_M01_interconnect_ARREADY), .S_AXI_ARVALID(axi1x2_inst_AXIL_M01_interconnect_ARVALID), 
            .S_AXI_AWREADY(axi1x2_inst_AXIL_M01_interconnect_AWREADY), .S_AXI_AWVALID(axi1x2_inst_AXIL_M01_interconnect_AWVALID), 
            .S_AXI_BREADY(axi1x2_inst_AXIL_M01_interconnect_BREADY), .S_AXI_BVALID(axi1x2_inst_AXIL_M01_interconnect_BVALID), 
            .S_AXI_RREADY(axi1x2_inst_AXIL_M01_interconnect_RREADY), .S_AXI_RVALID(axi1x2_inst_AXIL_M01_interconnect_RVALID), 
            .S_AXI_WREADY(axi1x2_inst_AXIL_M01_interconnect_WREADY), .S_AXI_WVALID(axi1x2_inst_AXIL_M01_interconnect_WVALID));
    axil2apb1 axil2apb1_inst (.M_APB_PADDR({axil2apb1_inst_APB_M00_interconnect_PADDR}), 
            .M_APB_PRDATA({axil2apb1_inst_APB_M00_interconnect_PRDATA}), .M_APB_PWDATA({axil2apb1_inst_APB_M00_interconnect_PWDATA}), 
            .S_AXI_ARADDR({axi1x2_inst_AXIL_M00_interconnect_ARADDR}), .S_AXI_ARPROT({axi1x2_inst_AXIL_M00_interconnect_ARPROT}), 
            .S_AXI_AWADDR({axi1x2_inst_AXIL_M00_interconnect_AWADDR}), .S_AXI_AWPROT({axi1x2_inst_AXIL_M00_interconnect_AWPROT}), 
            .S_AXI_BRESP({axi1x2_inst_AXIL_M00_interconnect_BRESP}), .S_AXI_RDATA({axi1x2_inst_AXIL_M00_interconnect_RDATA}), 
            .S_AXI_RRESP({axi1x2_inst_AXIL_M00_interconnect_RRESP}), .S_AXI_WDATA({axi1x2_inst_AXIL_M00_interconnect_WDATA}), 
            .S_AXI_WSTRB({axi1x2_inst_AXIL_M00_interconnect_WSTRB}), .M_APB_PENABLE(axil2apb1_inst_APB_M00_interconnect_PENABLE), 
            .M_APB_PREADY(axil2apb1_inst_APB_M00_interconnect_PREADY), .M_APB_PSEL(axil2apb1_inst_APB_M00_interconnect_PSELx), 
            .M_APB_PSLVERR(axil2apb1_inst_APB_M00_interconnect_PSLVERR), .M_APB_PWRITE(axil2apb1_inst_APB_M00_interconnect_PWRITE), 
            .S_AXI_ACLK(pll0_inst_clkop_o_net), .S_AXI_ARESETN(cpu0_inst_system_resetn_o_net), 
            .S_AXI_ARREADY(axi1x2_inst_AXIL_M00_interconnect_ARREADY), .S_AXI_ARVALID(axi1x2_inst_AXIL_M00_interconnect_ARVALID), 
            .S_AXI_AWREADY(axi1x2_inst_AXIL_M00_interconnect_AWREADY), .S_AXI_AWVALID(axi1x2_inst_AXIL_M00_interconnect_AWVALID), 
            .S_AXI_BREADY(axi1x2_inst_AXIL_M00_interconnect_BREADY), .S_AXI_BVALID(axi1x2_inst_AXIL_M00_interconnect_BVALID), 
            .S_AXI_RREADY(axi1x2_inst_AXIL_M00_interconnect_RREADY), .S_AXI_RVALID(axi1x2_inst_AXIL_M00_interconnect_RVALID), 
            .S_AXI_WREADY(axi1x2_inst_AXIL_M00_interconnect_WREADY), .S_AXI_WVALID(axi1x2_inst_AXIL_M00_interconnect_WVALID));
    cpu0 cpu0_inst (.dBusAxi_ar_payload_addr({cpu0_inst_AXI_M_DATA_interconnect_ARADDR}), 
         .dBusAxi_ar_payload_burst({cpu0_inst_AXI_M_DATA_interconnect_ARBURST}), 
         .dBusAxi_ar_payload_cache({cpu0_inst_AXI_M_DATA_interconnect_ARCACHE}), 
         .dBusAxi_ar_payload_len({cpu0_inst_AXI_M_DATA_interconnect_ARLEN}), 
         .dBusAxi_ar_payload_prot({cpu0_inst_AXI_M_DATA_interconnect_ARPROT}), 
         .dBusAxi_ar_payload_qos({cpu0_inst_AXI_M_DATA_interconnect_ARQOS}), 
         .dBusAxi_ar_payload_region({cpu0_inst_AXI_M_DATA_interconnect_ARREGION}), 
         .dBusAxi_ar_payload_size({cpu0_inst_AXI_M_DATA_interconnect_ARSIZE}), 
         .dBusAxi_aw_payload_addr({cpu0_inst_AXI_M_DATA_interconnect_AWADDR}), 
         .dBusAxi_aw_payload_burst({cpu0_inst_AXI_M_DATA_interconnect_AWBURST}), 
         .dBusAxi_aw_payload_cache({cpu0_inst_AXI_M_DATA_interconnect_AWCACHE}), 
         .dBusAxi_aw_payload_len({cpu0_inst_AXI_M_DATA_interconnect_AWLEN}), 
         .dBusAxi_aw_payload_prot({cpu0_inst_AXI_M_DATA_interconnect_AWPROT}), 
         .dBusAxi_aw_payload_qos({cpu0_inst_AXI_M_DATA_interconnect_AWQOS}), 
         .dBusAxi_aw_payload_region({cpu0_inst_AXI_M_DATA_interconnect_AWREGION}), 
         .dBusAxi_aw_payload_size({cpu0_inst_AXI_M_DATA_interconnect_AWSIZE}), 
         .dBusAxi_b_payload_resp({cpu0_inst_AXI_M_DATA_interconnect_BRESP}), 
         .dBusAxi_r_payload_data({cpu0_inst_AXI_M_DATA_interconnect_RDATA}), 
         .dBusAxi_r_payload_resp({cpu0_inst_AXI_M_DATA_interconnect_RRESP}), 
         .dBusAxi_w_payload_data({cpu0_inst_AXI_M_DATA_interconnect_WDATA}), 
         .dBusAxi_w_payload_strb({cpu0_inst_AXI_M_DATA_interconnect_WSTRB}), 
         .dbus_cmd_payload_address({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_address}), 
         .dbus_cmd_payload_data({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_data}), 
         .dbus_cmd_payload_mask({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_mask}), 
         .dbus_cmd_payload_size({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_size}), 
         .dbus_rsp_payload_data({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_data}), 
         .iBusAxi_ar_payload_addr({cpu0_inst_AXI_M_INSTR_interconnect_ARADDR}), 
         .iBusAxi_ar_payload_burst({cpu0_inst_AXI_M_INSTR_interconnect_ARBURST}), 
         .iBusAxi_ar_payload_cache({cpu0_inst_AXI_M_INSTR_interconnect_ARCACHE}), 
         .iBusAxi_ar_payload_len({cpu0_inst_AXI_M_INSTR_interconnect_ARLEN}), 
         .iBusAxi_ar_payload_prot({cpu0_inst_AXI_M_INSTR_interconnect_ARPROT}), 
         .iBusAxi_ar_payload_qos({cpu0_inst_AXI_M_INSTR_interconnect_ARQOS}), 
         .iBusAxi_ar_payload_region({cpu0_inst_AXI_M_INSTR_interconnect_ARREGION}), 
         .iBusAxi_ar_payload_size({cpu0_inst_AXI_M_INSTR_interconnect_ARSIZE}), 
         .iBusAxi_aw_payload_addr({cpu0_inst_AXI_M_INSTR_interconnect_AWADDR}), 
         .iBusAxi_aw_payload_burst({cpu0_inst_AXI_M_INSTR_interconnect_AWBURST}), 
         .iBusAxi_aw_payload_cache({cpu0_inst_AXI_M_INSTR_interconnect_AWCACHE}), 
         .iBusAxi_aw_payload_len({cpu0_inst_AXI_M_INSTR_interconnect_AWLEN}), 
         .iBusAxi_aw_payload_prot({cpu0_inst_AXI_M_INSTR_interconnect_AWPROT}), 
         .iBusAxi_aw_payload_qos({cpu0_inst_AXI_M_INSTR_interconnect_AWQOS}), 
         .iBusAxi_aw_payload_region({cpu0_inst_AXI_M_INSTR_interconnect_AWREGION}), 
         .iBusAxi_aw_payload_size({cpu0_inst_AXI_M_INSTR_interconnect_AWSIZE}), 
         .iBusAxi_b_payload_resp({cpu0_inst_AXI_M_INSTR_interconnect_BRESP}), 
         .iBusAxi_r_payload_data({cpu0_inst_AXI_M_INSTR_interconnect_RDATA}), 
         .iBusAxi_r_payload_resp({cpu0_inst_AXI_M_INSTR_interconnect_RRESP}), 
         .iBusAxi_w_payload_data({cpu0_inst_AXI_M_INSTR_interconnect_WDATA}), 
         .iBusAxi_w_payload_strb({cpu0_inst_AXI_M_INSTR_interconnect_WSTRB}), 
         .ibus_cmd_payload_address({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_address}), 
         .ibus_cmd_payload_data({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_data}), 
         .ibus_cmd_payload_mask({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_mask}), 
         .ibus_cmd_payload_size({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_size}), 
         .ibus_rsp_payload_data({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_data}), 
         .clk_realtime_i(osc0_inst_lf_clk_out_o_net), .clk_system_i(pll0_inst_clkop_o_net), 
         .dBusAxi_ar_payload_id(cpu0_inst_AXI_M_DATA_interconnect_ARID), .dBusAxi_ar_payload_lock(cpu0_inst_AXI_M_DATA_interconnect_ARLOCK), 
         .dBusAxi_ar_ready(cpu0_inst_AXI_M_DATA_interconnect_ARREADY), .dBusAxi_ar_valid(cpu0_inst_AXI_M_DATA_interconnect_ARVALID), 
         .dBusAxi_aw_payload_id(cpu0_inst_AXI_M_DATA_interconnect_AWID), .dBusAxi_aw_payload_lock(cpu0_inst_AXI_M_DATA_interconnect_AWLOCK), 
         .dBusAxi_aw_ready(cpu0_inst_AXI_M_DATA_interconnect_AWREADY), .dBusAxi_aw_valid(cpu0_inst_AXI_M_DATA_interconnect_AWVALID), 
         .dBusAxi_b_payload_id(cpu0_inst_AXI_M_DATA_interconnect_BID), .dBusAxi_b_ready(cpu0_inst_AXI_M_DATA_interconnect_BREADY), 
         .dBusAxi_b_valid(cpu0_inst_AXI_M_DATA_interconnect_BVALID), .dBusAxi_r_payload_id(cpu0_inst_AXI_M_DATA_interconnect_RID), 
         .dBusAxi_r_payload_last(cpu0_inst_AXI_M_DATA_interconnect_RLAST), 
         .dBusAxi_r_ready(cpu0_inst_AXI_M_DATA_interconnect_RREADY), .dBusAxi_r_valid(cpu0_inst_AXI_M_DATA_interconnect_RVALID), 
         .dBusAxi_w_payload_last(cpu0_inst_AXI_M_DATA_interconnect_WLAST), 
         .dBusAxi_w_ready(cpu0_inst_AXI_M_DATA_interconnect_WREADY), .dBusAxi_w_valid(cpu0_inst_AXI_M_DATA_interconnect_WVALID), 
         .dbus_cmd_payload_last(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_last), 
         .dbus_cmd_payload_uncached(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_uncached), 
         .dbus_cmd_payload_wr(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_wr), 
         .dbus_cmd_ready(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_ready), 
         .dbus_cmd_valid(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_valid), 
         .dbus_rsp_payload_error(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_error), 
         .dbus_rsp_payload_last(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_last), 
         .dbus_rsp_valid(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_valid), 
         .iBusAxi_ar_payload_id(cpu0_inst_AXI_M_INSTR_interconnect_ARID), 
         .iBusAxi_ar_payload_lock(cpu0_inst_AXI_M_INSTR_interconnect_ARLOCK), 
         .iBusAxi_ar_ready(cpu0_inst_AXI_M_INSTR_interconnect_ARREADY), .iBusAxi_ar_valid(cpu0_inst_AXI_M_INSTR_interconnect_ARVALID), 
         .iBusAxi_aw_payload_id(cpu0_inst_AXI_M_INSTR_interconnect_AWID), 
         .iBusAxi_aw_payload_lock(cpu0_inst_AXI_M_INSTR_interconnect_AWLOCK), 
         .iBusAxi_aw_ready(cpu0_inst_AXI_M_INSTR_interconnect_AWREADY), .iBusAxi_aw_valid(cpu0_inst_AXI_M_INSTR_interconnect_AWVALID), 
         .iBusAxi_b_payload_id(cpu0_inst_AXI_M_INSTR_interconnect_BID), .iBusAxi_b_ready(cpu0_inst_AXI_M_INSTR_interconnect_BREADY), 
         .iBusAxi_b_valid(cpu0_inst_AXI_M_INSTR_interconnect_BVALID), .iBusAxi_r_payload_id(cpu0_inst_AXI_M_INSTR_interconnect_RID), 
         .iBusAxi_r_payload_last(cpu0_inst_AXI_M_INSTR_interconnect_RLAST), 
         .iBusAxi_r_ready(cpu0_inst_AXI_M_INSTR_interconnect_RREADY), .iBusAxi_r_valid(cpu0_inst_AXI_M_INSTR_interconnect_RVALID), 
         .iBusAxi_w_payload_last(cpu0_inst_AXI_M_INSTR_interconnect_WLAST), 
         .iBusAxi_w_ready(cpu0_inst_AXI_M_INSTR_interconnect_WREADY), .iBusAxi_w_valid(cpu0_inst_AXI_M_INSTR_interconnect_WVALID), 
         .ibus_cmd_payload_last(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_last), 
         .ibus_cmd_payload_uncached(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_uncached), 
         .ibus_cmd_payload_wr(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_wr), 
         .ibus_cmd_ready(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_ready), 
         .ibus_cmd_valid(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_valid), 
         .ibus_rsp_payload_error(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_error), 
         .ibus_rsp_payload_last(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_last), 
         .ibus_rsp_valid(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_valid), 
         .irq2_i(s0_apb_gpio_inst_INTR_interconnect_IRQ), .irq3_i(s1_apb_uart_inst_INT_M0_interconnect_IRQ), 
         .rstn_i(equation_module_inst_O_net), .system_resetn_o(cpu0_inst_system_resetn_o_net));
    defparam cpu0_inst.AXI_INSTR_BASE_ADDR = 32'h200000;
    defparam cpu0_inst.INSTR_PORT_ENABLE = 1;
    defparam cpu0_inst.TCM_BASE_ADDR = 32'h0;
    defparam cpu0_inst.TCM_ENABLE = 1;
    osc0 osc0_inst (.hf_clk_out_o(osc0_inst_hf_clk_out_o_net), .hf_out_en_i(1'b1), 
         .lf_clk_out_o(osc0_inst_lf_clk_out_o_net));
    pll0 pll0_inst (.clki_i(osc0_inst_hf_clk_out_o_net), .clkop_o(pll0_inst_clkop_o_net), 
         .lock_o(pll0_inst_lock_o_net), .rstn_i(rstn_i));
    s0_apb_gpio s0_apb_gpio_inst (.gpio_io({s0_gpio}), .apb_paddr_i({axil2apb1_inst_APB_M00_interconnect_PADDR[5:0]}), 
            .apb_pwdata_i({axil2apb1_inst_APB_M00_interconnect_PWDATA}), .apb_prdata_o({axil2apb1_inst_APB_M00_interconnect_PRDATA}), 
            .clk_i(pll0_inst_clkop_o_net), .resetn_i(cpu0_inst_system_resetn_o_net), 
            .apb_penable_i(axil2apb1_inst_APB_M00_interconnect_PENABLE), .apb_psel_i(axil2apb1_inst_APB_M00_interconnect_PSELx), 
            .apb_pwrite_i(axil2apb1_inst_APB_M00_interconnect_PWRITE), .apb_pslverr_o(axil2apb1_inst_APB_M00_interconnect_PSLVERR), 
            .apb_pready_o(axil2apb1_inst_APB_M00_interconnect_PREADY), .int_o(s0_apb_gpio_inst_INTR_interconnect_IRQ));
    s1_apb_uart s1_apb_uart_inst (.apb_paddr_i({axil2apb0_inst_APB_M00_interconnect_PADDR[5:0]}), 
            .apb_prdata_o({axil2apb0_inst_APB_M00_interconnect_PRDATA}), .apb_pwdata_i({axil2apb0_inst_APB_M00_interconnect_PWDATA}), 
            .apb_penable_i(axil2apb0_inst_APB_M00_interconnect_PENABLE), .apb_pready_o(axil2apb0_inst_APB_M00_interconnect_PREADY), 
            .apb_psel_i(axil2apb0_inst_APB_M00_interconnect_PSELx), .apb_pslverr_o(axil2apb0_inst_APB_M00_interconnect_PSLVERR), 
            .apb_pwrite_i(axil2apb0_inst_APB_M00_interconnect_PWRITE), .clk_i(pll0_inst_clkop_o_net), 
            .int_o(s1_apb_uart_inst_INT_M0_interconnect_IRQ), .rst_n_i(cpu0_inst_system_resetn_o_net), 
            .rxd_i(s1_uart_rxd_i), .txd_o(s1_uart_txd_o));
    system0 system0_inst (.axi_s0_araddr_i({cpu0_inst_AXI_M_INSTR_interconnect_ARADDR}), 
            .axi_s0_arburst_i({cpu0_inst_AXI_M_INSTR_interconnect_ARBURST}), 
            .axi_s0_arcache_i({cpu0_inst_AXI_M_INSTR_interconnect_ARCACHE}), 
            .axi_s0_arid_i({cpu0_inst_AXI_M_INSTR_interconnect_ARID_2}), .axi_s0_arlen_i({cpu0_inst_AXI_M_INSTR_interconnect_ARLEN}), 
            .axi_s0_arprot_i({cpu0_inst_AXI_M_INSTR_interconnect_ARPROT}), 
            .axi_s0_arqos_i({cpu0_inst_AXI_M_INSTR_interconnect_ARQOS}), .axi_s0_arregion_i({cpu0_inst_AXI_M_INSTR_interconnect_ARREGION}), 
            .axi_s0_arsize_i({cpu0_inst_AXI_M_INSTR_interconnect_ARSIZE}), 
            .axi_s0_awaddr_i({cpu0_inst_AXI_M_INSTR_interconnect_AWADDR}), 
            .axi_s0_awburst_i({cpu0_inst_AXI_M_INSTR_interconnect_AWBURST}), 
            .axi_s0_awcache_i({cpu0_inst_AXI_M_INSTR_interconnect_AWCACHE}), 
            .axi_s0_awid_i({cpu0_inst_AXI_M_INSTR_interconnect_AWID_2}), .axi_s0_awlen_i({cpu0_inst_AXI_M_INSTR_interconnect_AWLEN}), 
            .axi_s0_awprot_i({cpu0_inst_AXI_M_INSTR_interconnect_AWPROT}), 
            .axi_s0_awqos_i({cpu0_inst_AXI_M_INSTR_interconnect_AWQOS}), .axi_s0_awregion_i({cpu0_inst_AXI_M_INSTR_interconnect_AWREGION}), 
            .axi_s0_awsize_i({cpu0_inst_AXI_M_INSTR_interconnect_AWSIZE}), 
            .axi_s0_bid_o({cpu0_inst_AXI_M_INSTR_interconnect_BID_2}), .axi_s0_bresp_o({cpu0_inst_AXI_M_INSTR_interconnect_BRESP}), 
            .axi_s0_rdata_o({cpu0_inst_AXI_M_INSTR_interconnect_RDATA}), .axi_s0_rid_o({cpu0_inst_AXI_M_INSTR_interconnect_RID_2}), 
            .axi_s0_rresp_o({cpu0_inst_AXI_M_INSTR_interconnect_RRESP}), .axi_s0_wdata_i({cpu0_inst_AXI_M_INSTR_interconnect_WDATA}), 
            .axi_s0_wstrb_i({cpu0_inst_AXI_M_INSTR_interconnect_WSTRB}), .axi_aclk_i(pll0_inst_clkop_o_net), 
            .axi_resetn_i(cpu0_inst_system_resetn_o_net), .axi_s0_arlock_i(cpu0_inst_AXI_M_INSTR_interconnect_ARLOCK), 
            .axi_s0_arready_o(cpu0_inst_AXI_M_INSTR_interconnect_ARREADY), 
            .axi_s0_arvalid_i(cpu0_inst_AXI_M_INSTR_interconnect_ARVALID), 
            .axi_s0_awlock_i(cpu0_inst_AXI_M_INSTR_interconnect_AWLOCK), .axi_s0_awready_o(cpu0_inst_AXI_M_INSTR_interconnect_AWREADY), 
            .axi_s0_awvalid_i(cpu0_inst_AXI_M_INSTR_interconnect_AWVALID), 
            .axi_s0_bready_i(cpu0_inst_AXI_M_INSTR_interconnect_BREADY), .axi_s0_bvalid_o(cpu0_inst_AXI_M_INSTR_interconnect_BVALID), 
            .axi_s0_rlast_o(cpu0_inst_AXI_M_INSTR_interconnect_RLAST), .axi_s0_rready_i(cpu0_inst_AXI_M_INSTR_interconnect_RREADY), 
            .axi_s0_rvalid_o(cpu0_inst_AXI_M_INSTR_interconnect_RVALID), .axi_s0_wlast_i(cpu0_inst_AXI_M_INSTR_interconnect_WLAST), 
            .axi_s0_wready_o(cpu0_inst_AXI_M_INSTR_interconnect_WREADY), .axi_s0_wvalid_i(cpu0_inst_AXI_M_INSTR_interconnect_WVALID));
    defparam system0_inst.MEM_ID = "system0";
    tcm0 tcm0_inst (.dbus_cmd_payload_address({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_address}), 
         .dbus_cmd_payload_data({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_data}), 
         .dbus_cmd_payload_mask({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_mask}), 
         .dbus_cmd_payload_size({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_size}), 
         .dbus_rsp_payload_data({cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_data}), 
         .ibus_cmd_payload_address({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_address}), 
         .ibus_cmd_payload_data({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_data}), 
         .ibus_cmd_payload_mask({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_mask}), 
         .ibus_cmd_payload_size({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_size}), 
         .ibus_rsp_payload_data({cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_data}), 
         .dbus_cmd_payload_last(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_last), 
         .dbus_cmd_payload_uncached(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_uncached), 
         .dbus_cmd_payload_wr(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_payload_wr), 
         .dbus_cmd_ready(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_ready), 
         .dbus_cmd_valid(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_cmd_valid), 
         .dbus_rsp_payload_error(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_error), 
         .dbus_rsp_payload_last(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_payload_last), 
         .dbus_rsp_valid(cpu0_inst_LOCAL_BUS_M_INSTR_interconnect_rsp_valid), 
         .ibus_cmd_payload_last(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_last), 
         .ibus_cmd_payload_uncached(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_uncached), 
         .ibus_cmd_payload_wr(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_payload_wr), 
         .ibus_cmd_ready(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_ready), 
         .ibus_cmd_valid(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_cmd_valid), 
         .ibus_rsp_payload_error(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_error), 
         .ibus_rsp_payload_last(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_payload_last), 
         .ibus_rsp_valid(cpu0_inst_LOCAL_BUS_M_DATA_interconnect_rsp_valid), 
         .sys_clk(pll0_inst_clkop_o_net), .sys_rst_n(cpu0_inst_system_resetn_o_net));
    defparam tcm0_inst.MEM_ID = "1.3.9";
    
endmodule

