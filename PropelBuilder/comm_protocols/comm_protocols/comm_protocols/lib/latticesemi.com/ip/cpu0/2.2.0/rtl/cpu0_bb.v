/*******************************************************************************
    Verilog netlist generated by IPGEN Lattice Propel (64-bit)
    2023.1.2304252251
    Soft IP Version: 2.2.0
    2023 04 28 13:33:16
*******************************************************************************/
/*******************************************************************************
    Wrapper Module generated per user settings.
*******************************************************************************/
module cpu0 (clk_system_i, clk_realtime_i, rstn_i, system_resetn_o, irq3_i,
    irq2_i, dBusAxi_aw_payload_id, dBusAxi_aw_payload_addr,
    dBusAxi_aw_payload_len, dBusAxi_aw_payload_size, dBusAxi_aw_payload_burst,
    dBusAxi_aw_payload_lock, dBusAxi_aw_payload_cache, dBusAxi_aw_payload_prot,
    dBusAxi_aw_payload_qos, dBusAxi_aw_payload_region, dBusAxi_aw_valid,
    dBusAxi_aw_ready, dBusAxi_w_payload_data, dBusAxi_w_payload_strb,
    dBusAxi_w_payload_last, dBusAxi_w_valid, dBusAxi_w_ready,
    dBusAxi_b_payload_id, dBusAxi_b_payload_resp, dBusAxi_b_valid,
    dBusAxi_b_ready, dBusAxi_ar_payload_id, dBusAxi_ar_payload_addr,
    dBusAxi_ar_payload_len, dBusAxi_ar_payload_size, dBusAxi_ar_payload_burst,
    dBusAxi_ar_payload_lock, dBusAxi_ar_payload_cache, dBusAxi_ar_payload_prot,
    dBusAxi_ar_payload_qos, dBusAxi_ar_payload_region, dBusAxi_ar_valid,
    dBusAxi_ar_ready, dBusAxi_r_payload_id, dBusAxi_r_payload_data,
    dBusAxi_r_payload_resp, dBusAxi_r_payload_last, dBusAxi_r_valid,
    dBusAxi_r_ready, iBusAxi_aw_payload_id, iBusAxi_aw_payload_addr,
    iBusAxi_aw_payload_len, iBusAxi_aw_payload_size, iBusAxi_aw_payload_burst,
    iBusAxi_aw_payload_lock, iBusAxi_aw_payload_cache, iBusAxi_aw_payload_prot,
    iBusAxi_aw_payload_qos, iBusAxi_aw_payload_region, iBusAxi_aw_valid,
    iBusAxi_aw_ready, iBusAxi_w_payload_data, iBusAxi_w_payload_strb,
    iBusAxi_w_payload_last, iBusAxi_w_valid, iBusAxi_w_ready,
    iBusAxi_b_payload_id, iBusAxi_b_payload_resp, iBusAxi_b_valid,
    iBusAxi_b_ready, iBusAxi_ar_payload_id, iBusAxi_ar_payload_addr,
    iBusAxi_ar_payload_len, iBusAxi_ar_payload_size, iBusAxi_ar_payload_burst,
    iBusAxi_ar_payload_lock, iBusAxi_ar_payload_cache, iBusAxi_ar_payload_prot,
    iBusAxi_ar_payload_qos, iBusAxi_ar_payload_region, iBusAxi_ar_valid,
    iBusAxi_ar_ready, iBusAxi_r_payload_id, iBusAxi_r_payload_data,
    iBusAxi_r_payload_resp, iBusAxi_r_payload_last, iBusAxi_r_valid,
    iBusAxi_r_ready, ibus_cmd_valid, ibus_cmd_ready, ibus_cmd_payload_wr,
    ibus_cmd_payload_uncached, ibus_cmd_payload_address, ibus_cmd_payload_data,
    ibus_cmd_payload_mask, ibus_cmd_payload_size, ibus_cmd_payload_last,
    ibus_rsp_valid, ibus_rsp_payload_last, ibus_rsp_payload_data,
    ibus_rsp_payload_error, dbus_cmd_valid, dbus_cmd_ready,
    dbus_cmd_payload_wr, dbus_cmd_payload_uncached, dbus_cmd_payload_address,
    dbus_cmd_payload_data, dbus_cmd_payload_mask, dbus_cmd_payload_size,
    dbus_cmd_payload_last, dbus_rsp_valid, dbus_rsp_payload_last,
    dbus_rsp_payload_data, dbus_rsp_payload_error)/* synthesis syn_black_box syn_declare_black_box=1 */;
    input  clk_system_i;
    input  clk_realtime_i;
    input  rstn_i;
    output  system_resetn_o;
    input  [0:0]  irq3_i;
    input  [0:0]  irq2_i;
    output  dBusAxi_aw_payload_id;
    output  [31:0]  dBusAxi_aw_payload_addr;
    output  [7:0]  dBusAxi_aw_payload_len;
    output  [2:0]  dBusAxi_aw_payload_size;
    output  [1:0]  dBusAxi_aw_payload_burst;
    output  dBusAxi_aw_payload_lock;
    output  [3:0]  dBusAxi_aw_payload_cache;
    output  [2:0]  dBusAxi_aw_payload_prot;
    output  [3:0]  dBusAxi_aw_payload_qos;
    output  [3:0]  dBusAxi_aw_payload_region;
    output  dBusAxi_aw_valid;
    input  dBusAxi_aw_ready;
    output  [31:0]  dBusAxi_w_payload_data;
    output  [3:0]  dBusAxi_w_payload_strb;
    output  dBusAxi_w_payload_last;
    output  dBusAxi_w_valid;
    input  dBusAxi_w_ready;
    input  dBusAxi_b_payload_id;
    input  [1:0]  dBusAxi_b_payload_resp;
    input  dBusAxi_b_valid;
    output  dBusAxi_b_ready;
    output  dBusAxi_ar_payload_id;
    output  [31:0]  dBusAxi_ar_payload_addr;
    output  [7:0]  dBusAxi_ar_payload_len;
    output  [2:0]  dBusAxi_ar_payload_size;
    output  [1:0]  dBusAxi_ar_payload_burst;
    output  dBusAxi_ar_payload_lock;
    output  [3:0]  dBusAxi_ar_payload_cache;
    output  [2:0]  dBusAxi_ar_payload_prot;
    output  [3:0]  dBusAxi_ar_payload_qos;
    output  [3:0]  dBusAxi_ar_payload_region;
    output  dBusAxi_ar_valid;
    input  dBusAxi_ar_ready;
    input  dBusAxi_r_payload_id;
    input  [31:0]  dBusAxi_r_payload_data;
    input  [1:0]  dBusAxi_r_payload_resp;
    input  dBusAxi_r_payload_last;
    input  dBusAxi_r_valid;
    output  dBusAxi_r_ready;
    output  iBusAxi_aw_payload_id;
    output  [31:0]  iBusAxi_aw_payload_addr;
    output  [7:0]  iBusAxi_aw_payload_len;
    output  [2:0]  iBusAxi_aw_payload_size;
    output  [1:0]  iBusAxi_aw_payload_burst;
    output  iBusAxi_aw_payload_lock;
    output  [3:0]  iBusAxi_aw_payload_cache;
    output  [2:0]  iBusAxi_aw_payload_prot;
    output  [3:0]  iBusAxi_aw_payload_qos;
    output  [3:0]  iBusAxi_aw_payload_region;
    output  iBusAxi_aw_valid;
    input  iBusAxi_aw_ready;
    output  [31:0]  iBusAxi_w_payload_data;
    output  [3:0]  iBusAxi_w_payload_strb;
    output  iBusAxi_w_payload_last;
    output  iBusAxi_w_valid;
    input  iBusAxi_w_ready;
    input  iBusAxi_b_payload_id;
    input  [1:0]  iBusAxi_b_payload_resp;
    input  iBusAxi_b_valid;
    output  iBusAxi_b_ready;
    output  iBusAxi_ar_payload_id;
    output  [31:0]  iBusAxi_ar_payload_addr;
    output  [7:0]  iBusAxi_ar_payload_len;
    output  [2:0]  iBusAxi_ar_payload_size;
    output  [1:0]  iBusAxi_ar_payload_burst;
    output  iBusAxi_ar_payload_lock;
    output  [3:0]  iBusAxi_ar_payload_cache;
    output  [2:0]  iBusAxi_ar_payload_prot;
    output  [3:0]  iBusAxi_ar_payload_qos;
    output  [3:0]  iBusAxi_ar_payload_region;
    output  iBusAxi_ar_valid;
    input  iBusAxi_ar_ready;
    input  iBusAxi_r_payload_id;
    input  [31:0]  iBusAxi_r_payload_data;
    input  [1:0]  iBusAxi_r_payload_resp;
    input  iBusAxi_r_payload_last;
    input  iBusAxi_r_valid;
    output  iBusAxi_r_ready;
    output  ibus_cmd_valid;
    input  ibus_cmd_ready;
    output  ibus_cmd_payload_wr;
    output  ibus_cmd_payload_uncached;
    output  [31:0]  ibus_cmd_payload_address;
    output  [31:0]  ibus_cmd_payload_data;
    output  [3:0]  ibus_cmd_payload_mask;
    output  [2:0]  ibus_cmd_payload_size;
    output  ibus_cmd_payload_last;
    input  ibus_rsp_valid;
    input  ibus_rsp_payload_last;
    input  [31:0]  ibus_rsp_payload_data;
    input  ibus_rsp_payload_error;
    output  dbus_cmd_valid;
    input  dbus_cmd_ready;
    output  dbus_cmd_payload_wr;
    output  dbus_cmd_payload_uncached;
    output  [31:0]  dbus_cmd_payload_address;
    output  [31:0]  dbus_cmd_payload_data;
    output  [3:0]  dbus_cmd_payload_mask;
    output  [2:0]  dbus_cmd_payload_size;
    output  dbus_cmd_payload_last;
    input  dbus_rsp_valid;
    input  dbus_rsp_payload_last;
    input  [31:0]  dbus_rsp_payload_data;
    input  dbus_rsp_payload_error;
endmodule