// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan 31 17:50:31 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/xilinx_files/fil_prj/fpgaproj/bb_shaping_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
