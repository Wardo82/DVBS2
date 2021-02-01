// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb  1 09:41:39 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/xilinx_files/fil_prj/fpgaproj/bch_encoder_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
