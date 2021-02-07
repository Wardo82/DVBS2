// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Feb  7 18:30:17 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/xilinx_files/fil_prj/fpgaproj/tran_dut_fil.gen/sources_1/ip/simcycle_fifo/simcycle_fifo_sim_netlist.v
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
