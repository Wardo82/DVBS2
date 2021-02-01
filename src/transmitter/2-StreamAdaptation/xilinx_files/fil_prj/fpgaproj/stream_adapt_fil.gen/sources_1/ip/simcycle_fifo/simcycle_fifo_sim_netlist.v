// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb  1 10:21:07 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/2-StreamAdaptation/xilinx_files/fil_prj/fpgaproj/stream_adapt_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
// Design      : simcycle_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simcycle_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module simcycle_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [15:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [15:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
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
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "16" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
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
  (* C_HAS_ALMOST_FULL = "0" *) 
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
  (* C_HAS_RD_DATA_COUNT = "0" *) 
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
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "13" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "12" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  simcycle_fifo_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
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
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module simcycle_fifo_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module simcycle_fifo_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [3:0]src_in_bin;
  input dest_clk;
  output [3:0]dest_out_bin;

  wire [3:0]async_path;
  wire [2:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [3:0]\dest_graysync_ff[1] ;
  wire [3:0]dest_out_bin;
  wire [2:0]gray_enc;
  wire src_clk;
  wire [3:0]src_in_bin;

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
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
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
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
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
        .D(\dest_graysync_ff[1] [3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
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
        .D(src_in_bin[3]),
        .Q(async_path[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module simcycle_fifo_xpm_cdc_single
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
module simcycle_fifo_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module simcycle_fifo_xpm_cdc_sync_rst
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
module simcycle_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98080)
`pragma protect data_block
QICtxPYTgmzS5a/QeoDd3CLtXPmDT10LD63CuNuHqgaQzo2JDa1/gzA9Bt495Em2PanN7z+l9Gyf
huI6Eyt34ejZh7/DFLWE5uuD5hKzB9MA4gQ3LTZxar9ksmmYlDstSy2pTeGPOjcbbBIhejaHUzR1
9eVBKnbywkKcMwutdvp6iAkqpnVg8X2K4qeYKawfj235bHuIZQmKqLlc0Kzvd9EnNQ8hXNZZzO+H
LyMdIVBXFxIKhNT9aEsszC/H8No9GB0hVkNTnqYb0x0vSN3FKCdd5WpFH2rgQ8T+ANMa0+XA38aV
GqDpcE05e+/JlS4FgH7RWVTbv0EI+Wc0wSIBHZqj9s2EePPJ3PzwYoktbYZgxScvjNpNyMrp78NE
i2tk6du/H7rme5uFPJ5A6/oIUtdHbuhVMnLq6sRxy0jDzqsfzjzwD5FOeG/qs/okHw2dsE+Em/ll
tgCZU+rMWx3kg2u1e0vbeCCLCOWfJ0+ZCp+aEV4HIeJFxPtYx6VcvcrOY7XGw8SW/YLjqg1ZIdG6
zS6F4VkfWxUqYCZAiFSDEmscanl8YsE7R2UtWRejqi8+1w8TDmd11pYqT9oFW0cUofidaw3yM1Aj
7a68aeqAXrlBvoKw5mF2RRw6obvS5cHMdcgZFSH6AXRaRjf1PfYZiFYnfwEVXomnep1wvKD56K35
YDAfFwQM69Re7oPxUsVomStZT5XlYSqn9rVHFYDcVgXxWFzhSKPSHozc7FknTzvpDJx2OCGkgptb
UwztqAdLY3VMAZCmSUKShnD1u0ctl272F/zK5y6X9fIZYdW00W05PpztmziR7BYfPbGXOM5UA9U5
VZwv4sYwLCHDP63rOeFpA8UnhxQUOHZYRC1BYhA7KC8ayuBqFHYeL6NznSYRrR79FfTjZIrLwFnW
Ve4fRuqoH6ldgufeL0vwQwU9bnu1AWojrdxeaGz8a/rNADTb84k98eywskdBMyzHGzqWrdjYIeWP
s/RfHLjJ8aXhuFQrUYsCAp7ru1QYJDF92BPA8mvddjrEKdmcluqRGxVJKYvrt572pzDTkB0lbr1n
aOc3a4AxW7tzEByYAfzKNgrvJqizHnb4XPw+2aWLfHOBZaAwRzfpcn9t0y2iQ9Lbps/3Bt/klyl3
doVWq48OpoPiqffd5oRb5PQuE8KnzniFcF/inxrKdKeC+LvewkfzcWt9oV/hOCdTx8epkuQKhMuG
gzrsyO09CPj7+riWhxKUeEanhc48tn+/HYQbhoRpBXUJ5Tu3JU/C4WyyVcOiFlLvqhUerYthguHF
GKl889cfq7/B1csv4LleHeXzx0+67EOxeXTIg8tIi5F/6mTsy2/tcNA62ygutaKpk+ZS5iUYzskO
3WZmC8u1lW93Ih+0VocAc5JWb+3pwvoly199PjYJXjCG1sE5/fk7TPUbk4HAUsuippzRH8XdgB3Y
HVosbgDoi8k7NrJ7lbQzEar5Lom1/uWUZlWVq/zhXLUFCVDgm8mn4ISGpbjybJb3abO0nvRMV8Qf
exBab/jHjmHZIbJ6QCwlaXORXgIxCAP5AAQUdk1074pwijJf57EtTUg1nxj8IdtzYbc9MOKz2ShU
6o/if5fJSvISb9AcE1TFkJDvm4UKHEgti1XYU7vhEBBhwQe4DSR7Fz+F7lkKAGlWgBSPR17Nf3O5
ipVk9O1aZywcuij4eTi9pNDdUx336Ag+0j9esAbGIGAV8AJeRjoKpdduonxpHod2q1uhdlqBZh1j
qrJviZVvdLRJ5uz+HFmu3pUW3VMAf7qfeN78255cNAyt0l3F7yh6B8UeeyYi3hQctjhX0s3d9yIc
TBzMudU+21Tg/VYQFWfOtcYe29ngfOveKaV+AzyzGNp+jltHjKQps2geZ2r5cFXTdb/ABOK1rWPT
hYs6MmFWdrLPC75stz9LV2IPESKrh8/WSf1FpVbsUi7sZloI0F4j4iYy7I/pnDP/mxBxahbC70Ho
5+05ZZbl32x/Grz1sQmczsDZz5TZxYAwwhVCSkdpPE4vG18LUjJAZPArDnl9Ah0Gamfslp5MP1ym
mhowyEQqA7qJpia6Xn5JoHk6d2apkDaG0d4jzUl4fqzyERW4uw/zQB3KvfYexr4uxV0gEXkgiciv
d3Ytrpx8Q4y/S0m5K+1VNnPnn7ak4gzrqmMdKsmH0tLpFSnLk6L/0QvsqEz2f65qkmo1A5M50myY
PVyPwVoynyvg/nmveuHmN0u8MbUAknSs3ZdUvbUD9EJm4PyqyVeWSSF1KpdMKxOIUUW5VDenfTj0
54616fO9JQ3LXXyI0b/+03USadqVvh7Ni+8QlvZ+dVrsBA+YoG5nOkYwlxo3pZwl0bJO2b86tMmy
Qlo57ECkbSeMPKX2v3mW3BPesQ5LXnR7byxv2AaNJyfQF8xEomXEfVvWGUOAyVGKMMJq/z6HjJFG
WkwdHN1+YEYTuWbnnJ1Zp3PFw4ewj6Nm1hPqCcfxtWjca+WkeOmn6b5XSZXl5SyYnnAaeV9i86pK
hIDc/aMRoONdCzqYTsIqJofUZTmCeyJwjeuZqhX212tjfGxJLhzFPvRg4pHo813NpQYIQ7Ppf7DR
BTjhWguCBQg4T6MQ5bLshSiHE9o4WufREJ2JfKYSO3BKX/wJG9L4MW3/Vm8j2scY4WSBgEHAYMpu
1C+Nbiq/KU7WXDcSSGsFkBQvD/rbcqYlYGHbvObMoKoFvdUTg9camvGC5z+Up8wwGNqJja7HXxwp
LZMgPfl7BmGGzwKBd+QpDoWxHFn2PtDgwrMzKkRZXNfabeUP051Qkl3UCXg6MNzgAHmCsD1yd9CZ
UG1wnW3Ao213D22sY9Cq6XHe7ijnoHK/2Rxws4mQ2aBPIoZ4PfYsnhx5a5PYlvAMyBeOt9Oohfq2
ytGOU8uKp/N99STHxXgHAZ2eJvtzX5cC354qV1xqUpCxQDyrLoibL4d8FFES4DweDoYrFmZjgrye
GteF37DBMqLKXrZNxh3+jeOMQiekK8dfmrgB6Ci+IdPl1IQzYCHG1pdKvmot/WcayQi8EVR0lsiM
jNE3MP3WAwo3ZerV/yRQeoKN7wLcdapA7UTEB3MXdjJtrt1LkNlEN353/pbEW+UOOVm4FfKgHjDE
e3S2GLnKHG6yQ/mNuNXWd93lp+YloBtWM5TRuwo0ehELVmQcHDt/5AD/pP3XbJJTsvp3clgVTj4V
bIgBPlwbn1lwR7wYSmuyMDWZqXkHF5BmLcQxSpPwtSJq/OZoYR9MO98fRxPkNF+y5+3Br8RdTh2i
rC91LgleLjB55VfEl9xnmMJ6M0jZ6WZ/s53ERUhjFffx8E1Jq2a2PxP5C2ZKSKnRzoDiIztsxSql
o4NGUoIsexYZrHMI3RsNTvV4362NYmlE/xe1A3t+p2yFY0CKkiRsuHQJvv0AjJlhAw1MHFhBZV5t
0chjRoMtmx09egUkOTElwYC+ieSkQz4TJUbvMYQPWtPFLkN38HBhaIF02RZfinvrLoTZ25oFgkzY
vfq9HyJRSPNLimy/CPezHPflOLoN+ysSydB0uWu3H2zbwLRWjsgqt1iGI8+76B9Q6LrWt/tbrIC/
h778bPOwoxbBcQoYfijIjj20TFTckreKK6nWt7+w8qhSvH7V1RB7dJlH1VoZhfT2kC3DfS34krJc
xTNTKe7z9hWBn1lDqC/LKpuVn2qQNhEwAMLgs+VFFjhkUJ7X7VjoAtKF4xP2RFnXx/GlRIqzpdAk
4CAPQhzXVwEHNFwVks0ctHEnKaHec5npQ5rKpZ6Msr0J8vAdtmvka7Ge1UgtpLRxVyay8ps3n3GF
ozvwXStcmojpxShMa9GxvqZekV0voUtPDBM7KlVcCuK1o91ye3iRSRXk//keDZk3hInSxTY7wnPK
i1s4nQNwnqNmslxsrT5Pv3hFThJuU3DwnM0iz3jzP4Al3kFnNABRGScaOwR6yTdQhNb/LjOSDk8c
XMIweihU8j9OocscWCNZUABhpvtDVkTtPYxq/3QQ8097/Igfn8pE+sJEtH40shQo9S0gqCxppw1Z
QBT3wXeTe666fSQyz7nz4VAtpUzq3atOSkgSKMk9bdLLmdwgldFw7xGj+KMi6zs3Vi5wcijWJXYW
5iDExA3xM8Ym5xiFAqWEABycP6t4/nhqEK8t2M95/EGPLxeJyTo5u2Gw0Sw48dzSaufOhUAohheS
sUVj75g0zUcPzIZASB1cfxjJ7ovgtWyA9h5tMtrrTOG82nO33UO4y9wqxkfi4l1K1PTAW4Zm5VVL
2+HG28BWgY0qEzhXdmn80n0tNBJCkjBpizqhRSmXI9cEx4T/rg+oAOIu4Izk8KNaeBQY3vF2GYqa
F6GKqEBC7LF3xxklaFNvw9ba/qQ0UmQL/cdbdrumkGCliptHxuB5IzQ06f24y+iHkBavaKs9o4qG
T+EBbzASBZXV+LzhB58wXtnRFWoAc2iSAUZO07Rb5junAFc7Jw5pfRak7TkGnmQflm6AA4yNl+Ft
C7LVTuZthPEL+80HW8uDLtAo6dOZb4V46rYgP63/UvNARYfu/Bo0gMam13ynRZsYII/xUVzxGnnx
YCWh8/1zgHGiSXG5AG7UQBe0FsQNFnxdOuubNXsxUF82XdMpOIpdBCwl0canoVLvbqtbQHQ+UZ7i
BBzeWRG5TNzXujqidOg65UJWKEEDbhouxvkUWah9xMjDX+39v2s9a7ZMZTF7wurtqUBcdTjCemJQ
9s3y6KXuIaIM9Pn7b5mJP+qWPXLCzKInh0fdFJ4ULQWtMVjAWDB2I1lJocxgtZGiiL46KYP29EpZ
pq6sopG5c+gFAzx4cwBszp3XuehfMnfvWZtvLt1K6iTRDO0uV6nGLglkWE+bRmuLa/4ukxdG7TlK
Yl2BBzKRhiZ9kxQ4ITdSRRC+vRvHC0mxbZ+iFyreVYkik5biZuNvXu+B047Bsk8zZGiZUo8LJjnP
OcTa4EZLgK3cq0MZHlsFtdvSEt/5c8ouE0qrd3b149WYdk75ng/jofm5gu7UMRLNtNLJrmUEmLrM
+AiYyIwhwXUIY6CpVt+WVDyr35WpiMi+YNIQtw6iiJwDvVKSSOPsHzzvj1DcynExVYREmKB+QuT9
TvJ0SjtYiiRfmAjwyiI2hnMg38VM+XaT7hbFGEXPwDvQVqYG7Yfxpwt792h0Cv0AviGlVdbB4Qbn
14Yfnilc7e3mgINcXeOEXSoU9n9KEDFKUsv1p3GpZzOoavYtzeAHV8jJqkqmy905NnTCFWtsJoDI
5K70hgTtXUcbs215AkmrxEySN3zYsRrEvi8Cbfkpdbg1m4eo5JpTwoEzlnxDSKUdefDKyzxmZ1SG
h2gzLHwzPgqdOUnkkUJIDenEi6OOijD2AEYZZ+H1xDHP8fOSV6el7fR1VW9+lnnES7ACLstPkIKH
rmhXPqxWBddyQIzD9IGPepa4c/ht5OWBF/e1P6/PoOhelvbdwT0LmBtIqlTX75zXJzW2a9J6YVgY
IWZlcyIYbVO4L10EOfNLPGCr+7y79KnaBb9yT6i81JFYkfNwpIP7R9knuqmQIAWeoHlb6e+YkmUK
d8qEJl+OkOMRlXDcfTCm2t/G4/5Tw2xdI29SRgyQnJ0MkGhHUAu8dJmR2wN3+vXAl1loZ/Y4j7SA
emhbqK6HDDAYu1K5X3tm1CvlwbK8KM+uxnd5PCOvPx38Hhu9MMqmXgIfK37tS5Roj/Wv1R/LF1yg
YXsrTHgbm5MZ5hFAmTgxMSzlnlkwRauvTh9502rwMRUL7slztOA1oR39dJZrCqVeSuK91GNZCOeJ
ko7yX2O0HZpuGsWlDHvMtrDonVomZNVHsIIkrS9HEaxhroGeHLknvZ4x1nKWQh0LCrRyhiAyHU9W
CU6RZDmf9KtVqudug163XVF+nQZ4Q8/ktXC9OTo1Dsi7N1vDjqNF0vqWcshIehPPEWYD5700w3OP
77XF9TywobZ7/KDnQRXzL+VGdSRztM5fx3WVOynOA3FqduUu9OegZoF4EB2ck5XRpgJE8Fu4qzba
L7ZPJPFf8LFjbE5S3eaenQzoIHoynoZdMkwgN3QW77UC5Fijlp5uMZjsq+NxvxGy5tjYScjGXKB2
tjRhErgO2LZuwtQfduO4ZjAMXAfAh+XRYF1FaY+rAIXmx3cYkXoYtTc3pkK80yqAq1/kiwblFQKo
MFO/EkWw/euWlC+nOVE7Cr+t53HoQA5IOMaN+kV9/B0luU9BU9Tqz7E6XK0XCHWQJNFwglB1BL9P
ukD//WDphOJT46vhDUU0eNTQStW9R6vJpRSP2wZgwd14Zs8QkUF/e0V+24cgY3be3fGDhNX5rGCA
nOJxjbCRhZp3/tWXay7Ee7Y5E/lpKMjdKsKQWwHszhq/45HEkyP5+V3U1qKPmcV/5D89MDfQundm
AaLEG7h2+pU3bRHXf8VN84UQUsOI+oNSVCm6wR/KzPfr2Npb6uXYAxuvHepGQgXdIy7aq7dPi4uu
Y+8f5Cp+WCLY7YikC1ikpQuVOyLmQd19at1qcWKTHvXWCqUBwoRmXAvv87NZK4SnxYmwA4HmkuPB
9CjTELyNOjaTg2owV83s4tg+EtWWnNM/n5sWfPUzAlZAOLkKbSgbnFnWPInurutdpGmzZt0tuCxA
Qp5A1y2C0KV6LjFS/qgw8FVfVNXjq1Wjxmjs4FyleC5xmadgAA/VJ2zxnJCd1hyDA9Iu4iXZC0Ih
ASUFBkrxgJsljNao1+9Optm0h1RUJ3MoGYEnJZZcTK8EUxhPiOM1URFYhCaBQS68b7dZEDyH+mwj
kUJb4eQ0GvuqZLgsSHkelFFJdcyRD3mFThVkK7K85ejCpMWZRNw86iThjo2yMs865FZeaSjHAflJ
BVZ2gF1gJTx9+K7WEXeB6O0PUwjpi77IL7fGTEGvXARq3kx2YMkRidFVKAus8aGK5C47KR8xYKxj
om5FJVMpYRj+fx/WxN26btwKTDSBq5D6OXt/ClCu5DjjF888fcS25rtKZp0Qg6MdFgra4rmyebBq
89BU7z2Bo7aj1AkQFLyT9MuqXsvOLjGs6lRB998siMjM6tp2grElx851rCT3NgGP8NyCDpbYrNNl
ndockX1stfotA+7vsEwvB1NXOXZNh9hw5FciaAfSnMKww03SOYXr5vfwb3yifRDWO81iYxD3OozG
jKVuWtxBKgSi8tFDGCT0Pu6lLtOTNq8DoiVMooS3p0gmCYhQkJYqo9xMEAPcYFVFqCl7Ica268LK
8zKoCN8MtM4KAG2T3nrKjnIWXnZATlGjT4V1ocjSduAVEoCUTUDEuUXGXSp6Ar6gLndcg+/B0HZb
KhDo5lYGDs1jCbOAYC3pZsEnzixVXlnSVKAraAljDUuBr1A0eSHu4QWk0IAObhU5tYqxwTOkh6R9
AXo7MxfT9oWjfhDR06ymwoulgbpbjudKUt7FXvyNnPVzF/cTd5OHDg8GKgdem2l27UKYssToWQPa
44HV2DxCajR6VF1+pYH+Kb9JgwgwDQ7fNSkcOiS7kPugxDyAH/qtT+wSu+3ZZulV0/SkgxDo/EL1
Qa6OnpoC5agpilWA3Ay4MxiZLVydTLQrkLWEWcxSwg9wMhzfDh3KUnjfrGUhUObPDdrOEihwsUHx
KnoxhRvNUiAYH15kdmTNLXJ5u6wew1rn6dQvz/2+iv05wJ5gqByRCa3tr/47MROcoOrMtZLVtPw0
qm28cZ7bjgeYrpTTUh0EoNQdqOrUzqZN+7gUEnDoseudRpp75fMwjByPHyDmOuOr7znV1viHLyR2
aN757kPG9xCQW8ePWCEqSWpcMzybQDIOY2CusSZYdQuMQ7OGuTYlOto4dMZA35lqBRZSfogO9FUC
cu/eZyqUypSSMojp3C79VUyYS408FxJE1uMdGNzz8pbjnJPhNX25YMlzn2o23F1WmtfEg6+iWj/j
TZy7tjxE0KnrhvlfVmTLMN5+SmSPM8pTKyjQ9sAtgWeZb7JbOg7zOmTT3Ef+ajO42kJG++sHVdIy
6hBy4r/oCfwH6ntDZorkC6lSybJ2RBuABbJVCaj2s0gJRG4oYg3KeCWxL/RYlmnsoTLrMUM8Tfar
eKUR32fWRJPy8ixVxd3dmkEDJkRDpmOuMdwOlu7Qhvkn/fdp3laJoJ/ox/EgULMZWraaZtWv+WPD
D63pRGiT3aCG7GwqoOOMi6Jj124nrz5WVWcxLHi563RJTsCkxf4378IzvbuLP4o5n3HIq7Wiyb7T
nEx+g78LW5hFoKVjFzD9nBf4lFshZAihLEFPu5fELL2t/+mWlxZVY2PDeoypNjS/DYJKSkn6itC1
pL7LCCuYwh0+vEVZk5WouWeAWHTwSOSwvX/Gm1dSZKsVYJP+x3Jd1uOYjcOxLIMx5WB+4Ehlocb6
V8yMDqMLeUGxpRZT42gUxgi6+ZmJ24tcOVGeFGNDYmk/t1JwUtAc9ngT4zRDO/lHaOI0FQw7SQTi
yALvCAk5LiLz2Ii4Lbtxv7IVbvB8zXgsMhN2ycyIAMrHLF3KTk8bWg+Slj+7c3EpnQBCGph3LmdF
xi2j5EF7TXj2KE0s1M0qKBQ2zD3X37PFfKDxi8Qc9YYlusnOoOlizsXi7LPKoqcYSJo6zVow+/b/
ux58eQhenL9hU1MpRXRVKAkwvqZhbcSuYQvUkT4kPGp/Hy4zuct2UiSQ9pJtBuLfwSbKUyIO7MXP
Rg5BnxhtYQKM75lt1yQ4LuZnqknhc1ABLKhI4NVtSvn+/KGlrhalIr5kgHj81lg7uYuPmM4omHrf
ZPKn30OkQtawJxnWhotVoHqbgXJSLBrHet98O7bqEiEjV/+By18VkkxFgJuY/KVBFyw9x4GX/C18
zy3DMtKk3KcrxnPfV8tcuuNHZvBD9gLMjnyjpsDOOa0Vdy03sLA5nB3BMigheGa7nRD21fg/lucX
IEvksVSohb0MBYmW/zuJ6cy40HpE1I+pyCRsLjUFF5YSahQ8o+fBw+drhLDDS8ZGN2WKCylAVrhq
F68CqXnodAyEN2/pxfic55yDHbYZWPsSfZG6yLGh/MNNoBC+48/iR9OuXTz6u01m8/YOK32OMDQ1
1xUGuH+zXUKnsSXxW7MqNPDhnJaoPSCFR4e9qUg+l2WxcOvOUbCadXFBjgk0GYuOMC7GaViXWVhL
uMlp4xJFim2A2uULhPZS+tVdRNPM04n3BKflj+gKxgcHCVTF6uSzYsv1MpfInKrOxvDXzF7CjTWR
ILwcDe/874B53qmK4uf+ndxncBLPZo6YaPnhYaWASExXcxWh2jJjya23LvoOQHyZVFFdVMcfhnrA
0d+g5z4aym1Pr6A9C0HU1v0moGqOyxq8NUVc3LaJKZu4i+fDm+3J6w8zNeI4g8ASrWXAELi2XStT
l+fza6oly7PHkesAUO/JnzoDOd4mFVqt5L+ZFFpqaChrsKiemBtE4hjBIY0v1zcr4ke/ftUegXib
JAHHZeNDMk2BBBSEtON50GybfuA+l9Rlo1DrHPiGT94n/T+m82x/vf0AIlSd4Y86Mtb+QfiAgGXH
HpcU0PVLMYcwNDP57tEFCMvupFxiiWDF61n/Pe9W3dOSK09+y5/f3bSBPjdBomZqSolf7e45JmRW
mzFRG7DSpszWxOzwSB3y1czp0VzlxZMPe4fIBIUKqcfAg4vtc/z7o08CeDBLNwt21ZEAgnRj81vw
d4cjypra0W5Lj0ugFTnlLmP5+XKbIIxFU5f3u2I0uWROLFHKlwLMsTBmQRufI3p+njkPpjzosSFP
9KMUdnweJA2ccydOrrhayG032bI+r5tgG1mfxYmKAmp/gwevyc2g4t6M4JGGIG+oSVlQSluVqpI2
DuTwJO48mRzqFMXBHFJeBG9l5oEuy0a6P5LUifm5acLOLBLpYS8Tdbqgh770ztUYPg0IqKsHRhjr
V0pFD2DK0BTaift1fs5duEYgqBpE6lTLUBpeM51G2WXDK4jw4AJRNk07YgOaCVuiHPOjNPv4eSS3
s7jNJUxtN+nyHuTGYKtjqutiHqJx6vOgmhaMhDE3mEkpcsG/mNnXxufU8IJZkZ0PPh09SL7Nc50J
+tY0MQwYQekN6Z+N2Jxrw8lOV1dXNBOgruPrAfQW1F2VU6/2nm+DgEsLOphcocFLvElLfhfj29//
UEN64XKAtdQRodMB6kYXQrh5lRVsiNQWK5fhJ+/soH8CNb8gDsZv5iw4zwBAZP3BPKdaoPANLtIz
8Jr724Q4FLOTk01vyiWbRcKdKV+Brir1XCzhUoxDnrCaf+hF3toA4cO1UUMiIzJXa6BLeCtGkmSV
XPZ+9u4NXEUwrzDblEwEWG+FhlfvropLHZjf8h+H9pSxzhAF3rNWDK9fmqoSRgSLTuIqHZdWSw3A
b4Mo5HrcWvDrbewxKIq7WY5YTELqRuRzAz6whhHaMBTx2PYdGH1H33WNltyvvZ4COMhf/abQyodv
1Bk9R5mDGlPFSU2mvVQBsbhb21l3NBksSdXCWG5xC7EqEktL/YccjZYtzuU+rDw9Ym8VaOUHhdDI
ysAxaWx1OF7Dk7MgHG74azocZrmKDUPuFevEOXdq8hBuWrviQSyY71HeQy+usU9CdoOyaqk5K4uO
zyDZsm27OdT+gm1YB30VGeSt9oXRrP6aKVhBvMig97uOI6AHEGPKxCyPLY7BJICN5z8MM+ZhR3jo
7SrRjEyyqJMPdOWZiAtwhNtBkWoEuWmaUsPdDf51m12baWfH+nEUy3/vKwYlXcSdIXfqDfLAowQ9
8xYPamCrKi5UF9HVYeVLbhS6qFp+8jchB9QszMF89JJnTTuLSWnywS8L+ahF3MwObPHpODPlFNwI
uxy5MzlRnTQPhstTiqj2rAWYu+UZvkVBQF7XFmzm9aBKIHs5M0ygSXQ9Cb5Mc9U2ISLErYF+alQy
hrSm4Duog1IT7wV8aZRIlia1PU4+aw2RK8mseQYJHoqyxNvIAWx2skJqhSJwhQ0rKvJG3ojJCgu2
j8WGlAr9hB2MJRPfh8yQTtmY442w6Zr4Cc5tCvkxPadrDspk1z8HKQLuofFd6Z1RAVUPdZGlXjiN
6iJU4WYomabRiSgj9HO+A7qWOKLBsBZ3pebirShnNWT3k1NvwnuX9WeFT14LD3qpMVVHd3ihPm+n
JQYMKb/WQ7BotSduFHVHMLKB0rrbiQPW8YTQQb1gD+Eq/bnoZqP1x88b598RuQxYsIeifz8SeR4Z
MdxM+sTb9Oy1QMDDydP/FdKU8kB0s55SpbTovVYwiZzEtaOhoUj3bLL4oGdWsYT+xJ7wWhQyG9o6
8t5b9Ziu1pnMnf+yZnYbxLlVwL1lxiWeOxr7XPuQcOzYdFzd9R6S+9ELQvM8ASr3Gsaofi559eGL
Y1bxJBdbF+geKtOC7D9V7SKsiSRjoW3EhY8jSbpcM8cXfAnM5whDdUxmNtojE2z6/BLfT/BpQr/b
j5BC4ClfFOTwlcQqO46TjaqWAAu0SBXzbSglEYkC2Chj9myhbQomMMJanS/SqW302PYDY65ydMpU
popM046O8LAvShsKvfIpkkwuQirS0E30MhIxmo+/aF8cs0jNJvrARMoihpB+KHsEEVPtmdqI4msq
CxfMX9uyy3P0TlUidcfL1yxSodjLsHvvBTuaBzN9qyGw7tE5Vy3Hq/1lantUIoZ42hpz9CkIbG1H
+cWcLLOLMTBjS0B+unW34brmQ3LF8w12fKGnuPr92B82RSTUZoOSHMalDrnBMj6U77NujGvWWq+J
VSxNvQyu+MP41YKxNLXx1N+IVj965jozFeg6hleOJVuz43WJWDKaCHYZB/u+f0RzA92loJOPWTTA
ImDQ1NlMsWZ6/zFomugyyyJlKuLVXFeOekzssOKtf+1RWspb5hRGFXTUsKlUE7dp6EojvllFO1uV
rfD6DBV1rscOA7gjOGQwkbwvLsL/Ch5gthUhzmh6vsaqmEAEIo3uSHXU63GFYsao7Uhx9vDkq++k
pRUyq2ATdFAZ6Gqr0HV9gYOjX0QDbzqcRGA/fTyOBlB/7BKIMRPBMgLsqgkQn+ilMh7ypPV2d6M8
ga2ExoXYtgmzp5rQV5CidC2LrMmjMgWu8kxyHQogzC4lkbL0jISPun7fkRr8kZy6faESx5H4Pg2g
j9AeUsu6ooemvzWdNuIT2/8guvo+lUUSsDJwe81FfJx/2Uj7wVI7kUrdKf+R5ZwVXqfXj2Y+HrFe
xVKDtMgJoQL73Mdj6fBZA/N5Uac+ls+bKofL2B3GMbIcWLZw2Az3B1sMQaQywLtvy/S9q+OH0zjH
q3OkCYmOK/ByHM6QhWfbkfnIak57+1RcyU30Z5ItSP3jpkMf9l0px1A2MGnT94MS4euSIEaZG+E1
exkqexAdA8PIi29Tq8ct4TIC+EYtk1nWObBBzmHeT1PehiuRaNfwgjK0p0ZUHEgG+1njLZb+EP7A
yXi5ap4kuyKl2hF6CnqcTsG38Z1RZBvcD9rXoavNaF+xXVYLqUPX91Y4viYEfppKGeUHXl0FXPAO
MWOUEucHdB0VPRaPvmbM4tySaevjLkZm+vW1O5/0PlgY95tuSUgd0N+fhs+8EZqX15L0Ux5hQEtf
XWqs+oSkfJ/thO2oV1E7NhDRLCVrsArNPeX3qoHDiD3CQa/yuv78fSnfk4iGV6Jn6XE+elheFKoW
mUpt/Ueu0nOTfjkKPALJXcJJ/UM/huRUgzFOy9+qbz14STIorXq/UXAkY1HtujwvFDWEvbjKuUHj
/QjLL6+m81IKL9qrWwBDbYDCkBDqv/JXTI87SpmjOfxHDMr8MKhDV4wTv+dWb1pItp02NR5ZR2kD
bvNwkALbsMI1AUcg1PqovbE89knhu4ldOKSjSaiW398scxkelhPzkUqHacqQ19y5L4H1wnqNVL9f
dOfRQmWRfFWkJpuxXN/aGELxYGTn686+BcumECG6vlZJAto30rt2ONDkKoGc3uIhbujixurpH8p7
Wp9kzmiTy1cLYI0XTJb+Jf8ecCebodFllTI0sYvuckE6I87u4b3Cit+Yv0mXUcuCQeZLeWyBKHBy
4N1PJ/TMPK7CJAik9PQ66762/DNvo5CvJFHPYvlKzQvknVuXh1k55X/mecdP1057h53zz48yR0qV
s+3COQNF1IsrsRmvE5/juYGDaY4uRkj03CXyROsEqO9GCUC1ic6n7VZ9SjG5hkn8MZwaLMMFAJd1
3GG3hoexE8X8HXg6/mWC5gsenr7UG4k1yloEnsvXaK5jNWc0fzWOqiIkLGXlifqVqHeMSpznFxCu
JgBWFMqupyx2RKKdNdmeWHbFL3hxkGC31AD54YYMnK4xReFFvoQ5B+bo42PMJ4fKGxUXNXgTr6Vl
/2/0VFXq+IIsd91NFcqsYBC49JN7u0jaO9ITRFQPWGYWtMYFrPzY4LfaBoXZ29VwKePWryoKwt+0
j4Q5D5k8G5WA+Brm/YdaaV8IJVtv3L9x9saZYFaEHug9ltNZu0yCCYCtfquFhs/XRsEpwXJ1YMDE
lziQuu9rX/7/fWJLAi1t3fO9roCi0EIUTYZViPH1T53xlmT8zy8u4N0LlmakhLqVLGxxsDpAZpMU
4ClcctwLiyQfr3UuvBuSKcyCE6kkproVZyB/klXhIxa21Kr06R3V7DVcjt2alX9BGPwvpv/kIvip
KZGkJCL3y3b08HASYvKmEtf+lv9G35jY1RKBNk9jxGLtGnDkL4KelIq1/r872cGnb3Ee/fvNGmO3
Jvga6w2x+dlJLWNaLTD2ntYLR624oP/EoA8J9VFD9Xwjum0z+AwI8bOB+v++gp44C6OY2zknKfVd
e+BMhr7KEKoy5mw88PiNM1tCJzKnX1gBqd1LTjVKB+NB/M3kPdBfsc9WaExPBcY/Kz8mHcYt/JI+
odIBWL2jsXL8Xabh3mUzXH+S7U1L4Zf3u8ckNvW7j3JZ3YfEH6O/TmiqOCi+GSeNgQBAEt9u/iC/
38kvIJrBd971fndXYchdcEZzHT00U72UYGrKl1zuc2Da1wBQYFZtyMw8K7BShYt/rc0mDtXI92kh
wh8P3HbGRuXTNcpZ19wnUGE+yPWxkKzd0oWujYZIbOkgFPQnJKaPcflH3ntPuHBkEVDsw/26shL/
2/rOFhhb2Y7MZPXSNhaLMZ18QuqEvP97YEygIBEOHwPWgjh9YbXbEh55shNLeygk49Gvt77i0QCx
dyqr9YHG6uxrKMcMMj2fzmnCgkPp3JKnnrRhAmo4f+3wAy7FU6Rgb1lJeo9BvY6JC1RptIpFURuB
JHOMb7lituUYh5Sn8rsNTbS50hwZVvOKxvm5Qo3cyxwdFosJWgypDDE7HmKawKxRhOnHuPQOtwlF
58RnxxbV7lRE2BzxJvnh5i+LF3VrDLXRNkoVT6NovKJJ4fWyLiuxOANeDPBBYfqCm0vdoj1ArBIg
pNqiCCfv2nsgorjdKmAXv2nPqspHOTtazpjyUHiPz6Wy9m+kJ+19AEhXoD1g4uUnjabffdzUOSpn
BiQtbQEMK7XbL5Vf02SmHoyunvxhbTCPcpV5Pf5wCNZ/jSvF9P+PtNV7mzh6j/hUb8dB+zj9JyPL
dd8g1o0girWur/Rivv7zyuuX5yJhCmxrZo9un+VTVEwCej9HY9dFEyuN2olhi8JdDCcQhTHwDoVE
neXorFnubFmUZMF4mH9Tzckf/0m/xytm1jRsN6HfLmVyMtmy5KgPTkuJCV2Z071cfov/4upTdsle
UDDci7x+jAF8GgtrdGVP9UYBEuBFoGVc4x5NC4YznU8DMwEaz/omnMHKj2HR5dXvMI5lL8RaXPlL
N0KVouHND1bfF6vwTHYKhlyhRz8e0m/+jmHqnPc0j7fCeITwmEC2wlpIe9nCthKKabskSIif5met
tcx+HrxgpRSk7FViVCxh34pR+CWnOW9/M9dn51Xu+1ZSeIW0Jh0dddfQE5UdaV3pm/5yn/Bf+7h7
/AdBqpqbwOFeZcxj44huv+N+9x7X80gUt2n1HFd4oHRxaWVimqi2mDB2yaFBFTCcnKOkzblx0HdH
wbKJ0Xb5D8yjgmm96TkRU96fhqMXBrLXHqomfnwhKpRbZqCcM21E8Z57XGDN21Jhg9+Y3nbfA1md
2xZieCtnEMSjZ11AQTFToxLEVgqp+bsZPLkFg6mKLBWljD7sZNTQNWwSAJoJpaWIZsNvWDWDNOQj
UVIn4NB/qvOPP5YEcCUwv/+WhU3R+HA42vEN1vBYd4bld1f8PIF8aq2MP8vmFvYQnPevx5GNObce
jPivroyMMmCcrmA2ztos3efWgh8CoRNpm3KLkpTiaQPO9DC9Glf+z4DcGjIwFPgVMG9E2JgWtowl
Vw8ofG3wHhRC1DZbj8OPEMj1fFAJaDn7WWweXXvOTRDwqTE1lRCZq5rm4hwNisuNBOs3slV2s2yp
WDZdxI/fwCSvlUaj0/X2i/CdYafStUA7ieTFsFZfpvaJYg8FSAeuHug6eMXrsqUMCO4w0zz7fsQj
8zDAmoyS2v4cgxi5BG8xHpMMf0fEMFEoQIRYLHGNQ8lVNpLr/SHzsXhYHHbpT4PMK/3XhJ8kAdJV
PVgizYp1gZ/tZK3GDhDOEoTw67RnCcIqiRLTaqWRPogHVbaGElwdGwATKIRi1SDHb8zfcJr/s4P2
mYBzezZvAFd/pigqbPqYKfEUynujLMsO+eEehKIH8oOgChNggr4btN28SyAYrXqIM2adKnqTkZs0
OrE0uz0tkf20A10YX3Z19NeCZzlnRoj1u0FhO+fupweiCqF8EJnCRMUI0MLRy7fTk7jSCAJz5w3y
U8IuSwEY8AYxDD8QpS44Cm94EQTZHMPGvk0CufKV9ljCn3/NDIR8lE97uk0GRLDeV/XS/iDx/E8r
PiBr85UAEHmsWKXs9Tp7oWCjdEH7pPIn9gcOQVZt1X+pu29QQt4pfBvRhdrBs2JlKcj1v1+qKxyb
LVq/uoT0Qc2xjVNJA/J1ZIH3d1YL+ECt/rrr5YR9izYro0MXvW4ElyY5/0NPfPD5VDypfEhMUfwC
zIl66qGsPdtXXh7nVO7rqj2aku8hXT+wpeFRJZzqe/d2Fo/to3X0BdkaTPHP2asXaZ+Ei9jbBDSU
UV9Ar0GIMw9zVpLbGpM9mRN3O6LM1mw+IZ2FrzZOGRKyF3Pzn9M/fAO9KkP4zv8BVxnmKnhs4fgC
UoUo8RhJu/bWHp3pm5gjd/7M1cyeQiv4C2bI9xC0e25RH72hQIrXYY6QAVYcLVLjzhvUDtBYKzua
2u5Q6gOgKzC1ePV4ZctJOE4mP1flSxeDrv4elhP8MjN5LY5gBqZzeIJeKp17DDqHkdf5bei166h8
IcN+cgczD7WkslYSZUeeUnjLpZUkfzwAifRPzPSknZ8R/ypuxKClLYxA24/+N1TN+kKFypX0X6Ku
F7zY4ZxARUbkC5XZP0wXn6w7Pf5Wt0zm8i65mRqX7sDXHyNpd4vklqaxfhJ9YiSJYuu0eG89m77T
GY+V4+mKbNT5RDgT/GZf2/mr7nDiNH5tr5QtACTLW1u/RHokpsWS1ULrrwHfkf0EBjDdzsgltlCL
whNhAcusu1SIbHFUwdar248qtZ1W61TO/D/HTgVHd9sW6X68yF3NdN5w5MAAO1bhCS782nIAGN7j
/ng1yBP5Zzu0SA6qK7BumW4LDpq31w4l5Wnsw1mZgg+t/5JtHHmAAQcaXS5jl4M/eSfejBdDmKUy
ojiOwho1xkURUTIlEjhm5RF14VjVEwZSR7hWOHBHpUK1JzoQfqD2ClARh3rmj0FmhS0JtflhW5yg
9Z8lwdC2vtSEnvE65KM/s2tU9i9RQb8yI7eUGukCr9Lchiod2zbSdKyMtXrr9Os50yyaJ1TNuMHk
x7qEUIlw6k8sXK1IRuOcosgFlOh9LKBetsMok4PTAWTjjmwS0eJ73PJO/a3xILVsW/LBzQrUglyW
37knHwrpfEi2R1yKdhtZd9Mea7iRvGrYt+hJowupEDIlbEsEVYt/n/rNvvLvu/fcYxrD6GFdgeto
lXqDWKJs7m+nelJIzgK88/X/SXAGVr7/TarlZ4kJ7wwlnaV10rYEVZLj/Stsb1UaKHnnvu6O0nne
HkOKPAJNi/TXODsVVQ0HAupAXRMnUHvB3BK1+BKgiTf/OHLYLr7bXiVocsvMQ4tHIRJsff/jxhRS
ArAp/stqB2nJDMg+fOOoHwPToTx21Dj2yHdQCI4w2T4MHGdIkpaD3JgBwPprG4IDpqKxiR6Nv1+W
CaRgQ6fPFAwBUTJ975u/3tvfKJiKcEXKtJ6obM/rH2SpS2TeMyhv+aPotBYqryJ2numl9NWLVFWe
6drrJIW+WEI3E0KODgfKwle/mk1n195J6xuFIRvl4CEheaWkje7KqJAE1jTgepF/5wjU+wfuq6cW
Fw94TMJjImZZxfmb0lCINb+qHC6iiswsk/KvK/ZalJkzzDhAX7bPprup10A17cfW+7gMMYTgeIME
wKkCRnz5dD0Ng7TCXNC6sIpbu3M/f/Yg/ReoxGRlILOWQB6zn2EDOFDr01SC7sbfPusDr4CHWtNh
kRMRRzR0jKoFcl1ZcmJNV/Bd+vGUfnMHWwqbNMTTlnpY/DbAjUfuyLpxpXllU9IvZ8S1oRUSRCnB
JPZROhRRNCIdvr6br5TClF/+QjJctn52k7Pdwd6kOEOREwhBidlIiVr7179E8LgP2PvWqXLoykLY
kjoP2IGhttVJYE07zTW9mF+PFZK27ic1IH9jg9GNxmX6xxaTksbH2EWIOsdIGQc6j+uczxN2CBwY
0c7rMQPaj3X+AQ+85tI2RDda2Fsqq5wrG/g77Jxqf9ICq1DxQZBwp2DtGFRRNSRucCOfEus7EGnY
mveSMCbv/b9n+MIFkpG8jlC/kFTt1WRrSwzzcBP062c6BVc9kLpaY+DTU5uJfTa/ZiUNDPXckFP2
Kyasddd2cLBwvkT0+WfI3NAd2YxveEFdD468hiIK5Xi5/5Ab2e+/mEd1xZuS2QEeNGRmJKLeCWaA
7QoIOgLPcOFnafkLp6u4FaTcyL/I/3/Gy1/epHZczMTo6Xt8B4d/x1sblO8uO02k25kLrgBLMaRq
9tQkhkHMcFrTjF9i+y43xDX8pAG5NkPN98TQXZY+RxqaLV5o/RizVqyCq4OulAkE7VCCxJ3Ot2Nq
gWo5IdAaDKMNGwhn7lzeNpSFBF+1ToBvEa3gJURDOtSiY/niGrxLP3mXHF/2+DhXSKlcH+gObShC
CqZQCmmdeNN3t8qN5n4n9H/QveIgBnppFLTLGYPx3BF8dhaLVvgzZC0UvCyQ8FRj4Bv5XXk4EwNU
EQ1vVASFNYaqnprFkAvzViKLiYNOU6YYB6VhZXWrNrIMQVQAmQdf9XN74vMPwXGzUZa/D1EGzDV9
k0ZjnNM0lsoRYz2obLlat8u+NhL8e9OT5dG4JmF+pS/FQj5D85LeQxDuIgJSqHVCQk6pRzrtjX3a
ziunMg3PYks4NbnIPnJrIMKVOAfsf8iLICI8lW3giSClBorT36Mu4spYtnSyOF5zalMyM3QbPkRn
d28tqKALKr1pybKwI0b7hjyjCSAs72iZ4YozwamJiyL1syDLAfsTM3YXob1aEbkqXxdnT667lxbe
syUMw6ZsrAQjvFmETvXSrtdYLZO3LdqKsOIgQKwJnsYN7sE54AbpZh+ytddob23fJ1SYAlFq6akB
phr7gaRUKo8kgIFv/k+Kqux6Fx0DQBfe4tC+SnUNBUXz9c4zkbxldDEsF4joT6SDG7t069AcMvKY
KbgNfv9qaMNswJV9bpNFQ1BSRjMuzfgm50NcGEDH3caAtKaCaVmdhrcOA/6Z7/X+ihUK1nkRvyNf
ea3MjsnwQjQ6nG2nIViV5Bxpw8cnVAvB7KPOaFVFfyuJFrds3twAX4DnA8D9irgOJZ8/+MfRpBBm
U+otTwAQRMU2nh+E/CC425X24grXLJGYMwQP53plT0E3za5PgzAg90K3pyq5z9YgUUNPyYbnhR/c
xXdlmuaAHMRcnruw+IVIC72HpktZm+dRxOmpyIqtBjMtLX2ieP7wfO7dCv7Q1YF834L2frgzBwUt
8P+XvcGRF4hk6khizv2z0m7olyvOo91lACuET58oqq3vKQyDgtmR0IVROEO0nUD2iad/K1NY7U8Q
P27PuKIwOqa8mWCqUl48kdHYfmkTjji0JW3SAZp/1mGu5c7OgBvoMHijmdSNB7TxP6XMuL6/ZKr+
Jb5K8BgxB6ZtdoNFA1gV83qy5wL2j6TcQhmEc+90GRzB5gJZrOYv9UemoIr5wASXRVxNxfWoVe2+
+GN9XVqQgf/UnKwmmgQMefH7W8uBIvirYVcu8uo7QnGO9MSvnlbcMszx0zYRY6XEmQVlUVcYYyNn
6hD/5xqVdNLS+z5r6mB4lgkx2swRscYOgcPVXCHz/CJsdq7wu44FFIsiUBGF+PHjpI1pGWYcXjRC
Heh2c4jLQkJ2471Dgt8TfZHtUpLlTWZax64TqrZ2H6Lu7P/AH1OA36iYxUFnD9lb8AjoeAP1Cfg2
Zc1wyWmW5yDHRF5IiW5ZMLiO7DIRO7LFC0xf4Fvcjw4cn6ra3LOXer7fpO+OhkeQeFnTFye4EJC5
cpPnhaLfM2kfplFSBnjTCoqz2+ueqdbg+6btJ5jkJueQ2243YyECq7j0pEnf21AGx9nA7GE8+mAk
AJv1ZvOco2Z4mo5I3HnhVMfWolrO0CQLFHdCLhtuMkejw5hHsFvNp28S2/IdFp6TsPIGBf5z6Yjr
1PHgJFNwYqQtUIWVT0IerWg38Re40COird9BoLnpppCHjc4iwoWRCRe7d9Szi4J6y5oPdE4QTPu/
ejGsBnznaUUAdhLzFdu9oUfutwgGCU9gaHuX502n9wph8celSL9x/VRyReOd108jkMWF3rxEKg0F
AdCiIwZ/fIdaJH7uZq56zojuv2KBz8o+UtqDQSg/TnzNhEZ6wJL83CEPTrYVK0FyZr9fTpUkPdWd
xHDZw/M5ELDdFTIMgyHK2lCj9sRATaXHwKeeQIfYn83kjpejRJoM1oulu6QqK64vmMlSvjOZSf1C
G+mf3sktjNZHj3tBGkrWd5m+1AMNnlkbwxxAy0hijh4iHlvTujekvmTkbEhTZ09HltJwKlJ6fPlb
8ccL+Aq3yp4JTwWzl0aZoXTYk+iTNjtzPgVtrSyE0++ZOfgPgx7DTnpvpxiXOx7SyXfok3I3/JKL
aHHVHhGEOxcsdvsaPhK+aDaInbxEwks+7LLe0GbH4a0ZrfeuF7qBNwyoTV7AgPq7awRSSn8ZZtZ7
+FCPe+jgG/uqTtZB0OgIsBQ56cd7wlIaN6eTLMQmgevFVfFyiQuttw4CGCZ+prLS+UErDcHtokFh
eItfJpkAylClC1Oxj9YObXumksIhxKBl+DKfpAinOM0OBhL8hYYWZrN/K5ddaxI2ezaWSrt+wPnJ
gIVlUKkaMFczT/i5pW0incX4uj6N+quwwkUadg+MqwdX3tSe1J4Yce1XKCPnHYXem83OkQQI6pfr
thQYA7e+gFaO5424mBRep/M03jRNfMsmWM8wB9WrHH/1U9R9O+enbTQvh7qZLbo2duwDc95vn4+N
0ZmPNzxdxt0fOwgsgQiu2jtgW0s2CvEtng5rmr+eklAgtHOYBWux9eOM5A66cZ3sZMva3N5W5sFG
0KeKlkvrbwmVxBg5xyX1FkMpl/nnUlmH6/OPVt53IJ8p4g1TikJTkSBT9YyH+XsxN6qzRKySvCKt
HDPzAoZKIYMYwLlfpfoKomBBj0eAbd6a51jIDPEQuNCDbwYyA/JC6r7VhFwOb6hy8GtPN3xbxmdb
SqOBF5XqkW1uhQOWcF2Ww59ySpVnPFMhazh52kl0tubi3aO6W+xpCc3G7gT8lTOCYlm31vKmgh+8
7CVNF6hYLsYMhab8DYdPcRU/o/CD/bK7k/KUwmPfVda0xVQiQa/fsQRBj6q0NjlTVzbbRcJmTK9g
VwfXA5obbRRrB43MwQhvwlqWUwLLPjnWrw7Z8BYkuQM+tdCxSoUcMrO9dvalaofBJr3zGVoqRfuE
/Emqp4wYqiJgYtaBE/vXzZql20Tz1AN7jpz1aFBjeID5a+jsFnQInweOO5mPUVpSRjIKviDTZvon
H3zATbNU19yrGve/VqJnWPJY+Wu1Jdoekm51j09JQlwqXFvSsBP5J0sRO4HKCNcITz5EJtjICT/2
RLXa92rv6GyGlhaTE34WCKmFFVrW3JPAusUQO+XIgN169sW/TNKOiwUtD/uHJZ1u9O8xYW9D2xKD
wMybponFjy61yaAn7QyzwzLteJC4KTeWaG0FTElDq0sTAK3PbWe5YnKzwMQ4+ks5aIQu73XtJdVf
/u+AdCPvUIRQhIbXSk5e31UT3mwk5wL0QV3eJBEXzwCC0zx1nOy4zfjI6dXPFmXuAr7TYNpKfFDk
Y4QWS4pI9UZFpERaykASMQyOiGhEs/xlKm8e+VKuS1j5we5FapmN3zP6j969lyII54ZixEQgKzBF
B/b08E9ff52PWKG5YA8ijSPzGMovWj/iDrVorFLCl0Qbaap7eBqBPqby/mU5nk+AqL/ybfgvyLvC
HeZLAu89a+ONyDIbZVASpvjHxRHik44xfU8UNx+piY+WjR1L/FbSgPxzJJmO3bLgnnGmw9y1SOVk
H64CPuHQzmhkn6yvuR+J8CKHoyrys0pmGBC2DPH6KPspzUGthDRB1k9lLnzX/dafG3vR+997lW44
w+pMsgF4hr+4SriwH9xDoew91OUViAaasrBX6eONM5bJLx8bjB48qpVQcvYzm4hQXKbMp+x9Ey5l
IKQGuYxOcGglmohBEocERTp15HGfpxBJeqvWzLRRUCiEsUxzuDDq9FGl8nPOAtyNxdlfPYg/hyxk
b3D2RNa1IEsuo96fZNq8TEzUUV0kDUJtwVS9fKXjnyO/OcHWZYRg8VconoF+103lJ2FLHQg9ocgE
8Z5zA/NCJEbuHx/A4+4yJH8L6rUkl6QM2xXwdg+bCNqy+kx8ky4336ddO7DmHZdJj0QG3XyPVdZa
n0z9UyelwG5ZMdhrVP9kivsk40iBCa2VTZonuluEGUyjlybP1b6q5HwNRgVaQn7h6JbBZW2imoSB
0heeBI+bcPXZ48wglLUZZY2AXeSzKRAgccDpeAfzLpalqZsptKIodRhe9Reep0RDP2WNzioUaBSC
ZXulTmAJ6AYkjKhvUCFu0Q6KN+KFze8oZQdlc5QLxo96BYsONdnFUBKt2K/Qadg9+p7nlxOZzQHH
puPiMJL4pChkNv4lSPjM+GL2BUJIO7u+3wY6/BO2AVkVtgPXDlTEf9rwkqqR9YnAtKcaMn2FxR5A
f+/Jwm/DdS5bcRePI3qrZOVxUl77upZ0hqBUZ66euAtvh8lzLS+3XCtzQ1qvTSa2j+axrQPoosU+
ndIXS5q8GbHZvH9lLkBI7YZVLP08iTv+tylU6mOTzetCuUKvduI38Pzf5rRkmmDDhuJlGz4xo/a5
Xwpf1EICsn0YKHYvCYYrxDupKtQoDDdoxdfYtHoIJG/tZqqaKHkbsQ8kuedjSHh1V/DJfvlkJc7J
1utxtM47xPnVkDHeOnXMhXfa1R9fdf1cN1PiZi6NFHVWUrG47jBtmPfVZOJbeTKxuHSIK0NuPp8i
5d5RKvx7OrFW/8E8vs6d4UR8JGj3CIhCPrgAX9SIWHfruCA6C5HGvKmVgBw/7R/iXsn7g4KH+VTg
5UGDMEKSiyh8lQLhN4936OJv6tkcxtzVSwEqyRMJXnpGi71T69auA9XQR0rcbazzZZtc+h2v/apW
fB4zorIbwUIs47lvcCL52ovSoE8BJRZeEIsdDlscXuUU9Zpv8sZYz0FQiRXXPaZ5ycnycjUAO9Qw
vedDgTtUI2L7vk5zuLAkzL/aaqDcVtN0DIfsyrWARgDZSJK7FQWs9ZBCQtt0WfeyBih2J4747mZ0
DG8bcFJ+oQ+3X3L2v3iINa7zFotOh9mSsyLQCrsnJ5/LlnbRU4J4M9RUNMM0hztdQfB4oTndepoM
HI+dx44ElD9dAeB0fWnqz44FuGnCIBlxKWOowaLIrb9dn6zHj93pIy5DOwueSmCJqf77CT2bInQl
69ixRee0TR9H0NGmV+0K+zH3loDlHdF43aM3LOVnjmmH1+dOGf9St6JgxjPOyc99b9Azf+V4hGG6
VGqcSNdHQpkZETBh2LISLQouPdNZGkx5e0srd3YIO/H8nHmHUrcja8UvW2q9468ENpd+oSVpxAK3
hcgJTNKj9L/gMdgYT6KyBzdXarn1teLkD8SHpAPFaN2onqRnl5cxV4L5xdROLI8WcHnyG5Si5RcF
eI0K2fjhglz1fqjPLzmPfiy3n8GKQ26hjsihoxHs1DMoEt+hFl367HoBssz6T2O0NxD246m0ItRA
mN0f4y8cdc0Tsjmo6Se2XPHGKYFn4V0LjHO8r95/ekL9UwX+FeiVJq0hMydif3gWYwTADciq18zX
A4hi9CA93Kx0qL6ymiA3nlsgzmIaLrl6FF3ylPIoe+xAqAdmjAqwYlTlwtObwMuW1w5p/kVpJLxF
AWDinuv7y1P41BcxhlzMYrBh0WNKEk8OWpMzouyDObxkzSFvVCn5pI5GWsgCLRoDnthouc1mlpm+
q8OMK7iLBkP+hq5if4+k4h3lrYDwAn+MkhfNATwba2SiXqTwTnfx/BiLl7fDL1vgC2Qn4w6M7Bkw
tidaTdlWdX21dY1NbX+euAoi3dSYQtlkwWC8ArnsoLlg5BrTv9SzoD4Kfm4R2GeUl9RopGphjVZm
PVA/3ZFdpNhXoJPtapOqZDADF8OdaDk/IAnxTAfTdxuXAamS6zO2VQXS8ZVPDQLkjH635JI0mjpX
ly3QPPc5JZJhEs27FE9p5IcT2kdVE53NJS5i7MT5e+69H2k24jnY5zbxBDDzifbcAkEFoJYUmQZJ
2ddU/uANeXy3FeKFzYrEHm7BgwbLpzE1lnyz7Trtyjb4WkiO2bm3nrq0VNa1jilRf0lYLONh5dCb
Ai97Xl2qafHhHVyFrAdNYzTvSNrla5MVKbvglArK6+dSmyc8fo0/TbKe6aixXGD9W3nhW8HsxfSS
MCxNlS0O253Zp/W12rKdNcvxeW9UUtGPz7LzR8N+ZEuganLN4iDzp2jG0e/pwNPEyPpy9wdvDupA
gL5ut5GM5ntVxbNOhsnjmOYcck55RQ2QsDkkzQpSTKt8GB1CHCWFXowZSKuTPkVYAdvPQi1sq3uN
fcdaVhwVcUQYGMWDBOaLMprmSviHBfZxLUYNXYA+b9JDAE/5mxMcBy9Wm073pWVb9dvDKJsmaunc
6S2UJ89sR20WnfdEKgQ45On7ZpGYn7weEgl+jqQbQ7tqZjOweuo9nflw1wxqZ5zXw1o8to8Y+KEw
NMsS3uGEDkAM2XPxYPbYujv/aodn+qFGng3Wi1z7pXrZavYG0zpqWkxFTgPykT4BDZsN4NBHmgCx
78NRRo33WttkYrrSWbJj+Aq+8GpUHbfeWL8ByXS37KBhkT0Q+k5FuZe5xWDSzoJhURC/WRdh8cp2
mGSorYlzjEfzmKoitQwPK++ItidSNpRmHPbpJUmA0qiW56IPzB8wGjVUwzkcR07ZxymNarHPcuBD
Cd4lil4eHmZOWXPwehQf6zwyQQw6s+P65GrP1j0HuVTl9NmYxSbMCCYEM+fJhzEVE92oqeBk4jnl
HG3g1ozuJDOe9XJKxGjMs2U+41sxG5/6cK5aqficIXHc4Sgw00irusPBWcFZWVoyvBI38GLTty5L
91/3LsYAaLznI0Tnsh2d8ziSkmMfcVKKRYUn1ReIegjbFCtpqKCuPHtTQ3vGOdcVLIB87QfKbKt9
+xi+4Moj+Nv7zeRN+EsyBnZ2d86C8HflVQcmcU9gYK/gnnM+98PAe+6Ceb3RNGX4IDiBAdoi5h4W
criVocNWZrs18KWzOccRwovOyo8IFHFBKedNjUz/vB4uJ3Du23idA+99ZkF/Qvym9BxT9m7j76fc
RF5JLusPZRXMQRzi0G8oPOvXXS1ZpYYehxnUVPV77CEfN242pJUg1lhgO/7eA4Da0O7tUgtJSw/r
hZvxngSwjzeWUQt0AcX+UBOd+eyKYIDRt5uieTV3kdrcU6dNBxfP5FN7cPTK5C+qASrabhsAH7pa
x9c4Z6cc4Bon6xq8zEjy6KrTiGSZxanIX2a92PQidPMHxxemka8V9t3dO3ohVIyHOGQMNSpIb4jV
WwUTURsbnEUHXYvn24MMoRMl39xSvOdHQc/hWinUQgdHLh9sTxm2mN+U+FLmVsw9lvVxn5SSTYwn
oT4CPKY4IEhtrI2mZ9y5fmtFGd954L/yA3MPWCBpRYyjbnr4NLOQQc+k4lDhxmxXTxngKumIPlL2
RMILZi4gsIdhwrck44JnCw4C6nRK0tXwUv18DdPw5VMh1WIroCmiH3uU+zcjkBJc6dScCJDdAtvK
IwOZ26MeLcOJjs/2C1Ee/vIhJE2EH+Zv12AyZU2bYkEBRelya28Aam281pZkRDp/mxUoVZ0GfCL8
f3ph1DjBsYd+anVH+twiToGBguNJT2x14RNPk24x6lVey94rB+SnnpPKaSZRaj1fXBa7Q1lilGCy
cfyHQY6CZ0nf70RDX9kWgnvWA4kwOC5XdoWQ+ZtFeZC5h3TDlXHnyRBoZtVO6GROC6+m4TUzqT3q
rz+Uif4azMzc4l560j4d0MOnVRkwvrJgDK/fVOaOzJGjCb2MlSDiaNOxdfNpKUpfMjaSXEDw62/3
gsY5eV8JjntSrjoLyNbJ0Pm0X4bQS3Vt4ZZUfmJIosUv9AoMCKJkTxUcDENzXaHvkojjfB6sdH9J
IXMIMciGH1YziQeVNpKLuAZ30pYeYR6i1OJE0OkUeCnoFyDuVr+Ku4MIutxncEdwP6EQlo/H/5Xb
7owFTFGp/3VfgLJ6bABo08WqgOoaeUYgFUkAXcdeiHK+0bnVh5hpe5Ce3FsfEZc/CGS6DBASACcN
CeQtLVppcuPmPRgxY/nefDsU4BTb1vxYfcQsD56rG0xqcul1DVlgFZptUs/7XHqTm/WIvV5C2p+t
KZ2iWNerICSc3/zbN5oMmxyDm/ILMVKUKAJEHxxWJPzQH6FXFg+dW0K8QuWAB6wSnngj32jTaTQC
zPednN+sTmlTcDpXS467Xr284CybXkPRDzR2QIkecq1R1h0gTA/b52wPPfbv9OIT/fyDrDgGTOCs
UmdfsO7MMgw3VfiVewF8xSGgRuM/7w8GLdbcZpmcgIbMB6uSxt/lHUuFZEMDhUkkQLHhqyzACbia
Xeq+o8Flf8bR6Svkl/iAcaEQrW/8HUToWc0ezgwQtqBHtssf+WX24uXe9eZOvjYn/T2vCkQ/bCsZ
u9qS9SPbHGifvXn9AFVSDtqnhuHZj5ljKtIqWgykgmGirwV3i5uz3oY9MQxtxBNGV4IGkwSg+Rdf
dgrnDh/yGZyCtYgelD99DmlGYR/d+U3uQC0DwtGcBlJRfzzoFYSpEQQ4ODMxaRthVQGwidSoIbKI
KD9WCCpqagke0FOcg97w4Unv3VPj74S5NTZUssFjjUIjQSPQG/fB2oRg98dBsEI0eiiuCsPiN8xr
8Uu6dajPoCZiymrc6dOOdCXxG7MuWdbiC46kNpqmTpTIpQCXpYOPiU9sUodJWZHZ9HI20tjJ7HN6
Tmm5epmAotCN8qFIRniXAlNCcCKj7+R0vqqoO4CaSFXegU8O4nHcrLwcsTQQASo0rSGueY0kXm1a
JbtaDMqB7K07e1keVnliQREOW1a1Dap8OUDvidvwfVloFdU0KIHxY5f2v+MNFs3DLzQ7PzV8AUjn
G85u5G844nmhwHFa+boOYJmoSDcfVWKHN88DdT3ScdT/UKxDzdYWdpK1wHJ4hLOMaM+LZbnbE3Hv
fbxTv/Detd67Tpw4HgtY8Qb0B/NF1PmyZDQmOIoyxoMsh6UUHanQ/SLWPiYa59b/j3yc7Ozgvxoe
JbWRXXfr40xsTyDmzaX7H2vvRE6h5L+Q2r8Zi1vXk6mG7t0rXLR6iGeliyxU6y4S4roGiMxd8N4x
T4M8zHah16j0bdYbyktzdPCUdnJzMOyzOzqXPKB8UrBJ0B9mhJPkaO9LviaDt0L+fgakWtizwaPr
qpku4Tq4nqMhFJ7QqnpPQNtiTLGiAsOeH3Wd4MdCk7+67KRUVYUNMjUWAoUlWzh1jKJC1abmQOEm
FhS1GczbxMOXGheEjQOBzR60oZrokXV/7CsD72tQzODBgxoJ+PNmG/jWFmwHnwOmRX1cwcYr8slz
xRXboPHfmY6rEbqqaZbETOwejkqCA98cW5jSwHAwCYA29cnt+ME8dJ9NWyc/IDuiIkONGs0Z62Vj
M35uH9Xqe0ohrFwiYVM1wKayYoPcNI0GgrVzNEZamiopJxsQ1sbR5+veq/fYPk7ScLkCcec911y5
wb/jFqyO++Y6l0Z5BvNKmc0JLwpF44cpDzOgwEUECDfCqePxhrN/rmiFboND6BzmtOL3+sz/aZ0u
S4iptda0A0PuZRJvNH93Q26ccyfXAgqdTgCkGonO269DNMEc9UMpjnd6TcuZPvONK3kC5iJI//eP
sOBi0TuK6t777yFnvEzb/0KFKtBGb/Ru8TwYghL9NbGBq5BgWMC69w9Y5RBPxrGTVRAmtBefrltq
f07b0IdPROKD0HreyPexG2GHpHsEkwzYkYdOosQpH3KEkrwgL/JOkF4r/BWOyM3rgCFp3/hF4TBA
D1b/2ax8gPq1go+Iz4HNDUydqAQtn541tnKk+dr4H2Eie8iX1Nt/iCJWeqtc9G/8OTsRGM7z/Vxh
SzdhzDuqLFjF/7n1k1Lmm/rGfD8lOX2fK5mDTBaUE8NWsL7rbN6Elk3HzIZtBX2ae0+RL6TXPF7P
UNOjO93kPnb5EJL4rgIUTLZ5EIPTxZfqXJN+oPqtbz5yVaErZtkVwAQe/FIFkQM26gFApkwHTPD4
p264MwChNg/zPpNRp9Jat/AU8ZX0V9Rpn4Ehw1ukqmQUA6+11LfC4P/7G8TbA/wgZDqS2Tu29dFN
AL226Z2IWmG/mTTMbpamyhfQENwtoY+U0qfn3wR2kANWrJ7tCawmbPYbJPnoaN/XxK6pCn79/cH9
csYcvAKLRjGGTRc7cBOjVQ5lAF71UyJzfUTS7G7THKtEp/Mnjy+ayQ1S9C6OCTweCdRGOHabGPFe
FJOIVg0j9TTyVdj2wWiTFbwcchWAcu40ifbrmGYLk1w2b0a3GazuLEyn1Z+jaHB4iKD7lLFCk9+r
f/qB/AmHTo7lMay/gMp4q5h4kZrFH+i/dRt1jB+Z5b+myYpUClD8YT2uu46fQ/iGrKsQTdtIjJ4s
L0+LhwpaCAuNdeV/VPjYAlzB0OpZ4tkt11HRkRKpfgNFFRf9SVaW5sZGdIu0p02rm2TpY5JAAHPU
jDxP4IgRB063VfEfbT2PH19udBw+iIygMxfwAbdG21Ukd1XOGjis2ULMZFF+ziO0vjOiUzwiFx1t
mb+Q80dbHYpEjf4pBZbxNHMv9gLX0kW4U+2A7FEk2UxWxvaN/anyKz3dXAmbMZ6qf5xNVjtfWxmf
zo4qm0TAxY9WKu+gcOfIgkiC9Gob968io56RO3bauR+RZa49ZCJ+f1G2ZrvDyQkdh18xDX1mJzis
qFJnsncFuFRNuCaXTWeR2r5RQmfVkBSjel7er+CCp/qmMMO+rfINpAIYiG23ptJDOQ0YS4nQ/WcF
jJ9ti4r6xMnppjd5DIgdtYGFNwoQctfB9XKrL9nCLs3w+Xl/fIm7XcPXn/xUxXK/LIic1X0qeYyk
t68QS2dGlOKCZwL7Dn6VjsW2zAUBtQiCmR/iRhU4OBr3NqR/lTTq0O4HGo2AqzL5lqfSFtKmQxLJ
pmgwGjobOadD7JHAgSxd49SoqcHymVAn+Ay5JtYsf3tH7sHrPkUVw6CGaOYjx/qEkRsAC3i50u/4
1XiG17PVZpWI9rxBcResKZyotFJMO1G18FsQCBjRANXVt+vn46S9snMEJzYVxJRqYNeFraGF5lSl
QaaMpzOyaQ/vDGkk0hkVzUQX3JhCl73K7m/IxY/QA0TUJlhFyKytWGYzaFSS0qOGTBiepeZqk03o
2U6o3he9TGi4iNfEnx87le7XzZySnPXqxYOAymMWrpyNTOYRvicSw/bLz/faVfFzyfEK/hagctqn
WS4uaMSLsy9V+6WWdaWG5eDEd8ytQlFrN1WGqRReyAaMvRJpumZZg7wqJjskrUbDd3trRhGrmY6g
ozetKZmM5oafkLGIWsIFb0HQ3LcvvnsWQQGCqPf4zA/k/6YTKIxPuCO7BL70BE/0/FRe5YtoQ8Bk
36VXBtRahQsjm3SUYhN6szjR24wa4zkasYP0cLim6wcZ/VQ1EBmuMYWwKNsuvB+2/Iing4OKsqCs
CgZPgArB0JhqS7rT8mXeWf/UoSAp+sHq+1sRcTdCPh6WDGwAp3yQd3iE2Bu3+GsawL9cR3KG8/KR
kRwpDBISCPaJ3DInR2JeKdWM/jF1dEjTnni3VOE+r08PCv8GoMAop0lJIk7d0wl1ZLiQ3YIrA+ux
yr4YXL10ObKTjiNt3NhMEA6P5aGuNQjAgLo9DmY1JPEUZpQhrRYsQOEYIklzZsDzAC1WDQlzS6t8
fvDMS337ZkDw6oprDABwt68qPj8lX3Xr8pQcyJ7m+OyB/W4MmzD/XANeKlulWLOTCy5CMLvEykmk
HpUB7ovuloJ0H3WznjdGvZDnWf4OGIShawSs0vAvOFUx3i1FilHUJZsYfBTBkXfMAEcTBnFOM30Z
YVEHjrWUjuDuUpfUz4OVRqF0FmLzl82GF7LgDZA+u9+IYhBH3NzPs98M7P+sS9M+XOMbdzKfNrIc
6QyPj6LhEqdLQw/vid40opHjtdYQ6IVB417iyp2evTVdzWEHXwirCg1q0qJAxx6TGK8vm7G1ceAg
U05xMcQyou6lCy9AkZ4abyQS0R2FSlL1+6u8ZqDQGff5tMuleN928XvhjOV5E5u6MDPlK9nSjll0
bDcdNSX1lCwhhffUmvfzJmluZkwTmybD6KQuCOmDgmsHWbXWkazH8grvxzfYJKXDTbpWmWwU6+lR
oL6ZAS5enFGUfjCtuDwReAvz9PV/12ks/L2+59dfhdeP0kRAdPJ8QhdRcxJQy6QSp58i5ohLA60o
7tQGqiujX8gZUJ/WmFPA0u56OWN4aMIxwkqzCsYIlpnkn/CbEbUfXP2HGaBukIwgtaDO5HLDouxl
+IMoEJ0bd5Tk5EHJP2mFzXS+taZ8yysFdQhEfot6Soem00oMmUG5mAcpdTKYArZR0f60ATeCb6/0
5g3043SeiAOZJns2f79PZ5Tjmw0cjCECFvOpQ+HGGHDY1J+CA+UZyPGcpz2gIPWUAES5PNUxzGOx
qH2TDeVzb3qx39QCxEeSIWw0KOL+tB1L07M2h6F3HFJL7vtVoEovw9/KYTpXzUpnwsqjmbV2jRCm
QRfO/nEXfWqbNyr7k5gNvpkpywtwAHUpuzEvkAbZOor12KE38kCRlMEnz1ZtX5GEo+TQLdlgxj/T
VWLAvwtigSfiHlKBRjk57jcEGXQ/z3NqHyDgMlwKfUKkg8uERaAGo9cYMGMTHudy0T4gJYs0K/Ho
NWJd0gGJFwqU4zHuAxLFIVNot+bOgvIvpapmUnc5OXEqpqd/hjbtfTEbvmTQxfz+enMyJHn3itZ1
+qKxx4dFdM1zlQU7P1Ee7FqMZb44b+6Noozyr9hWErUx2UyD1WuLtI8M0FMdDsyVgHY6Ms7LFNyT
WA5tugw6KcekCyWazZnpynmwSxB8OtE6MbdllGltBbl/W9rfISV4jpAQsIUyubFtBrkIl3OrzuLb
nM7AOU+My+QS3U9vZsEzVihf0WEFDj2n5ZkRlgZIgidtGDLR6iNocaPdJNQw6DBUxMVD5yTvg5+P
KRMmyicHNP8ekzDLuuhxRcqJZ6wm5DEuZbGk1L6c1+uCLEJWsnE2pybhbxFE8xrEvagpKXNgeGMF
E+P7BoBJ9eRn7I4uzNvqSQOFHNtjKyFr23JEpA1IrF+RDsZih+UrMUOeCX1St/tlawYWOSFC+QOp
4szjhwC8vUUHCESAy6pC+PK3o/ZaoUi64SQBLEAZQB1//xRT6L7/aSuLioyzOmwLfM1dbLyg/yHc
ZH+pSI+s1wIhpfbz2DqQ/XqtiGABzeXrioCdkIVDbdiB2W/dafivLQXhdVfYDS1d5hP+BR6J4Llz
aOQgN8qNrUPyv7grTSzP+xYLs50C+dB689cf7avNx95l4R1dsaWF32HUpbZyffRAtoYn6IyPk6iM
gzc43gSz9JsTmHhoKyYfiwREDNU7TxAO91evbk3qHoTYi1H/lLRqwDrHgnH+HJAzqO2lO+6PRTRR
Go9se2aDEZz+tUsT2ghldlbjOQnJ0d0nvospcuXmvRHrMUfFDL46q8+FeF2gh7L865Ll4pi2Ep94
7vCNmK/qrjNp7M17xWW4CLDm4HUqFlFQMQKsChXXHg5aSHqTI6gwesTKEUzRwhwzdpReodZxqvfZ
ugl3Cl459djbFa/7XY/uu7COV3b+hwm1wo2PNH2+IywE3YwrgAoGzQUaQfI6DHgtMiPm11xtl8O8
XrLM8l+sZ1usjMMtCFar+xz5EEaFzDMTx+mIJcJYTtGp87rLToX2hVWIXt/HgyKZuW15a8ZkHPkG
Dsv28wLPlj9Q5yfT/cqPlFAIDcWR1AUclTaK8QahdLHS7akarJM085TbqI35+SvB/YjCAhReS2l4
WXGQQS6+avkp0yJOYExuLy1a6ovOw9qIPqlb/IhUk07CdEQ9yTvQngHwk0VHxIpcegNx0cXEXlpW
eOSg58GASA3sZAMlaMC2QBhkM7QyQqo/itLuspiFUN5HTbCmmua5q8d2k/65eBgCIkpdRqogu/oJ
BU5VK4MyhV4V5hSy7pe/f0R7IG2GxcVpUI5XbqoN+th7gTwQXpQi5MZyrgTGkyOr0Ws0uAqwi0Zt
COGWU7fz6nLZHr1q8UGDa4j9HYPuJ4z0YRB6XYgNj55imAkzuOCkPH9Koe8Gh6D7+UvCCaQv+F4s
mvj6eBaxxzREz5XCcNrNCuKsotD4owNJPJ/o9wtT4gsfeJ9JFs5hN6L5cTppnhDNaFjBeyXC7IWV
LPGem1GDaHfOarAdl9m5E2X/vnVSaqJm8Xjw/vEPUt6qeJtUmnD2sPxK1npOY1n70f/E7dlCSyNl
K78zBZ7ybb31XoKLQj4vThTyzH+OOBSvP0wfjuENrSBy05psdof0HAk6RUk/rCCcqqcS1Fy/FfOT
a5aK3W9aD6a+QFoviBoRMkSgpoIbbPEAwRZTmDRjP04G9JMcGG5PplZoO/b9KlFMQ4Mu336q091q
fWHPicRBk0cCf9wRO7XCeOOcvuugI0VOOSVOSMQvnlLWN8jOlqe0l4CoHKyNWlhR0vpMs3pZJwxo
xWofEqQl53/D/BfzlfMyBdNWDRxWUMBDQnMy1iOo3jdubvVvgCLOqn499bGDn0isKryRz+oHaE2m
FqH3N3PKeovCzwnkUgx+azgcUDbeKrsw/aoCuKbu24fLJtmMqD+JHSN1QHgXljrG9oxcRMY0QXID
EOqnM180VNrY5Xm2LT2EYD6DxwwCnxUK6wN+6lkrvjzls4QB8eV2a4EG2kcDlJNCmjbKku7rOFpm
B8W4klFJ3rHxVUHARxsjkLsVl93gcwcF/1xypT4EkFg+mqPyexlOeOJvfKfO0M70tODZxL3VI+Za
9exYWmvcKXTKymDI8Ob/PC250EJfqhr424iWIXAxWUubwce6G2RvFVMhIBij7/tDymxfrj8gt63q
ZqmbN96xosbD7Fzu2+xnCHGofMIv8YwXCYIQUdN4+o4oD3fgOwc0d9kSnyodp9GjJg3ESxUH9rs9
ObGzI/nkyM2Bb/iHhj5CTNEyGO9v1t+JQJANgVO/m/degkusfW+Aw0anNs1jZbu40YzsmAqWRLKQ
PUf9zrpqosA80KaYwQdE7hGyi1k4CyOcJZF0L/d/4twBErbWuID9WVBJ7L0W1cGmPOP2z+7f7m0Q
ejNuqYf596jlxuq/FJJVNu29j3K2xWdnbjHff+TFlh1tdo5zO+n9oeyLNRUhrPkp7qXBMNDKJ0la
nlwedPZkuRNMUUuNgKd2cCbp4GRfUx0xqI62JFRxbGogMBx/wf73t2vp8IjKoxxMtMHChRHcyUyj
L3VCJZ1MqZUVpZsU/R4+VVsOWiiJ+0+a1GK9Y5SvGgWyuGWQqTI4HzH9+w7lt4kLjMzZivovdKMM
J6718uABW0F9VOSX4KdLLlHZmW0JqHkE5fccWtap94HtbtAb6p50hRTlqjHVmhOnS5a+QuyhOEm2
RLTqaQSWrLmlnD2QoamXeD+uQrqMdveIKyc+W3fsVieYRD8bjgjOobmnGqaGRQ/I2hg4RTBPVlqE
APaE0KG35RkbD0FouE0A3ar01cAqBiU553+UpdbQndl8TcjvG7MT5MIVbCgKKlCwbyfS2Zt+TBbG
tFnej7Jeea6NoHiP/6zDDHMYICwrp0bd/MNxIOdjl6411RLC/eX3Z8CY0Qph07CbVDKvhjx8aYzU
k6NjJ28MjkuRYnnFkhnS3t3i091ojlIoq4JAet3E0FIupXAf//vFv6AOev8UyCWHI2OyRUMfucaj
+JQ3iKSGtT2vWv+y/RCobr6/0BSL3Is1OBlp+III0FXR5xixbxL7kiqWV8X5yNRq259eeBL7igcO
jLpNzH43DoJF0L0Rf8Bp8Y5uu2WeMiPDHxOHMGNrZBkY+59bxlkUuAu+BdNYa0ovvWMVeoq0wWMQ
UUfcFdh1L0JFTI6ESyKytuS0aNmvN/ZfAF9ddduy19rL3GysFB+jfFFm4LSfui0P3hVOgvjyGNBW
rpzpyfSmnKxzB1SUjdA1i3KUU6EVzUcSiiKs1aLcvcHh7vj0GmwfFuEWSSi0twyjpntbezPUJApd
6MQzoYei6ZSj7O28O23A8LJE575QOUfewgPqws/4SigcqieqsuauN5M4Hyyw1G8P1BBZarl42evz
ZAy1wDQEQ54f/waJN1im03JkIzeHdvVU94AhupwcNSYCAqV1ZVOVvdLeyMK/WScvFjvyR38U15nq
BdQbO3KsL7DrkGWjCxKHd7c5H8VvdjbDQ+TYI0UkXWo3BOt6JOpRpSrXgc29mFB9gq+1DxrzS1lD
PbcHikccH6pK6K1SzVXRAbTdSh+fhyE2IxOsVSU2Yn33BVDymJ482Czu/7xywaE2lrLgHO0s6cnD
+Uq+0zRy9POlDx4gyCj+WVNZ5pBFLcvUj2NHzVaKXCoJDxs8A3JLUbuOsu9rxlYkW+wve+wNy5PD
FyOXbpmIozkUxXETFRLKtvG/ImGPRrfEvXRu0o9Xg3cVhdO3Faztylw497TsEhnQUEZtNWEsyaI8
nc0gaov5XBoT9EzT0gzA1HSeBY+tPB1NM426HmuE59bqcJy8A+qPAvXkJJbF9KeY+ZHxWLxGIcHS
G3Y1CdbpyQmdXcSaUtIHYRL0DTvzj5UJz/09aIu4rstP+SwpRyGpAdYS+ieJAIWWqYOF/SmaNvdi
QUdPHY0rVYzsue7b7eDlnbLMj0u3/UsPxQSxII9du/uv3Ba8QAQXR0VSReudIWf5V18dKNzennXc
O8gc75UKP7wMqNiLXQAS9FTITLu+mWOqHGjukJ97xa5bVAIyafrZ0MfKd7x872EA1bU8sXfB92Sj
xY0ivpKlpoFSxmOK03IFu9r7EOVFeBX8RuR8Pqdw63LqnLb4CLbFaHNr3w4Js/hWHpBovZcbm1Ua
/UNZ+pn1s1mEkw2D32Fp0A6x4VoW9WwulKzBWI+BL32NNUyxUO1CfH+Hdqou98MSsDpwXEBBbOYH
es2hFON4zjD9/CIjtjsuDLcHE2FWfvssqB96tLQZoUl3tD8cCb5IufaL2+CqJkbDyW71JWXR6F7/
ECAUXlYElfl98RfGIrQh5wQ/mVwC1iSSaYMLnKdvDVkHvCxceWw0K1gzzeYxS5/y/wjjONboFpFi
NFiR8v6kPQiqZizok02s3CLB9wsBqpLhOWGmBQaWVaKhxq91gAojk7SO94/mWVapWQNFMTa8Gq/a
IsDSL8vSg7QvYydqWhSVbsH9oR6nSelRi37vMy1MPn9DGhdcyknRDQO3pncCDS9kdzQ/yJi3gemW
VIe76K3vtapYz74hk44qfQCgvDK993Kf2GA0UB1ZUUaPyuP69Es6TCFYqoVQik2Qi737EMEL3vbR
ETcoKetmLa+XLMkJIHOIBkxK/myYJeKQ3eit0b+S4dA06gxaE6thSZK345pJlYAw+kfWbwL0HEN7
xzuoZ80zF1PfoK6Y5ofYO0XrkNnGdUn1z2MQ/ehuNGjwik5M7qhRoe7u68td6uy+o77imfGk7GC5
i4IxtmlbmZS2HA0p2Lk+NY4g8e3w3V9K9smx9gTyCzMGbPaFvbY9cglyKVx8k2L53rfEhvSMRr0Z
B4JuW2oUwWLKWCLJnjtCTq3GLFKvC81JfkLEOGZMWmC42tRXWUD4J+ggiFhCY1JdjDQfhcKFC7vV
OiWgiJ3VcmeJkVk59yc8ic/p2kBe4MJp4zFtYghGh4htyZVza0GRmN0ilVShMr+gT0OJwHcK74Vp
SI3XhaxgFyF22bMaccdPlkU1hzOD1mgaBbkoTBS6WIOUXg7hW1qNYjFBK4EZoJGV46EKuCEpTMjn
mThuVrfy93wW6CLGJczvdDZW3svPgrfn53Ldyd+EI+oZgnYT6MyI6xI+4jNJ7WG7Qt2Retgch+Sz
pBulDW+SPXMjhMhNRu6OioycV0tVSsscWVYY5aASTLL6gk9qwh6LWRl+PAJcP6lxIIApS6kcSVNo
Y9vKhqP7oNC0IRxBaIVfbvznyAH3kMJWtDkHS1X0doTa6+y1/X0EvxlkNPMsMZCP76EFoxtBgBLs
e9KyJFSQxVO858VqtbjGczBsYYnKC4iOEKxuLGGo4YAVdJ/rIRCnz3pVE48PNPMjuHRNoRyZhORq
JAWy+Xh4AF2W7HGRLIcFlrDpMdTj7+Z3oGR/nSH26RYejcja5G/IVylqInDcpNqKFtB/7mRSU77W
XPXbNJqHnqOtRQYWeyRvThBYpkGYG0ihiNwvJJQyyQBvlqNQBOtYfpTXNrriB2k+MsTDmhu0KEuT
7d1NK0iyDU6XsdtfIsnHMeKX0TcT5nhjcI9FIQTSSCYU6edClol0jib0xsI/jjZ6Uh2n+4NcxjgJ
wWizacdMn9wfgIRPta04LxAHWBy+uJPNKNL+sSPelmBo48oM9X3JYvrGqfSEoby1YrtLHll71ZDB
+OOXKwouGySuyjZ6+igMo5jVzPtChxZueWhshoDclxioWl8IeC9QHpB/q/NqP1g+z49ESbDhh9qP
7gQDFAlIwI3Gl7QukYuAc4sQXPiZZ8HSUyntTK25RvvEQo/lYtrt3dSrZp6/CAq2qrZNp1FefoPL
FGfKeet4KKrq6Pmjva+H5PseICOQxtIXNxl+ezak/vX3ewORH+PzHdaAzzq8mzfb/MDSor5eqzv5
6j72rwOKDAOzyJY3fZvQXkZVYZDmrovynGPA50DgiKEs3UPk87+od9hGTHBK7AVui2lWYmnal/jY
GHVkA1/NwMnIAOzzT/hCQbmzx38KTZDXvIY5+ROOK1JVgQd69XBqHfA5ukxsuaU7DUXYKWi2Pbvn
mIC9wR+i+44c1y5mvd7vk7EW4nk1KXfntH9fucd6YZ2Xrl1wcZm+a4NxO+Nk3oHwRq6KnnHgFcOS
TnbshS/tqAfe8XoxkDGlXKHnrcxu4Z66aNGx+1CLZMSYowV/Hsc+uD2/IORJ0p3l2c/M/48mp1zz
GQAX7YJW9C6i4tEepHVFyK+/tBqAQ5d9264+9zfhWqhzKUffnos5bnVPKXDDE6tMMvyggnYG8aDY
PzDnZgWDJGbK13OPk3Y55AvFi9bRqOlqk0S8LDC0fpF+kj1f+7NhDebhZVKHQ55VfEgfsb5xL1a+
q2Tj27QqWb2KBVRuJuhn2iZ0sij/P14yplyjug4tS0aIrtm2TZnuUZPNXFAUNnuTMMsfvcxCMIm5
npF7uBjF9B/8T71lNE5ddW+ZW4vtWnFfjH+tYur8zmEqoTQr3lwiVviID0H5K5hh7UUljuiz+0ND
rD/CaQXSpF+LHuqk9NJav0OoMxfog+pBz+zdJ3b6vQbP1qiU0fiqJ2/4IuDY3KArxGV6bm9JWMrU
Cg/86qPYXscMcnh+ypUQnT7qw+lqFM52lhxEo7NZWcs48P1TRZGEYcR5A0wAFG33MYQEF0K/iWKv
orZRmNzuP2DKYQ4gFELPoheIUrOAfVIBVJBpN64n0d5u7L0kExNOMEWNF5Y5em58Z3cyo+xglV4X
FHJr1zoDhfYfZRwD5EgsDdtWNPs1BSgbIaofRFeBqF+D5xktOBhi1WycK1wLkTSuX4IPT3bF9i7b
YJwuup29cn6deDXl4L5GSJ8H5rkTKXBtZ7CdDENqOVidpBUDrVyL3H7MCjRUNjA8sTniimRdBKno
2YYpb9M/U9ASSnwy3m+yvd3E2voiDFsjc40z61g9fT+ClYM2Ay0YsXzHdgRnhriVtgyKbVWlC0Zu
Z13DWLcamzrUo3VAjpLwv68L7zK4wWcc2vwbdDUMz3N0IoMyPl+euZXYn9STg/s4FVSOfO99I6bD
lvWZFUF8S8JQDb0VWdRtKGat89CPBRzi+Gnskmytbgt9k0zEgiomDfBE0lGrVJTAmtyNMKBSvrd6
iuK6vpVKZ20+tDV5QYG4u9w4NYo6kKvlNgkshbDlp1hEXiBZrvJ/o5otuiQSrx/6RiEfUK3Iaop5
it0WEoq1GYTmk7oJE9v1c6olmaF4pKFsyRE+su3TIPMDXlb7FatQVeSlxK9EDE1NSuoPXgkYOWix
V46+ja2QPMqnASjV4o3NR0+A8nxcL1VZ5haUDTNnkCsyJ6PoYSwjMKfyKWe+qk/r894WmX5t1h3H
6kOoHHaxjuT5+P0b1pMPaJNHtb0Ad+HXWWQf3JSt9AILk8Xy/ocJuQiTBy4lPSwIXIlKv9vIRoHR
71+i7Xp6SKO0MlUxXprhulu+gXWg6xcNxgi+JJI5xSDwL6TBMBBxBG+Zd/hsIo4sSc0rnG96Nclz
3Qvay2Ds6C+bVt55Jp3mSQ+EN6pbcbSieUIgUqUvLmOnFjO+Q9DieKRtKHmKAyi4dTLo24snnCBz
ruOhaIktk0+6umd6bVNsMlUu3/pvYrGJl/4oik6Gpzr5U5hgIlQ8clm/d0TKsQ/NhLozlDXgC+gJ
KzsDOnq+8nnKgAXj482cJRHhfWGOJTXgMKFLNXB3xZDXzNmz1euuuqt+PgB8RTYUtehjv9ibOeJd
P/DhNKPjm32NXw6lGOKWE8ok0USwPtZndppjVlYTtZjkn6NFupedTLRARvutoXWF+C+FiZ3ot5MJ
FT2ec2E51ncn2pCKxTZWmY66swwbED8B+YBL4/DhZB66YmfJe1me3P6Svx1BPA1ksn2mhZWdOWw4
LIManUvVnYhCYuSelLCH6O8R4DJNbFXx7N5evIdOFJn4/XCXJSyt3yHe2duVCvx+ERHqiIKaU+Bx
m56QUxFGp9gdHuUdLQu8ki0s4J05Vp4I+SkbT6nsTwk7iQ52vIHzDN8xJd4SIjx4jt/2r6AGI6Vi
1P6lT9wsD+cgD9CbTyI8i796P8H3hSa5cpxDBqzZtalmN6z4TO75QlfYvUeoTymsTaf5XTh5z1Rl
UslSt0eN70bTPihNP9J1kngSmwXslK6hJocsKdhrFJWV0kuh/2Gy0Za19tJiS/RvcZ+UKy0SKYd4
PvKrZAbH2B4blw5mVbIMk52alxBvOcwIrq7mER6xGGcjaG+wsCyPJmaogDUvNjAvdL5haqzPEAPL
1/NVS6uONcgH5Wz+aie261GwSkaQ/vx67YkmVN8pk8ApAYZU5dqrZYHotWoNFwr64bRAMfLB9xYj
8KUtyItTvFbiewSsAKHiWFiu9RpfJFYeYC/jzCtcK6jCD0t94X9HrXfYgn4TDlXSb9mTgU0twPYz
uy4RSjwDgYBmNsbgW5tP6hsuz/7BwsJAA4vEorVLqm3ZhIWrXe3UbuDCfQe6ceY7GO69km8jabLS
c1uAtOLCGkEs1KHKxXFdGB5KQbLO/qdsA7EyzkVtDk0Wml6XK2kSzsYtDBck6FrL4YY8XCUD7mAU
UzuJCJowvkkg9oDsX6aRU8ysp9jv9WxnCzoIZj4hv/oxl8JQ61zQIFkQMvwO3q6DXj2wuMSh0sLG
7ZU90SK7bdueatXYxfg/T4fqsaaTok1rBgcf4CYqI0L1GuWc2JCLuodBdLOWRp+JF7n9gyvuiCig
kXHIdsG6aPFDh4kFj4OLZSc2ctfH3mfipSIpRYzuQkfKOKY4Ko+0skbxrBjDoZRA1Sg6DKyv3Red
2WTzPZ6uRicWKKBfv2A3qnut4aajnFm7orfKwChuind4ZuJR9mIuNXPdjEyR2qM5yrM/QialU6Al
fdzzvLAEPKy+ljq36LvzAJCBEkx5gM/IBoBfQAzHNjOhKmtHic3CZcxrcPCawNGfG4M3LYb9O8/7
IgfYj1ZfDGAUEyT8gI/N36OoYMRN7v+mb6ymjx64Do7cNx1Tcyc/okZxpolJ1NdXbmdHahwNyxAg
ok5fkqsMvUPZ1k6HqSQioDdpEmVZleN/MqxYrsSVXxh4vI2NuhuKyrOOesto3TH1aN2kZVKKtc9l
ObDlnGMVhBV1EWrF3YcQwHu4BTKuj8WjwmdZsOUgKuuIX21Rkdi29ZIgt7I4dcu8Fp1/zQJSpPgt
//oDRF+T7bND8sLx4T95PqIgfFmH4pHkSTTGPFlIE354mzde77/i3hQcQq4ksGsREPwhUy4lf8KQ
Zssh9byy9tUwqb6Ay8stP2pi92IEEpJi3zWW82eBZo25oiBA9HJlIpe64KJ82060R4ZGbVBc7Geh
oMxH/ncG1pTw+z7tXN0FNLLZrgsfCZFTT9XoCk2IK0hYjJinkwAn/rbb6cGQOhvv7at4M77qx39f
dOAwk4KsSRsNC7C5Napx8oYXxqcIU2mB/Oh9ZW9KztCYvckm2je+6qDZk03mvHJuG8m81ETHDJYb
BWU3MHMr3oVqK5rdgm6VUeyIf454Rw4xWcVwfDCMQQpnNkiQ6ei2Bfo6TGuKVhQJEpQJAGX571KM
k6ZVdnwhKa2Pmr2vlF9nz+V7CWzjAnuMSyyWuAvEL1zmNh43z1pYD65GlZyLjLxP8cThddkNAazi
seUHj8ciqF8jOm2hgK9yshX0xpIyzuEe653pG/y/HJ85d2j6aEXIu2WgAf4o7B686+uY/7JMuW+t
cJQAHzd7QU+VEzb5U42MKesbK79vv1quf0II+yS+b060NkFj6FG8Dr8+AvNyydr/jdSD+Z9XYwWM
2n8JbZwjyYokg4nC67EKPW2KRtseeon3clJ9d68Qg6Em0lpDcBXR+xtzPQHnA/XIWdXE4+1h5Hdo
yz6HvTceI99ozcfB2qgiO4QuojFk0Y1+tPpBp9OX9K3ol4tyYMb/gsQfN2BUnHX2uqSYtvkMeRoT
12Mylm0AOFEu178hfWtbRnY/vLefHdKK5+heZuehgcFqONt22Bmvn23/PLewbXQreNmz8VZLi5FA
jEH7sd05kec0Q4DNS+x01p8iJi3ZXGmtDQOvi/huHvu3Nvw428cPUq6KAMwdMwuEDs4Ji8lpgU7P
hPSIWwaFmux9FJ5Z+UgLVrlXnGwhqW0Uk3QNyMuMc+dzf0VhnjW0OO1ykY0xTooFpb4DHQIa90aF
5GBgV8n6wuZRxRkf6D1SGReavPGDPW80+hgIegIQmmmcQew4Ugv5StPHSeBIOaJ5OwjcPtPgl+no
XnDz61+B7fdAP+NZ4RGK272V8eo5uECMrdIHrLKn9Q3BNElMJWcEawwqMZX8aPfDT2a1CuphYIra
RMK/LMA0Xi8+tGhRkGw30dx7KfCrqVLWihbT9tLl1vR9lZC8jEIKAekKhoY2ZnqX4KGYJjMrp2BN
dOEBPfgsKGFDl/ws1mzwbqKFWBmm4oVNc5Cej/FbSJxaXTDC5bnPqVUUEdA7nzGPzRwniOJ21oc5
rRWmKt2rwyUB7mSIvpNTv3Z8I8Sb7qlLvsOE8CvW1LuIQbBmUsPzBDVg6xoc1DW2X15CbWNACNwt
JXZaF07IeyILc2054eo3viPwVb/gBZwwifJXElwVmZU61p4EDZrCxjLGPXtPtvAU4ynaoF6pxyRl
EJ5ri1nx1rRv2hOzH2ZOjScTPnWuw2mscNivtp5H0FoPRxGY2GI642iTS3ujxdyHZcrup2BB1PCr
VQkGciYVFtJCHv9ktWZMheC+q9Q1JHKvIeQnWAzk6xqJAePaiv/auvmV7Wvgh9NeAeNHqe+aciSv
ZMDz1hrxwiTP9EuayEWJ+WOBB6QKxw09TGGjc5WQ3hXtudmpADSjFCOFFnwK8A2AQ+3lP5mIv1Po
G4wvO490ZYNbexyvDeoNDWxnAeG3XLhz5vyRe05YZ39ecsLKm/xQ2flyNR9IUKu1OPtstwAu9XkC
wLAt28+mr0zowLr+pJlKP61EJHQhXnwaQW//6uPL2zz40Fb4E7flDxcpwPABYhn8aV540ZqsfbnZ
6Y+LdY87yKO8NvcU0aSasghdkkf5VVIELfe3Ik9u9J4QfcMG0z+AakB78OIarG9kW0ny62tfmBW4
iXTEBrW5LNPD7zi3PpZRlqti74ZS/usxeQYeQo4ggDWCZtq1N59IRaf0wieJOt/+cR4WoQ4fnC9J
No89+J/nX12uJJwfPrGMEZb/xpfV/khdaBOyhqRbhHqjqja1/p19NHPxCy646ALAkvpEdiXPNe5Q
kKqXvptQwdre68uzxeQ0/72lfAOOOrCNqQadqE73vn96ESoB/o6JSXdMuS4OD6ca0i+tC7mE08uc
DkpoJq0KZDY/p6bsE3yOXo6oJuvzOqsU9QLTxMekwpXQ0Bhaeyc4Ag1rqIi/XhyA24Xhz7bNEkiU
LbIcWKPN6ZobhVov1RtiYJ9zE4ciOAFyYjdA9snKuHGKcHf7ILOpwldzZZtW52rfF49BdYuGQCl5
zHoY8L5KvlSx88VazB+SjIQ81bft83M/IrZAvRmhsbyTWWAuJWq0sAvl6HLMuzQ3MM5Jul0ahs/2
ZJ9jaxg00w23DZLyVAf49kZBn/RjjVD6nXBONNwJah1yYJTxskBGl47ZXNLsfjg3bkroR2hEBQ92
0VIUQabtfcmaRENSKQa9RKNT+jcj0pvvQGT+NvVjJCb6pWBs2HSjPecY1cZTDEbH3dzlN0e+PFIW
MBJRDWXuVxFd65KdQ1PTPVmVph7F6V4OR21HkoAZ17l39xkhKY/yfmeH0wXN0xkcHyd/KmSgko69
K9H+xGvdX31+KT64s7GI1MD+tpm7CM0XUOw40OpE/Bp3tru1BRmY5LOmWYTpj4GW8YoQHn4s9VA5
DYj+5TFuOy7XVq9LdJ8Dtvcm+SR4W9XQ0SqATGhmu4GQNo1FYwnla/mEfSy/O2PBn77kBTUEjq8o
I3tg6CKgCNvDvTwbvfCsY7LCSmYplIelqnOBY6oViQqf0cvJxTr2f+pXRoVB349MwxPfQHuFH5wr
YaFUYuh669h4IFykDlQuFotGY9dWz5wtF2y5ixEg5T5zDVX9YKW7JPOM4ACPoeEmEIah0jCIeime
P2Ll4jWvWOfjtsqVkDmE8pYyPx+RIVulf6mfRa9Bbi4PPHy6/TFdZWmg8afZ6zSheT94E8ls2OhT
hw1YztJbLnEhFXC8GZByH7i0gGiO4TrVahJeKQYH0s6tgwxdm47a80m+fOjdTsIXLYict56wPAvE
vhQsBNKZDRWSpGQ0Vz8y7eE12qEWEgMDopMEQGPa/Uc54HRnMTC4ANSWbGz4Nj7IqaESCv/7JkRB
sohn/IN+70IVZAroaI7lucbZ8YDTVOz6ONxI4Gvzy+LrHxRTgW7gbjpvG2+VeE7vH1rSLrFu5HyU
UfxxYEyHsLn7A0Wm2J8A7W+etj5XR8hIOPoKraAbFfajGWcacVwknEdcvjSSBKJpzSmJ4fUFKjz/
4TueEVE6cClvaYwYVnUckUjRlFkTd58HAFXWzzrRzBsgzvVRG6QfhYwvpuGMnfjABh9ZinGh2wJq
pqJHv14+hSbB4DJJqDLKH6TY9njd+w755j4hqdSlh08N8z3iHUifN4gADXHvkqxmmCenMKmi/5Fd
bdNZEMxduYMQlUm3fxTw4xWeCbyvIc+OhWrq2telFkWmxx9D1NUyb0kb4fgfq42YmFB4qPc4TMiN
7C2EO84sq+uo5Hv55Mz0dEaXUDl/qGudPqZYqCNReOGTwnIFhZaeogB+TyEzpiFQqmmfHDgoLWPT
o5XAv6k7X4eEAjENdEHc6UJIGOLpvNFvea4xpUxFPLdHjNKb1b/0eutOKUL1WSoLGFwNwwBt8k2T
PjHk1v0Bk92q9XyCHBrkFcEuzSAbmGwHLGA18irFCokf+ByynLmBmkgjaQFoq4pmU58bp8aXX51b
Eb1M1Cy0ZDXNLVWfWn17sewhdtf8T0y0ZwEQB5MOmQjeFF52Qcdr2203czmgKhUe0vi61mftQ6oq
oQ4bb2oNr/H+0PNN3hH7jKjGkj5GFUQJPG0Ve9n9wnHsKV2V5fhYV9Gz8+aSgToKX1a89rVL9NSs
lhabr+e4DH6lg1TR6Y2Px92TqKj6SnJrJYWNpSIavtBnDU33twhvsTuCgcwel+xKw1sSjxsBOXJV
dd1L3Sz0s127IuYH36lwbxGJA4fAhihZ+uLC2sWsR2h+Lg5BEzQhSoRS1qCNoVQoWWWu5c+hIGtF
c1qE/5nph4XPfeuyipkuF4B3y0k8zptzbEsd+w6zUTPdmkv15OTEckz+nSHcrUc7rZVvpqDigVcZ
tngVtBsrJQozQVXe13A73u3llv9hfTRdNY7pH9DA6b4VL6feU/P87pkl7KQKv1RJaXorJcsuLmFb
edj2by9S6iby49CIVtABTXwKEf11FLEm5FoVaX2XzYBMrRS1woJzsyg44VjaHN+SeGW56eeyL43v
LXUS2EmryJIVAa8ijqzYeUYAtIjBV3dMUmtT1yfXbZO6nFZUobslyAAj+N2DO1GCnbpGSdcXpYA3
IekubUba4z4ItYau/QlQ7L5uZFzErJM77sG46QfayZ4X4eDUy0PLTcl6b2oJwAj7W4yRTVYeJlSn
ACUWHSPs3ZoA4IDR8/fISKt/a/GzWsu/60HJINWT0t1wfO5hBdfvtlGC5LMY1ZlS02B3NAaj+UvM
5BRwoAZSjJ9mUk+vIc5/J/qOx22kw7+TpgAWmBGa33N7jVRii8z6D4FDZIwWjo1UfOouYsyTz7lG
gj1jowyMzemzmvjFHqE9UXskIJm14dd1rDjpw8ED98pF5eHRA3WYZTFuZEYClw/JHfqE1yWA+fqa
BaRpLhAXQ3tziPbUU8Rxw7O/9dzJNd7F9E1GYGI0RePE4MrT28EPb9VpXs0dwswhbJNg/WEOws3n
1o+W0azXZJ04U8jcx3V5mvSApanjwf4fWBKuTBL5LjT4wUF+M/WxD9sa2wAiuPZtg/rF/c9MkCeZ
J6jfnMPXE4BRMRus8nLzbfPyorhXllzNxjqTEu6jDhN9c40xM9KwmQ0MEM+No5w47AlNa5WjBAUv
T5Yr1EX8lJ+xnSXKOVdVhbcfa1/tcxP2tyo036YBzuti+LceBH5jVr7uZDwgIPf9VpKgkZLGL44P
E/X1qaFsOe4wmZuaVHxvq4xMs3gY3q+a07+gb+QqbgwKSZ71zoITQ8ku1tUM7BODMcDMTQM0Ne8q
zC4CZUB6Wt26MuT0rk0wHfbNZj6n4+tvULaHtYrS87Smr+GaqBAcS9KMWmsmpsuJcSamQDHvjU0j
NMrn46CksanaIUbf6lXJyLeGLTXVdxwgsRAoL1YW0C1yruwo+Cr3noCYn+QlqVVmFSy7XBKoCDG8
pusJkOItHas05d9boVkbt4JLpgmP+8XOPTnTl7QvQv6OEFDN4i58fXCA6kBN++UQZ+62nEQgsuuL
TP8A/oNcC+gx1+aVRpz48e+hksuoaJBTFqn3WA1u7aDE3WxK8mnwqNOSgjjiX2pwvZwVNND7WuqK
RhWTM8MZuZtGz+P30fdUm6oNkmDryFbWLnxi9uWCcuFEQGNUmJHRGMBWGVGeXyKvnhFe5GUVGieI
N7QLMi2/D29w6tg7PF++hkiL8y0AHhizHRLC07/0dh+7Gy3AmNtZkgW3F+8RCGkRlzkV3XdtUgyo
guVujqhqh+pXWUEhPhOm77DEobO+JAK+aaY/KXElhglHpQw++WDT6BiNcqiCUuFi1MGQLhgYHaHc
Flt+w1tIMPffVgKRVzbj2DcZd4mTrXvcZyH/V1JoOeBV4MyjL/HL9v0QjPbKrWzxczPA0T+9pfI0
eJP5UME5XwHfFgG0rqo6zoOCCF4c3tAHl37n58XKWoOJJRsqKUCyxzSrnu5iphqdpkwKuhu2QCyL
xMOn6AYoyoR2Jzu9luOMMj6si9zB3Lb54MGm9T16ghZ8BRS/Pah3hNPIdoEjT4sDK29iM9bUmq7/
rguV6A1Wnfgo+NbGuJzHnE2WrfhM+n+oOMtwEWPEuoETB+q6T7k6Ck5Lal9651w1Xlbxu1vpppnp
cEaYz4yO51gqNqDZjQKytE01sKS9BJGOjEUNBul5B4NytDmNJmFLeaN68ssK53jUCTrCGoQ7Lfqh
/y2giBs5OI04xj8eRISFdhs4BOiLRQ1coYL4Cqy/pKELpXrNFJKNdepEGGeUbVtBddF0iAdWM85I
EAhC1pxjqdKtmTcX86VXcJOcKg+zejDKQKn/9D7GdS3YsblW7vzDvAc9jVOFuOvljD6QUzHhE96u
WtjnObjXPPzqAnhY7QAqwC96YQEwoHmVJITwgLsgjAhYnfjpmh6haozzfS1u+7AwVvihSmFegk81
7EjlLgxQBU9Zr73ZEGdHxB3EHFl5QRhWP91kg6cjjffL4HiPwLu7AQ4gd0ukylw23h3QEhpe8/Sd
N5lpQQPCUHL9yyPOrhhxobJwG0Ka/IxYvhyCBVGSZgRGR2mjWYef05FbwbLJZwtwOujCmfOmCoyt
R4mEQ+At0cpmcy9/t5HtaKywizE3OpXUo66hb81XblXY82zas/nQD/d0ROi+aNUF3Q9DT8R64NIQ
7VbCzQOAFWESuEUr4nKBqK5kmjmwieEI6Y+KAZD3rhb7G2bXvMFz+kIEtgA98MNzs9ZCglnSXGNl
4q1Cyod2rvtukyYoIrSCOIj5sKPmfB31stnBoUof5hGV6P3flJ+Gm77aDItX9DV5EAljHxUC8+Pa
XGpI7n9FUdjmGJfHXsKe62ETqu8awb1D0FaLhOxWddznwhPfrkYol04MH5cYS8empTfEWHh77+qa
SHK2JxFDf110fLItXuYk/76xgzCTLXVf3iofiaApFoELOs5aJiBC1MZOobbkin36xENN+cUrjRV6
Qb8sKizMGF6h0hcZFzYI96bdeEVYrEt/P2s5KPYhRLCC+IxHFAPT31RBDWR8gZURLOpFPxDT1V+f
/KzN8UXe+AXdzeec1mZoFzt63htwOwN4u6lAcbC//wg2gswiI5YQZxRdxEBYYffWvYut6F29Rb1m
4/VTOhoJgCTVpd3P6mPg7Ul0KFqsdcBwPVWbGJh8SRNPnxnA8i271pRDlCI7Npszu5BbYW/zMi0I
h80eGVkF07GhslvDjwMYp/dk4oVDmMS1mPoWPumyp54VbV/BrC97qnX0+nxI+FDHsF7JQmCBuG8L
5g4oKBYOwjB/HvvGqnfpkGJpR7IToINf/uY54E6hXzhiD67PHGs3Gv65lMLR+s2Ul1ee0YK6ngbz
dcLdJW4Twn3tCoAagVnA2AxqOt1alw4Kz7eF9msp94auXH73QWdU6n6rknGqA9JrPFETH5K03lND
tDit8lYNyzVWwFaijtteKTUNE2w4gMQdKyhH2+x7Jxu/1RhaCM+Qb0zHkq4gtl7uWnI6Rb9/OCdR
EGqUOsyvhXx2qQsU4UuhqeMttlyqxudkWvEe7TeZO7Sl8qI10x7ZCsAs8SZAbM6X+M68zekkLRlw
r9gyRNPY1YFe2au+YKsWWsFU7QoPZ4BUI3omvEUv0hJZLsUI5xb3iuSKKk5PKkjeTX3GGz8/SaQw
zg91xQE9wDvXtY4RfXIghFAbxXMOWOGUcCUxjzDZTdv04Gk5nay1J4dF2NouCXRmzBb+kURWskgc
GOmdFiciqXSLO8EbWYzri7ysRkAGR+LfrPHw13QiDk9YADeOtB0VtfCxMhciNA/tD9UwWXZUOtNT
BRgZbZAbxeZgB+o6dPUZLXmoMa7r2LtrkdAqUYqynFKEj0HstiIyb+g92vDWGU6V/RokBm4Iecni
DeTp31jLf99RvuPVf4oNhStZ+/FcIfU7UzP5eRwuQxJUMPP2enuXv3W98nL831RAOZ+WaHQPcJ9m
W0Fzpa0OwJSjkPEzYYOaT1H5rNWjflGA0cH2lT7/uEl+u9arcfWfRRASI1IQcUbMQr/x8angH1FJ
sWMSZZCtkELv+RgsEKlQ1p8zNoqY1cf6cSYQxiSaZfw1nH0TinB4p9venHf1fVUjsY4QVcv4QhSx
xpktQDLLk5npb66vDtrWmmamvxYkoCRSobGTtycroLNOBwHwmrJ+KVKTcMh28SokLzV2N+ZZ18of
r1w21dO9S7W18bx6DP/NlcSVQqWjrqEMGYEAgMAzH2WPv7711wpW8SOZKLw9JNRdAMqhbYNaYcw9
fpX7hu/UPy/au+Bp9aYO6900UqpHAO9I2jB4bWDSGOKTNVJTJJIrz4lLK4LDWfGpZm0O1MkUMunw
BeITGfaMQ4nAlHgz73tF7CfnsvKPRYR2GSTheQoGTEuA9Cxhcu/PgKo6644KsMBLh1P1x+XjZRTd
Wbqki8EHfcfb+6366G8/ofqKLo5kpR1o7qfEkPM5xZ9WJzonUta4ssROWMSakhFcwe/fGhK171Lt
TzAtSSo6P+XWhzim+5PuRYlzsRjW3nLMZ/n82xOQkkhd1FwfW2/InBEaMgCEx0+2g3QAqobt0XSW
csclW1tMXrqMUtTNN7QCMz09lJQNX4G/ATDBbaOznQrx6+DvDKBTcm5PB6cFll3bvwlj+awM6AEB
v/zgEypRWl7HH5ITG3f/p1q3BFxx4liAfMddICwmjHNx3JiP4ykVkEASRyWk3Sv4TZVi0U8Srros
yUFxa4MGitj5jx7gN5fhTH/i4VJdtoB5WpycVbeE8XGQrLuMOShIcGuhljfNNL1EH9wGrse+Z7mu
CRXSYX2iynpBTcpOBQ4wjMf0+m6nynHGzOdVViDeRFcWpTFbK/TvVHvwVeOoyYBhTBKpKDZxkPGu
Qw9UnG+d8DgDZxD8hNzoUg1VOnGOC74yJIYoKtA5QS22/eI5lQDMvajI/ttk60YZLHhgSzS6Hocz
2wlqzzy11i6RGwTd6KYvVxnzk2TPF9k8+9KtaqXwkdQ9t2z++QJxtVKneAPiVadutZ9vKu5XLgJP
XeoMNAQ3bdp2vwMjfOJGQic8JhODGwDWxjm541D7J2zr9qDHioswFrrU6ZxSlcCsf903N8mNm6UE
pO1YsuEbB5PwdrlVBPZ0tlPa/pkKXPftKmj13B6VIPDP+3XzEB5dK8/xGkOmd/bEYQQmwSk1y3yQ
tOlb8uz4hiD5RfPemsvcrpB0khvTHZzOlDBkU9C8uUKg3Rk0qqY7e0wLdi77FriJJlrz7PNGsyoX
Q7PY4TVJ4xn27+mjZl+FY+HJ39/5AOu/gPEkINZqfPhHDS23JRctqDec0D+FuHlHIMwToTx25/Q2
hdLDYZ/6CYWK04jVyScAtdzbVU+lfhdCXbwJm9WFf4yv0j7Td0/tjZ6pm+3FLaS0Xcxa7XtXu7jV
kVumoB6nMiUPbpSwwEIVrg+sAsTUFgVjG8xx9Doinr+RHzVRt3kj5MXBVZHn93ZZv2EnVrgX3khS
UEa+elLP6HH9/LcKHjoeUU9A0ha0Ncs34eOB2QgoBCtJzW6OyF8+noWhL+2i4SX8T36mfs43becJ
CIjIB2TSnpiLoWKES4GuV36sGVkZm6nCg3xy7FYsanFvqSvlN1ARHA3serUr/TASxeh92R4h8fiV
FbAXhONP05o4ybRFdCP/v6ng64urJCLmqQHrH0k75rZpvHiV9wTpi8HdAutgloU79fXjiuoZduBC
+zMTuY16HCI+b9VyAv7E4xDuHvrqI1irynTqrR38Z7fZM9I9NbCxklkKRAeCvY/Skxz+L4GIVOnx
qiYA5+M9oGYnEQ9yjr2QPn9JTyen00s/lmjbx041Hm7H6ymDw2mZL8D0JQ8H8XOaOay31lT37Mj3
Yfjo3P+M87A802r5qc3sMmT3VfR22GYhepkzXDi69ESN9V8C9C5ftLHYsLiyyvoihrBh3VCZWo2X
3HZl4fc2tGvUZLgNTXo5W18dvjcAVflMndFHWNeO2iyNWLt8IoR8PddnusjtHhdu1iRW/P066+hr
zEuLdKlve+/wpi46LyFv+gt6g/kCtEZNUlKcsxbGrG+YML1X06801SJYhYnGJ6vU8lWvQgJbB+0F
TjwA6wLPlkyjyCKWP0fQpKZc3SMpcorkicOB+TZF8nEmT2CK7gA+AFZ+xQbFgj5B1rj3sW86wceH
a+P9uWM/y3e4bALaBWlUb104FRd4M/2t4obQPkAoTKXuHYcOgZJSDC0upxD5oFcSce916/kmIFQ8
ZlfbCcZRf7iGh+7mEFtv6x4ZVABW+jsE+MD0Cfu4JHHJkqMqpqqOPC4JSu0i2JBEAUOKvxiAOg5q
6gfDIKtTLolNWTBK8jysFFM9zDGdP0hdGs0NHnxqeHBQaw6pvspg7LZ5+6gFoCASltYdWAP/DQIB
3zH/ct/q1X9sy0DayRYzMeRgPO0lVIRYvknstie8wtizgAc/D7VbhpVcrNw/ar7aXauUA2yj/0J2
6tTlSaHi3jlK4hEY3eZKAiO8rnoQdDX16KbaWdysBH2i36QfHejhouRwy6/KQFkJN9FUXH4WUJDR
QDiKiH0k66pO/1ceHivWA10M6GpwYEcEwGppjidT7rL6KLR2G15/VAwHpk2Jxi12vfvfYwsGsar2
Bub7uWWJvFds94NTOGhDOFovOH5GMS7460SZy7adWJ1tLNMT/SJw/B9em/R+xWLzZQCzmSW/m5aO
eGLOntQ/jI2j2sxgpfbmsteKsLoA2x+s3AxHVLBwMinjlKiwAhIM58FgC2Q3dAVIT7N+CPJyXjqF
hgf5X4040eYd0V3LXAVg2P7Yf7zLBt7Eo9+Y0d8jJIFBKWZ5C7jRX542xRdpRaLXhDfncMojoa/j
9wvgIKGblLS8MBXLE298bCeAc8X2oN+HgFe9q3oDCDt9V9Zpa4Hz2voIU4a40Ju7MlrEEQT5EAC0
gjVSdT1CiZ98d6iV7IsOWMTUryA5JIzqTB8Hq45SKl+z79XEYlrJxsSseSvZ0zSTYS1O5f3ZTZLX
78zxIu9XcU5/tfLHYGk+RpGMeu8baxMY3qqDgxiQg9h7pC+JmnP6Avzwjsi7WtPsxjuZHFmwi7K6
meTmc/e/5j01hhS/7A4DJz1uUJRCMz4Bm40ItSfRo0BerQpOyvhJENvYSs2Z4Agu4FQY2w2l8f/J
M1fLiW92H+vsIzYIx6Egq9Nqpu3foSIIXQNCp3igX8merxGh/7Jeevs6n/pT9DyYQ7wefvdnDRTe
CwOk3/WxDGv28Z17ufs81GFEU3asDgMDM4g9l/RlzstaW0nQvvMuOS06ajGv6Zi46I/jQs2k3YQb
bKF/icNY8etLjbWMAG4xZi8B9JYvQgquQh+Ce9Civr31EHJxvpIzsO+vsTT5SEJA0ZHoDkQMQ2YG
VIJHByt3mF7H5nNtN8BAkHXnYjCHlD1llRF8DXtK62YD1Rg0tWG8EK1MB45UEuC56PfZeo4nciSP
p44b+75G6T7RrxaFBRYCHKq5/GqQfPbh3+SlDKIQwxHq2Z2xoJMTyIWYwPBGLtC9lsSFJuaeuKng
wenuJvI7LiZ3YaDANdKdSC7zGi4MvQsx3Q7vq7Bpx+Ja7hq81GqBzAjXsn8zFnkV5F8S6rVEyfz5
ZiCxNydO6z9N+eU4IFd4UVNwB/UkBRs27W94vME0wDIn5ihDlIsvYQ6SNxPY2rCby/IXHmnI7EDi
JelHfVwaZS30dCL11ctJ/ps3E2B4O73uLj9byEbo03cqyR6rrwqmS5r+Ial3dWeHmMXC+RJuPUNZ
KSm3x8dT3K1DAu7ku2cDirIyj9qg35HA3QpqBzY7tzj1coumuRg9wIon+1Jt+HPEsWZp1yRa8feB
VdbU19LOCIYaN7oO+eCm3CbkYQL0Tbmt9Ydn50hTwfGmrNsZYB9OgLkSTIuWJT/546k0gj05kSvA
adq0TqnQOoSGJLct6PXvJZGLTd7+WdJkWWemeXTmOt2lo32Q9C3eenbrSx4zsPqBw7XJ5fj5d4CQ
mknbA+hrwgZKWXiQ5aH/uOgx2d47TeMZfKNxSG1jZkeV7WIIuhN1KwM9cfej+PaW2ami/I4RtgCT
TWWi6P5V4GQoNokSj991+1h/6tYBfLTsWoKVmE4CSZhFj1HLXPHWUqJvU0637QdSG3rVbNXeyL/7
L5uT+WnX4lsKj+J/ANZAGGsejeerUNZ661FTHXrx6v3lTJjy5vCaC6H5gZaP4IUnuzR+iucSLIs5
/lbm3lu0pLmnPTWWVDOu7oSwRtv5WY8ifkDcMpLl1/ydq1am5LHmez4vAcBKbqfeSYMji1bFM4YX
TgDYgkxIYIX6ihOzUJ02PkBSH0c4+m4P9N8ORtylRw/QpGkMqt0QBc94zsTol1V2zw/b94Z7tyHy
ASx6ddKT1qeMcboMdfpsNe0cDsNJ0gREdcJDNEdkhO0gbmUK4Mcj8z/h3v4GhLvS3chJPdQJxdNh
hGmUTM6f+N5GfjHD8Pi7nymhs3bpXjhLKzY6plMBFbSJLPknfbqHYmg9OfsgVsnOML5V35wb6ryd
RiUyB/oNRhM1Kkv6BQaFPZBeKgBwOLRCuMwttunjdcdod0B7FHJSe5ryI8CzaB80uPoRqUMK1IOm
UnJd2XDNOo2KpHfrTJjK6gBTLUjBNbozLGXJcp75j6v537ueQjGTSjzNgHg0UCY/lZGFzDIYWzPA
94d7yO2y6F/5EIkCx6OFWWVrR7u/5/9DepFP+eJXXslkYqUP6beA5UjfUCywQwK5C0XXso8WHSXG
QgRpm3pFss7UK/3S/glRh8rc2KZnvcKUb9ioEOG7hZmWqL7/h44BziS8GYyPr3smbGzQ/hpKw0Ae
zJ6djFjwoeYr7V9yUf+dsceuSRCrkGFKliLQde6AmiHCjWJVlpsyGqTRiXe1BO5gLNC+wM3CFb9U
+od1ULak7lf6lzFJh8DdIbx68aedIIN8tjUz53m4wTzNEoysBD7gdYpyA0yP+zXhP0/JRAv+vte7
x5TkFIZDNoJGqZxso7PPOevhsSnasjhrY41bLyt3rV1ERtVryz6viR1v1CWc+CCtgB6R7B9yKIax
+EyEi8llpYXp3rMqwWnw2JQKFOTQPbLAos/KVpTSliTdPRXzn/ZoteYFHxCDg91mwHwpvXGbhV1X
1IpNIrp0k4+HXyguy/2C8JzJB3lu7u/iP6JlCi0NB8tM4udFx0qy9ZwBbg9dAfG4a4kuZziOSXnm
CRjWMjNYz0mLJ11GPsaODqLk2skQDvvDK3YDsRMU+lTEuAcJDezGNyJW5P9sGjG97adRf2GT6N6v
ji0WaZVOwUZhKjF7b3/zJALJuMvIiJHHGAN6sWfHMsWhXW9GYJNT5HDEgaZlf/Dr+5urOu4KUEyT
X1Q75nIhNjMAxQO2xMstC86PTozH0pc2G7Dnz/6O9iWM5M+B9uUIpLhXmP+ifI3Qc2K7SMx/t/UH
uR53H6IU8ENklkfTXE7vpRmIC8HicQ99B0iu5mxiRUFECXvTJYv+h2gLg0w9Yx8lhKxFxHSn5lVj
VXem8KgAqvCS8Pwk9a77L7JJ+Ece89NIsXhhBp2gI3e/Sm9vLht9m/bIQPuxdiR5ykyyJLp+j5NP
Ze1HvhIsYA0x9dJvTJtX6CC7kiOUr30I7SUScCb6uNrg9fw9cuHTy2V08BYgEgU5Ysnl09mY/HPD
/I32UYx2IpB8xBYu7BlxG+ntHScM7c1rxPGorr8s+KhtiaCkfD25ugQ1JOOE7LRHYHLdMeA9rDEB
lcFuCrAsuWiVQJ3tMP9wapbSC4R69oZN2x5jKHSiHKbC5FXhLVYXZPAWup6xnYXWSFB622LNcHaI
yRwd91/QLjJ+E2czmEmvXiZcoDqRbp5rRWVOnWljTCB4vXKp2ntEsvh5fNXVDhAGlePC95U3rtED
Ok+s+b7JABmioQ7CL3K8hxk8b6C8T2/yiqKCZoWTj4K9FGsLQNRPeEtzFEboSHlPah3J7KWMd0Ar
NqSIy21Hut27VHH0oqWZ/UpYBzcPlE8SEx1CDgS7ZedTRHMkdUVNuA3iJYufIwbcrq6r9KSeiH3p
nGBAUlrGm3nReG6Em5e1ullNaa+JMR2KlgnavcEhvepvPZ/Ucl8yHAmZ/QOJAVKMoRhlWfbXA9YO
Nkds//VW0mW9sWVeij/4Zon2IRYb1EkG1t/5SGKs4VsDr/OMefw1kITSPMCKslDt9ANW57PjZdhM
fcQcPI8s0yWuOTyrYL2bxOP7hoLis28A/gF/1LcaRY1zXjFlqM5UlYb2A0xErI7kIK2EumNMNYK3
WicbBVxyQNTGAIIfrz2teShalIOP3W4XNxh+and1q7kvjAW/KY0R31IpkXB2EgOSOwHZys315qDC
AdnksYMSyDnKF7Bgbrpx75SS26lqLRtQ0RSfFGTOgSciVuNQ9blvt5b9WnOVWLHYwAbvQX/psw6c
XkdmzqP0SPulFyssfG0x0h3MeiSO1w75846ttRFCxRqAS4TUcbSR2rd8MhvR46hk1oo+mNFdqF+T
LeUoIlMQ3zHV/8VcxmE8ujT4mJ0NrEicbukwTjWO5Mv7Jp/dmjcDcQue1wCQCpMcL1vrM/GS/aAw
piERr0sb0xU+rpU6EdDVUE0mk6NbfsPbbBKPGBskLukmDYGhANEvak2SLel42wGpz4xaf0FTYWhx
YPswY0lXbblEarQ2ZKnZwQpqTU/VAiZW+egHJ7jMUggK7ldZO753mqgLqWVGLjB3RJPfLCHRqakg
Puw5kM0zh/CIczLf2nbwP7heS7otMPGkx8A105P+u5+epxuQsGjikzgSZkUDQQ+1IuhPswfRQBpw
ivUFAM2Rd0T0rDo1vmVy4B0U9sELcTOxbPEUcPhHW2Kwld7/GeuSHi1ya9P+L5pJti0uPuevjmS/
j59pqjuNC5+aIrOmOU5jDDVKzTZKWJkZPkfnbuP9MgAG/aymOxVyPL2ZvqsarCAVbcl/L8UuC47Z
JheutXFqTP2w0Fp7zH6IiYz8NiGtsyLxV6JfYWuDYtydyXA9mghzO8P2CBrUgXtm4Sv14GlZHRSn
b9/Xwwi8Y1dUrlkVhvhnXicEaStHY4HizrGZVM7FtbD+7pTU3drPHxDCvEY9G+I5IbXVV0ohDmOm
1F9pg7a9tWeZQKQ5/18QF5Bz9xIJhOUKRKfwXMZvKCb+nizuf0lqVVqAEmUgU1NkEY7k6Eb8T2NJ
/+N9lusOFxq31r6XaXk5pLWUsHVwXuVYhRYuJNpam9wIXK7YQVHootkFls81NJwt7xn6WGo1wzaH
EvFezLY9u4n79nOn4sUaywZwSePycsxyyes39ewLoA0Qm4bJBh7mL2yEewVZCl3NH3Tce9UGOmbd
bK4+eh+L44Eo7S08oFg6Z+AiCXWfa8GW69gRZqbrlAvXk+a24xGl+PEvSWQ4rIf5x++OOICJ1hUQ
y4chEJBvvK7eq4L2gPkq/lnGpxJbQn+lSHMBkHtcBlShc4o4nL/jTJl+XFgJ5ZN/if8csnPn3t+E
UVVh+u3N3HgjsPKIDtlSYYh2VaCDgUsya6XMxJDbwMwSg8A/o/zK1lvqu82mHGh/Anv7c4PdI2Uo
no8dU1mqM/3DZHu+23MEr7X+Bx27xpsal+XRmpG7mBZojnA4L9QxZDFWkL/H5HCjTbSheLpU2awl
QM+iHcUJ8cAkD32mf1WZVIs2IVa66ZBEkRc3VZnbzPy6Bw9OYeEC8nMI4x/eYTE4NufkicXlB9mv
9trucMcxaLPEkCa316cufZiPqhNECEZpFf86UCM4DTUH7sn4VT3EZbXlzLhUsSZYHLbuhiwq59Cu
gcyoEXHwIoLDbGNaKDuIwVOugo750LHO6r3NIDOQWIhVGqVWEiFgIn7gf8VkaaqRpEbV20QZUvAa
MjxmukZGoerWyecb921EuWenGGrOJo1TIDeWov2127AJmcKY6sV2e1v0Hh7eEXvr5TlRViUmnFPt
2zraG/vfww8lMXtC92w1LUoDBrnfWf2KlwPUyhUIR3VxCKJInt9pUJBJSRsiB/PhP1yztYf418nb
AszUe9oi+B/y0NQ/xe7TjoqPzvAI4dlr1XIiPR/XHF0kRhEN/PK+2fNpvIXaZ4EzDw8pinfrNMQB
fS6p+Psiujf9VFoEO8p3UtNNTuv09O333OViUatQvIrtlMq+lqAqiqWRsPw6vRE6Az+ObrNf/L1e
oBA/ff1XK30nkQqUT+oV3vmDPIq7sai0UpoKSMm7zVEn7oiEwUcCSIS0pxLvBthH3i9M5aMuRBRy
gezf4iATgTYSTFLcif9W1xfTp5UO8LS6c3pbw999C+zX7VsBWw+eHHkxX0Sqq63vS5Bc7B8UsGZn
5ZZXUSQ+cvgylNopahBRFZ2w7bN6/lNCuIpByRSZa3TnUVdDqVCCADUhuB3XovBt1SYD82WjmlrL
9prstFh+UuqRNF8ScsSgttjM36ZS/2LtStddqjfquLGNxBdf+2rpLRo4mrbzwhgX5hbZ4GBUCv67
04p9UEnGrY6llEvGto7Ur45wJU/Hkv9p6IPFEh20UMMoF2EOJDvQ250P+kYJ2N/ptpMJxYvefPbN
LEeDGwCG4CO7TmSL/4ef1YgBXj+qLs4r6dwfX2649NpER7J6sRdLvHxu5Q6UlsxgbOix168aTz9Z
nU/CsPhL0zi1losnTmKFxNswu/kJIWwDsCDiYugv7duIckUOGZ2VnC0GbL1NB+a8pyZ34YQArBiD
ZVy5JyLshc2kaonyMCQ7OpuF9HQ0u2WcN+BD6Vm7pQrGYQ7gYxD7p3Uc6I/S17Zw9fXS1FuyjYnA
BCif9UHrgpklzSvoDDRfHfHdZEUYfeJtdJ6wQUZ1oEAcNqdEsTNaFmzI111WBQocnsA54nafI8UA
4dZao4uKPAwqVs271tMDVyXSD032AJ5ZdbI1ZAmEjXAzWhjFYtXdiQR7y4bjTKUzE8hlLTLO3QFR
PadPh/I4vPMl6keQBwLVSeJdNEzbrQ+RIJIECrJ8bbJLaPjtEB9zlLv7jNvuZv5J2z5DJZkbZhTA
3URbU3Zyez7p+knwtRUw5Lr6nRy73pv1QZJ87btu1ufJgGt4MpShhp6AGksqloGWAOh6KGtmR/JP
kml64GfXNgkpmw87lCRtSZeoYprNKp5bGBuxT5XnaYfX3IOjP5QLdsVi4iqFFWOnbWuzXWSxEOxL
syEiFHNXk/v1qASY8+KyeCrTf0FY/5w8qeroeQtUUL+WpcH/wnLidwYtnCipCD8GHBVH8lZh8Tuy
4h6QwY7cE3YyGalrR6woItyG8fLptfqTiqNbIpNTiFuNq0aMKEEj1lAryd9MQxz08ccTbCzl59H8
aMS/d1fh7LWcNc71oX4DlTBVa9C3EoyVhvVNc8a+FgZOSanOp6oYcLgKZeMOZKWHHF7wL38y/JVo
0yT0SPBn3NL8hBqsaYjTn0mlE6j3LJ2Qja+hCDlJzHE+11PQSAiaTuJkXu5KFn28pUd6nuv8FI0Q
501UL7lnqcopmwUN/Xq/J1Zzekny/oYRDC2JbAsq5a5pbOsVVozqRKqyg+6YW5WJsYYxpq/5YMfm
cjq9xfWI0VIee4CYLFMab+Fe75jpin6fcBPvF5ZF8bjShnnHfK+vrZfDF5rn4Yliju1Ee2En+srL
e82ik2oFxpGwsKC50Gsq2kPyufgvYnw31AvNJM3c8e461NRE1nnD9E0hevC+oTbcBOHAGVXSC3Vi
ZMrTeDelCFLVT01uv5dH/gNMyNvbLyl7oW4gu5iDmwrj/RcoaOe2QF+WyhUIAKaKF5VEiA14OI4E
scFN7Iinx8x/ou3n3B4U0NhDYSDJpDr40K+NUTc/y4Tanebxpsxu3MH8MMBx5Bi5sOipVAPe58Ky
Cfs6bh0SOAK0jL6xE8K/kI0zFXHCtJXTPrxVTtCjQRvIz2ffEuZPXUcksV3cdI97i2Bg+aoRCWN9
mGFi6xOavhRKjf4pQGHv9mlkawwBGCetmfV5lFZvQRCKkFxjkHFSF3WvmOtuEpr4fcKkH6CmbfHP
JxmGf2O0rXhX3DGiT5OYihqGwn8z4DflpSQcONJIqjeLV9oAqDHJzMXeQL3kG5SHow1MCSq2gBtP
esSECskWlPGrEC/7TJ26yEMA+kmx032oOpTe2VU0EawqKWyviHH155RXHPL7wkPsDzlQ6rMje+kk
Lp8Kvxxe8bVeT67mQAKWOPeRMHj5RMy/riGxWnfS8IyKOPSUNw+H8M/vxzGTUUS5Mqf0PAVPzexC
1/7l9zqj417hpNYnIjiQx2q7aO66Mkew6pOvfLPIkV5MM8KN2gC093OPnWlz+9zDI9g5agAQYQIg
TpXgTgLOhuQvGJu+oAP+Yr1MwT1sIxFKrNbPdl4AkQsT+IzO32DQJLs2H39Z8lMuPqalceOHLEyC
GM0sHaxrmYdGEV5R9JMHTmNlXz5YBcOg81spIJP98mpgrYrg3h7W0Qc/Hcr3Z4Y9+TbqIJCMqFiR
699KjeRErFA9ipnR1775cj3jU1PT9SCYrHcwq/sacOpIDLdWZD6XhHd5oPF7pwadN/UB5e2EvKBg
/4nPxqWHrErizt9D4s8suJrwAeH3TWI+kWRCW0yDi37wnAdU8Rsk0443tlbAtqjZkfD4yzXA62OW
cZxakaAOPgmOpROSloIN9cn2C94bXH7dK2euUIdxdHGu/tcXMSeBp7J3ESAK0H+qqaagE33j/uNi
uR9Aii2bWyHIO3XvVTuuMtH5EApRYRMzsfB5QhYxFxUib3sH8C6Qtr5TV4qDObdW9ySbxKcTG4Lv
L/ttBQMMKqhJ8bXuqjPTfOr12yLVFsOGcRMWp1fptm97p2+YAdZdtEkdHPPyiMIMyaae6L4XjyLy
a7jXra8FAl/XnO0fJkWsnmM1sBTxVbIMtPgDJSe5uSY2J3M9oFPeOxpbI13hLor6tztcOziju31a
Tn2IlBWKHcm/TxSsWMP8YZ9infr/YVXr1DJJRYYAJg1WmggI0+RYM4ibRf63i44oOTXxe5vCti5d
jXovc7J7ZKGddunCuFliH0eQSlx8kvnwSE0i+emCkyQDfFHsKgsvIvbij8ah4g48in7Bz/K6cQmd
rBkMjEpO/pO5IHFPXKugialT6FQxIjKvxFgrjABp40G75mPX9ffTxCd3W4lYEmhSjgYbrHHyMqxl
vg3AgLU8YNC8G/xtjbMJyvrXOi2PAX0AHtqZfC3qEN/WwwW/6sb0c3kv3BM3atuf3EflaoQz/blZ
QrMqRqZymwNU+yhEy7h4I58co8xL4a/CYLQS/DHdbW9tbYu12ViI94iIdR2Vpmr1xhbGbwTJYg2d
BrugfKzL3iPk7uxkN+9GNiSJ16xuQkGBHC0QZcv3XM6J4f8KOp/oAd69TVL0eaWjrpJhOy2jng0n
jYIl6leOON3sKJYoktCai7rJ02orzDD3OVXAbiDuQ+7SPpfo3t3eToYQExuvWys0PQLV43T/hKFe
LStjKZuhzbmH+4fea/ASFZT0jvKxO3z739gLzupFt1drPeO0HRpyYzVw9FeDL1nx/VfY0zxGQ8C1
vn77XYeOy1WkokT6d1HzVYZURTwuXs7lY15eq6jdtbtwXhMDLDrd0VITOu3WCEehqxBUBF1GWP55
tol3y1a9bGgB6K0hcXCc0znLegIGrSLAg5b5EXCWj2jKbMLoBF2DV3fGJZqfKfiHMKEhcU73cpeU
g/uNCI+UAo7iH9jNFatz0MhIrDIxTli5preycUOBgZjAUYLewPdu1seN+1sUA40cvBBwl2QdkytY
Y6imkEEra/0ptCWfm3fXKKDPuaI6alP6J/uGKFct76B1xNI+GeeLwR/19qJqbwDB8q0VgdhudxrU
5QC7MFPaPRAdRL2mkB414hddEJh6CKMAHJ5M4w6BT0qD/XAZKWY24X1lXlTUWNnF+AJN/Gujl5du
YVZtc7jx16C6UZz7CzEGX+eOt0rI+cWNJ6iN3Rhb/E7DjyTk541mFxrfKQR8KWK4IBtEQn3f5PUF
PmJCisp3xCBFyMU0lxAhi/ivDRZl4he/apQiji/KCSWUNaj1m0aLIV9tj6njwLjJosdNxt8cP9bx
DZ4yPUjpNYZ+XEc+/YIWFiT8Ji2ItfWAV3BQ3/L/PHwiEwx5I++ho5yaNVfkspuRDTZbjSsOaAeE
0beg9WOIMubVb0zBvF9yGHrin0yKsYkndyxdhkrUSWcAsrAOeLLvEhci6Id9aEaz2ak8i2A8ZYT3
rHspWTvUaAAM33Hc0D4RzxweLUZKUMavEYicCNyeTrCjh1WKkDq+UGsB6GYc5LCEb0NPgaP97v/d
6G0lCLxpFdZbx9Taq1cgZg35a9HzuMsx6fDTGXP4Z+cfuJx6HFzpBOIbzfYaN9eaOpxcEUnK1Ydz
9q9Scbl0K5MXuqO6H4pxrdNV8o9Fb5U5IGs0e9Tg167bXZs3G4hLbjPyRNCnk4nzO3M//ZQs//o5
rlD0Dv54XPY9PQMmh3STg0Xdgsv2GqOVNk/QY0fj/R4v6tiZBpby1OKVNtTki3o9HMkCW0v+0hg/
OkTA+FzfxGmLFQxARRIfH9ZWVJsEHWHGRFc+M3kwwzWRY6EzRY7DtAus7Z1DYSevDwh+dzceBfd7
oQ7xJ6EtDVQpqbrXH2pxPPHZxsD/GJpG3nYjtyAoJKESJiRwKfmmP1aMwjZ48heu01cgNRF46EtQ
G1KMZPMkY14rU2XtF0J1sYjoTfxfnzwtIWJv0Z9BOYU76kkQZHyXKvqZd8omiKJBUaZ8e4A3r13A
25cLwgxj1PSwRXOWH8KgKXxby2HM4gOVWTcygKT2qmsMvguPrJveU5q+4M/2ykPG2SOkNfoOQH+s
9XIPjWDY11gqRO2AGkie8KNDr4XZnMsjlnuYos85CrPmia9IjWcO9LxWW6Wy0jrj6C0Tu9lJvNDd
XfecaiJykLR2MlcblDTcVKC9oh/0aT9d9I/TkdJZ4DlF0RXfFS2gU+MsqSvFH89VSJzRNYcBxiZv
DiJ8x7q8pMxHwEsMFbQ91WOJenUEolgEtn5UNExR4/zRdrwag35vafuxPDNezdmJCMrBWmVDRR2V
EzTmB2+x18SUJgd+HUIgT52H0Nvfna2TZO2TfiXhBKM1ia1o5LxrdzxdS8uqnjIV1eifdL/Ejku0
pfQ3swjxc/rZ9StBZ2SFRDX6jKBRPnDorqycFRYUmOYNg0h/wFWho0feNadx40kZeaRIvA3vmDBx
curPJwJX0DsJAhK8jLZSQM9wETN3trEa2nogfq/ffKu7nUZfql67DFgYxyUIHPmU/2KnPhs4VJmh
KP9kg6MCo3lOqv5ag46hjc03lTGTEnMLm77Zp4ZUr5HMs6xQgaHNqBm4SBX9XC20GUAVs4mlFu3a
HJPQWCz5RuLS2qVlWyJrU1swRD2XO/RtEeyQjQJmRs7dw22StGEX+sIHnEFayeSINPjM5aEEd+yV
gzcf41YMtR6VvDdezXF6z2ZGo9a/KUyRBzgtdQI8IbDK2ZF+psEOpqLYd+kgnJW4CKT2hFTJnSOM
wYOkYocaO+vYfTt8rBu6sV0krunM6b12wbQnOq42KARgCfvd64KkyxgWOpsgFg1KenghpQyH9p+i
h3KNXfc+0rZku1o5nrwhHYsg6ygpOo/vpuzOdL0vVb9C7wFkQUHWoEhxj7Te8TXtnOY2j1c48Nzr
nVS04MvuF4hb8A5GQrT5fO/r7Iv51uG+ii+20ExbJ9zUEmif9BgHtUCUlPCk8ovKgyONuiSzoZst
48ESVhjc2RYvoZw5lEwpCC1fPBMKwAHGJLaJf3Hm7OvKrAzULiv5Zr9F9JGNqM23aIIkAVksrZmX
+6BSyexTrfDv7fqHrrJK00xqnc02kPn5shbb4ZzRujbZh850v/u37NJOsE4dAXDkbu10DwLxvp+M
ciEmE3zBpcLcdZOWCN5iHJEqsDE69MPF9hRiJHRBAK2GvCg7rW/0m8iakqNnNfV2AdLpekkwpNCR
ksCLRuMfuPn++xcPDDlTyM2FemBqlVZzVin9LrfQrnHS7FMBnEhjq2UyVDmEBsEHfzYcRde9Uey6
ONQqu6Tq+JMrcq3MhN7yZF2lgjh/Ba49qnxJZjXc/g8dzLsg843bCwaqM6b5RTDL61dhZre3h3RD
3W3oZShxl1hkCnh9df6iJhjTEerg8N2KAh16hovReO/uh/yIDHwxm+qbjsDrkHC0xdR5FZtfWrFa
xAcq/IOn+19Ux6/sU9SIP+ocPDArxaLw5dbWFHMCOTNXrKTRtOaobAowCqqWrML6VLuyDx694Hkb
rZEqM4VtR8PdNoShNJVDXSF6ebR4cloFVAmCzHYfWP+tKl0fMcDJ9PpB7MexRePmBU3l/mZLLARE
Z6Byjezi9oQw9JZ+A22t5xU7d2lRstcr7Zkwz+VkdIHspqeubV9xGlcggTj5Y23aPFas77LSyMiT
IrV/Qcjf7XRuNwFdsqAO5XqxQizCBiZF9LxwwwK7dCTruaN48AeBCOErCtCaVy4xTh0+cGAiHiWx
Ql7iuV4+gDT60ToGyuUAxoh6N2daoUiRyLGCpj/PqOXhFeLnLHxIwiaeg68wWg5jHXVG5MLG73lE
YQmy+WjlrZgTpfmOHK7bw+ENwoY18xgOk4TEsDzdr9nE6PwziMvBnc/MRFoZlxF/16JbQIvQh4zP
idlJEbrEQmz3crAZwr1lMWqBTSPs2s/XZGTNaEGMeYmX5WtKHBZAVdDMfjiUxzM2l4J3CThpdx89
uW4GG6iEnz3nI7sKGm+sWwCZUstx38VYiInLSbX2K5KIvN8/PpdwYhTjeMSIo+qNJzGeP/jbM3GR
MGDcFCY0VrPQQpyMH5Q3tfsqBFYUzTq4k6V8NQWhK8oVqWiomzusRaZF0i/F/BA5t57L5OMBYgsZ
pBvBn5yKheRvnRqNPHEWDTj9/EWQRjCm2V2NwXT7iVZDPv5Iqq4n4eDPScusclxpg/7Cf3hI/eob
+bAvuPf8SBl1B17XFnVvZUhapdMupZk0E0wU44Fidv0z8rJ8G6vywqBDsRhVXVmG3PYaoS/LEo71
BejH5hdTsUAC9Ui/X7ZCEoqD9sPpydw/f0y2tGbswvRGkiQY4Bzcjk/t8IJdD14f6sHvVntVWU/v
KpYQqnRtE1bAB7Q4aacjGB2x2GAZz9TRmi42Iq4k8p64jsnRlWbNNrTAONs4geb4zibPwnB7M6Nk
RSgjfgpJMQv8Be/5iwkl+01+IzrRurS4Pm0lSdSeNFaYUJHMN2AYQPVryu8OdViXj3Bp80R6yaJZ
o/Qbat06bSvnL9+P897ukpQDQ/b6jgvnOlz7XEJbehVjXkhu09eZMfAHJI0OBzE26rTJaTmAukoH
FAlwViDkU5b3vUGyP3NVfBMr0x+w1XmsNtSDiOmqemqnnNVVo+PH8DvfOz+noGqcDJm0dEF6rOG9
vaazzckrRv1LqJJSqr9muLGKUIk/R0/y8F+RyR23LqYH8+iJjzTQioiaV6k7TcECtMBSonJoDlul
KfPzC+QzAbfKicKtn5mqmh3JL4gbcav9HplSU+kN6KE1agPwyLmqQysMffW66MWOI8QiKoYXqGr2
hPnqz0btpUuPveB3r32577CfqlOVjparz2FNawfoNaPHPdFdOBCvSYc0RG7NpWabZtzVZ0TZg9UD
rgs5lVAwTXp4VJ25eVBBpQaIZCbIuANctlzH9WgwgN1D0OG4T5GL8iQQK0lfeus8kNUFoIGEaTZt
WAW6IxEblhFX7HPD9w6oHPpK9jGqenVN9CyRGGIXqKrhdy0PWZ1e5TP8D4MbXVGkdacD1hEpXABv
rZ2DB4HN5ClCkIYEIT7rpWSnC78EtOT9L5mxQdj1r+m4loq4/8M72AVdTX1qUc55ENrozcpVEcuB
hQRL/fq+j7R7YfL9p1F5Y3XY9CSfElmKkgya995u2EEcRmYFTCwnMZWbb3i0bHujUSvjA+Rc7JnO
yvvbK3l/WWkdCqbQH2YoaPd57QHYqw5+YJ0T6j7TwUgO0g8d9wHtLxCTj6howcK6VYRvRdcuVL7j
9WLQMR9UIczzmxG3S5tPFO/wOHuVeWvRZUUU66xS2iRYtnMx1EbOjHDBnxkZ1G37hNQoC2RaWOQe
oIpJUAQpEMFksnvixVtUFriqq35K51IlhDpYMKkWdJAoeo9By4SOEHTuaY6pHiZ62bsr3VBxbJJ8
vilHaDJQB2CWc4SzULtHyz1dp8GQy4UFGjugtQc8cMXU10Ji9YIUNSiv1oOUjotBghFZXvQ7vS/6
InSKlJYcf0qN9neiMLqhYYM3ql/9PSZu+JtlaGqolm5LhD4AWb8NWNPqUKrJzxe8QB7iOVF7Kt4n
Syc2LMDVJrrcyjEgbBKaUvsUp56ejSZPW9v4akz6v2mRDMGqv1obSMMj6dgBt9UmCIGtVNeosauw
6F/KPUv91iaSaA2dERQyqfBAAbnHkzR4uR1ftbI3+bsAus0hOfT/GXK+F+nr/C2hpMGugImPPRSW
Z2bbMVD/SkX5K4N/ag4cuHK/jUab0R07P2Ys6DsRrDVHv01wEMVOPqSDGA6+tLLANPEPFv5OmUSO
2Y2RfG5TTkvlWr16wNQZN78TA5D21+Oy/EoI59FD2aL565zgUyKS2sz47L01AtpFul/Bc7s5vzKU
K+ulGW6vplDDkfacVJ/7V+kZny9j+JZK5tyqJJ1XYy+dMP5JBF4+yjhO00cachuiP6Aec4iQ59MZ
+ejArRgDuiIzPZc8lnL/FQHySdC0+MEE+Ff/zRV+B6VsKqYMCB5i731/+4EX5dAqtvSDvZFvA7EU
+z2X6OFWCwtLQBFoJfkymS9kzNlrzH4QV2GHT34KmvCOsO2CleJRgFM2999mZwmggC6HYki+ZmBi
bJ4S7VFOr/FGXYvG+DdrZOota2Jv9x+VNFuvMR0L3P3j6qkQ8+yuzjXwGM3j7T1ARafSqSA21NSb
uz/Kn3lOqHurPNfHkK20LFU0XJU9CHfDtnC3QQ8Oi0vCSpmPLpxqBqoAcuEtIdzwh2iTmGSkSgoH
EZTSf7CH7Dxwq0dL/1PzBgqRGhfuJDPLndRB98E2MnsLUIZWJakcfWZD+aBpLDqe/Ddwu4ltf85V
dTiF5l6q/MpjIQiAWiYRv3ivZbwDbRsCOa7Bs78u9BamJitdwngdky1mvYzKumw52F14qgGn84nN
rOfQHpzxjKAMKQEkh+Vq+4PE3JzCn4yr7D9leiKvVRhgF24GmDLr2LOAO11562MheLLwDaMdI39r
kL4pEjTxzDsEhaaQhKjnetK1oz8Rp8LhLkxx0mmanUR7W6dWRLkucy9SLhf1udvjEF/jz67GT1Sf
VU4Ge+WH8zNNF2cBijkoHzi4A+DSc6ic+hlDrl7gVVJxQqaUFSz6ypyWyzw7FW+s4VGk+jM/v0ib
Rcx+tVp5fLb5puVinGMbgx/xoyz5TcBCZ9xE4C0HevM7rL3g2oTVzHVdZljwRpG/hMcP4n6D6fLS
TU02K+tE475lzlcVaZLaXqEsUpKEhcCTX72Vor805ZiTsVU3WHBQvRU7RFIu8ueeIP2lhTZ4k0b9
i8uecoSOPAlganJ0ufzrne5qIIGHDidRpBiQWCnn2YYVZ1TzY1TEawtLS+muywe0qTTtxD5+IT96
8K/9JWlL11mnmyVmh00FpIF9F32KE/On3IFaYkFyNbXyb1jvQw4nf58GzWi842caZCxm1IEtTGmb
yKpC5QC6a6FOD/qhyih8w5wxCJIa6kSg7+iuPVK2ouGx0Pf1mp728Fj2PgGRoGigYkzk+mlKs081
3ds/OJLlAjWnVzRkGrVeQtGeg2T7eAvH5FH2HqYkZb8hizGpQcBeM5NzxQ5F9IRVa5qGhQGfKgCY
euqnqdgs/+3J3Pq/bMSJtB6tRWH+D8ot9LsMK09SWmeJtxeEDiatCOnRT2ggt36vZWPaONr9L5Co
ENEzlekROk9X7FWR2/r61BlM5QFcbgl8fUMTNJgmAvy7oYRihvEDrkFYY6guJ2DhJZHrspSQKgI6
WjOawak+VQaz8rJ8F1PC9Eitv3mT1JZc25DsMyZT8app4isGb3yKzdNp5Ojfc/iekFBHQ5FNRyiX
ZSvob6Wdk6WhSjVz7V6DHvUblQQB8Y+G+ztGLMXnn3ddK6CPZkzhqOFAORdZdBn5jpw55ypygQvm
S2EQxzat4AJ6mgHruQZdhP19WmDmhmmat3GzsAueDihktvAM+qsGL6Ghrm3B720tyN1K/m5e0zvS
1o/EmxYilA7RlvJ+TvhWWcapn8AaVMWK0iZwNz4ZBnIv43eHfOOfKScFn1TCTiZLnmfogkdU5MKY
B8eZK66z6yO0I4HnjUStFmrCb13fk+KFrsP0PRf/0brwSngyjSEHamLzr81uMVOFmbGL5rx0ONKo
G2KPp2slNS0cV3Xl0i+Fgz4jveuMU2uJrdF7kzsIHotLG0rrl6kFz+0xtaWvTq9ne9xrIr+MpoRr
MOy4CJw8BEN16fq879eYH3ONIh1xYHQdzr7Bo2bfAdVC/Bty10PgiXB8y7bmoqHpU8Q2cslp5ZR8
LN0IRLVzreFKCplnX+8DIJxHFI9mFJW5CFQPegacx24TCoY9DtpbQO/hc7NgbBuO6VxhjCFssMkA
BgI7OAbwD1u6oxnlK88e2mqcJ/p5HoIE3v8b5BjExWvVvY6xK3S0tts4o4CwIYDPh7YYyFJ0OweU
IGbMRQEFcUCkczUn55K9RLhIH47xNkX4z5oo1US9XvJuYVk1QLsfvjypbazd1f5iDBXY7RHd9sy/
LO3fd88OCrruvSw0jGKe4gq5Rk7N1l8KsjLffGLhC6DC9T40S4rx+WxgAXrMdcT8OdQMK1ND7QPZ
GJDRWcxh0ke3wOf4GJJAhdwuc2XEldy3DyLg8bYBIZQbrin/CIxTqJxAO0wnBdM/kqxETusNr5dQ
h8Oyd9qABtMoFQ9Sc1hqi+7jfA/B2HDRUmwuFeaNPWR/QrHEvQl/14+cH48+Iz8uEY25RvFoT1yL
83NdmNI33klvi6oFCq63WnsZXc96xyIN8V9sKUG1evllqXsOs0DDCL+AvII7cYSNy0A/hoNZu0ny
7iQ92Mba4MwryOLIba/82+JckE7ELkCcFiix/+/q6E9lB9ny/jHirEbQCDW4lhqqP++/0IHpYyD/
64KTSzasYdr3JNENUDil6edODIF3mrTDdL9HJZk/nqTXbBFlvTzg0mJsXw4mtrh2VGAHiHk41Ls1
XZ7sC10LJO+4LsJyOUoUwHNwrlzo68MQnSfQ7iVY9LZI/BJzyeisH3fY5jVIVbyPpQyfPteblkYl
vhqEN+jQaIE5eYi2haRBvodcOQ+xjhZIvLGoL65CHVAKNWwqrEL6pohso4ThlO9fqKkMpuJHhbA7
sTfFg1Uqzmwaja2jHVctzmTCRvhUUwvCkG/aiTUSrqS9IPdMAfKqq7rpw5jAzlwNfQXU4wqrLl0s
IvXJySSd/5DmCf/7I5wrMdSo0BOzQxK+2bLhegf0r7SWPEEg/j2JxxK/Bv4iBGESrt6wv/KkKTr9
gdp/atCPJStisr4dr4B9lmYver8834FVJq4P3VICu7V/4yhsMLapnkIjER6EA0gi35LVRP9kaVTX
XKY2M58lHHP/r/7WEFR1sZZV5t2Dxw54cmPUHDsRmoVWj8Oao0OGuKyO1XjJXRXp353fXUXLTPi7
jJ0V8obOek9quoPOHU8/IFlxeDPcCTTuml8Kw4TZKPLidYR1tYsO+z0dE4i6XZ89Tl6Y7V22Dr7Y
JXyeQ1ge07crbIL3ltVb3Yw18EmGDeY5Yq0rvte46SyOx7d2ZX7wI252lu4o+VYvOyAHLRvWicCI
SKLGBfwM+PbFiqXMyin5cRuR3TCACEAED4HsJXYUnPg7behkKY9i02nZ9mNvwKp0AsjJEIkyNsAV
d09CvAbc3MYTHp+70C2mwt2+tBMduaLsbue0izmgDRQb4VepfbsfoGerFfUZ8pkG1a+9l+6uj/b+
xvzdO25mz2TX5JoW5oCQv9Jgw8qx3/7jXPHcWelFwzK3T+u2EnWBFr4YNPpHrhfVf1zdjmAL4plk
VHs5BAMBLEwtiWWYxNEGtHtIoW8QdfkE//mTWqXOPynxGsOGX1h0vX7IfOeH4a0wCK2Cslaht7wN
x+BL6gfLmWyCwgHkQXjKTgGu73Ek1Rux3o7o9a/BpF9IL7zUH9iNQTQ5aQqQ5yBQUCVCjw0YLnPC
M+Z4MGidPhjtyKpQSPBcE66fVjGLuDlnnFGOUIkLJ53jvpvk7sUojgmaAAhc0oxU3xV/hrnHBX5u
EYxmNHFmH1NBE24xceZDkZiQ/20lHSX06PunwMC8uABmvVW7j4d0TMgdvMZTLpqNjY/3o8UKi5SA
BgWq96eZaDrDv0m3Zzv+8Eb7krVPJs4Jk9l0xlLgUD9O+OYGuvLKEVlLU+oDNEVqaWhJYO4wj9bN
T17zbt7h/NZ1YpMS6OkpoO3ukypaDdeCvqsC2GrULAJhuNQ+/5gdD5xgQTO9FODxWgBsylKYKsjP
VdkVto0vDgQAlRMIHRvUrFUtkePLcrIqsTv0ByceJzQOLgslvnCLuqCHv16Nyg92lbATgUZtncwu
D3UZJr76TeTjKTtmZ8xto2NIsYH99MNhbXewOs72tQmfP2BgtFgsiwA5xlSaUIIv8bUAvQZHRMzR
nRMvhPslFyI0K7CtZv0uwZ5G1kJlWRTHzHez7v02YPwodRsf73B7H1oImK3QcQziGXbk9kTKtzHM
RY0zXs+1FS48ezXtV4b9X31Rwq9bP/v34lxns2giM2+nXzONw8J/WrlzPAB1s+z7+OxJ3A6o8OgM
FnokuWPanrHPL7Tk5A03SojYcnggWvTXW6qGI9SHz+YzNyFOpmO69zfOrhulpr93fiBVDG1wXvOD
nO8yohBjmAVS3qi12wvA5zdwgTjU71axctYhA9T3fq8WEqTjZZ7K93ivo7YAiZABQ5c45sYuhYPn
F9S2CSGM7Ywn5XUCqfbQhD+qguJ9PH9kg7QgkAZHSOgDxrUQII4Go2ugYzK0GXgb5ZZLVtuUKbM9
faoYTFD2/pZYWbiqOM4XwzvbbSwbYPvqRAbpSQhF4PiS/7O+faem0Vhvc4weO5+T0soRgqX3g+0X
LBqqQyrYE2hnRr1V0ewNN8xEx/+alrCqRtfgB4wY74gthJd9+HnQ8wGwLQRwtYKKKqJLKFT4M66C
EPFALglwMzUvh2SCHBA92FZzJMNVGbDQ75wOHS/v5niYKcDuqpo+1TpX4kXphNoNpqBn3NF+xNly
WcH3zULFqxHe+HKHxg5duFlpjWBq9V9Cr+S492jEXPUFBB/SjakJo/ARhgbR6etqSqvEXxuQny7O
GTwioFxfYvLS8mBFjA6Wc/sMPS13rJhQNsunua2SW1546yCYBwdsVZ7iEI1Ptclm+HsK57t9fL8S
8G/9nDL6VV1c7lZBz61LnUcGhjoKNKJUeU5OVrPtyMvvGWJYbdF0njKTne9xTffkB1JWOG9ogkap
dD15troDGSJVRlx7tTrxREbfryuNbNY3kVAgW/oxMWLU9hQO27WSjV4Kyg6MMTxq4tnMO9dmPAwM
EMUElLHBejVQydwZJmUCyNMEBHdctV9CBms8u6oU8CfTkJskmfusC0AmRGxcOqmqBPSEmHT7jwMz
TAqT+FmUiE+fc+GXq3FPGt+hFbGQx8bqtUqXR2Lxi0dsO/q2dmZyrD2GlZj1/Xs6A7cMMC5SRQVP
GntnbyWjV6/rTDmKBQQ2xhYWwok/efs4HJYEmWPZWiiEJ8f+Zej3BXEO8odRS9nfVysvwrryWzYc
ApWwLECGLNnOEoN4LQp1wRBubtMMI9QAW/iJhK0rzdaNTFv5dqxJA7WnAWw/B5IaThH0uY/Z3G7M
zfO7dACZIZkGv4A+aaDcETDPmeOkNbqtvkpI4PtVozZMbJTaFHbi62m5KZ0MRK9QjqyA3Hh0XESn
7gthQkyhV+4mt2HiQqjcqYskL1ZN7KYPvMSD8dMBqfWfCYRocAWYU3971UofMBrip1Ad7aSaprGm
+5B8l9p0TC/Jo+W0TSRUMweLI6t4LErtFEg0YSfSs4EW7w1Mix6lvd7oNxZnwmcKdXkPHdL7oAgj
tFCr4WzWpmnmvZWlWWcVdSALHf7w9vvFGDH1odnuNfwjSmmz7/w2z74E0Vz00ZTYUo7BjHP1hgUC
71XroQUniqlv0m+fusStwgjMeYTrfPxXRGRc/faBEqrLU3MV+7ziVkbF+NFBbGIfZT2kYST1BAyP
7hqd3/5F8WN3D0BZhPELrHrp8D+ECyH75o1JSQL4H1TeIRY9RTWiLNsfuVNJWlkHmdrmyuVRSr7l
cb1LySTvfRwtcenuk58RZ0BZYG49op0lbCqooFxnzYr7Z9rpro6kCy9wZ71tQhAwCvJyrXUnSDOu
lZkhXWEYc9zex/al9ojwdFkPBuSGto2eHYRHqTpSV19gFdLQn3636+ydASLMMpxiTuo0ghICtU2+
u9/bmw2Xjg3rdpVqB98YvyS4MdeR/YS2MjsKCFBVD8BVKR48hrhu2JcjyqmIFFs1Po3N8OReYpjw
VLcnsQzFqEpip6bt43Tny/rYLiL3zd7LyCJIyoETl3ICioQuR2eFPFPw/HulUjlpncD4AKcQrFoe
2VTlA/BamZLWoQfGcRZO9uQQRiJ7dBGR4js38MdGjylgN9AWzVMv0+PqYvcRUXgmali8Jx2d4/ze
Tplm3rfTaCQZ5DFkM6qKTFsSHmeaZupxCOq6CUEXuCpXKOqLUplDaloTWK37Y+4tTefqZKWf5byF
qfZRGrZ98IXI17bEGuc55emt18ZhYF0QOp03vqXWPBXfdbDNc4GExMEi+8u7OxwU2BKo2Wl2DEzs
gCXv+OWKq6FVNKc8UfITu0bgdL4itRuLhb3HeivL3BGyMcOoNnB11NJrPsyAglr2Ci3nXaZAKb4S
5eyy3kJBfateqse/LuAG9GGSbEXWDVzgr9o3z5X/Y4hMz5WCR3DzYifZYYJjg8jUMrRi6KDGtIF5
dHeQd7TnJ6x08Oi+msOyL7rfwSFgMWqKihRw4hRsBoTeCSR7S2OhtNUv4Z8+IrKDsofk/NFMLvPX
LZ8BJxw5EVIHPwVZ5U15ZYBFSwd/3yRPNPzk/Eb8l1ggwcyTua8eq2J93hYO6SfL7ZCqmbIGV2D5
E8uhgKr1c9f94d9yVGrpD/1BRoKiOyk6MUzSsap/CHjuMsZYe8VDd9J+Rlu1ChyzFLwJtQ6Balrt
yHJrX5o0AjIG7gk1AfaIi3dM0TajmraOSWQ5APyqPLD9lHG/u6O8eiYU+3guGyc2ViWhyMiUBTKC
VQNZ3krWiZbIUN31m5by/BTRGVZw5a5lTRz14xixc60fvZ8G0HFDRcUmD6OniH+18eThYjw/MI6A
Te3+W0uMJoJTn7id7NfgfQ5nzHGy9Hej3fGJBctHxLJxfTeKDmj+d5sUjI1nIY9rsJ827sF4q8mL
VUJ8DxNZbef+ulwUUd98nmwo2D3JyP/vloVQcmO1uBOTJ+EDtxsSss2FBY4HjEWI8Q/YCNDz/7U9
2cQ7HCmckPhWagUEbCBnzeUgck2J670H4KDdM+Seg1RCGwGPATyclGiIvIRj1vB6a7ZSXa66kYiW
lcgyzstZLtOViePAYfTPE9jrxIoPQ17sZ5eJRzx7AN2w4y8l97ZA4dbIeavfNTEX2tOrbqa2hZ9Z
jwugE24pyzGe7jVrqEMf2ruKcNBX9E/wnLePC7TGCEKn4CDLEhInnCwyHC77zPt0Xwpizn6cIl1F
3XMyIJbc5aPBBGaATib7JV4ZtzUupnr2QWBUK6dHJXXoK/j5Ds7CJyD1JR+l96wiRP6VQDyiQkrT
+9z2ohx6NBurjSib4XFjMCxkeWkHLbFraGcFYoB/JHvn0m9jgFD2btR69EC5VbaoNLHoQOh1NtE4
4ObEBvn5fCfhixfdcuc+zpHligH2mGzTdrAYXmv1FGc7UpTIEUkaa6MjBLn0liqyy/pIbxWHvGoO
ujXfoYJ8PH5VDOl8HLdLcpPOykPyWfhSOJMG0qmqUPVEN/M5IXGelBq6WjQm4DyJUghoP0R9m7QP
JRSi032ESKlsCqejR2kiIeAgw4lDPIhR+C5PuImGX2e831ZIaW7nt7fw5RNaVrdTpCVhIFRbkWR9
LcOUQFSzpLnDidPM71/gpL3ER780SSgwZo0lckzrmPMDvDbVNjfcqAeKIeMZoUVqRuHeYkytau+8
CASDJFHZnnWDFL9Btc14IJVpOgzW2VuiuGnbuIADK+c0dk1i04d1u4QpnPNZslv9FomVjcOwIRE+
bUbVtQ+rfyLF2g8rNet0ac9NZwHZS6cDRBR5xwWnLKWBRaj9XVXJ2niC+erQHg1IUIm4le7aBUMR
CSGsae88Xa8iucGYh7gDa1tCn7Iyn3vs5DHFi0SiJ1vY5aLzkMCjDIlJJGdwFCdwzjUF4i7w4AJ0
Reat+ISG8SG48KrTwI3FT5IC0aRb3C8rrM7F0TOVvPHloyIElUMZqBCtf4lZ8EWsJSmT6Xw6Hq8w
Q13ftqgj5ZOxtfNmmRv4D+lv9pEjuswuUfNJPGCkzcAqJfMCmIqcyBeJYGAAqT4am3kLeAPMlFtM
fDTfufVt9iSkT8ps6luKmNP+tQzZ2bkacYVcTAhpORQUQbpElOh2o7x8QMtJozlc6mtBk10Wo754
SWMdFQkWM5LHWvJX1m8f/u0N8kP+FrzFdBRb+nVQbKZ3wft2nke1/zZPDKIzJX3HPSvknDRDM6+u
nRqNq8KJePH4EPJHvDYgc1pFeBnuIPQgvTZ+rUDuNWWAiGW13EVSUKg9KzdPEaffZwomHjPAe4s/
BRYeFOr/OYwE3/2DJwuqhJ7lu+zwr0uf31enMSS3k7fHjxa6WWpjJcfzVCaLntB68pd/z/Zu6Pqx
Asu1AuvSB0ywO3oipO46sgRwCIvgSC1NlKO4FhSMSywYhSmaJkbApY2ZSj/nXCQxeBMUzpJPTzMG
hutRKvbOmDNfZx0BgM9eazcsn1AiKhepH8RRyL/mmFIVUUfYD+/So38Yx7m1NysXhtoq+QbXOEhW
TNdNUusePIUSFs4Pj6beaeCo5pbOkfLje/ayGJHz6o5uRRzzAbDhhzcpAUtGbuiGjR1roVeJlvAF
/i3FqUDvB5FD0GJYoXWBykQhr38W692Mi424SNdL6X3gY9CibAbMFOseV30ooSLUCk+BSvu6Lkdm
IFj9AiOTHeGh1I9Wu6GnAkwN8Thtn+EFrB3m5SxD0/Ck/htZRt2qZaf7U+GkS+Kno5EJjY0roicp
WMmuZF/3iP3Lb391otM4i7P8iCC0VZ3qohIGV2OK2J/FKqlofifu5zKbSYkFQ4ciErrLSloE7Pg4
mVoPqza0B9gioP8Oy2JAgSiyHmYuyXpqk7wG+wI/YiKObOyXfx3iMp91DyeiO+Y61Eq8xibD98fT
mbVPMVxOlsOp9tbpGPvKXeigS+3F6aMqWv92StrPeIL9I7A71Cuta6XqBJ0wlLWfD5TDlJ3cqtqp
ciS23fasfPQdblR0h4oqjOyR28CmvoeNsXFkrfTN7MeGS4tdR0dKObWvcIU8wYisKRVOVf+lTSCI
f0FaR9D9Vi9L5CfNXmK5ZkGbJQ+DE4ML2AZradMMeZcmqH11dBUseFUqjMDQB1lh2tQCMVWqUKmo
7HShONgVF1H4qZqAqBLiCDAqKCG9rlcQ/g4rpiEiDZ0Zpk6wTIf5q9vl8bgCIUoFwiYQphj7z8y2
1SmJ5mW562cjc4ASTMjzNBwggqfw86VRHQky74Y86C1IGRmXBZk47gXgTdiuIZQIR39CfIRLarqW
VJWopjGA1AjfjTZrZOPQIemryBIgvVbBvg2GGP9L5XTeJvAGcdd13GjW2t3CcuUmYDNADZ8+qEyA
sK6uOuOF7W1TVLfIVeDc6yh+D09ROx/xRcZTxFU8WJhmRdJraw5CowKRdqBzmpa3YCa74LuA5Cnr
sju4p3Vb1Fh7PBi6Dhw+nJy2teAS/Nk5Prn58/4aVnBa97xurQN0DyJFqC+qVf+b1zQ/hsCFfFsq
6J+XLql65Nb8ZQCg0mrY+QF1Be9eFY+esOeLOL4idnx+tvD283fUN4TPtgzXfYCeGG0063QL9R0w
na08QrsKYD7mGpv9rDcKLf1zn53gAj6h3rAGfhjtj5LMRL9EV7aW106Y8oK2RGZ56WdZEw9o4mhB
0NQDKUGrmWZu9Uvs/6n+uhLZ0VbmOCZkiOo5WyRGLKISnf8ppXs5wZXqMZufVUtF49s1ZU3H5Yjc
d62Tt6++uNOLCYKbTq8UMF12SyrlI8mJRYpPuIO1YJ+Q1i2Dc4V8QN9sJSXrY0NbHwUYB9h09Ibm
f3eCMY7hC8Yg7cdRE3oB55rHUh0OHfd+R2+Q+v3iw1VIU0jqm7wO/uUPETlr9rReo+R76+ZGMwWY
ZaogkQvTrbKnYJLArTPuvmeDKncmHLrvsPL48RPSbYUfOCfxxcZyBLfTKsYmQbwwGH7B6wp+GpcX
+sxSgFpOVYBt1YwG9P/a689dtWZlAN1rgkOP0yB1uc8T7jgLTthGIDWF/lGsAbGPqWmo3zW4jw+5
b/Mu84AQVdMtjNR3su9rMScBjniNmfua2B81ZQyQeXAelr8+JN1ht4V4U1Ct4tXUOhNOE3YHydO7
o8bRRsEknzm9C3ZwZqHyT+x33F5SmVanOEpRCsr2MUasFrK8g6q/RqYJeeKR0I+1ir8x5Ww/DZPA
itCpPO8TaVYW7iB4pnBMOpj9QLXfL8q5rggcslycFExYf//bkERZ5rOkGdelNIBRH890et7PBTV2
WFudtxCdXSXTQbMVpBPfPqZ7xNqcCqWUqXTQxFupD9yqEB1aHd880hnh+BIMt7Dud3I5X/NWXI0Z
aG/Q4m/BM+JZE/CQDsqhwGnoBooWG4vrfgTJGQUwxPkmddk+GIKiTHMXWLOHSNk0RsUBRJ8z25Kg
Ma5rdoBhX1/EVE0ZxQ+EXoLyWo4yml2yy9Aiulv1P4QosU40XeZn7S/nP2MuSUy6oa0SJJKaZ3oW
TZD6QE4j5t2yc/GSeW2v6sHSiIiT8yVe33UekOhrAHf+46dcN4U1/Ln8Ej6BBjQOPsJWUBvYCjwS
TzxI+IznCgcYYfSuWHlPgmtgczHYLZm0h+aMCpssIBvac9cF0s96gBbUzhNUlWoXqHzVMy1fQOuU
h/yOidzD8/l6V6CDTM1hw5vamzkW9ML6XimmGNz/Z39i6EPTRmD+O4T1RYeOLSRfq9wGMsbl0M/j
hYhr8Lrxdo68DtUDWjsjflxQle6McfeTYrpLDkmpxGBajnwzoztdkyG/OrpmMKaOhiDkGTPh9O53
fHxPYqUrTkDPDQ64pUYm/Xs0yjtYPNCDJyo6w1g6QKx8dvz/488oy2YHC7bDpL7ajrj4C8Djrhiw
dyfCgdLUVT44Yve2XRZ00U+/R/hk85y5z+rPT9IuNwcF7SZ4O0kqLQ1BM1eSwOwnYXue7YJCmMtY
qIR09nlAbaW6GPoxH7sfBPdhd9RQpz3wW25J/KkGZP98wThhoqZ4NJpLo1O6Xg0QwqcuNycPx1I4
CHivbqOQsVivdFNyVcFiofDHDrW2QyokJ4lmoabAHIP3oLG+e6BhXDqAWSgt/dUAqn+YuQb5Id9j
IvFm4TxTIaYRyXIQW2tK6obqwbWVDK2P9hUVEMKLqim4AYOFg7ILz/+kNqKDEny/tzsoLbeKixC4
DOX3KukdY7bHkZAO2fXG5qgOgZBY0ctoor+GbKWI590jupnDV0nC6PTzL8ca8aiTpW2OrUgkfeQC
9HHsokIcd75Y5TNKP/XAYwNyQ21PAzRCcS9QCVN/Adboz3wEXv9m3w/fSAyP164TuOBApl54g+4F
9CwtDPRbeExE4/0auDh8yoBjst7tR7cVRxnEdbe5ZVCgkiQUJnJ2oA2XPO/ri7PgSOaAXcvycfjL
JccHqKXTTbagHbBNM2lgrIwCYxRRTp+SBVceN27SJSQwdDUNsjhYbF3WVtHHeiIY4j797mog38Ur
TkQVsL6VBAZzaKsVE2h3vqHB76yMici4fQllbUBTwHPWCdmaWSv9MFPHWjblar55ReEl70769tpx
zC82m131gBG9EC7WRzXwVUjPiVUO85iUXBxod0bX4/3k39HSBFhZxjBoIpwW6kuM9RfWzcoHke6/
aHfvz9IUBX3Em9TEIcyUB+Kqf1ZdKjR+i66Ce8aGq1Nd5UO2d/cjwvbwJv1N9F98eA5SDFXH/KKI
6hRBxeyhTasJLcGlDYmUQH2w+9FeQnkrz56bxXjaypAyMDRPicXd7Z4YSuM4eX6r3ifvgWIJxqMS
RyYxkxHocIi/DQtUQmg3oDDSRm1yr2ES6W3SAgZQM/w2O452YxHPM9uHgb1c4PUkzFSX7NcauYPb
gk2TK1LOWYxc3EmrcAQ6fIICnl8yKdbA1mCM3vNWAAaTENGrthPEcRi006VDFY2o/jM/P4JgwGhX
YK3YWlrixJRbeRt4+TOYvRjhxpKTp1fvdY0RAzfr6Gfk1CJkDKxZ+qnPJ1+nwHA6L5dYvPp0+XdO
2uQqcaI6HkZwNqt/dxZAszhzglnQBdnSoLE9m6ikAIUeecmS0bizyvKYhVJ2ASTq2ZKrmmbmEePX
rlcq0QFfDhPqa/fKFIJlQPNSkF5KqinBxzArP++iBOz/5F2hQH6mSswvTHBWFxE9uWkML5TDohJ4
8qa41X4JDbPDnNoqC56Pw4yLi6lfEcD7znEaGxZw4ICYWiucn5jBLHem19zwDooZ7CCyKRGVno/Y
EzQEu3qgJDC4regGEmWfQ+D2TrknDWV62g7tRZPZm+swcU+cxK8oOkXPX/7neA8xTwmMVlwD8sKi
BtygFaUBnAP55c2dehqUKowVxEK7IQ5MRlvFrc7J+eTrk104H01IurVJVSPSriay7ZlbY0xm7fOV
1W1k1TeDJ3sqiYV+6UHD3n4GdfvBu1HnCPCZJwhbGiU9nWwnC8RpOcXeqqelDl5mzFiiLiiez1EA
GaUZ1E/k9FpEovAroJucHGFmg6bvD24iMHgho1y/4Gd8JGPNll2YicxEfOPmKzgC99ariilHOrnH
TDqEzdx2qGJwgGV6lzdDehiwGTJOL4gJ9uG4kgI+TL2jRL8fo0wkZahV0vgsXJ3dyPyj6kjtwYbm
b341NsQrp9Rw37aL7OF3xD7WUSN6FJUq8oPWX0ShLnpoF/2sgW3lO8uW9byz4hivCQ+fNwC9er5X
1nCCR8NXITv9hmvW++VJEo4MOZ8/2jGMmeh68WlviTz+pl55K/kbdeM8/8npTLEttLf54Z/AWPgu
Y9HhukDgD5UPh4ATLuDpRT/9Mz5sJDjtfJgB2vdk1cNvsHDGANgFv6ZpRSaGbfspMd8yzdZbO3uw
SiJGWSJoDADrQljM5lDxHkjxjz34Oxvk6nI2OTQG91qSV5gBFWienQX1JuWz2fb0dG8+Fj/tNU7b
wk5kMY9V7CeOTdT9wR8rrwH1h3fwpQw7CcHErPo7xB0W+YmbCD9N9brxGWEMhWWe25ee0BYrAfex
Vx0NaUcCgc6uGs/ItSaSSO8d9FE2ok3y/Ntr2jARjc+txFSRheXZv0Hq1C71f/C/inR62IxpuYjf
o+2Y+DL3eUJ95YIVGWd6ozRTubcHPzXA4iwQkMC43JHi6l+pI6puRxSfOzZI+saGmLhlF33kbhcb
PzKdIKWoApWFv7L1eth7hVkOCYSRZvP17G5YneRUaQ9uzM/IigNosUWK+DzSpbm0rSWTbJe8PKwM
enLwj+FW4C4iLda1TZTO8/WcW7+01X3CMZQB6SvRQFocUhId4NoAawKeps8YtSjo/rrS+pjuEPcR
1YmqHhL2Y8Q4RvE4dgut2tpHuNw4Ozg6z0bD4PmG68NemdVieQn0TrDgLX90AoMxEzoxq6BmAywI
TTOtVt+UQejw87ZJLoWptHC/6mMxXKuvidXtGdBEALpVX8lGn0uqkUuYhYZBeSgBJysn7uVyQ23m
t2mkk7+WD8JWIH0yKhpQxTSLxLq2sEwyQ4qWQ3vgr5hndgKU6q6L1XxVKrsp/56cwDE1WUZGemQZ
v0/VK+1ZcxJuT4Wo6c/QHEg6sgoRQetamc8XJJ4Lu8r4bFiYbXlLDK06GK7wN4nmFfdCwfm0OxMl
1RYsBvdLQv6TyHJ0AZW9iLAedZJ2dRTGeNTjYG/ta7Eh4uoWhPu6OSVQW3+ifNl5lTr0sDX+TTlx
aZTYoGufc+SNuhqeQPpI1cRdhAx0g/xYLAyff7MhpZz8CLADMR3hVY9petwHjp9ikdotr3Omu0EW
JypGQXo4Z+RIztIVzP4xYkFJG0FVL2/UJR/KKUGvwkOPFPzugSaJLX+SqrJ+0Zkf3N+lVrcuA5ob
3G6GI3qkwe4yYpCe0L9ySGZyo0nIUeVFM1eclEU3xUvsvqVtzBSq7COqlOu9TwnWaN4DqbZ17Vi8
gD9Bgx7Chp7xsCGI44vjf3pE/3w3LUhJDijAnUaOv9b12R07adF/lUQDzz80a3RCA//tI5JyHSmI
kHj5ZoYLMNGn2IchS+OZZ+SF088j/vXdzOvcwnN8P45PJU81BLHdRNkpOx906S2Yi7SDVGdjyXiv
YaFSJ3TnmGmfsaenlmIsGkfWDXkYYUp2uLQP0gZy7ZsPJ9+1ak01oV35phQ3X8JQh6cx0qeZ6TRd
1I6WejQhYlOHX8DAz1N7ghKdXM8ZybT3+dTBZCEPiEvDi4ZoeyG7BtGYT1ADYxfqjg1COnkW5d1F
2u4b3rc3yOwJxVMrcurMKKDjSY8W4mTWpC685WtEIsv4YkpSc1tMEni48mperDbfwYsQqmi5uJYW
//xVzskPP2m2hS7lCi7+PHg1SvQYJM/Co7Z5ximQBAhHYOychnQmO3p8IlfXvqSt7tooQt0FqFMt
pv4+ZIrimB/LgRrGQRlJF+CVtw2lB2DtZ+LH0c4usBqEe8VgCJHiAqrSafCcZr5yqf8IfMMtQCrk
em/pcLZ1JfRliisUr6ydCMpCC4u6iLviLNtO2SIaVbjs3F2mra1pK8wjTCdJtpzgqnI5Acb6VQxT
YyJTibFupKX30ycHjBFd+DEc6UEvi5IKw2SoekPJulCwmlBW1nL56P07VzZMCWOVQjk63aHXa15H
7aY/jy9HEymibGD6VIoNX5tvmfSOL4D0J8PNust/cgrVWvp/qhyucMlvmvesk9u88FdptK9nMtxt
m8KmgwfAI7h95amJpbOSxARsh+IkrIIcxJqNnFuNVLXjS1eYH315AqTu02TYux4j5D1OpIqzNw26
qhEwcuGOQF6lHgjyuFwHtZzrLbRfBniOQ6LG0/QPmhEMgj7NdHpYq6UvHx3m1O9VReDv0TfkbTF5
L0/de2AgfQ7NlipEsqn8LtMEfVe0yjiCszpd4tH/kgwZGIF/ZK13Y0nziQKIlG9mc2pPzxbMjuT/
nLwR3pIV/exfvyhneC3w4gYERKJXzrtFsarR33fVOm+rxkf5x27ZkgjrZn1kGJXS12SRj+UCF2Rz
fa1UDFdLrQngCv3TQePdh6QGMViuhj7XqiZB1aDabWh/4SpTR4PUlE+lpb4PXEkHveJ4DVzrCHJZ
lP27Geu8kO065kWwnexMOztIGENIayPc7gp01CBhzbTytqc1WY+GGjKNW5Quy3hTkPYKwXztEuvW
qfoR3CgO+Oh74qICAFwZsgVu91UQ0lySPYU11lD61Db1S1X8Xv/JMw9uwpfe1CSy3I0IV9h3RMow
nhYX4+SuJnlQFPyMD8pOpxWJuxEbtpnzJh12Q/i+u4ifg7W/rVWlon0cKfV4FZPBIDFHWDFqJR3b
OINtFQtF9jWMO6NX7U4Y0XAtc2TA+ekrmnOO4lRm5pXMZg0UqpJWlDCDPnYv6f+lF64rtXBlH7/l
QtBBU8jozpUXhjbZQHa7a/89Cak6ap69MyPFCGK0SPiRAcWC8ZSMGi37A/Z/99nLsZxVC14w5nc3
ilX0V6ZiCXDUupAEwNfLwYSarJrx/RKamXM5wY6b84iA10YGz8PMTACvO1Y+go+OhzCqda7yNj1o
b7m85r92t1eq9BoPiME1MwTKNuKeWybCCvCs07Q6YVb0tkBID4rbDLetPUYZKFOzkHQyTwdEjNYy
VqL7HU7qCyQuBsVBYZSNXoe5c/Fr6p0+i6POI8CDF1JH+w6W28zyDBSMhFe8jyHxPaUff3meUL5Z
QUfmzj8E/5T1tTtIZr3g47tQhXl4VdDo6+PksY5CKFjc9ese71WTj9ZbIpPoK2RAUsvQAHvkvaXs
lBoCXQ1JHTZgPJKqfRf9cDqJUVMgT+w1yzG2gj516AHxHfo3MwKw9ZFFLkAdtqDDNqIX01hFLyG1
RbLidsRMMCjoBoLDWZ2PDuw6UMWRSy2qj9S0cgiROd6kQUgyaVlh7eC4bMpny0/inHhcDZZoKeml
4tCFCRCmZWNnCWrSGgLzkrsfG/b1pbCOWvLflIo6T7fj5IYCUyFmFYPi4mGsfJPPpYa/RIhyvmvW
GbB696CG+MAu/rU7cBtgNuUeskM//fJsxM5WvNqIBhw6+orZy5dx50ICJO9AHsbpARfsj3+XP/6g
iddkE/5uYf3lGJ1IHHaMRSUmWJxQFjPBE95mmRb9Wf7rRpsnkNhu85l36tXurx1FVRPhf+ksy9xl
1Nth4ygjLpMqXpp8ATBSdwo2U6mDnTvF3hKNzUQt+izF9BAI1P4w8H+Pp5znI5kwhvVkkASGsDU3
PuUqPV7Ac3Vcpa7CyNlW0+gGuD5NtiGdUfs96mczpUjPM86Zw0CiOnefCQPtVLd7y49iBYG0+RFK
9+7fwAAxF1gz8CYmxdOovNuMycffOVhJtQ75RlQ2Omc+7lebeahZe4ypHTA1w+c03wjYGwP07Kdy
JjNki6DLEr678SQnCYdxYXQ6MT6EsnT/b9nihwX6NsYXCYnACYM95Jq1J7hrKHuLqQCMN+Ag5Amd
23nW+FGrqkKHhQjNH1SCsQl7WxfD4AjuPA8Aps12rVevePtriWDzsGBDC1cwPwfHlTI5GAQdb+8U
RFbY6Shy4rOMZGsZa8NMoPrLjEoCyXxDm3GMHdxh7MRArJEga3sFDQZZs0EEImtIGIrb5T3t8IAK
xKbgR7nloGCrHEkBShFqS63iKRPJhGvjtL2UwJzuRFA1PHf0pIwbvPJRMbuj1KcGlL1qVBVBsNXh
Ni9L1RXDDVOeFSWAZDqVu0O/cnI0sK5KYNEWskPQ8QXtDOXOa4LVCfn5uI+ECZYYkTLxHUttPNfS
hpInttHAZwXXpG9XuLDh6MvfK+GCiXrJICNbPKQk7nQPy9rK0BS5dlfvJMhpK8gqlwOt6r3ABSwj
ovYhshX7WaMEGRUlo30zQHunf1SZB//Gkw4X/l1LyuJOeRZ8abn32sUkkRKoKhZFNFzjh+UG5CCK
Gcyg+wZ4L6Al3JMKYUisL6HoKKa3IvKOTOQ6itab4URcDBBahCsuDfbsvr7uEXq183CiG4NQxRaW
E/0HHRKUEaaQXPI2eBhIx4yiIRLRShkywwRe0gl2D7kcjHYX560Bj28DQu0L4jNDDQZ7JSfgqIjm
4dtpSPV5PexwAI2CkzzMkHtf+uKavoFRBIO1mBiuktJpwdl+cD5fGs92D02vo5jmu46/SX+ZYMSm
ADWgjPz2brhCq5bwRgz3isFjgWQA2Gqvss5TAaz1Pe0h3eIH8CKIWhRmY3NHlNeP8FS2xx0bJGFr
WyJtTCq1oJmW0yqDOZedkyBFgepT72DW6cAQetPC+8p3OzMCD6o6fs/svydCDzKgsZsHA9LqgUpd
L4cy4wyaFMDKaBhq65iaMrWuh5dKaU/HY11DXmR5G0u77dtGJ9ab4ep/6J7UYmwfISfoTMGn/EMm
9v3hkIS1jesDXne7Wa7luhZx6FqAD4tHqVm0T6Jhtnk1ccmcpj2vs+tsSbqndpdBNgbfypsAuipF
J2cWUr9DnYEdsF9eCdkRXG+l4UBg9QJGtbf3GzovuG6HNeBoxy4SBgwwIq9M0giK1qvjCTRsxGfh
akpXk7Jm7EBCZW3kFcw4JTy5g+LU3xyKaWPZGHMZsqIyWrxowXV1RaodLaxPGTAvwimMWKKILPjb
bkpgl3ChLTVHMK4PJi+B3MuQLzMaYKVwKhuq+1o7PS4i9U0kVLV+zi+QSQ48u3ipmg8vJCJHVUTJ
5yKK6erQLfSJgstSq6PvDa5TP6A0TuJVryTb/vZjS9Drd0+t+YY58SpJAifznucpyX108Q2PHNeG
GMfL3WC92LFsPlmELBXqeTNRDs3/ehhOvZyHd2/9ssbjCgkRXVcAwytcKK+C//8ZzLjxrJzqkTpo
3T118j7P80If1Nd49kWxeoKN+XuM8TXujh/PB+KWKRCdlE8tEzFJaVznhNAWlulc8HtLqG3Sjg8S
NLZkhNE4RllJDWoMYskFMERNy63ox11S0/8iCnZjkRMJ04izXFXGAvctIH/LTN476QQticwcsheK
aw4U4va+4adlSLPs5dm3qc+CtFEbCqUdxF9gwGzqhcUdledz/HBTPP/me0BIY8rGLjS/8PvhU6Xy
HKNp52s1Bxpg/AJeYirTsIBHvoTjlxK5qElj8yL/3zOiRUR/Xmn72Ca2fkXmDFUb2dXhQ770z/MR
JNYc1VYFph53YvtsMOBwVnXzozVv1EIHBJdF0qK2aWJ7XvTwx/gCYM8tv5+O63h+jdZXNZ9Z5gUF
oHQDTCMOZAT/F5lA/Og2gMUQtZJjw0thcZCgfLmv7/CmRZ/rBb6+Zij0HGo5WeGmTV+RZJjaOdd2
S7axDKYuEHXtIJ42rPkah6r3A+HQ5ad+8ZsXBgYuSytpHwuNPPVAGZvK4qUJgVY5ZIBC8KdjUWmp
n3uiRdaEAQUdurIrkE4ogRCneJy3Gs9U+N7pmksFnLShq62pCIY76RcH9JjtmtuYIvK90E9SoJ6V
3xY4ubttBBPvGlaDvALlq+uExn7zXS0zkA8ZWw+iYQbjGrrfXFHj2fPDrd9BjsCgxS4xB7Kxhgqh
l7ObB0UGHHK8qINoFQR1zPuRlWKZ9L/z3dJRcNYG2QybfLTT1Jw9Bx2CfyeZC1IJHE46EVqk5QIr
MPW8FkqXB7aESIxfVAq1OPTu1s3fq2I3Cy2PcARR9JADHqniSgEMTDrKAidw1R822YzQeSGWC/Xn
FidWbnJg8RUV8fxW0rYZS3rKGuvwfGnnv6sGclRv9T19qS8x1r5/5BOoBIhCPGF9gXCzefrAZXhs
lEdhkyD+Or2j0Y0y3EH4uVIc7/KZjtxGkjUpYA/0NNSR6VMjNYl7YxGJl0v++CHh9D1wHyyGZqC6
V/nWJKPbyYPH/4+PBmXaYF2VamP4tGlnlOQsKqQC4idN31dOuk1tg0Aeibxx+ml6eGbBkSnLAP89
Rwx6PmXTROFA9d5w/1IhxVQvW0Br6H8DcvbtIWWlLBK7c9Za8/WqotjhX/USdxcFHChrgw63kxQ2
LNKF49bkZeh7VhkPODrGPM7BIl/EGoJ9cJI4IGVDY7HTl6eWkRq+2uoNePy23P/sosRJ10IgPC8/
bnw0WGaqOK/Jp2JlA8zdliViIxaIrhIDO8+kDGUc2DE5+GdPQ8YFhdRJ8ILJIXe4mGBw3jQAUieN
zQfJHjfm/PKHy3+82caKYElMDWWsf+TB5H8jfSZWZZCbEhnQyEpl023im4eJ4SRi0jLkQ+CICxxE
SorKL4/+C8wQQo7AaX6tAdTpcNmq0E0qtemXTXWphtaLHeStmWYAtdFahk4i4yxS5Gi8H1Zh42gk
gOJJkaTP3vdCTrVyQzR97lqdh55ejeE3wjE9axwMxaA11HaDBuo61tv5J3qum8DFygRjjRWWTIco
f27/dBbMkWo4gPmS6KLCD17dV2ubm7LFFV2loSF0lYN9fZTbh9zHUcU+U0VbJt4p2vNlGtmVT5j8
co9cmNcdQTMASuGFmLbRUKzKW1wGdWT1KUvDtsIyRGc3otEdbbhxBGgCW2bOxSMEZaA5Kbjcnk7e
HAoYNw3enfHHBu2hRmfm0DDO1rXLP3QyuIkUpSahnQS6JjtfmMOwwR2qPMsO2emcgxqN42eY6zJB
dKcCgCKySvqBjHI+Zk/qbm/P0oQVCzwppHOxIp70KTu3qeo+sUrhy48a5m/FK87ecQHZFGQTei81
JTR56Mxtqp/krMe5HMeRKRTuO8DDTpFSNUA3Fo1Slab7d65kXC+lY7Yu0Us8SSxtkImD6UEiww2R
q+u1HN6p58oC0HoEioFQ++LPcrGpNltCTxlFbb0PbgcFlInmAETg0yHsjJiqJQbdOO3p+dt2Ej5B
bXd7DPIguZddMtMgmhCOliJSEI8ydmSUgXCoTi/NbzmBMPSDufRJFQPCif7dX6kVeBj5dKYBQ/Ai
k3vjwSwBZTr2R9JEoCEba0sBQBR9egHJlBWmW0MMsHqpCpjpGDZh33Sl/uqXtqWlneA5q5WCYGcJ
iucKbOY1mWzIx9zjrcCSqy3ZWQyLLhkzd1vWHYkgS0uHFRFoXio/39l+CyGQvvpxujpzbYuOEiXv
x0aTPFaAZlL5KxmtJiHc8M0mx3mYXEiixuacWCimcHx2ghXO48ZvU27M/mmjGcmUT8KOj1drI8s5
mH7YNJJI5s6f3fHhKW+GPXxi92zfKBn6dQh4RnHKJ4nCcZwwYnDJ05p0ShtB62PltOBLFG1NeEIj
im4Z0Albs0QucxUzC4puMyUTW6jgLa6gHSlF0YELVDq4sfL9pxeJhdf4ym6h4wpBjAlZCWKothck
DP8SE3FmQC3x41nmCoGe86WdfQZ8l0nEQ0L1fNIuEpF4tWeR9PdYeBl/2Nw3ygMJuSGpDVHrY4py
pK1+NF8kEg3qEkuQz1rT8rHb3feawILyQdP2PgcSkqUJQf5Lt71EWMzJRtlKRSMgkT1OI9aBgrp7
g7/jsmtIwtUUtOKRou7A8gw7uc4MsQHKJ8UNiZXp3MzdExEsXkcFw+Zn5y2RGR2lBTNBrX+Qro80
v6ClV3Vk3k3mtve0tdVMEgSrxzmkDuDV13B8VnLy3InyoVFt84lNHDMP0mUhYd+MqAXMxlZdy1zD
+NN6CVZGgDN+K91A5pEz7s657kH7HeavN85Rnekicv7kF5REQgi4wm10Tppvu1UI/xg7t2VlMzsD
XJucJ9F8t4ozGiyBWWx6JLsri60JmUdp8hhsqWQBCVncdNnz+bxfWY/YB5CSIor8ETC4IRW/ts1J
wKAleQj0nwtpzBTN+n9civSjGaHweLF9lDscdgi6HcHxzAi35aFXHFI09EllpyHFFHZbc6CEtO+m
B5aBBycJR/D6NtK+00FB9EnO60ovArN3NUvUiQbpcqC9uK+bdMtcdw9impaawt4Bki9tHijQJPKI
CWQgHXQU+T0Z2lja3PmSM4H2eDEMdHwohbeCtTUnz5R5ZfBjZbP7u9eD3bvHJ+Kidl8B38J7fLYS
fMKB/2gl5W/FYLIqVwzAIL0ZOa5T5XVyucCeeAbpbvFUqUCQzKYS6GjcOt2QdklLsVCrSkF8AMuL
mmK2dOblwLwYqI49PaVtGSKeXU3LwF8dTZppW5GxZMzk4+jjQgWHLartKu2P79B7qpuZjJdvmidt
aE9+wzclyEEIb/xHBGT7zGB5fy6+hP9A24hr8Ww2JmnoTwsRf7lwjLI2nUcAwigA9i1d9Hnx/qOF
E/4NTsHCflslVUmVOm5/9sHa6MG78fITuiZiadwEFLsqO7ZebyUHDhN4BhzQkmEuA8AzIuT8G9Et
lF4cV1w4gYFRYgYgI3qDyHJuNXgv3xqLleueFA2+AsK4wSrIudC2qCqZG9ZRVIRei7mBBDUPSOqS
MkTSraVKy8FJsaUxmzkLm79ez0szQpzwNuvk27QQLwBLvBFIOMho0qoCGgnWvuiSBAsTGQ9iZO2d
8Gk75hm7FtBJfGLUAdTipS90oHMfJ/+NjFPaaNjDT5pm8XT9JoUojdccG+TvC1piEFgO9fYGRguR
SiqwEtoMh+qnA7/tlcTx0X47NB2ozd5lbxxnS3apFEtlEnu4sznZvl6ySs1i64mwrDmZbjQGLKV8
noSlgAFeVjOFKcvUnqAcu/FdP9b1sSFQGSlAgUXySRkCUm53qXwyfqi571FRceQD1eUO0NvAl3Az
G9JwStAZ65dEFWkBlrF3id/JAgAuY4P1JEf1k7EaH47bB+VEfGCv3iBraryVvIbHF9yyI041B5nS
XwZiyoZQynUU+cXKkXCcbZx2YTCGHbB+0egAYKw2HY28ZKUX+wgZm66J5FMDAeAwm0qj9+wSgfm+
8D6r7TJjTiLkFbB76zGD9wNSeROn1fLPaXF/+SWlIc+gExuQGdvrZFiIPLX829sMCZFthzTw/lJH
QlL2Ko8CQcEPtZBCyKoCFO7WRSSwbilVgxOE41lBVoLRhNta+n9eznVpdV0sCpDi8yQUhsjnGIjX
COtL26Th+IiJNyQzWRcdJUu6fx/dXb7DwLl+hHiTDaqF3DHEXe3RJZRMwDUeUthaiJL81qALFSb9
kkamd3GwMygZMKOx8xbhJ1oylddVJqcyybt1VgbZql+mQec19ZGLRmHa2zKW6OxV+OEbjdTPU0CU
ZDJUn7A9JSwwMBGc8oNoLHkQzLnSHqr6kH580lurosFTsbsREnfCooiXzjWLCAoSTAgNmvynVois
ONp2tLtppsWtfKRUvwmwMAHnavqd0faputBLE3ytvanxX9UosgbQXvoCCWP0zRH2X3T9bH/3Zwsi
ZYqUniNXat+OfFmiZRB+UMD97c5RaFzQyzAs8STp4lGJKP/qCf46XlZ3R46YS5Z0jkHMMiRcoWzh
jDxaW5CB7tlPhaQxzipAns6Y/imf9iU91icK4HH2TG7T+bvwHG5Lfsrd5UDF5bGm+6CyFAK+lOUf
+Q5JO6QuUt23DN+f4W+s8cwd32HkzFYsto+9gNPzgmOxxrdqTimKUwty+f0utNsgN+BY9cEeWxci
WihKNX3pdQdqWVKEgqYg94wDeXiqAMjbryCF+Itxxe2CCKWE9cqU85VIBGUCHFucWkXuepXxotWd
euwWPHyAmEtilOVZWbWpPapwyZSJbn3Z9a7m64zwDd6PXVIqhk6HCzGxx8rpTWQyt1+zrnQX9xuu
rpjrnhdfbRW64Fs5TPJthLhPSYRFIqE+o929egjexk4plZplY3LufkS3oWJldkpIi+pPUreJYC+1
W573b4xsQ+RDn36ttatZ+1b5iKLyNkg2jylmGuTm3ayub0D91MnlEHV2xevozZTfWCygmcdTOoOJ
0c2uC7saW85MSAFCwUFiJezOGNWt5sKbiKAkSTAJ5Qx79EvuORtH7lGFyG6pvsbnIbWp+Ggc/X17
okjPO9Rkg9Jz2kTzsYVKr4CH8rfDxMYR+DrXInQAELUii68//FUvwgj2IzWY1Xof4wtwcMMBPXxq
kdJZhczBKvcE32Ikp79Hm2+qqENI154Aa+Lgj1t1hr92SBD4KYEf294hWwMkIG+LPof3MHJfsP1Z
Sn0NLViX48pIu+gFMdRHUlXsQjePHCnxhrfBeF9FY2PF3wvFKFHztUWiVHdFXmHnWmlZWDtoRC3F
OAU6wfc2WwG/41PAYnjM1IpZ+zVszV/+sQBec34t0XZbaVJTW93ej5PbYCSl3WJlP3jtnk+70wWf
qKXE6jfmCSfSbLIwnBk0LM7pUd6d/+EBeXyf/jCSI+Rrdr/5MmdOc71fKiQk1tz2OdM7YjCrOdnW
xD4nqps+TCZtsMVvDbzut+4nHRUbSWDdNRG56LLpuyoUMDRD9eyfMPQ6TvH4/zHVRxxX79K/AMCe
+m8Bas1IkXIScfL1wZP5GEciObpZgGbSiRtS9mMHHqB9r1zjy37vxW/Gwl0gE2n83Gl8C1iHsqM/
dW1J7VJhTy+3ZQjhXG6qyUX/gRHm4qcvRpu4IV8gudInHuKnDg+GHkAM97vk9c0/pc1L91ZVSa6C
865s0Lo7irIcw01nr2dFPdeYDCt0HXmOhsNzqD6TNie7etQwLaI+dT3zLIbkrflgwYArh7sO12mQ
fYpKhA3CLkWd2MDClXaOzC8R5YLfi2YSMSg0r7lZvv+z7ANdgaGwad1yrL1kQKH0+z/wrmV3C8JW
WO7xOtJA9KGqgesU1Oy/NawHu1pBSwViInXy2Qtc7RODeFNDDCL5Xa2Rmy/IyWluqHQ7OjS//25p
j3sFCSw8UZH92r5dBMXp7g+kCoxMOdKf2CxR4jQL0xzDfqRx3SuIaz3kB8Jv7bO/ekUN/HMnAbHu
7B6YpH8izq3/0qV4GIEDVGk8Ye1Td6bdQgapDhS0izm/Z1UaRaEzqDGqV1sy+VejKNX4XxwuHy91
6UtOlzz8ZXv1CPpf/li3Ov/sSMdFfMKL26DyEBQa9oIz2guGyqfSnopBYHqg/AGh8mMQvUae3Yce
9VcF8M0kyqVBpeVfk0xsN8kdxpXuSB2SF+paI7LsJMUACBZAO5yOp56BZZ01YsSthTtoM48cZPiL
RtiPXIZRjgb5tGIL0U5UUxmTz+edLrSbuhsjEJh4cNRUpyhAS2dzRNHw7KmVx24JsL93eCUYv3Al
Y8Mdj69omGdKyWE6TOaWKLCY92NmIlg3GkRSriJZJOaa+wkxgoQaaXs4mtAnlw0tzWMUhSmt8PoZ
OvFa81PMiQG8pvKKnOkpHBYO0/L7M6j/YokOn+VahDa+izHKg+txK+YT87R7YU4b30lSEqtVc5Pb
G6Kk+W2bJHYp51ZdTQr10lQGe4Gj6HSDaIOZVVaiMPrlsUNFXc9hCTzLmUzfGmxYkkMOxaUP0Igk
flLHzCHPAl7wMwylCrbAv5wei1ilVbEeSon61xfwteUReZh9DH90lVG+Pd25s5lxjyXqB+ts9GHH
U/1dtXPvXFgoYidykYNuNUm9ljBI+7VfMYKKyqKvMgtVRb7Y17t3jmYknKGFOzqoV0VkKdJS4fJD
G+Z5muDnjOEE0ix/8kO/C8s+PT43m5hiOruVWaLI058PQ5FHrOuHlOw4SHeZm/k3tnsczvE2npTR
LgEhQz3qpSx454Owj+XzWwib2okjxUy8iXfWiYeRsC6VEvgYUYbhs9FdP3L4vqsMhsi7p5cPTaiM
ua7WpbFBacizuKqXYen95QZwj1BcBqwuLZgDpZgzDZwheBDM7wZQCFLc/gfk/4r0ji9+a83k6h8j
JdAq0U3MZckwb4qf8Y+NgkeWX43tCuNSPlvgj6vcb8YJ1PMu5rhuqvlumtdLPUWigJMZP604EeaE
JGtbK00bMDgxKZIuVFWwGwbwtoADJTFhNX8RlaPNVFzohThirjkkGaifYe2qDXD0JNFOe6qBfhOh
7hC/4FQzZbkBsXPl8ZdsIwruoTqgcMfH1nTNRSfJQgWn+MmLFPckRR+VMJX62Y/mrhClxBwL+7gV
FrhUhy50yr9NEMb0cpsk4GUiylYaehXG02w8btcSPkrnNnw/STwgT4i6IHteZGIVFQNlpX/4Jjp9
qc/rTBfYh/d/2e5KeG8CofXgQ4X1N4KQ5avyEk9plTwD8+djsguvUDsZJDy27HCknQXFQ1fETLR+
uIHEVZcd/83boQItnY0wYiev7HJ0OmS7uzJTLj1C2a0B+UelkZZm9JnP6CPJ2WlvEK3l6DVQxWEY
KK6Lm63cwtF862C1UjfTwZ1/bsI550UqJ+MPt2eOf5/1FTFVoCbeKy1rbu7H6C0lso2NNeEO9FbS
7X0Uq+1P9v95IrkdJsrfssgM20tQaDmtNjJqODAMhRX2fRHZQOdWT1HegTbC/R43B7O81SE6aTYo
6WzWTmExn9hex0f+A2p3lS12hzDjz0qgCUwqqRb4ygthYmGhGOdrbm6RwCVgT5B6Aojuu0HzjLoK
Y/ojUWGfOFJeoK79aXWbK3Sfezy0gegp0s9NrqrLeL0WUxPLtdv1vvv7ErwHaKuygVl3hXUTVzTc
5err3CfVftjhflXtP6WNKPNPvC6VOe9WawUY+sOXCNp1uvX4FdaLwCir54vgv1/edo2giU1XvMvb
hGoybXp10i9eKbBeafbIsJB7C462CwvdhRZrQ77Dnlp8CUEZI82EeOljy+4Cnfpa1E9auw39AKxJ
pIFUCq6Gq7Nyf0uMUKA9mzegMurG9D2fu2c/aIVxfUi7+Nd0ixdIzluJLQxwGjqRh20ZbT4Kr3yc
iVCWLbmdMUj/Evoi+9rJZ3l47EOqwdj0SbYoidNpFrKuA8q9kekWhpwiaVDEVDA+FGDg4Fc5TDxy
OojeKaSpm5o/Dh/t21ETq8yVSGGqgfe0Frt/wLdnmnmMFRwd4iHNT0huyQDX3VK7ourJvRM0SsrI
0ztDRZokGbWI30VvL0bZDZkBOW8nWxhvoteRm27Z0RcFJmJsYip+532X/v7PmxAKbFm3l3cksG8y
ztWLTj4ncZYOlbNEGvUa6YIf1aCttnuTR0vbC/xnyap03f5mgmhTyjfAbin3jSHPoJa7C1Tef/9d
uOIdHjK+78b5pILd/RnXruL/YpZty7UR39CBqHp5Aw/cYmt8gq1keaCyDaOkWbqSCLEZq62mKeNC
Q5w5cjWNAycYX8F4oEo/IruTguxFUgwDUkJunzGu4NUqdAP4v25ELd2wdX+jDvFPX9ptsSR5S2gJ
zNBHNUKwMS3a6mrUIDDsMmyXekm9V5TgKTjwVK72hPpt5bygp5jcT+HBpqOA4Zt7MtdM+ltEK/35
9I5F6nZOAsKBX816m81NrqpeC3W6MHCCAg1jSqlcne4kCta47JwCtwLPKtwW0C9KXMo0vR1R3/lo
tYjjRA9GW7VyMZHBE4LxdTc2+lNgv+w2igBGVY60o2g1xY0MzVrzhDZ1hAKIDFa21b5OIyWxHd1I
Uru8+lGqxxU+uniqBcVMcxIDcCQUhGas+SRLvK4k7nDmSjHfq+siETS7BvqN4AyYl1HuhZrHFoX+
+c1Cw5V6uG7cr7yG8q/CQ6zLTphtYGqz8JcOVhn8u5ghOd02t6n0vxh+KGSdIhnlD6mVoV00+ODt
7VYBS7dIBFh78v9DhwGFts0sCkfCE+bHh0cPHSdi1YRm725fyw1/4tO2Tq/4R6ayFGwR6KL5sdqz
0vAasssJCCHNyLbb59UJ5Cuzyb43FZV2+I5eHrJmusZW/TYI/SlLrTVMp2GRWtnYxhSbwXiYX+wT
PqjXd6UZ39LfhFcVI9k2AUP9cY7roqX17EFQoWbILwCEdgxkEoWsHHl5UELYsOoJMRRsj2fMq2LX
TpnTAZPbYOaFOZR0yaB14sKPbM36uvIi/ayXZQ3PIPs2FZh6LlAjgXIy77d7JV6mhH8y33vow/Ch
Vtlp1gnDXh4A5L1pUvW8VvzZ7oVktow8PtH7gHr059BlvEZEVGi0MbjQy7XBPNghbkZ5dgm3TO+j
fQQ7isPq8Ni1SYMniLY5kO3gG5aqum7y/AzUGg+N29mFvurluRfgRwDunTm3W4CoGyRmoqrAMUIf
tMKwGdV86ZhGZvZr2mYP34/eB/hpf7dguAFWjut5qhKeTaNEfm1l9nHRWiz6rl+HoWBFbGrC9W6c
AgdHJTG1lrBbpyuzliL4WhKK40/R+G5FL+hj+Sva1EpTIGnCK6AIGKXdAgb9Fb07SIbWZQC12n0Y
aiwfb8GKuquNtFrMnOR/ZQ61aAj8w9dy91Abj70omM+cHidpoPnlFrrq6k1AzvUq9UBNXR5IS+Xx
evHG4ELqDeZ4zD5+EitbNttSQOpQW9hmWE9LnOF6nXHxb2jy6DNUTbI/qcjrQEkGSBkGmDgppA5B
spf/hm5/csjAxE05MZk2tkIS/8ws5K2li3b3PZltm9JyaCPZKls4R6pfKLVqJlTaz0xmwhMkm3Xi
UlN+ROiZrp12dOZe4BSjHvWjyLXzzvmy8x2B3gnMD0NNbG7gUjgNwb81PeXVUcNeicjdZUoYkxKg
N6l1y3ablOZPazdIMN5cF9my/ym/IWWAbzoqhvG5kkN4WmBa4tNGdgsq1ZQao/+pzm8vYld6u1Ff
cyPlgqMlcm5RT1dTFCzKsFmgk6c7/8kCAO4ytuyAON5VbmNTZTQ1Z4XsXUJ6k5OP2GgEkykmaqnY
BQ5RAnbiP4bkDNj+oANp5GekHI2O837qZ35/d1E8NQqsvwsg4maRqe6ST4iERAVZTvyI5cIq1iK9
OnU5gqDsjB3iz9hSMRHFoPlaK/UpvqC/OvqwMIR7Hvkg03OF8CLHwd68sSTY3kws3YlNO0frUJ6l
nGap4/WEVf5v8DTSlATyf7UAoGKokyNbLyZgz6NtZYdCpV4Th+5FALr5jVUV0WNqxKNzrZqVD2OW
jZK2sKGf4IZpipeVt9lp2Zwt+JA7io8MqKdGjGlB186BubSefoPEfzsrGnhqseIN+idytlNMLI4u
+Yg89JtIIywxVNAykB9GbYN6LF55MmtI97zj2T5qpxZjSu3ZzVZ4XBlyt2dhKpvUInlh3z7sscBX
eVCpT/Vhgffuz50j8ZAUTNAJ7Bcu01UjLVyRFtNzEQa8qq79V7zJaBStWT83/qf70E4PAuQov17r
z4iTbTSOBb4pKjzVkSPR2CKH+7d7Lc/Tz3W/7RRwjQSVr1C6Aaavdvqx7ocxVEfAsf/5v73tE0qp
SYWIBvAo0TPYcLq3914xuQL1/ndmFshDyab7UPpVl+bUt113m9x+VJ7mr0f+YmbaWVEGPXlY4/d5
uVoix41uD2KCmJ3b0jFc2tRZbP+8JFYokEOuG7Yj5R4Ir9KlLAIgmSjKSSWLp+QWI508Kk89N0Wc
CqJ6GEdViyu7cgH3OuN95uNMUt3xj9K8Prp1YVcr+LcWYl7amT58bw5MOWYLsDGBGWcZYbwr5N7s
i08ea+Mni3Pl/T3YNz7U9Q6Ns/zhfPyDwCalQzEc6fumWm28NKfIs6yjde2YiO4xxaV8bVtZRTiJ
GSIWgXzHU5tA/5QN3rUEy3YgNLqhYVGCKtvuj89J25Y1xOoNqoNLsOnPFRjTuMbGnRfdEPnix/4+
eVJuobNtp521h7GevTuyZh3dZu3Jzf3iQ60czm6ocfCcIr6DxiSoiloM0UFZccKnimL1tznSSxAB
AlHu3u1SlQzITPCW9Xe7oEzXorbEqZjIaTr9ABUo3QfgkOIzWU6SvA6XlsjXJIBGB4OvPB2XqMiP
9MCBQrTUMaQJGwtS368UgFipn6/diCOwofrAirtTKgmJuN0EcfXH8zw1IjB4wu/ugTvQgoIN/wPF
oYRRJdP5UUfJe9QtBhHmkLrGYrn1G7zm6jz3hpRRnJKddYUg28OvudyjdimIrKF82Je0Z2yZ/djB
xI6JiCFa/fxJ888em6orWGtB0PRQFht1zXGerEbc2wHOGztgHdQLPZ1MFVf3io/otngqdTeQiuOF
pMSVrYUgxsfbMTVMWvfnRwuhl/Bz58bUVv5PCiD5svaM2wCOdjGgrczqmCwnraqFyUkXLNCng9qr
lbGe8kjNgSbl1HwdEP+PrFkEclEIEkfWafKkBmR6Ty+iFIMl8FvticXJqgJGqqMqDrVvJZl1l0kW
hLFCdqriUWdSlp6504XZmEFlLT5bwlF+WZszdFZSG0seC//+NdHC4l0iBzNaJlVgWvR1bzWMhkSB
Gpu5iptuwi+nBndEkGP8NavB38+5FaOwRFjxQp5WLfbzdaaFVSu9Lyr/uP3ZZXY9ZVmWd+ZHop37
maQtaVUzsiNWHcad6cnIMd5rA9GNb1YYAi/QkQok/xnhQzWUtLH2Q1HqkLxz2SHImQUvOBhmD1sQ
Yg1lRY7PkwoH/T4wuj/LulebtPYkXFljayumceNuabfJQmGf7JprtOZq3+FNY3by4XJZqXKj5u8v
bJyH25/li+k1lIAOk1u7fs+I4113qHgxfFD+GJsDE4I2kIZ9dhLbNl4DebS9TzYTTPqBG0wEEFcV
TFPpUMj3Ol0AG6/vbFmoL2FnVArMSTRqKJ92UIcJjRpI8UdcXCKhn1w9dRpY8LjxGqpmkaNeIdXg
jhmu5Sh5vTmzCEpXGe/cJt7NCBMHDhqM18s4x4abbLL3eXrq0DRE9Ov/a8/tAhFdpnorXq/BDb28
E8/o0WeO2SEgDu8TDSiHCbP8hvgxvF6NUHSsBHadXU08LZcp/jJgCr2XJrEPhucSi0fEZZxvqqrq
vcDfBUY938BKbYRjioCMxJTuWSRS4w4qIwLoXBLvk7mlBQlotasrfBIYKoxu0z4UI1BWhK0gRtNO
WwVk6+LPb/9MlE2OxWIJVpL7j+0ES6ibwAI1cTSSuxJ8UZCdKyDMagp3KVX1Jp8iSivCpIuh33XV
CelfTO7Dsz7NlFe8GMG+HOki5nA7I0cNpGsqGrX825jRoZMN7EaTkFBfTebRXN7l2NVUrZHWZ1+A
8Nw3o+04NP2BMATIGcGt4gVTjYRe6zjDhn1G2Tos1ycbA3gJ1sI/tsCiXVj1p5OzRWCqVVV43VY7
An1JhAD/BLy2AFwRwn9x2jwh9xrj39L7OHXyIBJUhKFdGVyrODf625uaLU9+lD7UHnpROuOp9fhH
XiFy33n5x1DBcIkeV/nXFgLf1+We5XZJJoDSn6lswha2m+wWwF1GQiYoJ1CfzOC6nvzK6VwG3LLY
yLEVWS3JDED4ufXdtGA79PA0G5uf13NZy4FUh5VGPcGbEi5ST5aROoK/6A2BHkmBZCwkTu9evN26
nuJsjGw4g/LGCSDq77eyixxlKkLr6zDb7p6j5PQqWBpq/JfisaBOxiC51JCIQUU8wWcV95/3oXmq
UCTULCAeAI/0EcvPx5BwgU/wydlUwks0Z3qo0W58ENiQnlufkhwg01HDNfGvDUzRFDbGbyqxM1Y0
pXUEWVjJD6MuCuOyTwj8Kwyg2wjS4ydjPoPMjdqAhUrrJTifqcLcAR94jAMCZsHoeN1KD3SIhpTJ
aaFlI44GyXsKJMhXvz6D5AVwO6mlfLS9FWiQo9mPCz/AY7EzGf8bMedDCH1eJMm7US5ZueyOSrpO
fQbq+/4m9MCzzArVb6KnUMMpvo0v9UQVQSxOD/2cRSnxewJEM+4W1ply/Auh7FxffP7RDvEhhq/L
le6ZdptpFyX2ooSkobPGsZCrscAmnxH3CDibacj6GwBBRizFOVJCvcA4JpKngF6SxgCs1wHtHXsK
ZCMMkx4AlGF98xYuiHy3nvarOnFkCfM76XLxWCOyIpbyYVL7emVqZRIfFJr4fqZ/gi55XFcoXLiR
kJ+PXiECB5xDX9Zlv2zvtNBVHIJyjWUrZXFiVfZD/PTjECqpktPQY9XMMUvBmDEWyFs8qbNuFLcV
9CRt6AkLvj+8CwdRfqSL/5hw3/MizmzB9nMUfNBWGeobgimQ7WNGeA6hL5Og55VvO7qSd/4UHdy/
52ca0+YBIskcLJ2eFMuyT5eLjYjoBnjVtDbuxTJ+tRK82dcP2mGhZTkAoWNAQ1OwSDkwkHT8R1iY
1CqcxlnxbDfQE97BT7z1covL/aAmsCaSpS7AgaEehNlWICj7seHqOTkYp+I9WYEbRCn8POh9wsWS
wkHiF14veUtZuHEivJjMQmKPn9mZ2GqH0E7ZhA//kGZiLN7NGLx3XMbpGFgyHfJ0aLqXP+gVq7hX
/DBgvYh7wqFtWlzGWVuWg+A15E+ScNI8K5ftTtJzgSXR2xnBWwPlsjWB74K7YuISdX5/81KigfhM
Sk+v9hOOs2vOBy8qS5rXsDGB+gDS2pR2409aRwmza3rCN8udwXlbmMrrrp0Cp9yiWdw5ljPTi2Hv
uuSIsNk+a9S7HLmM2yp8Yu+MMPg53MBxwwY145wHA+/9KWQzRYI9A0PRuHlNSAJLgKtT7jxdNWwE
LTxSwF8WUeBN6vU36SURt9uawuUIg97F3xN7eQ4EUVpLDj68izzWkFSFJtNATHcLI3KdsQgip49q
d8kLuG/kKaaDaXTrngo6rV1wJ+h5M8tuI9p2YSWDPkgEa4+taO2jSPMFKPOyohedme3jSi5UEBqn
ZfL1oh88H4sTnry/NrUldCmibEekbRQ/9U8WwIhHHJl48NhUByjXyso9g4Lk22vXTN+J6L7USD3q
LRskYPqGtx5C7Q1JORi4fxI4ogQqVuALyvOVVpYa0y5QCfPuuxs+8wZW/Nwclk2aDiN7bOUAjrZo
dSq/K6yqYnIxjlmyAo24QWu8xXjP1qECovD9xLoFDRFCm5P1ZdW5q4MX8kF0VA08FtBoQ3mLr5r7
G5tJsfXKjKYGmgBZ24dDptPAyDpsWs5CM2cVOZKZulJFZ1E1jo3jjwGvX9GCeKte4QwoPmtGauXp
Elbm8WC4C/JFE8byV4QtQYqr6TKxwqxlw8FTTAB1wucmdkaVzpz5msTmCrQzqVlzNADUqafMEsR2
QR/nnPz8g2mCi29BlGoROETJfRTUggsjTfqD21HZHXoirz7Ts9CBbUIvV3Ydw4j491pXz/+X7aW8
6cLxR1GVBa4sjhVEEOVZey9Mzi448uhipEtzTPUHhD1UwcojuMt3XNf3+cLmfP1Kf16muduaLHwz
M/QYDOdr1Kb77ZkEp/oQo2kjhbt0XyHinjA9f4LOCMTk715cacmuR/Oz5krWbxOmpcCQq/Uk4xae
H/taGmQCOumQinkGJXTqllbID1ZmoVfoYe0R9yKAdQ/djjBbjBYTqQW83EjHQb1Jc0Kjkk2EnNTw
CXljx/7ULCHwVcYU5z9fvwpbHPjN23ru8vktd1PPgRod0Wc1qpMMn8FeS2xj0FYGt0sdrykvW/n7
dvkM4FC3anUT9P/6g4lS0n0lYhfV/kDPYGiq72pcVcFHfzCEslSvXOc1MH01eY8Ok83U/vc0bG4v
h4P0WBuGo7t8gGnJEWzHYqrmChgvu894D4L4aihylcriWSe+ZqKxYTquucucWdvsWvnz1TsZ+vpt
H6niVnvsbmOQs2Bm3ZADQYRIm+4jW/NKME39nUeQThhg301Ra014b1tmY4TfIqwSz5Ek6cI8JIHM
8oQaDidgZwopqGD7dzu5one2gL1YcPFYjqrg2ZEeod/enyIUz5m5AXNxGXkkSV5G/vneOZKSgMNv
BSC2r5Kyzwrp1fGMkdHm5R8uX2u3NKYK7O9slys5TnhSXLM8m1vVyHHDGpHL22U+OGT1l93HUnv2
QgRVgCKIyKCSrSvj/8ZExxsxC0nh6WMJ35zrWYV1P2TSgu7tW48AdLEtSr7A7wXr3T7aj4R8znko
ejypdrzrsXfaiW7P37mVBer4d9VNTXQEIuTC956uZDjwzpze6RdyruMnysNBv4WTPyTZp3TV84Oh
dOkVh16IqqmxoKfL7pTv/DZ0I9uQRzHyo2i+85uW2tGFSqp5HxRESQsX8PqTxtnjgFXOaQcBWqAD
A3gdFTjLBR85DJfEleyG3fxwU0FZY8Fdg61Bfzo9owmGFlKwTnBs1WspR386fBKNPfe/ECKZm6hC
NsamOE0fxUyaoTSQreW1TeJfBkUMN9pKZQ2ORB5gMRNkOXjevfQb58rP1JORqEFATzq5p230sEC0
kiT7ruhCLbDxywGquwEOfVk21oJZw3N9jFB8lzZkjlQOL3xkkyFzZMStcZOOOLBlDahrVt9Z78ZZ
ZR5Jo7r3PfRtCJ2G93Ob08ABrcTMLncy8Ohbgz44sbJ+bcuIwOVzLnBDWFNb9HuMPaM3UQXyXk3m
JX6J2Q2srqnZdjsDWm/Xu4JDzYhSuGzmWrSt5h1qV6K/35f7KfJ49j0GoBdwYjA7/zBYBd/NFG98
Aq5lQMVxCkHjuW0k+9Wmr66ErBHAaobnGEo7YMuRE1+SzJs15WMTSwYiKuiQywTFRifKzyF4Hb32
XpRo0h02km4NfVHXWqL4mbbMvxRKEgY/6IESQNHTB4K0PXlTuwksIE7rPPkAX6pM/1fVUykhW5sj
0AyNL0/wNuNWgtwmCM6K/NKQhIpu3+AawApTgFNv8S45422J7ZVtntWYUXXSz1dO+BVDwBP3vvgU
G3KbAXwgOhl24/JMt5EFUcY1PJ3ZBlHpiqsQhwPfr2nxX8ewvpbqFYnglLd9h42ZrPAUafxd8IRx
jpot/CSG5Rcgm1Uh4v+j0Vb8VT1mdYJDBtR72rpa8uf2SUA8K81JbPETss0qjrVt/7kzEsMlPLPg
/OqavfiisM8IQrRttT27+JL4DW7vXpMwc5KO60vtWaIYfft9V/AOPviOTKmE2+7aSQk3yFCfdshm
em1G4sFPeX/0bD+IoJxvWebDET1FkHagbaCT4PjFI+erm2uOMKLq3DNugWj/Ffc3BnFpy/zrtN0I
ulmf5lelntrKQf3vmeWTpH3phb+URf/PZ3qQ2uJX6XKCufJk82a9fzN9ygp24pueIh0a1oKReMy6
i8L+uIlpvjZI5JDuRQbPRPney8C9rvdId8VRWV+sL5p55GqLnLkedzCIyO9eXHk7+/MsyvZ7GbGb
sKYtfBYohrerP+/USyCvVe8HcJabjQilEqsOfJ0k2FM3A6i8ZmZrO7yNMXphcu2AV/rwW8Fpwnn2
Fqpst/sEj0tH9umtxWsWL14p/5YSvKzmbdahFd2wT+MteQNPG+q37HbACyO5cSWV3w3Hp/DA8PUT
1ZM/VUilQv0riE0imBYmaamRYiQaocBjRCtlWVcWK0VsnxgbzsXV17LDhsHkvSTCjh2ziqK0DPVF
arF8ZWRBSmsXVTNx9f0Mz/EJacXs1tn2806QDUcYrFON9BjNJ+GkjNlxl0aRvaK+M+je/DM7XgE7
TNQE676b6SsyDXFLSbKM4DpzgymxRPWppFgWp6RnqFxm3PwEm7hFfyvGtsq8EaCIqukB8zQnY8FS
L6LGGqbY5EG87WR2Sq9HM5XLLfqLmtbjviptP+RBPafnZQmzK8ieUXuHC0IldX3knl2zgdrs8/96
ZgL4/JZVgBOTBBIZUPOwEWRw66IwJTTw2nYrdL4BC4yiqgxXjOX3AjQM9BxdH14HWfOW8ss0AKMr
CsG2lgGMklzLClJfl2eO71H0x+pDZSPXpCzdiczMvSU4/pes8jNbdajYJJSaz3yNHEt4v9ZotRlI
NjyJdH3/OcT/8lBPSaM7BafZ00rQgK72JtqJ8vSiKSp2YMTziPD9CDiLY6FWSjX/k/D/Q52mttOu
iO3N8KY8jrqcUQ7rWMUNi0Mi/X6A3VxkFN0vzBpWlNvf47Caj82Z9XGon+8xsmo/PdZlWeUUA8C1
UcNDH8PRDOnqCl2TFB7jwjq26T8B5MOUtsg+hgRCXJrcglPtpglHFZBL/xZnbrzDPgH1qoKb8BCZ
8kMNG0Rz1j1BTAGAd7/YCqM0YoEpCtwihIHs1k0qv5neadofF0HAe5CnW3A60plQRrdw2EG2JpW5
z5wjqmvwxVbn/fETzs9QnFZVIgxNCgGvbl0Y2qDvprR0pdtyZaz1fiGVS+zBqb6raSSN7jEJe2gS
5h8IUdhPwSrTDh6/RahYQyYF3IcUlfEJqMTtiamhEKl/ylE4UtKBfMtf39lr8pK5xvZp1qm+wABq
85RUhUEHS5Z+3Eazequ/7pOG/V437YZ2+MF10PIdvdpgfR2FmbDVvJ2kHsQbtXIT1cL2/nvW8tqJ
iDX9HV/f8Z1ogiYAp7SvHgv1Z64WRDvDfYeqdMdJS6fO3bO+dnjkNgoT39qNDZm3+eS0UjfRt1DX
ZqR+/0BPvbv/6rFo3gaBvbmsNGM1b0Jn+Lhj78zm3DeMc6eDX9LnacXY47t7XTM0AckPFxByqZzS
XjSrslL1ERmXoF6Qca0rQMiSvRRoLUdyauKAkL4KDzNJNS8Cz/Dikyi0w+XOT0dld4z3VHgEhulk
xYd+TTvr2P4yjIWlBgEhfxYiggW7xuuT5xTwua1J1qXwHCbiWD0lgfPc4pAVZvx/dktEidFK0BNw
UH1M9FO0xp1xGyjFUzFzytnOg11MHrLkhVaXjVNB/LYM4+FO9X6fQvNwVLKy8b4x+igkne8BPvoN
kIdbPqDPDHPGD74YugtaC8iw2vPvJEU0GPJOUsNFmgQvw+h3m9uM7T8s9JtLczudyzRevLrKPy8r
FgAvYaBcnd02u/qEtzBl80TeTbidRB+HYF2noiuUkXAM03FP2O8+hLLntXh0PI6r+HwAUuVvY3fb
KnNUHYk2g+rTL166WqzWzFgMIXPgN4qZ89ceJ/eVRW9CWIvXcqEI3HPah9X8PvjsMbkkExHwRA+T
6soyxopMSpLXV46VLSZXFN8KckW0UF6yWCWCnBo1CMbyRISsB4bUxiPwIIQ2cH4d1ranTeK6EjIG
hcRmAlLdQ3kz9s/Yuv8enKjjRFExgqW5lReJ3tNuWT006BCWOgc2rs4pfqSFyZP/zffMW0PhjLou
Zu3b7s0q3OQdKHf35T3VuoO0iI7oldZsOYQ9YiIfA1/8PrbsMeW8yNkR7eR2aDMjJjrtWIaJyKjU
zxcyYQiv+bGagnxB6CNCAxkgzT8zVyx3p+EHOQnD6wAwVZ+NMraplRT6UaLEfQrgMXmAaz4zsfyg
xFwr9J+DMPvtaQZIkPezVwQTK0GXLmIa9MZm8E2d9SrEqMwuy3gomXK/zYgT/YfifbjI+Wy1Y1Uo
Saos2xeV0mrcy06/NXrNivzr6MUpp3D0aaBKwNx3fiyn/nEdZYiW/8DKddM/1vIpKs2I1T5+ypZl
GoHf0GALUKc6AvyZDFjdvpFYIJ2qqFDwMyJnm5SRpZ0TJgT4sfeTd/yWubKqheUCqqZJEd45djah
6x7E5UFTXMnReEvcCpEhA3kU4g3pKZVsmwyGy0OmjZNqb53PVSyZYaT5vJghX48daDpRpjV5eYlC
rdEWhFL71Cbh3qBztp9chCI6HbK0QDNeP6mAxu2zuLxTa50YTwc5nQjNHVNQUt+MJU3+FICv2E9L
E/16NGS4LtrT0YHBmFh/xFbm6dptBSA+nljDiFOs5QpD4e3mgX7YFU9lPgdpT26CxKJFMWssm3wx
PPgIKFppSBKmAd8ZYbWX0oObt/wxyTsJnYgCHVUWJn5T44jk/QttN9HF6EKw4wEOCGBM6J8SksTE
RD82ADc3eb7V93BrIGF238RoviCU+kGvQ6JZQ5+oyYgcrZZX5K/NoQO6uWFY030wkM4wf+FRTRr+
Iq1YwzGZk8T3yQg3xPsb7GOSZrfXiDqJZ4WTlzg2BUNfK332zebqDzLx5V5JmGd7dwYEqlNooY+7
Dx8cEtKOgwyap/90sePsFVbTehmNsM6zWketNN0HXjKsBoLm9TNew3VO4Vs3lcCyicvfgwWOWBxm
xA4/bEaQ6dvjpMBdSuOD+bj4BOoze8Kck/Oldcaeq+4ymhkD83LKp4x6HFWFtPwQVtCRQYq4fL5/
1Etyn9hRe0ywfT1h1/C4MGGTN9gyj0Uo3tORnNUJcgBIfNXK7pQfsXY03oHUtsXQg1J6aOYhmqKg
V1gorlYaExWkyI4q4qvtKhQPB3pjGvT3KxwELOrpdl778coOpm6U5eNweswk6dvF8Onu0e0RLYTv
0YWoNDDGr6GSt4HM1C44/GMsM3BbKWERLYUgvEX84sus39Vp+GeYzacRcGYl33/vAi1iKS+9aQz+
rdMCYnduya5HiZwhHl9j1FkBYivHCkQt9bhiBQ0HgWGqL02783OeODT4W+n4M6eJM7xW/ruqw9O8
hcs/ARAuGAS8P5sN/9Ez/esBKrWmvjqa9t/FbDhRggBQFA5FxQ8km/R9u5RyUnFLoaByDEI9Zv2g
i4iHNiMF+CM7Kvmb7ie/Tz0u5kJ2h75+UF4x4onjbqCxhu8gg5dFxZy8lkXKouMQsbjYkoCihcyG
JJAiXwOG0ZE/0V5Fo4cnQz3uFzOBAyYHF6Gwa/oDyz+7+e6MGazp9comO4MBXtX1mCgLeB+5j+aW
5urmrrG+XI2U0G/856jnvJCkHP6Eh+eYg06UXfi/nG8mOmbLtrzO37MkhjencAo8wYK7Gq2NJiW4
jbMImzZ0MgDmOQKDJPjeke/U/sAc1jkccs1NG64eWqJCZCQlhiWnn5jBem/HskbYEdZr9ZE1XMNG
mn/H1wjdskOXi9ro7J4TF+I/fjUsTrrDkqGVzKJeJ9aWnaRw8yj947GlsGOSFGwL/703kMxU0sgd
yuwt5X9lfuL/AqaTeYOUjNnDnMwxGvvnYmuY6ieksWYJ7BT1Dny8TxwgHKjO7bRMH3PiDBvg+igm
F2oQ6/YpCrd3UU9SSA0PTd1cpVLQCCn9jnqyA34dmElxsNdVIfPEtG7gD/FOCT6xSe1P08wvaDzV
mq/bxLU1gicis64dN/sOH3f2kpn9cp4WN2GTzq1UE1K6BOrPZbuAMbx9EtQnREQGd9j7jb/WqHx5
1BcStCK44iKYpvOsbfwwO0z/n/jhULOKWMe7lurA80acFA1CftXLpBtU08iBoPiVT6L/2Sowkpy7
gvqrGFx8TxZ8t/+TEFy0dFiGyUDjd4i7WffkZjxVo434gogTBQoYNmTu0Hl6uKh9W2p8zrhBfZa4
yi6kgZ1Z4rOauEdKxufFwSLXNad3wbixVByaWqG5KGN2W6DfXwtT9oGyPDGg6gp7HwCLB18F2fj/
ezWQupLamgCRSJdEZlnrOoyHHcP8+7boTX4KpyVjSlqY4M7HirBbyaOnWDxFgcpf5hGMtYfrqTFL
C6/4istBJd4hW4Phfg5gxc0I794nq4vj3Q37msNDc5vLp/OC3OlWtYd88vNgM/kUxXlk2eGMy/Ex
06FQN7S9ucUm9paTv5zZcEc2wqvYrRxr8W21TeIDYBKe9hpYGO5Dgy60bjwjyuZVLwr5oPnkn5K7
FeEBHpTDYS1UUR8Z8j3+NLLGhhw14MPPxgA4LFXwStKOR181D4JOIz/f9EDLy08E0KE6yb5sFsW+
o0uXBtEPZmoqjTvW+EGr7qFX/vMOliC4v2DH1SpISpGnNhiHYBSrFzmaB7ii+ks8WR4Rx3PrOpK1
X3XXRvO5OyJmjfL7bql41LUPbvVJQVE3TKfMMbDOZ/wW/6EEWnsfoah/vuI95XRVOGE82NxU/JSO
ngh/z22jjfvzhf9dHUty8Xhzuuqc0J58PQbkiBDyysZLgFXHIi399CfMtYQjbpVf4HZ9PKYC4UN3
q0SCi8q7aRSRFGYh69+ncx17ybF9A0dainGu+ob8egNwMWv0PFbheEbE+DRQheWdvKvF+N0VWK+P
96ONtxqvK4ccNFX8jzS/agkJINUJeYbFAk7Aj27sruwCFUHg8ZEzM17MBAHgQZOBIf56q4ucbFxN
67O3HDRTJ+bVKwu9SFoQ6fT6sax7tRxH8EVAucc5S8kHSufok/Ar04fz3wpOI01pHEuQELEXNIQm
hHz/m6/079KsjhEjbIfZ9OBRQEczJ6d/941IfyejYgmKRnYB8spQFmNMDTQFw/XL42RR+viJyepa
mQhF7ZBQTu0jTzjvC5TlbTXR03+lzbIH6g5DFN4tRYo/jIFPWMPRW+KMSlYaNqLm7l9OaLcmOGAG
JjteKEBJauw3Q385OE3ig+PAa/ejBQOjoG7rYQq0Db2N6FIBTURAGcZ4B+u3gFtIUgn2ABrrd/8q
VW5X3KN3LdjL7/juikSJaGYaoSrXaj59dekHvO00zvHOAC7qwGqmbu7zzNIRNlJI99haV3AtKI6W
A+zmrXEhJQZEsRmcKAzwlSXbFrbtFQvxDqxzPRZsUEPVJ46zlg8+UL7hz39pOHuVjbZaGxWfsLiG
goGn8sQGsAmqXdmltKsfaWPSUgj78T387lpVNtzo7z0vvlufrC/+v5eHBWfSnVgWk/KkHBUroo+q
mX7G3qRBQnFfuXghm2bIihuDke0ozsAbXDpiGmAFFyMZt+jjioYRnm390YbRTVKfFbnHizow5sbP
26fN5vDPt3QijrXuAspkG31THW7l6IHcbIrrJm+JkFnN78WzqOENYRP42n2M6qaH0bp77Dp0BygC
2jG9CTQgDlHJLbI2A2dbT2aMLen44huvC/eTh5bnKSQEjwJCvBp22sfMAMfNbL+r301S4UwiknNB
JXlqkjFRc/SN8sO0FWKPRmFryGDpDPiipwXJGp/NRoOOQaeQzbvYApZ7tjQi/qLg4ApljPa3SR0v
vh9ROMze9+Ms6LvKA0M9dC64q64xI/DaXW/TIsxuhoS0qVA0GSQh6bvo9WYJUE3JaYyna89SVAQs
XXUFpwxaC2Y94kQdKJqLwF1ngJRdSjK/YOSMoP29cuVVzY6JNp1nbIY7+BTod3Op/qFZFPOQTnwq
2qlizbVkAzIkTm0PphLCY2J36+PvH5Hx01gbfifo1tnrr721HVsgAmoOTBFEhG8Wr1CYsG4uoBEN
uEKUVjiT3EbKkkH+4AQX3+M/6wVVYZd3+NGJjgNH90lu6ee/2s0ZlRKZx2VK7S7nAu/uHYBAKOb+
ygrdMnQAVO8CrTvA6eTu7JqmXcWq/nXu/IkkoJXSviDICWfSSu51H6hNEg707hSs3izChAKcaL3m
jJJRBDjJzAj2ytReCrBOql9bL2EPj7mmtsnVH2zvv+uxhu5eCQAcIWTF+lkK9yNILcFYURHMSAx4
bwy0qhWCiWc9ktVQ1oGuF757HCXUpQK5idfgFMM2UM3mZxhJvjmgwzmfYG4TR1TcsdMXQT9LLGZr
YB8ZaTtFMT0V/F1WtAgIb3B2ViStcoZmpcx19kBJh9MEyXA+5SAruPoZo+7A7r3gcG1c9pFr+bl1
pcyKu3NjlE0IV0w5TcdoWF6Gi7W66uX9fI8m8P2K2YHJvlPmXQGiP2Cj4YmAdyx0/KG2H3Ej4q71
wgwYnu5gO2gCRGZWWYM1dxsRrSxjO1ocqnIcWSK6A81ErQKBPxBXIH7N4uc69gayGe/xsLA3k6Uw
34NosKdSJwqxucRdNeJht/TmT6LLZPMhGQP+n4zDzdlBnGVQEIVKN+Ifl9NCnIL1Rb1EITzX/+DW
IuEqnuDqYe7bLTxaJ94fFCI43x4QCUmrTqza5QO/2L34MruCjFVE8ItggUrE3dY3kWY5l+kUY/Eb
ew8iYyJCp6NfIG6vEt9OD7QmxQlS90bWHe/f2izzt+iGqD8mvsBMAjjGUTlpGYnsMK8kJPG871iC
PwwgPNRoHMKQIP+gtPT3ppqkE5kpyGntCgaDASL+yJLZpCThXIAXuo7qcQu4GNTH7iQerXOzqcw/
QjAqn2x7oQS1GwbnrMyPrHqgoSMrqPMwFxsU4HxtdaNmoegE2I4Wvz5LB3znRNXluBLIF4uxIkty
kojCPomq06iFaq3xmZ+uVRii3ePdW6cvZOS7eLLSBuOzRlFF4ufSWstYERy8V9v/IE2saskPhM7m
WTjZm6LyQUYWqWcLMuCEkWvu0GJsuUKBZO4W1gcBmtkN9tneNKADpBW3zTWBG3cz8UPzAtyb8KkW
FZIwAwTGayvVU/wIY83bExrsu7NnIGP7E/21X48QjBtqNlGfMHB27ajGcdMhr1HVoEEdX6WFwt+T
wfSxbyUbfJkDMRGQZmqptbuoz08Bis6GkLZiDqnlInMSl4XwX80G1AtqPk5aOYI9QCDtycfU+Xvu
z4dk7VwWOvbNbvVRtu1nFh2a+HAS8f2Sk2ahW3csMxLt7pg9DpMf2MctTVwVEDTrGC2CUjyvhjvn
52myAmu23ooss3jtsxzzMcspLbQULTANPVASg+bOxEBs7LxbfRAHKxJCfe8h0ORn8NNbqH4tUjJH
6Q0RvUVQ0VkYJqq8u74ecQ2QEOECgQPB9rE6hUZFKy0PdwGkOyHUovycf05iY6ddiByVEegsn0lC
YGHCn56XyQ4uGSZ8J1I44GnnBRMmY6Kl6tVDY/KrM6cIuozMJo7DWoIpeILipLrn3euOUwOroDnh
TcVwuVR3joPBEaUo8koRCTIDs7ew80LeZqAkRKds9IfvHW2gSIQdhywHGrmxJEVkH22RqxGClxPf
q5y0Vd0vRSmWztIqjAo/TMdBVq47RW6a36ecvVRvJhiFI8Of/hypNU51UKRC9COqK0sZYI5okJz0
doYH+2RVts0b7QWDrTR2Ex3rh2kyTeKvoPN/+xl3U9aretegZVqGq9KIumTxzj0qojQIbV114pYQ
PY2pvhWy6tBAtxxIfdAExNj8HAPzWA9y2hsA/1qS/rpJOdHHJCDScD4nvplX/yOfusmweCXc1b1t
kWqh5wmGxv1oeZgFmLfic2CsvCNBjlCAstfROU0teXFMYYEsg/FjwtlNWCTx3MuCHSJZlXE4v1Ah
3y47o7Hr+PokrdJ88r8NZBdC4nHn2h0Gy/tmXlKVNHZJh932d0WH4qMG5kOLdv3Gc6TbaTwTztHQ
hR4UX4awxQCxIkg18MZE810UT2AKCorkkzZa+miXZdTDWIXfiUIbKof6xOnG/zJ8FiR9MIWlPA2g
E+VNtRwFtU+1LV/Y9PduV/ZVJP0CBDuwKlA58VdYiWSusCidEkFOOdNyYuoq4KMAD2OhCjgXS358
sci1aQmSB1QszlQ6ISBoR5UigQkZrTX4M+3vNHrz/JhlTg1rD+h4wm41DKDmTogzvffXp7IbUNep
qHapSXDNU+Ss96EuIpDGwebhrGgzQrkijDUxiwWTfNR/2wQtE8LMKp6PbWpJf+JVM9rdxObH/gX1
8pArirnONsF48YWpunH5cNswefoF9XgaKK6u61cM765lRq1s/nlCu88DtnBTQj1iIpDb4jHDEJiK
ZnvwCut4JYz8TU3LxBfFFn5z/Pd7xZNVjRsMpeNTd4rTPguUiT3XHWh5eBtQecullCk2glqKq4Rq
9w6TCQ99JfiWSvHZ1Pj0nEY7s8RTZ7Qyhq4GOr/fjwrRaITA9cKhZCq9x0ReI81M8+BfEkTJ26aA
Dhz+7HCdWzoMFnJhcLNB2KjQxZ8M3QpQkyHsfj4DNeBxe8QStH+m6b0BNzm5T4UY0lfZszcUuXlM
/vgogJYayqLlx0d2HrFIY59P/GyP/IQqpDlrnsclB8EiqJ82THRbVIsvRnVkKIX8SNxBcTiDqNRi
DVLifELw8MJBGWX3D1toVDojNOXdm5GkDOkmRs1XMhPSgszloxaTKlUD0cb0yXg2C21/CuuP+t4t
Z6g9R2McFJ393OTl2+uoWdoGhlSCiSrW8Am3/QAf5NMcHs5TYP4IjFMkvBpxoxxWCkgxgbMCfHaf
Tf7iUHN1WLx6QJIfgFKPas/o9jzRtec748S+WEi/IdQmFgQg97TNjVIzx3h04g4BWSDUEhDMG7Y8
3van1SdjNmaauBDRkEVoGD7AvtII+EAwJ2t4dqzGoKHiMt6CaYrGAB2rqhhNEPJjOpobjV+FrqJ6
xmwp26Lxdam/WsbR57EdoxzOfhwkJOZwh3tJQ9y8t5wS8W79VWkYaAlq4aidZeE6e89lsmkRIuvs
evjFYKKBRKWJqwz5R35yEe/9XKqdBZFV3bzUjL0LiDF9M3CUy8ck2RxEbgUvjvI6h7/JXLUleAP0
GlEEhK0bhGHPUr0M3HD3j11lAarwqd9hImcCzoK2k1Fhm9Fq7Pj5mp+wU+wkzbSldd6YTcQxKqxr
oIsXI1yLEwwRlWYvInesMjm3n3yxDF+DFWThUC4meISC9KEpaVSfPgPA5oIxJYkNQUjvwpUFr1sH
DuVGhkU44TPC6tpALp2ijzyVvJP6kgOk/rMs1uG/6qAEHLeraJ5ZhYzbiR3AvzKsCJbW7L1u6yQU
8j/nWcFdUVkJQbRdKAtmiEsoQ4BlU/3Nu0AZB0/kOAMdjxs3RDnuzR/h6V17hHi091dRzgQP7MAN
2eNs2MCyeQjjnIxXmNwsXC7gY/MDCJFOVRBacB7QMnWP1CSgp6jK3Y/PPiF0ielBknu6a1p0jrNL
aff3ENkFgWnIi36CYSDFr9zdJ3KgLOnA5BA5L0NnwdTcPQfrIybDLA0qvsQWRYJXiL40NJ/C6FTq
Pp3nM7hd0G6n0aJt8Zyxym/KuqU5NgTwZiSD4gka6zKmbZ6vtbTWDDmtshFklEDi6Qeb8iJbbJJY
+RNCsewsrte6Owx0mZ9nQnBbCWVu/CEN75ODQcQhooaFchm3zxmfEkXGJAM48jr4Fzza0GBx2kxB
w1lMkwUDkyuPwwYly1lYOqtHOzRoepktIw/SxF0BfzBcDc6jlAT1lSVeUF4NInTNIn9tIkGpKDtA
M18EWwGZMRnNoKe2VsL1iSJoLWXzAqFSv7HC7QC3Qk+ki/uPvVeq/KhrkrlVQ77bGSbL4BfBWDfQ
O2F4rNtWTyiHl/CzvPLCeZGb6Nl/gxW60hb799haycq8u/7NJ7ptyM6HoiFUitXMVOFKsFXIc1uA
z+ALyr+y0+C4OaloTaxHKmVufqvt8Q6A/VDZGA+y5PY42sLIe55XYnKgFnivB6jt+A7IaJEBjVdP
psMBwJ1KsDB0REjz/rGnvu9o3qHlwW5u/ThwNd0pjsDxUQ/MMLmEVdf7JUtLG0NicKSrfNyWVA3o
BX28LuLCwmCKV10cyrH657WcYeW1ckoY4cqE0fHrC8jOaCpvdUWT/7lqNFiZ7aPQd2S+j9gQ8oVZ
u2Sv1p/vdTK55lZC6VkszBUivSSm7o+kbVycVZ0K+aSIHTbpiJSYJFSPGIqcyOaraxfi2OAXPztI
kkc2eIuFRcZLSOvBXFIJwG2DTQBXg28cQzpK0Q5CwfrgsmMhbX2ibAoeAvYVxAmUWeW2X6Rg5zXv
IIwLAAaofQ/aDoP1RYlujRWEh4tezxfKYoTypQOCMkELLVw4+ATcp+GUxk5fNIQzoTgGAP6BuH+O
rRbpokcEcYgEG5A+52BdC6CFLmIML++1Zu4MR7xbSmFMfNW9sZt0qBGJk+f2xFUs7FxZT9vZqDxM
Sf563Zfd8uWYjITx/MLIzvYl2TJhtomUrGHFCWMJG5ZBW2rXUjFVRxwwUaki+zemmkKhUmQGoLD3
ex2doEwY/IJpn3ODO4cyu7hdaXJrOftyks+z7iKKVLd25qgtx+J+X0AdEJSCrp5GOgN7wO/hNzV1
cJq1ExrNwxaQXZCkMvLBd6OgslIpE2siYp5IdpiW+RKPmEmRyI+cOTyWi14A8BjaSCZt4HyDhKag
iOu/JUh0xgun4D4eBm2V11UhaNFDmqm+ecP9S41OyQ4exPbSiZrfNTBmN9OmbURhr8rcQoKxsg88
WwXgshJaGk1E94yloyv6T6CXnhOC52fiazQGdGrx8vUyatbSRcRrwYka4z1REaFrH2e/BrHAy+G7
j1Sy/HtmRhQLmOjRJ9rz30CxB/jooT+S+Auxaj+TL9tPX5J9caBQL/JwWGZZmF7Zl/pmY1rCxZoc
sLvmCf6Oe35GGnOPTVyNIpGIndgA9Qc2pCamV6ovA1U0h8NQfYvXpLHayikMhW87ZGjWfRwoCblR
VW60vAVzHRlxUmfg6vPWn/ANaz9MRDsH5AGyzURUkD8eby8koGj7APGC3WSzMkJJj/WGAOipgSIF
fKUh8Nv7QobAShtXhX4Z+IefIevMVfKxytYBtcVY1KuEDpqNKBzNrGj/SdzXKaBfzhi71yvOCAHs
2jLMxE3ma44nXbxhqs5AqND6QdVYFSW15NqH2H+iBQqIniCwKYFW5fofivWuJ+D2/lTd6F5JG3B8
lYkP1P22BLDNzxc5og0uVB8TxrNlISjWPeaUgj+1a9RV/lUPjCEWTyLlUGncgcDqvXYFylb/Zn7+
k7D67QMUQLOMJVdeukrrmFD02/PmBVNaR9Js7Qc7IPK1zUpJqoMKMyFR1QHSnhtcGAguQBvOzLts
t1aHMuCcOUTIH4JCqIMtMfQ7YbEPLJnpgbSqdIIDS3ffO4zGfYuUXoTM6Ffc3mwtQpScu3Q0fI/H
JOb5wgusCPu5H2laL6LWoDqLsC1hVnGm/4YPVaEXEBM9z0dAna3lnq5RZ3uK2HzuvrxCv47o2fQm
7kzHlNcvFIvyKNm60/pTCrylR9NMjU5DvRTyigie/KybJ7lUMPgpVwoXRBvN4ApVh3tXee18aaLV
j5DfhveZIILVVcE+wfoqZSnVeiWPSYfpkpLrm6MDgBgsGDstJZ/88OxKtHZ7YsOVpLtAeiSAXzNZ
um8yzw6F/9BKwepDc1bJDYiqjfj0OHTtiD+pPiKjiLcB3eXzwWhFJ0CpfV4IOOcUxma99BrZX9HZ
EaBN6QjD1jMmkvKK3sEzmN1HHDkttbZxnm6NZjtZV8L5M4nDXxXufHGg9RoiZa+UoGMJ+RCclrZZ
wXZwKWAVEfVJSFZWgwWRl/7Y/OU+TFj2OQ0atnpJwYSsGDEakiVOKrCaOaR7AL5IeVD6bjZh0S4g
gVnhvN+Mh8zKhyTJONPmkfAYGmthv//5icsgrNTpkEI1A4WEhtbJu34TMJr8njhjzrNdFZTIjtP9
/On4ptJIliNcBsuoFMlMf3lxJJf0zTAPoC7x5JAThtWIdy+D9GHGC/NKBAuvA7Ehyo1N4CPOiuJ0
cxvIlu2sIGaBYY5lRjrMzvz3u0G6V/vDtfT9T8phoHnaaIOjTgFtiPZYU2z+7g5gzDJSjujRN6sS
8PsCiw8OOH+yhMFp+M5WtqlZ2q7VV2Y/hTVmJt0nXfHCLcZZYlLyflxXrbwcTJayvaSicXD34rXw
GGWlgAUKHB9OA6TCngLRGnYlLPPhoqWQlBKUJy9sVYOJNFx0MMx1CcrGSWlFNL3+6AXwScgL0r8l
yVFTidJKsP0DXXe6zXEboOo/qZ4o8hBbUM6Xyn/C7nmRf4UV89S9q0P84RWGXTh4A+E1ZrAU/+r/
wfZF2QWSETS6mClq9UKnT3vFecLEIea2l5IuFaTNgKuHHqZ76WAr16fgSyymBAPqRzGEgSTkG6pV
Co7U8zZyzGTqMtOAUmUGZ6TAvAdjR2reOO1QPOHoKnUpd2B5yJxQXO5mhjdye1lx+yq2zL9ddqmf
c7XLJGJlI22m9eatx4GbPa8h88VOFB9LiYwX1Cy611MpFVflRZtJ5KE1ytNhDsP1gpOT6OrwbMeI
8Zby7+UAahTTqhYom7jyrdgs16e5+6hEg9R9bbNDqkrgNMpIyg57bfTTHNOkhxis4SX9dYhTBqgr
PLAmUmjAcIMZxEvpZ4W6UN6HlsMwWtaj9PW6U9C7y4fUIQ6orAlyG3aFNYW+xUyvnGaSW3Ua8F45
jFwGkydUdvseg4qjGdWGizneoChWRZBXRQw2F3LNUAbN8FUw8IOSDPxLORgoXs9ILxz8vs7j2kWu
eCxuk6yJkZ773IDxOcgePUz9I1K44vSYbEsaAE2O8p3mA4ipXUsnaDqHtA9PnPyPSUjpjVq7lxBR
VpfcrBFB115/jZ8Z0T7/qiAOmMaDetxufPJWXTVS4aXWUH7BqhHkAaTb5rOs5g/8F27cY8a2zU1s
F+dMjk/ge5dO5nUOgo1Dsujt60U/QxdNEK9NtkJt33yk2NMn1yCIqqb6foedCN+OS9nd9yumsrf7
3bDTWaoSlyJSAoyKY/8yahraAnv5blgM8ezA+x5sTRMxfEi8V1VLWRHHyNnXKwOvQ0OPWuoWbZ2B
W85x/QpwCtVLiNUI8FKacOyA+AvetQPHTA3F3TOHWbAlnvx+4ct2KEqyDXNylOBOxQ1FubnPpXTG
kPxJ3IVygwKY1Sb1lWVn1fNNr2/llYpiunGvgceaF49kYw4FEpmWHb38VkDkU5bOq7LWF6e1HdB2
kdBc4r3OMyKps5vHzJp08d171EYRpRF8vW0ViBJ8sGYUp9Unsf0s7Fj4D8bScVgOPa4MgJjqb5dm
U8hhpSnPeheauP6HWDDbMjOOKnGyIp0X1nRMoMI8dWgrwWcaS3eGg6lECbwGxi8pADMINRJPUAR7
regThOJx59Frc1xTsRUtSfo9Ly477PLHl9SuoRdRmqV+0W2wv14Oi1wx32WEIoS3b+FbLybyTeRa
Dy5Eu9F3iEq35bt7yDo3p8ceevHL9tUVkdlZsEqdH7UfePwllne3LpQcxrEUXJKt+z1raH2+JfbP
fS/SNAPVgY8TaiTfe81G8fZatqAPj1oIPErM0JcVDE+64GSAFUykFfkHGTOphPk9M+tsXmipBU19
2Wg5WwDkwan6WXYlUvsoNCM5thl2gB8VIRFZi1l5m92YXmjUXMhgeI5BU6R4cyUuzSASZQ3T+LDe
X+R9EZGOuUg8nBhUN29KpKqbgsWBb4ke10QoDq3VtKYbhTtOfkwqKMHrEyiA7gh+3Y7GWwjm4vid
Br8b0BUKdjtkins6wkUVqjbFWzu8MSgfNN4t0BILbXpUkvuAYrBkZ4BuPtt48J+q0uysOZer4IHv
LF2ZSh+8V88Iij+TsV7vAKEOv6N2jXylQugl0rEyg5toqKWi6CqM+x1SECp3h9QsBBxDoSsvWyJx
HsxRrIQHG8d5ZLvwd9hDbeLFv/QOIHozRzdHB9juMNloznIg3NmfXGBjxMk/2PtFqGzyrbrtg0tQ
TodPDYY4xy0w60CjCkjLpVO5kVADU/E+YBTLpyb319BJ8gz2JZhsNirADOJezv8ohoq9ObB7LqUk
5VQfkEvYcqiu+4qzYnVC75/iLSzZ7T2ubHHQGQYoJBiHdnTWznLWG62LrD3uWldSobGKMPmcc5vF
hdIV7ohDM2rRi/KdnPZNNe4o54YE6W7BYmiuyEoToH5FlTi1Zn7gp/f1goxuAZEHRjf0vJC9PnYV
yI3H+HGhOqnyzRDv6XE+D3aGSfuFDcmwZW8y3O3maLZW/MSpcMFY+mKA8HTkPJtifRfbM865szjx
1o0jNGJOO9sXFYibcRvp0hX96AO+om6yLhR+0LkW7JaHLgZT6anQjrcI/ti20goYSWZGmU6QskW6
ipIl9Bs0Q9XL7KXjMmqmNmfh65t/j4a4sPo41DrWqC9nyWrKM4eZ+nEGGaxHPAnswAcqTK3Y6LXR
ucNNs6a4aMImrc1Y2RxTLWb5mflZU8iyoukFkulYky6ff950It2/rrQs9x1dJsAOzgtjk0HwRrE0
kFP8VaZGNEtHyN3V75Sj2RktAgc+9IRLMnrE+lJVHdDIFesqIoThsVwihNLe3CefDMlgdbNQjm8F
epEaU7C273at3I9wTsPFVHFB2iHAQoasATBm1KaSoF4pUc4dGsuLP9KSAL8cmhl3LewjfDdJMFeO
n9/cT8gcvrrv+YelGMKm7fMJ0i5eL6DFmPxzNYamjaXHyyn6D9fVoqbn1pKxt4mvZ+zDH6y9Jg2s
eJWXDKAc+aHrIc9jkkTCuNrhp4iCg4MDfTl+Fl/XEX61pjAE59+I1j4kEsP7NqkymwyLwPvmEZXi
utLT0rf2O2N5NnRAjOGOrC4RoeXdZtkD0S8YgolpwdXYEPnY9dx0F1dLOflQDexlCI+MfDLCgB1x
BjLNo33TAsoBYUwI8sR8HYLQeueU6XqttcPPa6APTyJsKRF2wQtbk3Z5CZoY1XLn0OYUuexUpAUr
bdQUEuxwOsYsUBS6nw723uuJ5nqQFBuxiuG36D+4v5NR34/9EHg/H+8kbUm4jJDoJeS6YNqwckXh
YpOem4qIbVzAnFYMxGUTMeMSWfatx3H4ICiT+si7J3z8UzSISc8MmlGPDrqfT2XuZFq/Cpo25MgN
al4PdgGXWjqOdv6OpvwvCIk/zDUkFDVRgIkPqgy/+TyjUC4QcKn00CWAwwMhWU16BC6bXMWEZxlk
yEY/OVMMurlKMow+AtrgvIIUDYT9ZsBKCBb6DhxIC07idaK3KA9h/JI9oC/3U8nv/K1joTWDhivH
8J7cBRin2805/pEa2dCpfpus/04M/mdf48QDU+Hv4OUzymVXun2B7/JtPqh4fNfIoExCAC+25y+/
sSYyD0B4hzdX9qMGA9AbyBUUpQXCJ/fX9m9w4oEL9vu3nbzHLn35jeqlUn8ow/uEnPusK6DqEESq
yX3V2LrUBJcIJlWUe7zOz1eRcP7XdLcKeip4QyNURkRQg/4gMBZDEydA+z9FoTDDjqyu23ZgOJQt
LKzrRlJIMO8F3Yixjv6EWuovitb3XRwjhOgJaXbGTh5mtJRwYiBgd59bpzrpvLNqmdWMjM/qJpJI
+Lod/bQcozKv/qbqZxpiLJMO6zVVcOdFPtWzmsLIz4NRJYvOcqJ3adb7hiCItxlICnuXoRgYwOZA
h27AKJuQcEoGnR4Sc65LD2oj0ERVNIYgkgoQfuZ+amk4F8I0zQUaVjCUxVzLY3fNSwhqOIM4JLYC
XtF5wH69eq/twv2D+yUcQUby4Z/6tqDd+3Y/1VdpA17JaTMLnjc3U7KWo5Pe5AF8Yu58QwEiiBaV
yWNtvORyKVtZA4kvNtewb/9Vn7+4121SCpmIzuMElx4yj2bVlPhUUzVF7zWnTS5/xQBxQ81g02Q4
j6IssDZsnvnZLvixMu2RHmneT6AV/5IbCYockL1GQY9WEmxuD+7xNvQZX74NHmFE0IJwMJtIt+PA
eFNIcByyEpxhHoSmH3ajIUuvndpFwF5JB5TY7H8W6f7vM+NQNCl2Ox33mIe9LmPlwLYlDlvAeePt
jpZ5MJses7pxSGF/o91QVpPpu74TuuXq/ga3LkxBGGafnr5/lQRX+LIqQoYepCOlkCiR6LRdTp6V
4DjtwzVS26Fg9md6MXJtobn+Hj7C0UplYjITPaxwCPGSWkrwSpFLKf+5DH0HV3iKg2Tve+8EJ4YK
l2Xy0ocwboV6OveqWZP2ZxlrUgcjIYieo9KlWaHl4gErRudyN7lDzes10LX6XG8bFZoYlGd9NKTn
AUauDytkBkAW6Z11S6zefp5WcJZfCeJhQ+VBcVH00ARYWfNWjj+Nu+7Gq1/hUjx2KQ5634YVLqjx
su83jZ6WuPL0853bos4/IO2TrAMW5d5qwpUzIWoVd1FwTN+I9GJGBofTNhC3fvpp4HjfB6qerrmD
w7kscp3ogIIbl4mSVoJi/1zC7rBjnEUSuSJIK6S16hp0MKqd4invCCC9u2iOmpC0nhtEjBAt5toi
ttLblxzUhTZVGa5yiCQpWp8JRDrAvb19o/73m9zmfXr2+0ala6C2vHs/Wyg52thgqMy5L4YL1Eje
I9/AGHMA52rTxr6GRE//fQ+/XbrGQYCenuS44u5y9Tv/UpQNBBhF9BLogzIRN5gShGy3IhS3cfYB
6Rqhg9PWxwnsgXvmu9mKsul1Ap82bFv60ku0fS8pFUeo5XUc27wMV+ebVMIeb7/02IB6tKZGJKEQ
lsPyhNhL/bKzyPJxtNQoSN5ywzxGvxPsZR58Qgs85JhvYBSde5DSTiipkZ1rl1nnMSJJ61foU9yy
4+xTE7Ca8JWkA6o6AA+ylPYYv6BsnJJlHSGgCy41g+o3AkHitJIxiJ77O6vsrCmSzx35L50JVyFp
Kc5ucn3KxREb4kRMmYigHIboyQlfAOF5fhgNEvEUYG21mJaVZmIgs7/aPpIzct0zix8IJwNMD+dK
JeYIvmfCCigrEVPKM+UMY0YV6r9x4uY1bwte1BI5fzYvBN3sOaEZeRusuhS8Kf95m7ucKeDegVTr
y+qg8re2zOH05hRCFpuhgfLMEPEnqpYW3EPTlEEUJN4/mdLNe+XApiQBnr4FF+eoifB7YGRjdt/5
inb7F63Mfmi6Nd+/cklrlGwvt/iJ7+/BQ7q8eP6Yld/a33F+Fy9ZTt03dU4xsaVaHeR4FxZvUMHo
HxrQRvXmGFFJTPuGrki5C2lyKn6GlzG9JaHhCwLm4pbGU/8fGquwGOqoxziU89/FoiPm2A2jEmMH
IA8buJ1kdjtX0hl6qbGksLoTKTumiT8+HOTwpOKrvmdiDliW7ixhdNFOcTUo649bApfsiZmEUalB
7L5L1zaZvzN8xpFIkxxZRLeHr8A3Xv/fwuqBEwYA6GBlPeuBzkfvN5OmysAnctfhJfE3zYWJhGnx
+VZr7/TK1GIQfRIgoUGpNODPMbQC3v5WqZCqsAuwKGl9KYy2a7kEaBl+s7YCwe3tm6j8IBx5xvgU
6d+w9S00MWEn/qEGoVt2dIa2F9xoLxEmembuE9D+8fecY1l3FlR15uu7JSocUf+LmjMQ28+EqUmE
A/15wZeK4Bg1QZkLxU7wxgrn3k7zUkg27m00+c2a7OwTMEiAH2ULh2RYCnhWS1WdaSkh0xGSRFgy
YBUpd2H1QMhZuUVQ67b9rjTYJ0plCaKAdsZj1hNiI1k9K30INrHEztNC/3y76dRjU0ARyxeaVkS2
btD+ziqC5X14UK7ZruYtPYFm5YmljZb4d99J/as3tquqFDHcy2S+Xo23a2FaVp1bd8ci117Sg71k
HtefUtkPlZzFaKAw1CzBNsA5Lz0nGdjf3pZeTKfvHoFcpyUlYIsKqLUEsNaK6w/NBWDyQ0B9AAjF
zZhKVZ24fbfw2oLwcWPRHe8n63x94pp6+kC7k1l313d5IVdxML/SRZ/EBBWIk1YIBofbE1+1DtYR
H9PBVszGlv4SczIvQuhZZlajnvX6BNGCzdOcrYvxMZvmrDffXiduOuDIHmdCNEFx/yqT2igupL2M
b+VvQrGzSMVRQXwJnt2eB7odneTML8rKlDvvBJeKJlHiqc1/LrnfpMcoZbqttMjOuZO3K/i6OUo/
muVESLlgmL6+0utaymyOR6L5wWz1mWNbAWHUldwB/P0Hhx/v222c26fd2ybYGeD2IbQT3y2XACqQ
KmgBS7Y41PNvCAfD/LcIASTL9BKkcSNBhgnZbRlJZPxa963Hbsq/mc0pd2las0Ft2rT5fuohItBj
IP9ifQZUpZnrYw/H1tqZXKOJEci5YkUAbmJKumiVKzVJ3OxKU26b4OSkUyCvUxRfkXsuLsl0JKrB
+obgURyFJCyDCFQ+pupk0pemMNXxNFTHhPb6259woVld3cdOlK4NMcfSnnNPBfKvYKMx66jckut0
//+I+Y1AVOTn5U9tTMytQXmzUvH3aBy1WbMUgH8hHW6TvHVTWtXiN7x5D/7q0l9oVXmWgGabXwPE
/khQNXEIBSIIvRgfUPbFmqO+IbRO6S1Q3WC6f09BUHB0FaCHzE03jvNs/q7Z/806mtsdIl6kJEHY
Ut8DvBqriGwteOlsnRyRU26UCl6HQDzfh8IotAxkh/f2rWZvm89rHCXyc/8ddg9ZQVqCJiA6EwuQ
ylmKNtksS07Ak+Uh3Mqc0hehBO2j6V6dFtsCOtnXuAsmeSiDY6aDTydxs1vfBYHjiftfsNCf7gkv
pTFLVFxldY8ty1SqQm4LTTRx5PwIsa0m0RnbTkumI16koXUk+AmTvVr26iBiD3uHe+uOW1VJsL5E
3fPsADGOgZ8DjKuWYpvTGT1215m1tYLx9AUnLTa6BvxZtVuO1kZ0zh3JJgG9/QLzkULb1gh+xhY3
wZcOYI1gCj4NtXN0ysAMaZzGROrLCf7Fnv54IsbGs9lQb4EqgGsh14UIHUYIDnA3qOXtQD3Axx+C
frg2TfVsF8fedpeFVq9NepdM7ywzEX6lyFF4Aw/blb6xCF3YSwVMbVdQHqFYP190mu+hgMlehPRL
2hS+HGYYllaiQ14a3fh4jzTOIPsdtV2uQGHcnU1A4zrBYIuXAfloWcuvhixLHu+EUP24hW3rTUXo
ZMNmb8J46HyJTptHx8tbdc/Vep9ZQC/RkRTdCfQnh7pSg7Vh7xFx31r6H2OVZ/FDFSEMtmEM2Ckh
wXvEVOloLBzu0Fkn2tv6sIT81x1jowNHigdDaAF8B6I3ElzqZyaxo5KVIvn2V9S5Pa3pr9Z6a+gT
MH6D5AvTT42HjHCiAmAowC34qFMtfoqn+cfW1GtxGnJuyZr9XsPB/bUPGZt5Dm0QeVIH1k/gCGpZ
3DXNIoeXkCQvtvdAEs00g+XPy/YILs3cEPLGrtjydWI4oHnyaNYmwDe/IIECAiLLGTEMq0smBfST
FSKDVgKGT+Cds+b6nK1shLcwiAyq9NBk+XdAZphc3SXVNtA1ij/KP0KZgvZu4CA0rIYClshzEUYq
xa+J36U1EsCv/CxH1L8XXMYaArhaTmUiEI1exSLtkb2Pot3u7zLKtTDr7fPyS4MqTYoTUpPUKDyG
f11PJdVCBLhXfT76ngY5XYq9SLrd50AZjc+Keg+5OQXCwtbULuFbNFp4HbaeF4qIEd/l7Mh04XIr
8Rd1hGbuYpdC2lESwDzwpSZ6sRXKIzwCUWGnPQ1bqdrFAyNAa9pHyZLvNHlIgpzBsADsFUm+cVLj
icOzDxMcnpa8JhemP4qaAZ5ksuZ5dzFDPXfheWpzsIum3mpiTbYUbYXzbgTXI2leH2SSkP2fPC+j
4OnvgzZb0e+ZynLpH4LvUWOfvYEOnubDatVVohVc4OvlHUeZMO2tZT34W99EZv4LV+JjXwIUnedw
BVXH/WtPD9B9AsffGWSN0y+mzlkPz6e8192d9I8TJa5BfAF0PTYudbvbikCtoTks/ZdOKl8QUR0S
si/zx3lC5VFBlNUD90vObtwyxdcgUdHGpp1SZk3Hx3pHWY4kLODWtNdqL9sq0a0B8Lf8TqSmAuNY
3o6Ja/XAksfaoM/6z7t/awuc/LzWHDZEghgt0BLSyvOJIT3KygILjcRbPxrLSm0/PiVufw5QAxMk
rR6zALk/0bPbURbrnQFVywRps2uZ5ZpfwMiR/3HR7b7mNEjKB/lJp/ddidKkSn02jujENd6U36Jb
/qyuVxPueHN9zaxWCqDNhXMUCT9P9AawVg5Xc3GlI3c8qdTeUMAy5JSpuv5mTMJQ0MgbAP5mAANI
9TZW2pTHGiN1AFWlbKDsWMjP2vyRVHUsPs4Sv5Dt/S8eYBA2RAEpd661yPaLMnL8sTXlBXwuUYXs
7b3c36pg+MseYUcjNsnkidOb4Eoq5DQOiRUxU1dndIxxYJP9Z4qS4rlrJy49RACGTMl89LQgt15y
vQzW0T/IzhmC5QB3Xv1gYp5v4h7XPH3p1JOt1mc+g4OsXYznIh9eMEJQxVASXyUUxEo2f3Q/NF0+
yXxn66ctT9/Sv0Gx9mqc+wBx+d/XEM9TVUY2KqXe6y1gnCM7jcDCD12LUvnj676yJubH2OfF84o9
4tp9jQe1L68TP+IqnpCc5abD2p0OPNnh95rdt8OIAf2iuGFiiNEqql/jaA8awDhVlZrZ8x05y4mL
qfzSiOiV/+yL8ipq+l745VtwnAG1dQgUVMsN0WsGupr36l6r3PuZ1tScXGRG8+N4itHl3bjDAui9
rcXf0KvUTpKXQx4PKgCsb+0Y69QjTd/jR3Y85PYaUPYEHIzgVnYyJd2o+qbrxMB14Bz4QQD+CXSJ
Uhjk10aJbtyXp1SqqPwIWmIXMXS0jC4Txz5MPoJ59/4Q+q9Bn1inPuw/8/7Etp645dpQh6J3734O
dfCTfa6FwUhw9o87GFt0DU0lkWe6kNA6TQ4hIbqJ96n6Bbjxa+JRs0CX82Tu9hyYGEy1VqEr/sQv
NKbGvNXc03JU6/CrwIRqP4gZLggaJgGP/6ygRolo7893mNorr+y71OSt9DR/GxClKWEEg2ISTpWH
gnmWHPlKqjp3mEbFJy8WwXLkl72D/S6fXaLaYHOjWitcaloEz2JCFvlNYC8UwZbmRb6b7KCeta5B
pAe1RYYp87Ave80M7rrNZwv+WahIM7ve6I6ux7q9Vbhg+GQd0vdwE9VGOhFeNE6WwvRt5jA8Z9q+
Q+LORuczJ4MNSRuEfepDLfYQhRv4WBJfiyk7A7GatASl3a/vBdQp2JObPSw4S8QrNQ5z3owWzTMg
WUOzv+weJy2cq8SCiDgKvYO3um82vKY6XRzChCsp0TNX1j43h9bwtMlIR8wirpKH1IU2SQ9o0hb8
5uU07w2BqCvxrG3jaPr7vG43xWm7GomWFWSAyzcBG9s8a4Bg+y8K3Itgbni3tAVNcEpRctIoshF5
lmZkT3GhzFLcL9Cqakh8cTHzErfXNSibKFoLYo6noBC+lPAY3U1FfYuzaoNCGEVzlXm9dujqbnK8
4RC8NU99NIvDotjtVQOFYZzdFdoPGdfNWdG3N2is6GwO7k4FXXG9gM9Pa+piXyD+hoeNGEje9e2W
xqcpFzV/2M2H+izd7GKljCYgB4wBRcHmjJdf8tLZOIg6DdoIEr/BJvZ2e44xqTr8j8Q4x7k+Alc5
N7YJC5CYm2y8ZojC+850PjsfUXYYNCTF/8irwVlU4YBgZY2fLQT3MtpthbDvZismeFAhL0lpBvtQ
YPaIYFBjFD/Pcz9lsX7yhmzmUwr275O4LEOiajycxyy/JjtmxCyfwMRzus3xzl8UrYG2+bmP0uvY
AlXjdtclNSJ6s0eGun3d94KbLHw02P8nIo1EqM3+iEhELGOnuhIPZrD2VYqBvQjuJXzB7nS9tnvk
TeV3EqUFi0yQGN4dv41CvvAd1rxniCkDVArKb+4JbvCN3GpxgBPIyczz+9DUNKAmdzqgb/gIJlFZ
mn3DZ3fB1xDLe4XNi0WuyFbGPLTgJO0YPZGutLMyqUzFPSXujFNFpFOHVGtxtd4W68zBXZluh9sI
sfy6u5uSZOgS15dqkWvIy3mgrPUNPbDqKUACBKsU2QiLZAKGz56hPjzIn92nk4Wgagp32sU2Mmwy
A7s0dthVf1udMOs61a1A+ngDSjypISZyCAGrMjbfFX8KihUesyDdVXV2mLrs5PTsGZKSQ/7mN7KN
0dh9ZXves2GzRdcBfENRlFGPPyHVFl67W0Lh5JI3KoI4gdOZJmm7cKFGZt28BFuw0sFb9GPX6Dz+
M7v+Mn8p2JZssviQl1MPalJoNH/BQuxPkUTusI2SqeNxt2V++NpbZH5m/O1oqasz8Aw11owDcOsa
JNO8zFbCvDG8v3027dXQgKhcP0lbDBQT90kTXyZRQVLqvXd0Re6770XtQFZvfJ7mP0xoeKVhJttO
GazBMD91H/zpNfA9v/xU4holuBYaYdX1qv0KYl4m9upAT2FLQ1RiDvl0D8h/ebvMqVgBiHyXl57I
G9kOQzxpUruFsIhY7kmHdUwxB6r58k4GU2IF7ewwf4qwrxQ4SukK1GDhpKerE98SJB/AES2f7isI
6wCfrW9mz41GsIxU86b6nX2catn3uzOrLI7iVWrKGmznP5Zfwbs+DEVdF4H0MsYbPae7ASTrxXOj
5sNkIrpO716WdY+ogpRBYH01q3s1f6ypxuOcAI3jBKiB30VdIHm4p9y5EsqNE48zpu94zg2B49GS
W5ehZj17MHkAwpzJI+JL/HPeVN4D1HJUfMlWCI7O79240qYTyLDJfZs+drsmRJ7x1TDKx6+E6VJl
umcS/WCIWjdnZtc0B/LCBglvySjR4aQ7WylzyC/tZZjI/0HyhduB2DrIeXqyTkMy5ERoelFHLJVC
8caJgcA19d1vtKPU3BgSeNW6j9dmTrtgBnCA3GqONonlOZCaGhpXD0hIGk+qaVDTA/y0UIMTutiB
3HbLkDe8nfvH1fZAupnoMAG6Z9QaFB+zrS7sN9wKd1JBx4sD09g/54nusHOgcVCpwCGO2rdRpPHn
dYYhFGRhKSml+eRco3JeW77kl9CH6xW8KHMbOt2GarIOkK+rsPShfgpm41ATu2nrj+1BXFWPidFx
4KIPLF0b1BXqMV1w6Lz/bHtSYZLrwgA1704ParjCs11gEjaHyQPIUaZEI3HzbhKCShICDC7l4ZX8
Oht9m4RVHtUlV67xouNWG6Zo8/b47ZrYH0ffSxWd3yn3G0mT0WiBW0qW4AlbTpsH6cz7wkPRGcpA
InNQroiAtLg/zkkfu2F/esjWYcfY3rf1sDdKweLIAqf44HZaTfplwbTWMXOTt0HiTMlrvjC14GUB
Uhrf2XV5Wi3SW7n7mLU4Y44pV69KIHSJGH99Yn0MONN5ha0x3gewK9JhNtM+oWC854Fh0SzgzqMU
c4JrI5tLv70QF+WLYr7X1yDgSnGjaCvlZm4S8GVCzchj46R1TpJcW/DjLORQZ3TCY/XXZkUbYE8d
i6Jph/et+Fn3n/XrGl7eIy85m8vBBpMWS7FT08Hpt4v+Gnib+A2hCgVqd711O4tlXWpoBgjGI02R
f6t5FyZDCRmEUYSbGYxbmk1KOgRltvbmG89RRYJLYgyTPEv5oXvmFQp/I8X4zhO8RENyIJ6wI8Kf
UsSgnPyaGfjqdDW30E6f6iNNBsikEdHHLZ1S80LCSzG6EI3VhOBeYg6Kp49m7Rp1qnrJTBJUyCu9
/Z1fLlN6AgrDHR7UF3/9TJNW1nTj1iD3Rwgn4r0poaOy7Pizoh2WWJakaVA7Q3RWLLZ7PJxno+Wx
TTrnQ7+ENkHiPA7uEuFR4VXq9xcS0C0+mxU1RS++l2Acb0wYMfL7WhnAykUlx5IwLvSDfweOb/fN
VfJxExKjvAK+1fwmtvVmnec6+xFTqU7tFiKKfygVJMgjGRx5mOXqDkrwNfGvwaqFEtvq+gN+YVYJ
R0D7Vwa0AKo6BBKSpw8X7f78+LKUvdOK81teqLWNjNCaArz8IviRDl9QpbFJwi3Eh8uS6u5q3Whx
7G2tEAGC7pi3vhD0hYZhy62GVao4Z/E2jQbqQibiXXGumIhD3z1iMBZQ2HNRBuU14c7kcIjfdXg5
iUxGevbATs6iM5HE2h5wmS4B1IXTKwiqbeEcxL+YCakpmnK4L8P2t+cW9EjoBPV2mcfr9U96IDOt
xP1Zjmas3I/qxiLS62UGo0JxKpA7SHfBDtcFWPB7v6/oo9P5LK+DR87IQJNWRyXtku2y/XhLKOVU
IyDd3GUJCZiWBwBHRVumqYuiOyxdEHOKAXHokVfXs1Yvr2n6bLGDy/VvMBtbSnjHZsbnVSgUjkBi
xfQB81NSViXHMODsD7bZTNSrK2RJNIDYSH+vrjAcm5ri6RsomZ7PfNe22EyEhwW4833ZMsy9GWYX
B8KhZC92DlR2mNwQ8oHtogjAOLm0v4PNRMxWFD0p53jQy2oVSvtA/eTcpTN2fDqYk1PJCWs3sNG0
4LIrUepxfM87WJBV9r4Qew1Z6AhnPOKBGcb5nvfnG8qlA4BBakpiUcKrv3l5MqfVzwv64/MndBZX
l7RqZ9Q8QSsXDZRZEUBWbeMTN62QjWFnQK0vaZsKJX19nc29Qg7YHvQdcQAw49P+hHV/tEAZGrvs
hC6qH19JPk/6McPoNVnkS+DUxNch5p97+Ox+RnlZ+3L5ileWmfslkNt0rihUnJ+B4BzisBsVKwGb
/e1NdunoIWlfk9gxxwUlXsKKVeM7lOkahnHCfYnfZwcHj/bjVUW3T/2/me2ebS3OHDz5mZCidb6o
ys4FRPHDBh3ucsI40agkJb7fh9yP8FOmoKAkIJGRDh0c2s8XLYVMMfp55VS1z702viyr9AVgDkkD
BSm93GNbrqi1v9rVMuRrMs8WBxEsATZyOBG859w7lNKzIe3QtrB8bFFv1VjiHDNWoFLPDIAtkLUB
+Is9rBvnnUXl4gmle6TVYWmSOiZtGP1MlKfx+vvqHeNMyUsPJW/gOi4zAZgAexxmR43V1m+q/EXN
9DnGfLAQQj4gbFrH+jUG0cjt55jXv7kqWrQ2feoWzu0sqeFBiVbMXuRszcOqdqOU3MkGa/nsZNd4
QLdtMMV4GW2VWHv0wosenrtoleHZ370uFzsvPdog866ohbIHhz+5Z9n/rNgKDqpDoAsinSlJLKYG
tmizTle7AMDRncqkCPQD/OhfUgx2eXddBA2Xp2O6mLYO+7VgERooK8n7i39wcZz7x935oda9uegT
BYNH3a/3o38nI+DDPLUw8mKSH2+NmJ6I22HBiU+7EB5PWTcyN50s9gYEK3GRoSQIqvb0lO04CUOq
dYpzrCtEihSSU3EnBgsqW6IAhyWz70KMU9UlQ6VEooMH6nlPtNfk5g98LVnvxRY1tj3fEadRCB0G
HOs0+gR1xrZvE2oZg/RRusRyljf8kuoyJuzRXEE4q3NRoojpcHONq9NoM21tm3TlwDN1w5K61u8g
UNoh0/+Y9yXpt2a/ksky9NnfjVY2+2HKbP/9Us5q5PJNd2rTVQSpW89Di4NQ4XKGqzI8PV1H+Fnt
2LhaEWd5jui++TGVi2hAI7O/ikap+yywUWgnNtB6JtMEV8h0pHF8hKTsVKwIIt5BsCAfcjMHRFuT
dNJnOjXvGcdrgKPAZPKA21Fe0lmL30uRDII/mXOVHxpjGf62FWf6hYwK/xdubJqtZ2uJHyPdcF//
bwfXvh9NxrUngE44CcutMhIvbNd4RRmhCrT+W0PD+9HsTLyTRCDK8dgVeFJIDgxMZlFbCqh8pTxM
Jy8g9n35mPfsqPMQPUxjlGbhIyEvOfyuLzPb29v5YxbY2Ahq3HCRuY5Dai4AxpyN9IlANKpXRqDk
LfQJICmgXLURA61II8FS9PG3KH8Yf/JicpBY/RbDwSAxo0JV0MsvIq/HHXVqaIGC5SRhvN43+NsK
vsI6MOLXR9nGYcVBLqfHpM0NX170akOKSchJ4db3nms7ij7gHNHyLMfe7NJbxCsn+tgV9y0HjL/J
cUcBwTuMxWdss/XK1bgnd0xuNLBpNavH/NczQ2i9byi2h8/AINeyfyGR1xFhzoUbNO463MPa1IbX
VNO7XzuLvLkRrVZMmOpGv1dM3ZRMk0zMScXqd6yNdkXHT+iriNLwj+rYuGtusQrl7q9WICjrbjdl
pt8brFOcQi2Y2cOC588aV+qREu8h2cssKjbK+lyrgNl/dab+dFqdSDj2JUi4i4UxjDRSDeMmVeUq
M8GMufCWcWHM2T1vUfG7tEhqvSeaHC2EqicpY+URuCFz07Ksr5/AfgjagdXkOUhT3fn0xLgBtZgU
rP4AvG3Ljd6czmneNUzoY3YoORk3yZEAOhGdj0MdluWeEwkq1qsK6mw3CIJ0T6A2kCAgVSbiJhye
FFK2h61vjZ8enEasV4HlhHS3Ujd/wDViAlhK/nzcupmWuQWuC/wSOwltsRUY6yx/Z7pHPsVf8at/
tguUAbrxJIgGnWjAh5+iLdpbnqwLtfOWdskQH5ERRBqNqLChhsstsIpLkPraGZrSkDRQalx2UJLT
siQutPgjLFk2AaN9PG/OkNtZvN9GKSmxoeUlA9F6BmLWJl8cnslkhexTOEgorn/j81q2F72PORe7
PsiHpJLhEvya5F9+AgvxYFjnNQxl3YTQXeN5hMgrtGSUiZwsi9lTac/gumulcef1OMePyLTLbhqd
Fs89QkEpffCIi1Y2OAZC6AqVl5eADte3pmpuKWI7/xg9eBRqepVLMTFNjlKLlJxD3UoznlnAXjwf
Ht+glfoYVqkuUr98PTUZoPj2HUSFXROgdzVXAqkVdlA82Yb5OypXfZjX8kmz8Fl1XQuMo6HV8ReJ
AV3JHncYxsEjZrQgfCGVSsBR4o/26Ju5JZoYLb6rsDcEfEtmGAFI3hEjeyANRkMMEmsFvTEnrd8a
E48LgEdYtqHgrja1ZfVTfu9xAyhWTpVDKqo1y6qGvBFE58S9gh4SxK++vbqE550bcoXrOfMjXBLc
a7wFudFoBYZrnWszxYQvkLKGWFFiDbwU53fPRbSMb0HjaRSSFtCGu/5wbHN5eZgVaXlTKYtgpAqR
bEKySROOES4o2PbAEJGY+299BnASZJwNFYBjzXHuzI+IMHWSq/+CjNawZMqxyPJpcvSamPI6ztCR
NnQMby2Xl6oGCID451NQFFLuZQuMgzXe0Y8lhIkh8EwXBA8TugstH47ewsvHoHRKxLJB9QceKAeY
eRHK/Bfux8SsGs5DUzWVLTGicLm2odLVOUozON7H+Z6DndbJdWEshMCXOSZqtiGw0BlnJSq5aMXS
X9jAcvfSDfWOLNNPdsi0cqAkVWlw2hhQ0kI+XI5A4IemGXkhondXGU31clVzwS4ZLEgOSLzBxiDA
PSLA6GkpR6KjOEp3m7gBmgIMTIJOs9iPdZnPUquF2DFmEP8BThoRBAbBrUxI3yTnGltI77VhuNdF
2cdb6U4fQPfYJkv6TazB2zgyeYn1Y1yekHufQDlAigimHD2uQGPBnbb21eBmUc++KaZaZC+rOFx3
0xAGpHXO40xoYynhqtBCtq8OyzELnWyCzypF7FFVPhe928uwJsUFbT/PJWc0o3CFRvWnLTgafs7K
/tyFJEg3upc9fll8buxEGSarNCS2aJ60DYHXpv/Dfta3zG1x+ucoV7UKsiEu1JJZMnpp0FScmm6t
Eeu1sYygA+mR8ZWGIlWlqcggGk66h5BmwLo+HoIasdNqXNY450HivKjnLxvEExthBVxTmr9simzx
anIzS37sMkcQ5lSL8r2zf6aAhnzhAQuhSb8K7izFH0q6C7M+ooC80tm9p/AAcVBOveeBnZ226JEe
dUIrylFoM6yhatX0ywAv1eJHawt7OYXNGeFa2hacBOla3d8+2H69I219hTF4QpTwgkiCJE5wVShP
RPVLpPXwESeFtJAsLA2SxprWmDjqgboV+ss4Ojn4be7bmzEoeiYmIYWOW7z7fJeDOLprOKVJjty/
G2j/e9R/a9TmclbwPzIyox0+7el2G+sJWpRPYFwNNj6sID5Czyz8hYnz7biKNbq56006ANEu4upk
PJpmw01suvJXtMIj0l2Ac0wE2X4rTheFU+FZoGQBAE9iPMGFIfhW0bqFUmI6S+bh+DFIjYT53/GM
Bq6YNi7MxrKVfUI79DjbiE/Yie4S2oNheGT7YpwoxQUo4lYyQWa31J9YvS7hootnOJOeYbQimyG2
x7GxDWCfM5mRK7frV5XQWj/xnFDN2sX2KLPAwqeDzdQREUqD+EhpFfxDWivXiRPlEP0YzsRHpjjm
qG3uoZU35lxM6QD+Pp+7MQ9D+EILruFnDwhbUN2nle5SYpkNVDVBw0P+zupUWO9+xLIgnDaPNAOe
H+a45mpUfb02A9B89GGL2TZfsFGT3asyzUWXU8P8Ds8cU3wQjAjsr/VdekKr71bwZlJ+/6Lf+PK5
8qixePGXQ5SRyx6E8aaispyLuY8U3O9sRKQnpcJQhUPAn7pTMXefdszSMRH6NboADdf5OjSP7uPr
1lCp5R4+MkA9E700mC4uC+aX2I3VFEJZfrDAUQY/TInQDbhf5BZLRb7MNRHu13BKhmUD9t4phN+t
tnYBUIwnkO5dcmRlqsVTtIcXNizc7OaCmjO7Mehj3EiUzQlcO4lGqGO4xfjaf58zcFuYRqMVUcyl
F7aj8h+9UfObYr1Ycr1MnjFSFuSIDyQCZ85kQkKRsdAWJPx4tuLF6P70d338fhQvHLUJgbDOlRKe
Hj+tQo7Cw4r29yE4XeIf7G7g9r/fFXhTgD7T2AfPEEfpRoi1MkOT6hmTieMKWelxgEmcmUvQIeM3
j/78CjCzkW7MMJd9L5ZtLE5R3363LB2n4aqp1Pb/SlvWj9CzMVTunaqFePTuapP1kp6gmFrLK75m
yL3zD+Esab8A2/Sz7/waRn1uE8mu+Pqvz8J350d4kxlze6vCtMfTat2MDOWxPSAiH0l8ToFgpQC0
N+kA5CIDVS+8bQlEZpQDN2yOm9QkMI4sVM8fjAr64H9hMdRCeBM+1Vd1YCcXZrqqToEhdGh/U9Pk
FF7geuVUmrmGvSxAjMX8auuhUzKHZnIWTttd/mO07SceWd7FalE32pm+UWaVH8TbAC4POPQDPeSz
nSyQyqoMaHos+dIRD4LTbRe/rtTwWoWKJeBoJkcfmCOJyIzC7KktGcOY76rMvsQRCzJuKekIqsQ3
ajlJ22FS+IuEZL8gfWyHhZlUy+v11gP1SfpngNhvO+3rmdbv8Q90eCEwp/87q4L+No63Ig4wQVvc
rmUQv+GlULEnVa8faaWx3o2eL+jgudsJGG5vhqZNzRIGyUvLrU8kxKCFNh1/dlmQWFLG+UTf0rje
4MOmtoahiFCfXMUjwqs86CL25fr/k2NyfdvGev+MQUx07gpv0GlB7nT/ymszPD64guTBASP4it1P
APgnZHZfkK+3YuiAoNJT9Cb2HAL/YONtpaWZPfs+wsHI8i4cVR1iNpFta4GG3E81gMXusEVd8wPa
IgK0CLBq7eKMHOeUyLpbAI2jghwsthypNQqxL4iGe2Tf7h7H7UR8jx5Zy70zrwi6bdcCMq7H/joG
mtdUqqCgeyrRH44zuWb7CU06Psiy67aqJJleuFfiUqwixxKn5SwKepK+1/pecrWSQlqDmfdsNi7b
yr/t8P0SxvQVs+IX9ThMijK+iEOvYLiOfQE3Q3gvn7bW0HqpfgD81nHbRZMg89yU8XfBdH6T/Cdu
qd5Z+ilqasLfDgG7CJwM/n5lZ8uPmBXUnO8CBdwbY8NeV6teJ67UWRO3gA6AA72pJyVXpSyWb93n
Cio2q4homPSkJ2NH70Vx7vMCMv11FADaSj8zauKkzEJoeCEw9FbeZJECF1kY3x8ks0Ihmz+5ObDB
tyqYTN+lo4//7WqXMRF0pR71t3vYKyiBP4c9AEdUDYaP0xLYQi+3eYzG+uuVuvdo1Oj2OLnGpHcU
4gYcT3xB2BswZD2HoFv4txmwQKMlCg6U1H0p3dpD1l/r8USBknxZ6J5yugqVFi8l7pF5odT2HvJn
+GhxySjt6RGbEYA40qwEOswPAXo8RbdYb6PXYQPoMa8qtT69rsyt9YFl4H2OofX3YTbsOUqmRbmQ
lqpM9pChw7QM/nSBR7JwFcvo0cf4PE3l0HvK8DUuiV7FZhWz4KC7Ff//7ntiHD0KRMeihfNKvKsh
xP/RWzIofXBzPXKLChHJc0aoizm2v3RuRscamJPzakdHwjRCxG8fcgtMoWLXS+NhyXaq593iNEyt
+0L3n5e06nFqJc/J1Q/L3dE+rmHJ46doK3hz+LQ+mGYMx2Z29GOpofl383VIL3AQPkQinRSGbkCW
kEWRh8FQF8V7ckl36rzh6JETPm6837R8wkLOUZt9eXURgQGfc+jrQJcVG2ZvOmccu1ylY4jLrmPh
06PBRQgfgmAuLVcL65vrWGCMqBdItgv/fctp4vwbg0HG1j9dtmRtfoVDSmSc4Tp5YQJvt5Z9xxMu
mibpZGMPWugdXb0NMCwf+dKWa8X5mcyIYMwyImNncj6TPs2snyB8PqTI/6oatcHiLOGIgt7GXUUs
uLSfaLSay81mHmMF6ELCaTYiTGMqR6P3+HJSLEwZgpQWnhX6DGrN7R/0MTokNQN9X9h4r9WR9FZO
jXTYMSE4hIoqGdaTyfURdZhclgrk4hp/vzvi/pVL5JOD4XUB4Hj0ZBvl48fL7W3kQAcAPMwVxahm
bC4btOD3+10gvrOHRq6LoryKtogymkwsvGsTObqBXghl2UW39IaXXBVzllMDvoScY2R2w8j4xLG/
xmucyjlUXGjTTpcUg5CU43dQpysLLl7kmrq+ctndK9gzROeUfNg/6x+j5YBwTdF8wQuOnQH1D4UX
DTE/k4fNXxAFQmqYer+5Knl8eVfq9homQgiTJKTCV3h2PXtSeczA84pOJtHru2ZNG3Y1W4WdDSra
lsdP+P0lJwUReBmgbIiQnUzGftumhgPZBqrMLmxc5RdnZSl8hNp5vcwve8x2Wt8DKA3fQE1KH4Pl
DmUqMJxDF25lhGw4p8jmLmbkzG0ec1htFPVD4M5u4SD5xxjjCq/LZbGjITTjgwV7AzqlkXJcc7qo
3kQL/PtcvxKA6CaIz/hD3ygFRn1v6aR52/6VaPkZwrkkoCXWQDB6tBs8GAu4BsHlpdRvu3t12t4h
gbTJgcJfjT5gvZzj1SiBEzPw+ka2I5PS8vQFFexN2N/jcll10kpX0h+gd8Pq+R87ONHZo+Ed9jdb
2ygdfp4HHd5rZBNyldermpo9ChiXWuel1HLvTWV20HSpiP53FzZ6/LSAnhuUSZI5pOgJ318v70xs
5Ki6N/rHlusd+1kSHJXOVUwKpoN5hUzLrEUxnEdvBQRosMt3V9DpjgItdHVApItZGIad5SyNQdx2
pq0gIrqUQ93ozG0xn6hplsbwsMFNM8iO65yhITNadQmqvV7DyurV2+6Qdb2NOgYR1Qi5tITobk+C
gV3fB149HZPsCeh+RZ+YIrVyoMmPv3OA2pvunjNeQM9VMVjMyHBT9rr4+wjW7Hs1YqeQ6Vnw+xSy
OukKWUKA8rEW3X0Tago9ER6TY+nWhid7mybyNCzS53WfekuIw8VFbI10p0qt/1cGFGkmjD3aSQmy
x84rerv14KzRRRaEWJz+9iSJXRsQWmq/lUFFBDUd5PjwblOyexKSi+7UZJvV++hVX7qwiXqE0ea+
K0pD7lAqTmbB2otNR2lYFJVHfg6Hrx+zVivzVeI6ECd7qIXqoP9sqIySy7+KP3eTUaPPzycNfCeZ
90PONuWN0La7O8MPdCrui5ku3PERRgk4uWhaxDHAtabzJlzck/nbuKTmKyZDOO9m+abUYnTgdWgQ
cRVSIIn/FULH8rLvD2ADw+z/DQmYanaA8Xz4DKBus5jvkTCNqK31Rh73FiG1Ehmo6iAKBmkolwMp
yClbl2wyY7k4MmA0e8ikUu7Eo07SPOfCbkjGCAJD/scyp5u4HAIHWxSUoo3o0jBGR9RwykDNbBEy
R+2R6LJHFmAZx548K7nl2P7/9MYaj0nYU/jbjl8M6vZjc0Y758/gYzXZ542nCm/1hkDSRFJEsWrw
PH8iFNjVWeUPc0sXgT7Aybuwdsjn7PG9/j/20wwsTHutvRZY4rfkkVpMrfN433u1OplZVCW6eEva
7ksJP9wPqS29vhFsuFQZkYLCRqMxnV9PwZbSxAb/0JqjwltxuqArNgYDEDeyseVsEptqmcHT3/rr
zP1nEeiROl+/SEEBqX3OQIal3YNPckSpOinfqDA7WwAvGePuQhlCjHgSFd0PfHwoM3XVKSwfPtRi
8kcrYP1ic0RwR+qzZDSiaKv/6igA2pkeJUriaCQA1gvI5sk9X9Mul7oeOeo/G/1WvOmLk5vd/0wd
EpyTM/P8z8FgXTJEXxkjNYz+pJWpCKbMtBNToXabNFy3Z8xYBzPFUj2jUuyc+YSpDnhHQDNE1cly
RPE8OA3ySPgUT/LJAigNgJu1bEsndjNGeZatQKLXg9w5JEc4O16XCZQSZ22LyENw/toJc1KXKJyR
DOrBoDC1Gx2GNrPz3ETrn6l07w0PB+CxodgMSaK0uixurV1zTg9rnM6Y6ZST6OL6wH+oXv+eI9W9
l5N0/mqZPzwUSf1v2RsyqmXhGDv+cAd5Lhy5f///V3s0huLkmJ8jl1X6Ovwswg5yVXHU711gvfHe
deJHfMN/3FuihhC5whykfb+yb6C/FVUio8/b26nqDtPU8GNXwuqxdC52X+CzjcooKoB74ASs68zL
ZGmBuqUZgJlJ6Y6QIkCceXNg54k5j9vm5C78g36ZcC+z9gQS4rlZ0zUl83d7Bb4kcEFDzofng4Ie
c1mzFNmw8X65ogfeN9P0ZRt/bwrjZQVv1/50JRYkkSbmKAfc3sZ5czvEFG3QnP8Bggs+v3FwU+d/
r+oFfcHMtc+1B6Xny84/SJCU/tjAM2Zcgw+J7LHr7rUs2VWJJprLnghwhe2do7CW1xPhlJuTVTE1
XrQG3LJYE3l92X4SRGTPvRCnImz68Kev3iQwQO3+Z7uUIcQSryviaSxp4UuuLSbPQRu1tua/9SH+
mvyXF3bHWuGRYWlLQsuvVC/G1mymrQrpB9IB3jElFVRls2l3LdNyfg==
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
