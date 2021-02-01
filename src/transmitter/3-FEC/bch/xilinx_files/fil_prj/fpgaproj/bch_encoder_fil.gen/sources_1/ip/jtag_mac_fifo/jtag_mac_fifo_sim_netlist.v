// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb  1 09:40:42 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/xilinx_files/fil_prj/fpgaproj/bch_encoder_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
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
ntfbiDuesIOI30hjnNSkMmKwCi6Dxnbp
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
