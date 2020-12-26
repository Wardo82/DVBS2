// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 26 18:19:29 2020
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Documents/DVBS2/DVBS2/src/Receiver/4-Mapping/hdl_prj/fil_prj/fpgaproj/HDL_DUT_fil.gen/sources_1/ip/jtag_mac_fifo/jtag_mac_fifo_sim_netlist.v
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
ULU/K1C2IjqzC3/51UG7W7ccUpQoCoFB
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
