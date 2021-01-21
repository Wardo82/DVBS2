// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jan 21 00:36:15 2021
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
VE+q5quB5Akpb2S1R4pXA8CWIb0OYD2KZw==
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
