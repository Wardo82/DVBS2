// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 26 18:17:57 2020
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/Receiver/4-Mapping/hdl_prj/fil_prj/fpgaproj/HDL_DUT_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
