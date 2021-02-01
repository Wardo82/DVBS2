// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan 31 21:54:06 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/ldpc/xilinx_files/fil_prj/fpgaproj/ldpc_encoder_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
