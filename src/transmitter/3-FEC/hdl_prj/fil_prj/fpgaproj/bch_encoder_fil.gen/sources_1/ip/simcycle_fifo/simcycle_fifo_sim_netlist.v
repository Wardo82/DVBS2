// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jan 21 00:36:16 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/hdl_prj/fil_prj/fpgaproj/bch_encoder_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
+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
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
