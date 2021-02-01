// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan 31 17:49:31 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/xilinx_files/fil_prj/fpgaproj/bb_shaping_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
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
cpoakZBU0E08W+B2VnvZgAGuECOxws+B
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
