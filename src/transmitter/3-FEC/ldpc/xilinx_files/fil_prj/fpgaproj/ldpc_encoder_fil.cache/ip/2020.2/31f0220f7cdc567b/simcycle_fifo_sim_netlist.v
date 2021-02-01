// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Jan 31 21:54:06 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ simcycle_fifo_sim_netlist.v
// Design      : simcycle_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "simcycle_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "4" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) 
(* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "SINGLE" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_single__2
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
(* INIT_SYNC_FF = "0" *) (* SIM_ASSERT_CHK = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SYNC_RST" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_sync_rst__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 98464)
`pragma protect data_block
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
uXlRO06wQj1WlXe8iKmmTNgXb5FsZWXeVQ==
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
