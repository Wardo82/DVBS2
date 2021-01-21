// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jan 16 13:24:42 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jtag_mac_fifo_sim_netlist.v
// Design      : jtag_mac_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jtag_mac_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    rd_data_count,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire [11:0]rd_data_count;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "1" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "4093" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "4092" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(rd_data_count),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137024)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
