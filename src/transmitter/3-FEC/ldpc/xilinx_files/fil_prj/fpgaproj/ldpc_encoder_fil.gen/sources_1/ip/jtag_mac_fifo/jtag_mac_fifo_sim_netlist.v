// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan 31 21:53:08 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/ldpc/xilinx_files/fil_prj/fpgaproj/ldpc_encoder_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
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
b0HtjWQBAWfU1wOv4BRdToR3lVCt7avQ
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
