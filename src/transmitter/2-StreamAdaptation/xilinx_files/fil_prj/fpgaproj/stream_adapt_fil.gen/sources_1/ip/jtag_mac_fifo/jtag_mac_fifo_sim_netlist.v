// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb  1 10:22:03 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/2-StreamAdaptation/xilinx_files/fil_prj/fpgaproj/stream_adapt_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
// Design      : jtag_mac_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jtag_mac_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module jtag_mac_fifo
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
  jtag_mac_fifo_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module jtag_mac_fifo_xpm_cdc_gray
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
module jtag_mac_fifo_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module jtag_mac_fifo_xpm_cdc_single
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
module jtag_mac_fifo_xpm_cdc_single__2
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
module jtag_mac_fifo_xpm_cdc_sync_rst
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
module jtag_mac_fifo_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 136368)
`pragma protect data_block
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
79fs+O713Rwv3HbsHnniHyCy5ZKQSeHO
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
