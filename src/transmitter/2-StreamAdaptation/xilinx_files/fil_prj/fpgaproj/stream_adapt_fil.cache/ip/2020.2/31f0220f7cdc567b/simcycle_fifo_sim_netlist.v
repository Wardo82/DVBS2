// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb  1 10:21:07 2021
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
QPO1e+Z3oOeh2+B0jOUskh7Z4uwaR7P8hA==
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
