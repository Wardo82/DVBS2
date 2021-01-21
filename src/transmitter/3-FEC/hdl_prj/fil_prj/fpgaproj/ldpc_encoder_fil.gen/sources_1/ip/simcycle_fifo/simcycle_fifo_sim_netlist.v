// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jan 16 13:25:37 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/hdl_prj/fil_prj/fpgaproj/ldpc_encoder_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
