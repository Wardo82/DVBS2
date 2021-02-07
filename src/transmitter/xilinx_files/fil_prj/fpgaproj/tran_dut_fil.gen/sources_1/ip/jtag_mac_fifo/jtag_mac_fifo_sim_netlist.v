// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Feb  7 18:31:14 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/transmitter/xilinx_files/fil_prj/fpgaproj/tran_dut_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
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
qfgnbNsXkOBoGF/gJ3Gjk5Zx4QLY0nvp
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
