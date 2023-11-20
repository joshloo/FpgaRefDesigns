localparam DEVICE = "LIFCL";
localparam MODE = "Balanced";
localparam C_EXT = 1;
localparam M_EXT = 1;
localparam DEBUG_ENABLE = 1;
localparam SOFT_JTAG = 0;
localparam HW_WATCHPOINT = 0;
localparam JTAG_CHANNEL = 14;
localparam TCM_ENABLE = 1;
localparam TCM_BASE_ADDR = 32'h0;
localparam INSTR_PORT_ENABLE = 1;
localparam BUSTYPE = "AXI4";
localparam AXI_INSTR_BASE_ADDR = 32'h200000;
localparam AXI_REG_TYPE = 0;
localparam CFU_EN = 0;
localparam CFU_N_CFUS = 1;
localparam IRQ_NUM = 2;
localparam IRQ_SUPERVISOR_EN = 0;
localparam IRQ_PRIORITY_WIDTH = 3;
localparam UART_EN = 0;
localparam SYS_CLOCK_FREQ = 100.000000;
localparam LCR_DATA_BITS = 8;
localparam LCR_STOP_BITS = 1;
localparam LCR_PARITY_ENABLE = 0;
localparam BAUD_RATE = 115200;
localparam CLK_DIVISOR = 868;
`define LFCPNX
`define jd5d00
`define LFCPNX_100
