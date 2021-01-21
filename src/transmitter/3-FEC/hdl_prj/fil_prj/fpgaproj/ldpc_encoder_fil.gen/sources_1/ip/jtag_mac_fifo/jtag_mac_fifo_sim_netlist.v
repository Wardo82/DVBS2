// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jan 16 13:24:42 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/hdl_prj/fil_prj/fpgaproj/ldpc_encoder_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
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
+ak0Fij+FCy/L6hj7nONObxtNtTaglp+
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
