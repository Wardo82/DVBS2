// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon Feb  1 09:41:38 2021
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
Lk9wQ+TkWZtdeIhRtTKjftoBVZJaN26gCTJ+/B2H0tclKeXtI9w7SJJq/A48U41suChMDxi1/jwZ
HeOFxfnj0Q0LHCpBIa6deWqv+PvQqcLTqvpCBatNDTzaKlA7S0hykHKzvf0ZLcm3VqQZKOJNzL0I
bqXlkrUA474+xdxjBrt8ZkwSaryY16qy0eDZCcRWx3XDWzar++af8G80r09ntc5qnrigROyGYvm9
vY+SJGAVwmPmngNugtmz7m8EIz38nDkEoVkHoQPK7AGpdRtb/LrGRTI6crqqQiGYf701bCostbOU
3WPOKBB2VWcpjZnUhkskho/NYUdc7RwcAXfVmZuyamBYKEgEtBmNyuXHbrHxS0m4VfI5Luq6vllf
f1gDI4YsIdUysMEoJbhgumGgh+4MBsJ32tzpYfeZCIODZ+NherKDtd2K+lseYbuPT3fcif1PmE1P
Ip6rflYHLAXzoZIIb2ln8oAnQszIqh5QtO8JFMXRBrCAJxoCNuJuof+tGijL2H9+jXdofo2p/Cof
OO6ACJFc77u0/ilPuoHH7Jg81TFN89EeCZ8zWYpqoiTsDZkgRore5tSYc270hDErxC0EUQt6v4cJ
1hhXdtWqduYbWuadCCedpVbQ8GiaRsNKedhnpqyNLYc/tNVgCynGlL+mdDPk6Mn86G6S2rKJrmox
dm4UzY6PVpSSZOKuIuoqHVVi3iWtXbo4PMkWlv7hXOamVN56wy5AClDyNzAYpxzLnuljD+4GoaxW
TTzDg/6QJRYCQi1Uz9Hm2LUyZLFgR2e9jgEnuYLShsE5bmWBuHFGsbLdlhgOxX6czRR7K8QYhJrD
Q6bGYXcUhStOyk308u+13IHbt60dho9YyGOKzVgqFpLyxAQxdmYIG+4Kb93acX4if7988WuJCm/p
Z3G7LD9DKYzFv0kY7EoMaNIcnbwzVSGPAiYD0u1tj5q3nhq9aAiaFhiUE9qYRN6cjwHwS06U828y
fCzCk/2FWRgkxO0QyAkAyFjhGYfseANKbs2rQKmn4wHc8YFkzn4CHDWKmfcYMpDGWvol0fFgeO04
HobjYMyqSsxENC4GWJu97MWV7XYMW7ITyu9AyojqRrvzz43eMFeaNo/DrjT1HtD50SgBO3XQEeKL
XmVWpSEoa3BUq+H+ReO5oQADE9zXN46hWRGP1SGZQornsjPG/cYMqHe5PFRvnAAJa0aRU/0qvK5z
U73reyg2MSh7vhK8Mi5yvQpr8fZBCDMpPPLkG6a29plBCTQb3ABbYF/lKOCs4Rh/2vK7Whddira9
eIHzDY0fJGTY+H7KWbkNQqnIc1xJaBqoRTOKw07tyflxnT31jTvSNvIWyEvIgEbZHpK1MZMebene
ZlBXYKd6GY6QtPXjGtN7qj0uhZ1pxS47ABNDKZlz6A3nRENKIuKREa9UFp7FhdIfU0xaO0L2iTrb
5EvvP8mn2f25SoswlzZya7D6CdA2RyXaH5k8nI1Hl2vQSm70tw3PGEeec0PpI0lyQQovLbd6DNLF
8jlkwyvKbXouCtXk4GIENi9hlnpsNu1gYn+J7wi4XtI9zeET0vYqLRevN2yF/wZ2cOEyzdjsBt6i
LpLCcFYmn7CmRkXf7GsTVy43aLvrNzDv6lC4ttQRn12/nOlXR4o3NYSr49VnJ01JEPZzLf03CIu+
4qijuXCPNIIVzyiuYoaBNl8DczuPgDwyxYDuHUgNEAckIICOVGMZyB941RSq8WkWBzky+CibZblO
XLQeXbJakULEnWVIumoFuoO4VKM+mBPtgLtBjDBIGmJVfnQQ1MdUvN+kWGcKi46qNrgZugNSEo/X
nq1cnWjdfU012/AR4byQgku+XX1eECM6xLitV+O5CBS6+Fd2ZU+i8aVH4p/XgELuusBvgaCUwNXD
OGXrK/tCOjlS+Xe6ct1GS/roIe2cIufAFVX8n4PC7n3jKD9xA7o0Zs+nJU26B1ANySB/b/EO/3CJ
sA29wBQJM0C1vv+3KrbLUlOCjCfIukQcj85X9XOkXQ2KKT0JhF+ToJoA/B9Zz7C9Ngisf1zVhwzK
LxVuYUnSC6GFSGVGg3GERgzcS61XcFC5q5rzqatR+q//bMjU9094sB6bChn1TaAQXAafxz75xFkP
89HQ6Onht6M1HRYeL37xMepg8DiXraNNnv5GOthS6jKVaRZmApC8NPdu5yfcMID6m4nt2wR00LZg
Ks3aVXQ69TradV76p/ziodcqu6stiQsA6yh5X3eSmmhncZjALKMdBuaIPVWKPzY1T+MUSQeyyKay
3+DacdKBSUTQ1uBIQ3TMORVZI6MkXIq7wC4U32Bwkj5fyzFzjAsNgC9aCTSqWInOuDC8CJQFYVWR
4BFRUeYvJAPKMauzBgdR8tXwpbEZ8hfgvWmj+Jp0CqG1gbDCqiGawW7QghzcKV9g2vbMu2CwpV2l
XwTb+nWgLdgGQKH9Dz64ZhrskcYNo1RaY90P0jlxeaIV87ozGGrULwQhfe/+tB8vz3NORdY5aB1O
4KwKZXpayhoS7iIqvs/txsun4mcRae2DxkBfyQWcp6baAc3Twl1a9tatl3DnkEcR9Wye0yG2solf
LVSmJIGr6AnPozjy0NbJ2FKybt+GsCGUk7ABpypqxoQsjDPOsAhqNAcfa8gO7KbunZa2nTKWKGwY
CKurtGxvnx/5Kps8F/7mjXEzC4PoQQVXvNpf4zdQkb3IMDy1naqDqEcPDyw2S9JcjkW2ThsucpZs
3KHefHDfyWeGNsFr8XwkuSawkQPU+8ieP/jqni++L0fvjhiHngvmIciiS5kwmCCC41v3D08fNRjc
YO16zFehlRMexQ4oJmaqLXp9OblKQO0cggDJjXqwHzeu5GPuPc4+IOdxfJjLHcWCGHKsKIilFEIR
4/gMzcm7LKkModJHC5hwOIDN+nNFHqsWidmpo0PJxWUsdAVeTKanBMVhEZ/HuFrWDSxoby8CqVXX
OE1HX3EHzsQoB8V5rhg8zpB9wH1R8w76NRPyhTz2WjiX7Y1ugTzIQJYErA+WGZXMfW6qdFo9e9oE
zO2w8YLaFNB4ZatY0MDadp1zgx5U72Ql+36E9s4Bke/zYwJEujFDH824mEOZQoyT1kLyJU+lY5Qz
snzQFjnxCmX4FCofUcNIuahLRoaVZG3G72Nqi3icx0YaTyCIRY7WkFII4jW2LvCMbMMU5O88i8uH
W2g3OTYL7OXgu59wj2alWcpi7cy/M/8GBgSvHwaFGWDZOsc2owQpauHUbj+Zlf+wzHAOG2DrpLnr
UFTe61OwMvAZlcmlaWpZfKyhXdqiIKNwBd4jK/ZwpYFxef9DM2qKxezgA2v7Ni1U2l5MnStiGlAU
s10hCIP3P86b49JzkeF1MWSoszQXlqADOTFQEVAWLyUrD/pM8//4mas+LyjPD7J7CBNnOpn+VLHZ
eLIASDii3YJYVU5cX+6e7Pc6JykQGZlFh5khf6VaxrpEyiU3Cy2zfHDACvXs5BH9VELvKb+Qn95B
NaqiLrfNyYi8ZPL35rGzNQTW5c0QK47kRTMd9JM3oBWtH/jcOY+Z2WkbHsE6EwHAff6TCqqaWvCf
sQmv0o/wh2CuL0WiGYVOb9S4ch1ZT4nRg4LISYDJLkRjjziOf/XvvshstY6izEPmP/VyOiWPEBKG
bcXyt97mayvFdtEVxBt34wmbLKEMYJPn0S+TfBC+8MvkgUiKv14EbXNPhZCnExKmcdroEGHCgGXh
GuROoEkyFYCwhaejfyALB5Dp3SykVQei5HVu/KwL/9veuuRqBDIJpuil8gprOm5vm9Swcbzv7kEO
mKj9oKKD1lex3CvLL4NZlwtI6l7LNif4XSvLi/xiEKgoNMiWgK5iZy9mGtl9ao5msr4p/CWws8DP
bakuJpB5YZYzMiNfG+hUPlitn5QgkQXdrhwzIUfeZiZhIN2EQYcyvYjVUJk7rogje3CAUwr4NyII
YTJVQs8zQgA9vdws/UFtmvf1oyZ64tdWo0HHEalqhiz10wY2ZSC3cd1oMUMKQ3BqB3cCF0nFrpYh
TNmRPqiBFmuGrvZ74Qlh8xcOan3gTHvoL++14k1nux3RYXQZO2Fq7WbbaozTMsXS5U6K5OAJ6mpO
a9xn3J2OPRUwPK8gppyRve5pZp+tJqNxo5suV+Q1nAn9B1fuc/31Ojs0O/dpcPJ3FNkpx7LIjr43
iU7YIYPKuK10NUocfB1X5RvjI4Iwlbb6ey81cEmh2OGMNCdLiTa4g/ADwNx8D5QuCGJyuAJY/6Yi
6B4PL8Z1Si5hpltCHsVn3NXT8KKyEq7ttD41U6w0OkfVGZyqmt60BlBCxstPW4xQNax14sZj612R
/+q2scMeZ2Sjv4DwnRVHeF1Grldb1jcqXuqZ2a8eH3ni9IlUQA6RQ5I4Vq5PIBm/kPEQoz69jEiv
AdL8FYnFStlZkkP1SnWZ2JRzABQoD0vVRZ2EtEUjkUi4HpAY3XBgiZeRgeTMo/2Vgj7mY75Ihp0v
vHU+cNRlL7eDZd09U1f2v7OlOdVl7FqlSfwdPrCc6xDL6SFdhLiHJTyqNl+FuquuuQH7GYQypqtk
KsbAadUiOhf8g7cXEOI21HR7FYAcIAYVzr2D+XDXr0S7Pns1Nv3kDHhC75BSYpncit5pKwi0E1Tr
sQ6o64nj7iEq74VPyDOfKaxGMsv92AWDkbz7mWxmSbh5QkeHpgYl/+idhhfLu7QWymKBrjGt5y0x
syVfTMrc8MnMLMitVuch3u+f/UlTLDxhvZ/BW3ACX+C9kT/vWJDS7WHXq6/U1+CXKTCzrmWyMVY6
r5uWRzXHCB1IH8LOF+X6EKHaT2DiDTnYOtFzHGF+xWw+sqqdexo6cflJUeNRpc3S1P/VP0i3ox3M
I5kkVXlLxgzkbGJFX8ir7NZ+5+BGjNpOle+hompQuEwbE0Dtn2l6JftVdzifzLT5B2B5u9AHj8xH
JAemXxrmoUqy7H7QPBxzGdjcBo+PTVQuFip5z+BnxDF2XKXQLAEH5RRAGcfYuPb7QJs1yy4HoVYj
OmmVntX5Wn28QSu44jlmNL3buo2dVHqaO/srVYJfphZpSkQI3ZAgvExETf7SzivT2MAar7byIdQo
5HPvgyb5jaHxufqUGWNuHPFve/D0UGAyjhVanezKj6gaGT64hqpMIvcwN1aQYiZ0D0E6sdlayvt1
y6dx3paz9EtKaAEy5l6uz6VmPyQQ+48DNOCOzI0ofM03iObsBlyP/KcszfxuDpBgKOD4OMzX1f0m
lbKmmL9saa9W6SD4fhteekd5abMzBs8PkuNwQ6k09zVkQVFLEadvGcS3Yqd6Q4F5E2gaQ+0vw0dA
I05cT0LPC69CQBqt+j/KIrAbphbllezCl6G/TS4TB+gddazZ1NwGOIClZD4SI7RJwhi1plmWOu8D
SOsBtiPjsNOidqaWtUIffx/+6Ggq5yt/zMFAgtt3EouS4OeZgpwGlCGlwhYPF63lnKOU4l4eNiMF
+JpyJuYEtGpyOZQIxdKK/SyeT8ioHtJPGxTuJjBq/GGodtxwkcwgOTu2ItS5YYj3fc/ihZFykVyM
AirF9k+p0ZBjS/0kdK5GazYph6+gHuc45Y0UT23qNahC0A9+2x8Xhpux0L93jc0zXKIMxVxBbjOL
g443mz/lnZEPXeevyRUSkUqjvwLgqqBUpUQ0ojcmaP9J5o/2BOuf5AyUcnMKOKpobJVoVxNUN0OL
PvjVcO5cGERt1PHNsFKPzBkviRmB1VR1ITe+kP3cl+c5n0EARBm7IqkVRmFxWRoIfL6e8RQ3TMOb
LHQHcHVR+lxwgg6hAglVCQZKUcSe3wdhr+W5mbuGV0iNTq5vi4XQ59xY29A+L+vSY4A5+cBVaBz+
wdTasCSc455jWNiSD3JV+KgH7KSKMafkEy6T+GWBGscqdpOq/uw44ncGjiVUq6ehifNN9qIpdiWw
5+AtVN+AHmBgRRISY25PEEnYWLJI1zO/eiihFeX6fAvPfpzZlaYxrKOVymz8OzE1cpl0zoZPPObr
8eKh5XPCU273sH/Xl14O+ACbh1iP7Elt9ozSQvN7CSzZVVXbOUkAc+Cz34fuk1eO278TwHNns8Pt
RnXZ6mEhIKx9kx1bULpEDRZKOlTVspYj25bEthBDGSMI3z/2XepOOVKaKHpw3w1Javqw9fHgRXRW
vZrYRdZ/xc6/4pfEar9kv7JGR41q+7DlMsTP6r5VxTU3m8KsNyvOGTrKHwPC21EBdky2JApIOFrI
iLgvjox8ABvnKmSchUZFo2UKL/hi6G4IeQLrzP7INHBw0en8wKYK2E9zrCSTV6a/0M7nViGEezoD
Wdz3PlaXXcgSQMdJYucvH1cwRGTTRfL4IUDKDVWuf98AxgV15Yls5khV4P5P2Xsdvnc/iSjcLR6R
elGQq3m9eG2ezo0lHq47Wej6YYV86JoJE+buxx5m4KqClhpB+NifjlKsLwouxN52YfK8gvagFytO
9qniWmBkQ6kQR0Xn88ShQWOVqVVbXWlflvmqMyXyd1EGUQt8bdN3rmWRCDHQqgQr9LmLI+dvN0dM
wUg9XeqEBF30on2rWu4NZgvJk/3Xa2lBOqFxMWD/j4aXyBaN9SwpKNv6mxZFZ8J41d5PLPg8tH8b
z3oPBhwa7jn7GopesV501l+XiTEIoKc3AAO5q56XpV5oQ5KxuQmRUYhigxkOFc1z+Gt+xNBPa76y
CdhgtuDVHlZsbWP5Z2o0g4oWUcmyZOfmp6b//Wr948JFIfzVtdfGBIi9PdyEidgR3Ygapal45/sU
VBIj4ENFOeT05Q4sqi33ZoSHsa7KOjlbQyFmTCD1MdQUKvJehH/gBemFXonOczg0lEP0JSCIGOfy
ZWxZSywhk5xzRlrNwo3JMmH37zc9bmOm7F4gUhMkI+KXC14KKsPj7FLr8olbhYgNNRhDMLOgPuER
jeFHkU0QDBQvSl+bdE7sL3idilZ8/GOElghSKba/70CfZUhY8C/pi+cxRKouD5RzY0K+xAqSvgF4
X1ix6ipoN24oOQsXQDVpXsBkAbD3ie1PHSaQsQITerb995djnFvUES72dtukM0Cx4IXI87qx6M4U
xSDM5jRQNe6+aa78ERhWbC0+kTDoJ0cWqgfhMA47nVrEXDmY+osB++xOfFUkz0Mq/SIdNdZW8mbX
V7b5ptDwlXr4yfWQmI+dIbdMsvS/bp9fl4DBHGWlB7qH2b3gcwwbsqgbC9Wb8JgPvT3T+2u07DP3
++OOdfuJ13aJRXk7JuLX6UPd8ArJ24PsfbI+F1tNSJEaFeDl4m8cbSgyB2vUY6GmdJOF/DyXj/LV
3pxnktidxrzn0A4/JDp/OrdcbNabCKEtA98rXxzokSgzIB+en1z6/45zaoACCWQ4Z/vlf1Wl2p7V
ebBQi+7jgXZROGCOXfLM93yUBcc7kywjl+4+0NcteSRKBSrMLLUjw8uVfx5RCdcNkOxzxqDA5qvL
Ix1Qrvt1rSq7ZWhdCPNIRoo/lOmwerMxLGAooHFxfl6TukEM0WrurFWwTHBDOEFiIT0Kipssp34l
JP1e5a0dcDKP/g93o1F/U4/YaGr8LR4T5XYpaidD2fo9r/EGSHaExqVyH3iZeXhHxGBJ12quSY5G
DSvl0UuKsceZ1sPDlDsxbZDY9MYSa1VPaZ+LXMGXS2z/n2wfTheAJKLReqTqf5sJAS25E+wyvv6n
JMSdOPInD7qSvdwlF8BKEzFHzTr944/1K0IbyvGLDxnNWOZ3R93NNZoJdiHX9qXlBvOm7xVEM/lI
yxpIdC4KqUkN35/T/wNkbkdHGo21GsnbaZq1GoZLDZZPsZNkyiIlgOBGpNFYF40r8hpvt4Mg+5jx
iP0LpLOuVmkaAOxTFL2rwj2epiaLUbflZ8cHeZQYrngn1ymwAZi0AQa5NStvm2ZUgAp8uYbVPnYm
ydXCIaGNCLoism1X1nQgu4S3nq1R/Gsh8yJXtZg1CWRr6gYiCT4R/eGpCQ2350mmwbifgtaZZpmF
e8PXMSm1QzNCusibh6vtpMCI39Nb6JAMxLZ1FIJgrV5BFoSsmtixaVtRJDMhEZhRCMPi4dTfwuk9
UNv7mJpQ2S3+nPfwVWXbajZH9cob/6CrulxQOLA1NoUFFIjbG5DftELdkz+IgTdnaJh7EaKUr0IJ
NqOH/SBvWUWaCrw0GeVMRZPwjCt9VMoGOxKGmvRYioCCrTmul1gTFdXfXhGvz/ZMECmHGWYbXuyF
YBLy//mX9QC4HFOI44wB9rzPG5kPIaqd1HU3DDJvjqnnH6HJaSOVW9/s272NtUy/ejb2JnA79MeK
LSffQNCv4f/vvubbWGrVVpYxdOlaAgGl5DoStTE/v0K5uRoLHBpPCd4hWr6tBoRPy1hHDhv+iXOI
l8PS4IW2wAe2it291p65Ad+y+ZIX2MfM1eDZVs1b6ICuItD6km8OFYL12h17Yx5lVbMV5ZuxDpI5
3XZ0JkSUd95HYdYre3+ku0v9GTjSzMOprDt5TlF3ffMWuCkO1CGfXIEf+EevOB6f00KMSxMVCTBB
MvL+y3MUir1HvnNykL5irbBjoKWvx5+3NZKlQ6DKMa/5jNoebo5ImzxlgklTM1hTgGr7h0OKu2G6
HW5hMPj1AFH8NwDYY4DB/82DnRBRPoXhL4lY1n5+jYWJvVrFpOpzU3aaIp2hA2yAUWL6zdiihF0T
6e2UyEaKrv1kGiy246/v1B/ZbHOrzhGcWCo4Dhm9F8xyvwyLXGu0T/O4CJ0X1RlKcitgzfFyOZon
VKLM70MbhhKw/Nfd5oS/EEzgmSp9Miyfv8XSs9bHjCZs6ZCATz1qc4LvEFYwsTmV61KlrM+tnvpa
N66hbdhi6B0JdnpL2T9aWw/yXodj+LvptXAEjiEg6LeLlX1xi6qv8iettxcK6xcb28su92vo260p
mcivBID7pn8ZkfjOOiE8dqiJsKHXYIzOt2S7yRgS1qHBJWJOkF+YjH5HMhxWXtS6pwMWlYS3S++x
6DCpF6KcGyGMlbCO5BpL48COUpZwRmC60n5QfMXKnYJkWO/zK3tXq8RksSydNrb893u6ffkHE0oK
XA7yby5RjEcXgy+HaWzdIPCBQUC3SfiVuttMrUnA6nCpVOvCMsFYYUzWftsrNzFhVn4uu47GDgQF
XQNYpKtiNfilwQMnFQbfx1gu/242p9xdfnM/3ob5IvSQjQwrVJF4iF9eYwaRenksR1QP++DubqFv
zVdAprScrZ1Z+3baBnO5iTdbRmmpGxlc1+7JFxBsBnXEIBOx8PbJep5pY2jUkx6fp+pvQJcePLO1
kUSLva8x1sntkOnBiudR7wWtSQVAPpmMQRQ0iK9uq3GdT6e2FtV5C37LilXZ5r2MrL5VyM1cEtOW
d2RNZOzEwYMNlWYWm6mvacnbW3sqXIOfAEw5U64cmYu9zXNFiBHYs7Kk5uVqqcMRGRsa9Q82IKOK
d3XR6goVTfjxQGzN2ghhCOjJosipKFyklkFRvMzmSflQr4jfmlaCoFcs+NQb2Z1sF+1dMU9ULIgF
KIJ/lBN4boSaJ/aQv3aB+SbK+pK4DTDeOMhT3JGwV2XpYkY1wVTjx2vU0VJACE8ZC7p2knsU+XIv
AM3gDFzm8l6gkD+p/1Qxf0qKyFsOGNzNewASgzBIx+I15CtEwU+KO9eOkcNjLRqAsSSnqqU8227h
GQar7VOL9fbnMCyZRaq6FRgh/1dsf25XKvTfqsMyMnsD5kqrsp0fsYSAXX5ogymfBGi8HklL4g+H
CZb3m46K1m5lPzicLPmWhHbx+EuAPG9/7zRz/Qf3JbRMAo8YHyM8V/0+ADAVY7hc7hWoacZCcifb
3WQaXquiegJotxbw5mbg/7HlzpfVkufs7rEoCPKFd1kSTaLC4BOvuW5qSDtI3q/MA7NhUKZogd52
0SnD63aVDjPHnahFUQBS5zn/sQmtGei9yxx5JD9XCE5P6lGvKJkDCQjB0hC+LnIymFsqAo66AHxs
6haEw+Jge4ht1Yo5mlGsFbe2rRtapGjPiFaqqSixpxfoTCqcVxkNR0LegMmfEFuJfcqyxOJDN49O
CMS022rmBCwgXE2qAKSn6S1bgUk5OhDl+++SloILrlvJsVNxnGu8Xsr3PhXX8tc9EWJ9Ni3YyDto
s4jHgjhSikfY4z4bvyLEYKDDETac7hdbWeLG/iz+Cb+cIcv9UYDT7mqx8CWW+GrqfijRnm4Wt8Ai
iIgs+U1KZymuGtqYp+R0+y4CmouxeaFI7ac6TLEuxTYTSuD3lj8cJrmvxEO/z1pw8+FwV4uGA8Hj
cT0C8rmAVdPFj1kAN6J5E32osNzjudzPu+5oAWMwD6SceCGXY3rqM/iGE3kqPIpinNl8uvrJfBKO
2DxZB/3h7s761aJtQaoiaBVdqkrnnG9bEhYh+5+60OyhBt60LHUfo3yuzi2lfJq3qUL0hQx7a8x0
LJO7MBqKsR8qIgQicwhvc7U6AhQ41odc6r2ydfmHlf6BUVZXZcVujTWqUrebNhze3qh40XGBOr4Z
3ONpIZvsAavTQMwwmepbx7bFhyQYXCMMkNJxQAGyJkZOIew4bAwgsn0YHxV9q2HashBHPs/YzDLR
GaVucml/ygKOWkw068fajvb101syFRBY12BpDxibv4RJRur8+V/cQEx3LwdeKe/so8FR8glYH82b
jaRBHSuaTfho+4As2Tmzz00APT030PgX2fB3V+bLp2sYdeVDchgbo6ZUq+TGTjc9GfxAi/uRSrMz
UAKu24RYjd0pRtAFx4oV2128Gaxx1wnRm2yOLJLpEu2yTwaKWKLj9mSIETkTMC0QxDdpDM1DeGZG
Z5WWD5ckzJbEX0YfD6u2RPBif1ae1rZzoq6Hx1p24eVvSSz2zdKFN5e/hi6+vK0PQOxsVn4pkvh6
Z3j0dAcI7EH78f28j7Hem10/gHxhRgWZhHxMSlR+R++F9NFLN/3nq/Km2MDrA7Iu0fMDcpgkK4Bp
uXl3MUbjiReBfYtExMprycTw7n6w2NNHpWJEGaZZB3uqt5gaw4PZQNYKG+IuU+5qxCEcAVpHiPU6
L6zVNIa1g21Q1tuXNvRoCPBO/oqqTcvO5tnwrXNHuC0WnvBYeDwjf7WgREp7koHiUA4KfUOLQuN0
jSOGfKQn3pkkl0rvUT8crzkWI6U2YpYQMnVyXXblm8uSSnXBhNjV8tlffnSaQ9zUSkA6Bgv3ZPuo
iieyQHoGWq/JI+R5zd/DPtb6ZHukCe63FWSXFCAAWF8ol4vdF//N1roxtWwd30lPel9sgIz/cNvd
Rtf2NYpDBdci0+ouWevEgbEFNUezdSO/IWn6khNelCkgU8P6gH8jVdkrl30DbSIdOWSoD7zxUr2b
7zURnwjRYprAkaMkWmLQV2ZFjonOdG0ucDprHOuoM6dMbcrM+bdtXgnpJ3gVigVp6nKRuHNBmBQt
RCaQnQl2lp44dA469gHcaFnW2Ir9ZSPswVXtKjmOYdhmMgVO75nAj6u6PTstna+SV262uXVEecTk
UePLVn4hS6Tb26Mw7YQo1STR+ZRKJOzzb+6xld9DRmk3bLZWx46MLMRezJ3V6IdeVNEOlfeKTvyF
iqoJ4ZRqmLxeoYOsDNVhtny0mwgK6Ry2ybWNbZYjhoTPLQaAk0/+eghfCGulMiC8ClTNZdDqKljV
4lVYYzwQgvas4wOCw3kNKFssYPb0f67VP+y42Xia7cUAIhKsuTOA+ZAXeC8EN6aM9nn3KLkqtaFm
LHazLOukseLZ/xVnwNOlULlwu7Z2sfo/6BeIX10OyrCqS0f+f9WBmMVuVk8df2RYyzMgdSG1mc4Z
JfMJPYtvat/1ewj1x0Yl3cZZNrjhN8QnAYQd8yF5FKE0pjPq+4VbaktzjChkiNmQ6NQ4Nm1LX4S2
ZmIg723G16BZo6BV6SUwu+PZB2iq61wgVPjkaCRztKIbUjoEmXX9PY7NAWe4fjVG5zN0eH5c9+H5
enVrvD9s8TDIxwR0J1DgvZe5/FeaGel+AzE+e2CsiiuRqvlKcAv1i7kEnk0JJPqvbhuKGTZmPVDb
sXqlyTAkmw5N/7dSs3xjIM8QTymVm4dwBO2SC7nZJIHTnFlx1mD+NHVBh3pv29O1QDLR6DmFX1Fd
BAmgY9qI4rlKMcoR7FIFuH1A0kdqjoTpkI3C5QjJXWZCm/1ZdN4LgHo3FICxQLf5d/kUyEL6qZFx
D9dCoIV51hWvYKXUIR5mBLRNcXTOr5rA5PfxgQ/ce991mutIIpUXpjYZVXoTw0AAEB9+pBCEQrzC
YpLo3QgC76vDmqe+ir+w1ijiqSbA2ZetAIDrUgNfIPRx3QOzxGxxatYl3q5DOERQRIUPSFiPUV9g
b/tfDeDUAKfpdx4Lli610lry85e2f0OnwbIPA1ftrSVM3Ja078E1zyl53QEzwqYEMJzIQsskROtf
jLtQGv+RqNs4F7Bd5Msiq/mbCCrCdG6gr6x+uDQd/KgydG2YxnsR4U/EJjIlljak8enm55NN6MyV
NZQea+3LAqhoEZwz37srMY94HTv1CO9+tefjjsFcAHZGaRmbRaHYdB3KLOgeAsJeqiwu8DKHvXXW
W8JUf+7r16Mbuum5I5uGMbI+aN3Gwav1JdqjBNOpbA0XJvKq1AarqyYjEauk/hlA41Ixd3+FOe60
6PCHYUDiBDyUaEzSkuCb6eIxsEy4l7C77SaTLsmG2WU2KQ3eXNVvKqHkrtUos8L6fDmL9LtXPVoN
plCCivxsVexIxS19dJIbDFJLydCwU0Dq7FqzYde+mm0IKjrsmsQfkPUfY7HvxluCfhIvS8ASPYer
78+zpeTZa4QuY/gnh3IaPJG/dOfMA4mdmHBIghrcqK1y8i1rl2exBI4FQUG101CiDNWFc5g7Cdvw
/SudhtHiV0C81YszHXR5r6sVDA7QpQHvzk/sGcV6SZw2HNoUoxvdHyiEq1KDmA5QI/71rn016Ypq
BR87+l1KAUc9fYggkrgnQfmHv2dgBwhobrrPtfPh6+DOdkQVr28jODsQJdfZM3JbPJOwuvubhG05
0ZH4QjXAlFZkxVi8DGXw7CudhazsD8OcoTPzuv9a2irP+9sG8FNvYN3piyyYRPetmpIWEfYLny5T
AsU4aPZuHf7zbGIzqgaeaPB/haMIp92S2Mkbhfs7tKAloZmjbd62I+qzMxtkpEXOEIIKmRSl53Pt
YQSskkDMkAiLDzVsVl6BAv6DFOpi4s7kwNNFarPIqroLyBNRjcmresEWpnj81TZJQ3i5TZAN8Y3+
b6QcHHDgX4dwNyUeKK5zMF/u58F9YhfunD4jBdJPdxlh81LDLnMRQHIT+CgWcvvD60tdjnGUoWjD
0IoazubcbZqcmIydhat9poPYo0lMBj0JmQo6qhQet7SwDkg8VYOGHDJLGqrLi7RLZN6FbuEywGtv
t/5eNIeZh3v4agqLIzPQcgsV/ZBO9+6qE/ToCBfFM0YWdqGkv+ZalZjBfauQPk5vuQPjxd2b62Jl
u35oSEGp6GR7agWnSQJ1wf1mnrfDbIyoiWkFYbnxhsKR0E36lnkWra3/Fo2KSIpM6zumGrMR9v63
4mMtak4Y5VFIayugPK2C2u1wYMRdFUUwf01QX5GW+HQystdoAtzHe8XdFJAINdYXIBqo+iAzDUgK
ahyqqvh061r4xALR7RwJsPJEEIzr5Z5ld9p1sQUtMFFqwoKrM8MQlmc1Gq1geQhev7+CrygGGFSu
aCwiS6VE/51m/fvCrYGZ64vqDjh/HlPKafIbDgTOMHhK6Lt8b8LIfNjNi3BbsnFuBdwP4lS0ecye
98CiPXj1tDbT/Cu1sYiygn5N+Vzn0vK0XeAdJgW+Iz1h1hWDgxXw2xQ2goI6LF3162o0Niha3RyB
p8NCQAc9Ba+jLR4DOYW202lGFfyLmX5TQwfXi6Ey/gT7Kg9Hzgzte8Avfp+vPLBMffrC2bCOjdVd
gC5F0kXE62x2pq3+49e5ujWsKHs1rfljv5k82PhjQLUz95MbArJDF5R0x/1l1gchnZ42hE3KtTXO
Sx55FaEgtqMIqEh8kb/BoUQjWz3q9gGtg9ts6rMbJvzsjHdilPErnWnkBMG6VxnFVz+z8RwBlKpx
FSFBoexnU7lsJrCxHoz2BtBW+01DbENIrkeKDManxZLlqDeNKfY0NEwvgz6lIZNIrPPNPf3idZbX
8Hx4CGE3/cr1F4wUVE+MKQXbGjktt125VLBCZob4X8DLnPeC2F0iTTgH6YvyHlWXzeR4R4+9BbJM
WIQ2/EqGryN2Kxxsf72jO6kuFyz/c9esPOH7DrPVIVqn1eVUpOeQooUzZnVOWt8AzICiImfLtOTT
YOGk/neLjIjsCIPW6PUBYPvMNDx904t6uBiwIuJ+hK+aW/xOLqhd0Gl36f23AXfRWNjPfUfeUufQ
aL96Zup5k3nCnpFdfgyAmql2nNyIxCnIPT+ufGmTgVpFIXCWRrwrih55S1ordRUfRlrY/+GM43KK
moym7BA6Yxc/ap3drtdsz5TbKBRYmKYenPgMfqY96mlGwRTDyGqeGg+XmwIanX9/aM7/Nyzrz3rj
Vnjm1R/22fT8p+LPLWpFmDrUOCyaCv3EwGHRizgX4KwMIdbBtWnu3PSsQkhtNPiXCIS82dFao0dg
0dypD5CFAHUKEDIThr+Z0jUoQYNMBq0LsxBiixNOFxYKmP7yXZw6fa/VT+MkZQFTeMdofUAlc2so
koyMkE2Enh5MoSRBpWGm2A/n4GLQUsb1VJk/D/9JOVc/p1r6fGcdBAQznRAan8q870XrSWawVhzV
gssnNfWsPSbw0Nyps1vN5G14QyKXoL/RBqLuP8/feB7uEse6wev52McUqGy4+FSXyoxsWkDjIpCe
ZIvOzJrW6xqBviqo3wlrs/RqAQxyLQvS0F+vutvO8JHnNGv1hIBj8I64bcKJ8OXTm8X5W4Lguuyx
6bD3zb8DIqKO/4fMZNbkAPP9LanVYYJDs+fgW94AxGn74u0aCllCzxk7nbPC4VIzHyEhZ+I9M3X/
NsgTb39WZeoKX/pYOiddinQFyAJS6alnoL1LaxBw90u+xH5+msb16ibQp5XFjI60BUnn31dhCBo9
SyOoqgSSePduMwfyjTQKsFUvbyfvEMYn/9bYgs4JqCAIo2MSFIYBjupAaSEl1AfKU03E6t5DcrqZ
U1fIyTpH6uId10Tr4+dNP3LK4emQ3gq6VR7up5MRgSZXMisVJrEyL5eTlw/fM+AjrMeInP4pDidj
FVt+7MnbTRS82ryIS294/3X2Tw/RCa1JSUMrFriPxddr7cx/WC/tmPa5Uo8C/ZVzK2fI5v/PhFXD
kGX6g7yF23pnnP0qLS90BVPfdElKvsYMCGfDxyNPYm7gnKkPORyPEcg2nP21rU9QmkuMD41wsklh
3D/A53AR/LpCko5tHoGSaZVbINT8e0pXwsZHXs3dkZ58/fdcqChg65zuPhSbPtGplXn04viD9SkN
JsTSahk+ACyE0fsI1vo3NK0r935WGdUhcyUJhpWGmELiLNNoGENqDd2Bir9SSAKKuaWxR/JLJVDt
Ar1VPVHCL2gCGRf1abqJ4io11c14ho+NIcYgwpe/gCqo+rhrOcyqd2dNYfeyNhO0WwpL8p2UlepT
WAkgQXvROudnxbtgvI3S+1C3vl15bv5kuX//PKrIMYdGgY7JzadJ5eq9ZtsPz/9TvbRg8NOcosJQ
/gOg8OLeouZ9u+wVhWIworZ/0F/Rm6TasVD/l14p5YdRs03i5DLYB4pqQnDDST+CHu6cAyewYG84
FutByZEMhp8jqZH9F1JUR28DyMWOh8jFJ5iiMVSKyhn9nG6YufFDeocBasbFE7OaaDMwTTVC2or7
/5tUjlvED+w26nQSEbKN/KtEIDxxv3atPHejYwnwDit4PRxgKgVzLlc2xZ26wM669Gwio1Px5ONE
jSMs4KoXyM7zH/ktZNkMnc81kdnwpbF844U7MZ0L+vUZoRdCCAJamsvkWYYubizShm7r1lkSdSKs
VvWvD5BVA8EuDkDE678CqXreSceNwsuQJWWQAMMewHlYIm0sgHz2pxVZwem+BQfRqtxMrDQ4HuNN
Mrgnt7hvhlfEDcRqbDVdaIdSy+kPBN+uQkYkQTqCH3FFL9tJPVukAQb7NXk2EES7UlC18X5DDA0M
Ek3PtQ/jly09h4N6E40chJ0vDUhQxPr9h/pqMUEyH0SvwrvBkkZMUP+LN+PrCOPCA9dwX1ds/eOR
ixcOzrvU2BuupHOIunw/wsxKayARZoYLwpDKGI42p89wdCdU8E4nHfteWgxbu/n+zCC338Dg5Vnf
NpqHMcUndW2m6Ht1PN4D6vpWKmHiHG+KJGOBI71wnzQdnkhwrLuHuBDutnlY1sAovSKCt8U5netb
iTIcl/Uw6y+K5YBxiMHcpMttKoGID/vn+R6XJLjUsGupF8XRwJcxiqU6x7EauS8ReLcmWyFk1lkX
N2d0iC9LqET2o7xl7+dAMmnb/DF8blhrNEma+wCclfbE3GcRHsnOYvTAp1kPM1S16xhqYM8/qgDm
ZY9NzuXTgRNg2FTKkJwYzq+DsgU9J44pwiFkOAhnpuMGPkZOTQ0My7aRAwwYS4pandXP0hHtdXua
OnMVGsGos8gEHz00aN3o5KK8OZltZtBdcCh2tmgY3m+Gx6frTIB5sWVDOVWF4YHqVmjVDyKZte/n
fWg863lAcl6N1e1GcokYdlfFGV49HRvANDgmzoJFcjJ88TfCyQpSf751IPtquCsgDAws5uhgNO/Y
u39p9m//nNxsksAF3OpHmFPi9uWSqdqr+Y7yMt7lW+dNnP2psnWNf+XOONINOqxriagFh8MxgQqI
IUtwIU21kK04nE9MFA1pLiUnAb526mHPWNJm2Yn4zldzfL0eefRTL+CMhK5LrSv31FDJEQou/hDo
fQrfv2J2beGTo8pB+atabg3h9oDQGoLhe6/4ZPC8Z9WC+KdWEkVLO0E68fFKyWwyy/LAgVxXk931
fQZ/unCt12CMdszTBmTPbEeP3Qm4f+PmtGi6uCFHEtE64iEwXvi+9caRX5ra6ePPFrGNdo+hFyem
ng489JRh5u0NT0NivPLbLCRQEP7nkUQRjF8x6Z4Lg4NuK4lHR7Q9A8oXZYnBb/Oen3VhSikZhL4v
fP+csj2EJNPL5TymNX93fV8TGeloC/8WmMMOhZ9I7JIZrRs1MCerh4B2ThMJ/NGPQZgnroNFxDCt
TJ4HapLB8lql927vZ1vVpD71DHacV7px7FkBFURYIg9jem4i8Wd1eec5lpJxtyGRSOAvWNuh7Cs3
lZUqEIALDuXCKG+l3oB0bS6YlzOy1MNhH4uU8Gvssdu0JXJpYhY1Urb0bc1bN3rfD46Xl705S3tW
hlSpHme/+vEAs7tlo5NnygRrp5JGSYtcHL+knpIEczrVZrgVvDOG5PgWlHmtj/hKoep1MzgaBWO+
DhPcM9aHX8rgBD2Qf5KXhh/XjuQNH9z4aW9oDlbrmBA3W8ZgFUbVij26SQKQ1P6qRT6xKTNFkVsn
H1qjSdjPuMIwH7hMbgIG4cJaua0LqKrPEHNdnkJMaXC+eGqHK0+XCINFl+aDh4G30n5KqxPAc65V
VqNEre5Ry2oCKDPB2yqvhclw6HTvTdTij3rD1Z0onh+tXNo4x6srY7Yu6ltTbpN5eBhA5PwrPrWu
+XkBGL0FQjobhFLH9WOIkxxDPHEJuE+NkTNrQU0FMTmgnubCqDenziEXfwO3vRKaWakwnL5ZVF2i
1tNGDMc2rKSrYYruenVBktUjB2AAdJGlgex3V/wX52N/3+tkANxjYACFdjP28oNKuy/k3ltlZcnx
3/jDlJczYiB1YWRkIPqg6DO2LotiG53fjUfQtFQbBQxt2mNP+tW88tDdEci/n1PWo/QjjHLBJtKg
rGdt5XB/WXjlEiRqYZ+uUjfNJJ1duv3zVwOXn/aNVOgM0dYturzQ4NGjdyTm3edpwEb1LSoX80Wq
8sVDc5pElPPqvRWjMXN5A9otIV4Oj2gGx4ZP/vl0HIDZlGIudPAosLk0/xoyTPUK3Lx4PC2JNMdS
PEWz1yjlAXI589Y+zUO5wyU3Hqkiv7Uc9ghiV0AbUtQffcVvSw4vabr/IJ/DFdqlYwO3T1Cm//I7
oGQHRUmNju593I1h34yQgdEa54xDxRgkFUbY5bhP2dUpUYRUtCVl3CXpSmdGFlUXRCPtfniOWN5l
GMS8NlKLAV/ZxpGoEjXnZHMc8BAtkxt3GNZq6jvlmp6QvH82GAfuklPmsbQxhfVaF0jAeQvIgxq5
PlM/3f7rpdpUrUgkypTTSpxrQLWG+PBdz6e7Gkp3PWM7i7Z+Dj9lMp6Ihtck/K8MhfUY2vX7QyuL
rgCiz5du4Hqh6ZtGRXaORFsUBzhsQm6/lavnQW/9e6FdUIEGPsrHBK7fnTOQKp4M9bvIwgm5+cIh
L3q1Tk4h6BlLVA8aCZCPcEUjLPS692cINaBOdUVw6eoUswQWqBgI64677nX9u160aXQHRQRulhfe
NpNZ5TZ763cKf0uMI47WkXRZhLOooZYS/vPdAZ5sOsTTHPivYgX38RBRCqg9//vGmb9ezAiqJMle
aTUqSadNxce8fgpB+hgbvPPo50p/8q1vFntllqbZA+e4q25ZVf4IAfZ8hs50SkVCIWs7Bo+kAL4C
VPIo8QQYj5C/LivEJMH3ieIpArdnMbyTRxzho5jjBnZ8otYXgbe2nSOEfEWMwv28vt69IDjCxw4z
hSPB1z/8vYtvShGTH5WNcWIJ5w8d98vnbklKmi2OuxhTZe+qgwkjN6rUuoIR4q/P+qtm5N3HxlI6
FiimnOh3iKZtm1hbyOzme2vNOSjOoTb0t7UL83umv5QIb2FfvsGcQFJC1P5aroKHmj0v8lo2nsFy
sXA0sd8SufcLExZSo+ysADAiLYV6S5aonAgBBY0VbndslBKo7ThxyZyejNw3ntn4ctIfaEDcaCTY
PWgPh5Q8Etagv2xuaUEuNkQNlh1edKwpww5w/O3i/pBRGQQfzDbsmAE3f6zCABNma7wU11As2K01
tjslDzOR5jKpccjvZNRZ6w3acfxLcFhfO4iD1EnKa42VNSn5Z4mVNta+NEH/ykbSkIonbq9VCPFr
bdQMiPwZEs5zIiCrTy++vzn7K8AjY9lUgHRqlrlLbbQLyiGM3o42rNolCO7r7Js4L9wdyyUHwK/e
iRDpJYxjY0UbfkBuAA2kHabqlOfWxpTQ0Y1rgXzj1oQq6C5CMrYu/7lkSqS4GIBHufbIIx7lsTFy
hKm4bKTWU7BUmZEseR0c9ogcrwC7WiJ4Z5PoEITinoj95eArRCtuc/IkKvZD04R6UPIsYjWcS3na
FtUF9zGJ6lH0La9kJIFxA3XpjuAqjI9ApA/oTvqZci4IiH1wEmO+1TAoVlMH5GjiNM4yH57GX//j
TwcRThz92NC9QPlAHJLCgMd2x3EmWAUcAjNVL9HCEg8KTYljyN0di38nNouS7neK7jUPE7xGJvMs
1Om05zWhmYdPVcFK3qe+NNiRqB3Clm9Q6HL6Zb/b0xXzETOPiUUEz1iXce/YJ6Fzdfgh5Xfvln5+
7CmAeH3oHwqPM8RHPEA7AGLQyEt0yN+pP4kRTV1LPIyk8UhXGHnE3ljLzWwQeMg7hfaPOwtjzOPX
qFgEGg656um2UlVBRl5EE8S5XrPsSMEymH6b8AYECBlHV/40XyL2Yd3z01QWcBcZhX77C9BOJh43
nlb/cPiMW2w/XGnKyRSv39eSV/E7tj4KvdO0AzCXTQc+x4AhoY5xXXJ4j3m9Ic1yEmh6GtchPHm5
DoU0dAYebuNBirgQvjHBHm6CjNmzC0COvMSDOvpLebH49DN8NUi5ixhew+Xm1qgd6z7q7Ab0JilX
fEJeiUwRnohNOJz66FdZ1pCi1W2PaQ4xVw7NsPgP0Bx5g1GnJeLyIkBfgO/isbGzTZFTvLbw9fAC
pe8//iDoAJZ7aLvS3Xv9qLVJZv8QhqrhtpV3U2Ph7UFWYvcWXMneh4zQeZLuHh+E/HrlXS4sfuca
JbOuLjalMRGpFrwdHoUiTom0BQSRv1FSb47eXJJPO57y+JHGQ984bJ3hu7B0bo8IvsXcXuIrMAFA
oLJzet8TtEkBr0Efoum1K4hRTRiGtjo9Xu+J6Iy2Ctej9jXXL2a022Hk4p6D6vqrfb8oMBNOIm38
b3WyECUBPtt10o9dovJRtSSOBQmCZyOCt1hzDOYqsYmHBvuziMehxrThzVTkI315dgAR3YSXRUxU
tPb9fQV3qw+m4j7hps9TNToh9VEi16Prgew3Oo3mvd627QfY3C/YAieCqCAb8h4NgSALorddy+cL
CAcKB9cyKFD+rheWKdGSxLHsfrguaw6kjx9QehVSkSc1/d+XF+u8+B8Yfd1lG9tIbQpoYkQV/kUH
DC1TURJzQE02Oz0A03rx+JaaHq90obHLw1IoeCeog/TQXAweohydheWTk0L0wZCvaedHrkbn8Kry
L3DNwf4WRNU1JqpldCKR2nbeMG+jy88na1QlsiHByuUO43YZN4EBf8aW7ry/xWBYZ6291l9SDvrS
23bXtVw2RyHVW9+Sg7hlTAu/8Nq/LOI88SqN4YM5Mlmj587LmruNqevzU03hPLxjMr3GdBCGW8Wx
MbO7HHE2y3RhQoAQ+D8UfUlFxCxpJadG7Ewfc0fHBbgEc3Z+lC1NEhmreCLDGMIwSVrGMotUdoeL
eKs5oqTFwFz373FyF3qt7/uryvQasabLW0wwHtt+Pe21j4jHgx/npbIlaGF/aq1KKPfBx7TKdibN
7bGxVwxjqvF1FExHZLl/g4zu+8TZqsEbSFSahH05/RgOUcrENwg9tblerrKN2Cf+g5xTqI0KF28w
1omIz/PwQvxNo6AhMz4AiJsJXtyLfTIP21j10ykeuZLMd/0Ub1hQu7JpKaYVunMfTnkq4HKySqX+
td1PbzInJT+MJiJ+SLw0hGm6IhOjoyqQShuRIr6ikmX+LFvMiZB8ALjUK++8LffB5w7SVRMeu4x8
MoNX2H8Z5nT0YLH7DPWR7F6n97Kc4WgHWnrpQh8OGGGzubSFO+T3+EQqn+LyIFkKllACQ1qLdJ9P
Ya0AhImR+KqJp5L1yaO4TTFzIC4ZNCQ2hgnLJwc1PJkkE3PVwDW15kEEduW0Pewatoo+5BEABOEO
GxC2u8q/noKMlVZmemOg7J6Dd2Xab8hY/tk7u7GBRyJ7I12ZN8DtQ4FyIG3F339ortoBy7iblzEL
l7w3LsN0kCRM4tKRSxOtScQ+hqwHbqqTE1E9Jo0L9yZ+9O7TDUkJGunxedqSkTLFwHdZVSr14dMy
2L0eASvtff84RlGEnUMkFp+X+jfoshKd4XYMfJDx8NSyvCehXce1TT14SakVMTOBguINxvG78cAl
oqS5b5AiQB0Elsi6inoyo+mmH+krosDrl9qZc0KcF5yxjLCirX9gR8t45jEWW9dsY8PcVpSaUljB
cnwkv8AdnJ+rU89WE4BjfWF11o1BODwmrFztYLeKl28eO51uaL1mRvht1J+jM3JNK3PLTMTyqylp
wmWz4DgSeAvgElZYbCFTHonAlHYIEO/z+RlWwPchsSJwsWJlK1ALCyQJZMnJToScmrxJeh9EfNCy
5uEVTndsD373hpZuN2e26cwXmHZTVV/eQD53bH9uOmjiNvBXmRBg+e+6CjO0xJbDyTrz96b1uWje
UHCGOMMWR+Vz9hN6BtxUCu82YhH8bbFF2rtfrk3+FMi8rGe7tk0lC/8FhzsiRFnpv1Z8xWTs3Exl
lM8uysZV6eGVinGUJ9a44dCe426s8qWmtZNjJNFSgzFrghdtvkZhwtCpQKS3lDWVL1i16pJLBGuS
JS3NZdIeldCot4NdDj8cZhzp4nFyml8xcMntK0O1R7RYZcDVU615oF/krcmn1ub9k8RgZRqKVXjA
a8L6iNzVeLV74VcJF/6OMn3GjP1JVT1/vQnwlsblg0ajx8G5Rpl4RfX/8T20DtC3Sw2rcnnuLxxB
cZ1Ktr+rEJ75BW3bM3vjHck28gfQm0Mcsghkd1k5JW1jXE+8nljGMSO2199sWn1CwDpuTsVhua7u
TpAcAyPcNbEeb4fM9WFoHveYWtQL0TLtNIAXVUnIlYkzJj4r9HNzu7OGhwHmk0QNLkt81J13Ic9e
9TRCQ4tDaz38w9zWZ/Chgw0AuiemOiOBxF75VLYjD1uAVZAibxYojq8aqZJTZfPB13Yh0o3fcqy2
r04XNcYsSZ4nMDW7KKUp5dylVVQtExF+unup4TchuwW+QiPkXQAK4xnEeOBuoYx4psyWBuvQleR3
nv9fyL0MNWhxPUY3w1l643L0l2UuUskpREse46kDrSYk5dvWC8BOfrKjnwQMP64MXJtvd5S9IWBm
pq/UlBGqAoypWZn1k1XH7IEUcI4s6Y01y6L/WuaIEtCaP9v/ixZ9ZQLidghdmwpHw19UwHKsfgwh
IEE2JYic2zIF+y2hdbqRYYWL6711bergQiM2idJs5aUYoYdn/X7K8k65wGpluBuIC/yhybi77/Bh
hRNrYvFX4ZNiA9q/x0A2+O4M8CeK4RYi9SIiZ0AxhqG9PIXRWWnh2NnChI0uuWlVfZiFl5mFH3Om
BsrWdxHeFzdDaYtRWqcKzo5jodHWWDh2Q2WT96BiUU3f1uPk1WQhFzd9qeLqLDp/P32UKTzOLtuN
tfXksWJqYcRqBYuXx3oh60PlNEn53B2fwOd5zoHuJJIWiHdAHVskj3zSfsCLSHC2i44GMzw5cV0v
prUiKS5zXSrSxHjTTspWzbvIScf1m5UbHvZeSgfMUw6EDYV4/2Co7+YF1EcaYDPlgEJOV80ixRyq
tNaqbNDdUzbaLDo6oKwJfjpJ3zJEChMyouCnb8A8Q8OsCp9+oYVAaNh67CADCSb3oIzuuOtodaa+
cDQRvDq3Wz/ITHm6yVfoFLoHjoIhdhpkBPa8EVO+IGgDPiLCOD17NXVJDnJW5A4x4HLjnVKw1RvO
02QdS28Wdj0aw2qNbwSZcEK8w5uxZsF6CDIGOYdzDSj/zzc2U0l/Pwg+j4Ru2XVUO4FfGBHmmEAc
h6wIYnZ3zRRA1D2iWro/pXWnG3vbF8vrEdl9PN4xIXwAQ1wBPpo51noMmHgrSglnQFjhKAvKEJGG
E2dAuCgVflBd4DOB7GybqdjjHydTshNHpY43oqnKcpCbAqVio81hFed0LQYWCWao1NQBi/CaR6ce
aw3dRtodRRf9sPNIOaQA9IKME7LBGI49BEqMvBq9h5UVDDra9JtaV/oIkIH/Ky3Zomb1Fyf2oTVb
qK5HixFRQ2joh2hkuq+TiYB/j8poLRPwI3iUEHEg5wMEMjlLdHZUa1CH0cyvdPq8VJeSpZWxUPhj
+cAO2zXJx8J+5+PapYtw1vIUM24/et98HX889Lin+lf48DT1twEj8sa9N49Gin45szpfQRqF7268
cOsDiyou7y0LqZSuToPjn4rw8WXa4J+QcutvLzBOA0lVptfjCxi4zt567APJJm2Hut/2hIm9TUmO
+ETAKoSIQkWekfKcb8pQ9Jmn/L+k/oK9WunY1XcQcX7wqRhZBz5orihbsYfodkfZYtDy02CqVmzY
CRGXorXuwQtuUcLqPQ0Rh3VERwEY+sSkul5+xWP8/6QAkxxFDLVBw07kOw6L9a33oUqJ1lB8TAUL
e9J9bRHkQgDvOJo5/Y5UsI7AJ4TuqBAgHVMnsDTXDMFDIWys1Dzc6pxhtdh3U9PO+4C+oLhtDMOw
mceXY70MXF/URHWKUaEB/zDz254rPb9022ZKEmnN2TQlJd1xdeDdt69XifXCUYBAnyQF7ZlOjsor
Fj6k/1sxurD6X534C6X8se8X5bjEsHSD+acsSj0cTQ+NWCgzJhYDCVzfFE0D6tDUfURZDwFsHRG6
gD9t6da31alB3cGG3d5dgFq+0Tl5IXU+Grlho40YbY8qNhPx5Ioduf7Cl6wjydjvTbvDzVPC14s0
3TjCwiuWZMVgEkeIQfkWXT4uJ9JXhaxwgAwgrJiKB5HM85ZIrVD3d747psdFo0xOUs92anu255JF
Ik7zBn6KE+lIBPx2rtgS/F0DaSznLc50wJ6MFeTrdCAjc75jkicm2k/dMyBwUzzJ9wsWrKiwGUqH
qbq3JLj/wS/BTEcCuVNHnyFYubsY8ohiN7kW1w+exGrRfK7h6yMHgQ+l7t3I7z+HqqfZNWxCMIHv
9k6U9kqFAlZS1oQlcQdaYFJ+gWRF/Sj/5M5DEBd7sHojgwQ8y5zNHrC/E7jEjq3wK9C75ZkEIboO
6OnRMHHXKEM6rCaV+J49g4jCqidNN8FwIWVMy4fGFexL1OzxJqSOXTAoKdCWeggmbwwr/1RHCQiI
ALNMtgjXtqa30NSqt7GASNv0y0qgItUDn89ykJ1m+5kMiZP7EhWpp8d3MpOb3MrALBIF58os5qod
DfCZ09vp+Q+Aykk2UU6/QM+G49Bd4haClHkCvKVBMwl7zQDRJoafRoTYskaQ+P+ZzfkvlsOqLBpX
4tyf0LlCm7bdhiahn84FO1+dp1zGYM0f496LCU8a9OXeDQvBaUfKjOFzcxFuvE5WIfF+4HrgmGcj
fdKblwzM2ejXOu8M5HhPESuLDgQmm42NybfFy/f1ZEX/DYOyD0mMbOFXieDtjZca50VyKhfqCYQ3
WT5R1CLWz4HEcq4KYEUGU9RwoDuOh4JOBPdgoLzjdKXAetOyhVQ2eX9Zt5vNzx4KDfzH+H8zPqRB
YzU0H80K2t7LbQJGsUgWxHA28bl9FaIgMbs/4De1NyJgzpp3dbrp3s6nGfZUxr/fTYpmrUoXEO1d
NrnCdwX+YBvkBsjtMN9eGYgtNyAKI75PnVPep9eirwI3aTA+ViQvbNiLHlkrnPSXfJyhyTvIF/ab
DE8ZMpW65qxJnF++/f/QtqxTrKHr3narmE9xlxe0BE2GriRH3mzAVFAk9GZX7TKed31sdKhS6gmZ
2TM8VwOhMqJxd2QesF0feNeSrnhxNAXK8yl/Q0kZQlLX60XUOWplYzqk0Vwf8XvGe8HuB5ZqGRRh
E8M5sG4m49EVinP79lC8JgM7sdYcgDeXRXkGRhOjTkZH3YHKfeOoLnLR5a92SBuFRSdzz3ygxS8u
f+58RdMm26na1PMDMkvfHf+fnyGfe1Q7b+xKyJ2ykYFdYy6qmAfeW/NzVVeIFy+hxKJIH20jSqIO
ZX35nkHrWjN/hiYsqnDQQ1UHgcaoju1spq2ghP9zlmO5Jw+KUHWDLUUj55xMTztk34zpLJQICEA0
BI3BHu6R7dDOUmGUtVMG9UEga9q0XoQDqVamJtgRm515u8wQnHs4gaiw6KUtEx0g5uicGaoSNP/6
3vUhUUFEGpOwxz0jjnda/bKRQaqbFm++rTbm+/afBrBNUaZBxb8//Fbs/MmtQ11j6W5PzAmTrkwn
gLGss3l9n3ah7gSytJM+LyMnC6jzeavKd2B7x5XRUlsAaj8ImPgP9h21Dq5cAlb4/bthhaQv/oe5
cPj7wl5tP/ZHEgrW/W7WTF8kcvA+f7LtJtQBdOcwpNg8oJHH09g7g0xt25mwxOxtxKVV1/CuV/LD
XhmMi5mSfJy0aig3TYF4w3NJMebDGL1SRrbZMHQDdsnV/8tkGmPkp52fvlmHVsGR1RHnVadMjg6L
0Hc/PO1SC4qVLPEfwcTXZHidXUdSa+Esprbwa33qth/NQEV55WbJZRQd1JLhna9kGHjfBo7prvFI
xn6pTwWPRJbQ6MHAxcXWurM+TOd6yo41KNyXE+f1aT2RZlDZENzTfSiRkAOW+smyhR3pnLidYvjS
DEAeQ1jZ+rSuOj9o3i75VZhTtwm7obMUSHTL4EjPIqfeO6Eu9DdRN7hR1wlVUEmnHWwWr8nVFhvo
hrId3wmnM4xoKB+jqfFpa85O3NPc3cTV8HuV+LDUzOj3ttxGXxy6e16IhiJJzJw9dcuwY6Z83Wgh
JIxtlCKMAplVKQKHht+hILr5H3mZT7tm0DOaZGdvqEXhKZpfuYOCo4S1RjCUz685KHC9KgHKwAgr
A5csCVYVy17mhMDV5QOMzyGdL2ehB74jfrptLE481jo14MsOuhJ1L/xG/6Mk9KepuBDahSo9Cpa3
mFLCsqdt/rz7yLFAeNxJCrL9CBc080ULGM8gGY3Tg7IzHf523XsbTlaLnCf8j/68mRforo0NftVu
WJ1Cc4hn9lH3hVxHdY9IR06V8/glq7BssRKxnsoA/iVPEjHriGtARYgbL9ximx7YpTMSh9ECgCXG
Rha2DCqLJVzRB6P1AHKl8A6Yafmjr//5/tOfIdfwlpjIgkSJSTL0np53MgduiLtMOqOXSE/LO0jt
bfegC4ysArcX47encc2Fcy5LIj7o1FyFVe06zLhv4jGTF5tNntwrsvA5hruM8KlZTBLVhAXxIy3D
kEpDFFVqK7rb23/GTQ8J+yyJ6OY3+CkVfvQAIUCvsLR6tQLF1Oqy7ELVnM1XhS7giO/KvXVPmnKp
H8TnTkg0eLgKF6Bk5PPPubBohu3MtYRLQxvC2N6WIBvBRl/Ib/dLIDFXW94ZFw2SbY9YreDA9YKy
T5xyg1+f8l2f7JXpJV6I3OT05JNCR+yxazTBH6PmvrONBFeWxKbHF4RSDwAt40sL8AQ85KOFxWFQ
wwFSHhtrcZb7lG0TFgRJ6B5tp78d0w6u4ALydFj4O5G5L+PK82f70pIVds0sEs3dl0f17et7FdT7
4TR21i+I1SdhLLaoWk7iS8iKK5c8L/kFsPrBndkjezbUwg1WIX9tgj4Xs1w92TbWixQSogUXbAlx
FbXrul4PDCc6JCiiafJK8ghzydgxFIpQiM4LUMXY+rllqVPHGZG7zpO3BGnIo7PW68h9oTKrihie
j5FqHcUPafLRvUktWElFwAVv7VO6niRTmgzCOnvkwi9k4il5cnGKpPDseCSvJKnDOAm4c7Lqwb5m
lh9LmTJ1p2oIhtl0f3w+ZNz5oAJ1VLq3ScgnH/a4mCx2+hzIoKFcdBASaYRVT/4cw6BvXc0YsjrC
oEP3dZHoDS0c3TqUo+VDHj5VCVOsY9HVkcDh419GteiTtW3Gj+efjqcsRrJFXxupjFbXd1N8vPox
O7CPX/cyf1CQ8XduINGWdhpwtZfifkJlIdroZY9TMgdQZvOYsyGxFhQmhQ/BHzfatKWymSQt8yRQ
8eEXbSc14KIj7mS4B+w3/eOYudaKuPhIb/1tYfR+KPvryzc0UQ/XPPLMPqyNRhdOTcUmXfMBVgZm
QNYElY2KoL3fir5TLEBo861UPWZDaulXR9R7Fzpm//MGPEr9AbnkR10V1M0AmGO9B6UuM/vxCVO0
8Yr0o5+Xf3D+qFM5NoB4HK0yp+d3rSJUvH9zdvGVFIieQ+U6SNc5JsHToUvCsacU5sNpXxjNUA7b
bBjDoq9aYDG5prUj+WnRtJ5zdwO/Mm7O5YPNmaCytDRyRDUU592ZEF2Wy7TT94qIASpCo1dshtpJ
kVpfrIbPMdq1gQxrgWZG6HYD4Vq4eysdsAOP65Q3LuBG4c+Wj0jgYXBsELjCson39BToBo5qq+te
2K2LPt7Gnk7vsk3hAuVu7tq0PtYRq1vmH+Z7lJAgRDSVTlCbSZhxjz8aYSPyWXWZTXp6Oohk7gxh
UxD90/JFm1GyHPYIMMg0Y7XG6EUsf/H70ykWIxiuv4obtyhSyghfC35hj32dBFXJzdMfqhxSHn2s
ZrIsztJVwWK6MNxrNiIV9tEVOt14DwxDwsl0cQnQ+CHO0ft1HAnLJDKUQVcgcr8i19EMLhUSXle4
0EsaxH4CQUWqAML8SL2aeawmI2jFIuCGbK0UJ/gm3O7cecaTmLMFpQ7945iveetSY+2f17QmBGty
Qk+U9MmokN1kV6NKX4wMuW+E+RpGK57qrrzFib+8qXi5MQ7VyT06hVkOO8R3XkwVarfxFF26mWTm
Bu8nhiqV+KmlBe0Ah7RoIHYrl+9/uKcWKUzBWycsE4LW6T+82S6O6rT/K1K/G0TWrudRu4nVetea
HrXV9PCSZv82o5ahllaDcWQh7pxjJU03jxMVYZZSWt+UOCChIhx95fsHOSxC3FNpifrQ/DT7Sp/V
FYKOzEC/MLmq3vPiOwU/5qtT8bxatnvJQgscfLta8WzhffBKrLlYphD68lRPBNhbiaeEM5huHn+2
4p1W9ndDkrVbTlmMqnXYvG238MaZjPjPvvz+78YbZ/KQqIyVydccv6LHIrVxXBkYeRdK7Bk6Q31R
mP/Xnw0iisvi81GroN2jhFfXhlF/JmlHDr9OF549zMySy0Dv2TsuoxT/hU42UM4GxVzHas7DCYtC
BH++1ospLqUmiTqGSjp5WzlIPBOq5aLZP5OIwZsL9RAN0QsF7vSD9U4M2ZXeumrNoBeSgmzyc8EF
cDXn3XJFa0o4ZTnoQ2hZs1ibd+QaCidU5/T0pJmqHsdshn/PbA1tUIe85hTsBI4uYY+4AkSjYo7c
eYotMmkz3/zUzZgD2YQ0jJ6X0yiuIog6Tj4toQIpML9lpr0/n8nXGL2jQl5Qx0LwWfEjEfaNcQpF
hqO1dAOaW/Hgw4DXZANue52IdeUk8o6vT9J9OjUDoBTpkAtQoQJUsbca/AI0vij7qPmktrnN7LZW
l+BrB6wdE+kzCbdvJsD1Q8Gy0JqMuVwJdKiPt4VVrZHYAJcd00UEe5gf13hpLEtn+YCPOgg5WCE0
2XTIkwziPdj6X1tZSGZVeF2xBrjppZzXgxBKe/uHbOzLvgc2X1yn2Eilo40M3ZIIpAqGpFzUxrOZ
CYdo5yGuYPJ4sWJgY2GG2n4LCdX61bl/n2pLIZCpRLdAX8P9PAIgOHl7ly4Ew5VKVjP4V2KSh5PT
MU+PrinGbFgZy2r4Z5nWv3hQvJTTdlzPi+wBvZwytWNFU3BURGIg1gBAhmvpcLcqqNdrDnnNALi6
puWI8FlAg2kO791QuvnKDhQasrHmgP8gk07/xZIRCpWT4TwIQQfMiGB8CSjOyh1N0GOA377TA0Qp
LKG1a7H3ds00FQkwfDAzs3eDuH9HQ+7eFDWkga928+lmbNMZhAQdM6Fql4wUZksKvq1HzBNHJ8cb
v2oie+p4bYuOwg2HaWITVV+0+Wg1mYNJ15BpeDt5LQbkR4C+OBm98nAAXy5/TEC/HZ8fLJwgmqR0
rMrRHdbTRCa4elfrR54xPBmmHSTSFS1aU/TQSOISpMPifsFqrV+1OVsoxUni+lt7YPQZ9ESXeiFl
WPTusZ5HTRWpapTitiTorrYBVzLi1QTxSVbzqqiD0EKGs9/H1SyOYsJCq5ppsl5Gs9WuEK3g1KJC
SulBsMLeMmgffSCuwRPc6cQkUsP6sI0C9+fT071lLjrWJk87l63/+64mIGk0KqFhwbOhXdkQqFhA
qiP3XAlcQPSbwlXbteawCwQpfzwySRnt/biN1C5gNUJ/dazkMOFj1i0QLY+Vk5m2LjaQCQHrhSy7
K822SJ2liW9iIZTV0EmCAAZBp5htPCwEHwkE1sfy2vhS0Pfwdy3GPHrRAKoXQ+/DpeQk8333HAyC
g5ajx7hKhQ7EFJTcftGRF/99mGI51JG75cnPbf3rP0wIsBrlFyxOhJdWwQP7AaXFpDhGKvLSDP68
QM0pI+k7R8/mKClyq2rXupvGw7s9FteWlOHiQjxa0y71z/j9be0nKS7LnlcrSp1sUT2snb+CWktA
rjEF6eZ1jhcwS7woSwoW1X5Y90V7IsANTBItSWSx85ZM7e4Plmm645lpohNRGQM0X5O+bP3NU/Do
118Ht59WbAjiBEL5TbabVqwoBaeHiPNWld/zyxgf8PQkfvx7A2coSW0Kyho5VYXI2l9i93CraJsB
rvV+Blgisqwpj6GAQWXWxhqAnA8N8tV9RpLagpEwnfn+77W4tzYi9QkHbpAPK/UwTgQzqVfTeP5F
xMgJPluycS7C4s9H1K/I4oef+TcwBGqqY06PNWMAARlWGNDWCXHd3P2Ffc5LjJPFh6HbBmpG7g/5
Dz51VA8J6iWUgaG7rqrRaSHPaifV05/rBY7wadCnvWYpnkJdwIIsz8FrCogj7PAXHcwAwGgcwU89
AFgDRY+fV/s1WKmCP0+HMdzWhIbtFu0haSetmtVy4CjcGST8NroCh3f5PtSLUoUFxZikBSQDkZsd
i6EcShNKp39xQA/fCNoBXw53HCahLlni49AsY4A9XYR5qGG6zAhNW6QehgRjrSLWGLrq1djJ4skj
HWKRy65HQYe598BOxowJ229TPcUrHfvFolR6Yi8jkVkGvH9mFfVP6irlNBpAx8bs/oaz8wFBwToB
he2mAt9Im2dOlyNqmx1lcEPaYFvZIgNqLoDpvLz432dJUgihmZycbYzn3wJx54Xs1AVpQtr2vtgo
W9F8RLJWF5H0T1Qvb39oZ6d+tb5vQwH2ulZInoesr8OvcYphk0A8nIubC3cvFAIpHjP2ppmrs61C
sz2ywYUt0myjA1ephGZMV5CNy3ZSXjEJfb6DRosOJvaMhOgOgoqcrx9EZLMqRNpeJh52Kj71+JUs
35jz1YTDak18xxWcnNUOWljKGeupLjzIMCX/bHZcYqBVF6+6IL6d9acSOCYphUDBqmfGMwnucyyX
uATVHwoVnMXL2PPuqBCVsLHfR3r2MiCXpyFUA2QF2B2MiV+GBHyIgrwjZbh3L7WPvAcoPqp3eOw8
2iBRedEtEP1hv1usSZIgUAE87EOwI1iY/46c/HNr06uiEyKFjI1wgpQ6bGXlhRw0T5T4+vBpWQDY
yA85WQ81s8Eg+BscRCRZuwP5oCgf/Sh06Av3olt/R8Cm3ijVPzZJ8F72FLC1/+FJqwxTiMhixEEX
ZdIoQFk3AxG/O4rWt7DCuZoH1YYlB8YRuqELQI4VQQf6aHll0Uf41PJP9PkdU+IDlB79opjw7Qug
aYbGwU5GIchDO4AngUrx+eXqwY+IZyZ13VIbKpdgH+xUMPqMm2Q3HddPz+6dDe5se0Zv9Le1WH0i
II7jPUxWDpA4KhVRBYzGw9YrFbjZw/ootL5DnzByIoNxPqyrNLSnkRVJgh8QyMi0Zp8YK7h1mNts
UsPefhzIIIydQ5sDJ3TN4WYh7cgVOEhmAwENFQ3zNZsii+hqY+n7b4gzu177yBibdKDM/rwIfwJR
lc5tyQXDZKnp6NHiXsfeXg8HfQD4n7ZuYXSEB4L8n8JOfZpWVl8gqkrJ4z/GAV+Zam6nnDU6Ruvo
2vv7n4jdyM6XyePnT+bCIhFq2EHGSfDPQuDsHhRuZooPpEuOTB1upLNwo1HQcQHIECu6LaIeAKW6
kAfE86RCPhLWKvGNB7Y72xtgGego2J1FFZTc74A7VmMmUm/MnwejFtX6U2QIYjObFAOU24B7bKG5
kn/Grmbe3Ve2kP0GbbYj+fGoadJnUicgB6mH8Z8Rv9niotO9fNPQGw0bcrBdp+fFOn5b1RF7qUQD
rFUY9yhr159iGqjO6BfCYAgfp05KvOxd4Y5uzHmo2xZ2HqZ3TW+N1IVuSe/XAW4D+05gZd4yVail
m1mVUsP3WnwZsUA+TpOqvTZmNpFp5wkxgrrwmCzeT3UkEzadV20t73Ko3V+5d02OC+c0BmrUi9TQ
sR87LMXr5UjdlxJms7/H8/RdYuTBJXxzleHYTN5KwTYiUp7+Zj6eejDpXsO8RDiy5LugPNfPD0hW
La+s/wxokRzZpg4sRtamvRfoxv7Sk4qP817/7euwf9IapECswQx3rmLjDx6xagTQdyROMtT9XMgQ
tRbCpJUjk8kYVRWioDV/24Zq9PFmkUr8YYEnAvdlXuJ3LuMv66aVc6W8oysUSil07cmy8StpAjuX
IaY3aSqkmMsuCPnESOB0oqSjTiyMPgYVoe04EjeRBru4ppOS8AcRboTpzeiSHK6pYLKBYPZpcnBE
xmKmn2YUG2PXqGbUqpZPSklXoXUEfKMtZ95CNEVexIZTBKcj518lLtOkdZ8rn+XaVehAVhpfq6C9
4hD77TFH7eXDdPbUZ3mpGORYQAJnVfcTfJUZAxXPVQQI36WP7G/G6lqYNBSY7UZhcWtVfw+DHbS0
IfIrDaC4hkvXrVa+cearTEH4xdSanU/QjuDHLPBG6p7cUcdL9BnGKHczjXzGNMfXB9dg6s/tAmKw
hEMt1x8CHge0jEqHVutiKbYzeZpS3y/aDaOU/J0rmA+JL8oWHnR0pe0XCwchO1D1rrlZSIxtjJru
D2gJucK1Fxgo1Ls++9a/vWkGApWTWgEeS4zfjrxyMKaPDgnk+jQJao86MPoguLx64N5ypzUBe6m6
gnt74l7SPe7DXrYmg4USaQm8pT7q7xN4XtBvoXme1rbxt+BsYSB3zbArRs3foG+sSjuAgeT7Evc2
b10NIqsa9GS6qnh3mzactOlc5hJiuvko9AKo7kaiL9wxbYFd+d5GBWtsuCu241j+F7KQANsR4fXy
PYHfRIlezZ7Ga9RyvIqHMyBgnzsztNsF0gni7+rQCKlG0iORFEsH3cNXPaHyGfoo8OBJ/xTWLHMd
MpOg5FacU3Cu7EJNZtWqnfGyZ6IKTz1n83YgbI/UXvykQmLMG+Idw7DpWklJeaQUg3sjGdAm4VMH
ydcRJo8xI/K8nHToueFD+aUa5CLoztHuZt8SYCKRDv2nuJNVSi2A4FtJRvb3up5dWerEYyqRdR/7
XlAXttM2/uab8a4gm3qyjzvAEias4z0DUCMMhXhw9LWGt1EMsjuwGgNmLG6R2tfEi5wy4fMAiHy6
fZv+ZPDrJdqN60ixdrNybjTIQ9Hq33X6CaOIyW49/bHxK1cFxIWCQZr8Nu89o792HDE2RhkfzmQ+
f0qIM6jvkhZCj0gyp45Z+p0My4moue4PNIFu/pqWb3wNb6Yvy+nVRbzDZDpgMLX9FnEiVmrL8t+r
vQmrTu1pfDUUkvKhm9apLnt2xnoWdAdVc9Cs23NtHilyz+blnuZZ7BaUxTpxwG39V+u+cvR3jMkc
XgmbK3fJZVITR1ozCJRHCRP5x4Jmp3ZjTpIlgZVOd7pdI0Y7WqAGCwnaOQNKxcynYTErJ3AVJ8G2
OebJG+Iq+gcgyis7cEJPW8uUncC8U5NLP70C1wSfI5puuGDFCbdWzvnOeWvhx1BkLOkSuJVz5af7
4or8lA1PtlCGSYer0OlmimorKyEKRXNuL57BzmWntPDL0RSyTvJKVd8admXyu35U/CwpOKqXL32e
6wOf7pfeKSEpzQpdri1YqzbWYS9j2nCySzg5jzRlfJdSrDud3tZn4qQ4xx9dXLO2FaxUPUZlJ+iK
X0kOsVIe/EsZDwML+IHSJK+1f6gmJkXlr2b3lPdEbCML1zewhXPTLH8PBKl8u0QQ3U9Bhr7VXNex
7izhGkzw7oKJRbmCTvcyth3S+K36I5SUNmwb6/pLv0D/Sivi15zOYnrhqi5s7zCwqjQkM/XMXBE6
mc2eGNpBv1tHp77as8q1uPpm4zjX943tuH2v8t+A3k9zKbf/+vPLXHEZTfW7yOG/5X9fEVsa/Nun
na0Rw6F+uME6LCnr42ftYu7bHz8Nfb/399/BV7xWOx8A5jftaW4HPhnvIpXvJOWZLy8hu51y/LYk
cwSUlVLRX9sCulz+D2MBqYzPijL6ovp8Zs72WnbLc6Q4x6R1JD/oq5MvKatdWNq3YIs2pysKxKx8
3VrwHSnppq3iZ+a1QUmtIthHpSfxWc8d6EHe8suZ/dZNAEyITo1NCw2MlFkrMAE29uI9Lvy8b9IR
BvC9wYmYJos9O8ydi/XeTNTBH8XdfG5UDTHVlUvKq+8QopVpjgPJlKAaJo6Q+OhtYrRlQNqaFjt2
eIhZTGKft68mY/dvs2ftArBwQd0Q2L4HSHeg46AU93o3bnZeblHaxoi2CW81zZfE3hvL7ycfBCco
OhoyE1AkUxvHf+xRgh2chYw6FgabHFydiQMZaQe73xqHNpE6XpeGyWKvheN7Qc9vusFm+iYhxDvL
pKJIYkTBp+QHUvSpsg9DJI1ZORvgJQ7mdudCSyiIQNYxV9ujhbpWCgglCqLblp/BXNsmPU1J8tf1
m0GbJJJUqH/AX2PdXDYUVTpIKzGbDxrybgbvMaDnquiqj97OQcMXrzaOMuic3I9Q7jbG5jClb1qe
s8ZGlKYFifMAgCKFEBAysCRdOVYlDzo8GBc8hB3SaPokyQezvCM/asT3Pz6QWDLm01+yktn5JjwQ
bxc8R+M1SujDVT/6W8Az5qAK+1Ah7nJBZqH0w/yzN0yHB3oozaFl15SHUqZSwZI5WnahmuDuAu4G
HCZKq7bpV6qzydeBKEkXYgJ33mujux5B4s/rHj2O+xiIgvlB0w5mphoxNURABPsbFOI6ty3JH1fc
/xwekLW4D9989zOnh9PeKfjiYWnqo/MpPTi25Hh+IzzPS2gBNTdOZFAHjjxI7o18F7X8Xw2v3YAv
wXmKikUncPG8M7Sj6amTXr+ouVX94i9eHwSNdb0BOnNuffjCerA/QR7KfjgoVAqmsAmBgMlETvMd
0P6j/cDjNBoPTJVwZD0Zs2FEGHsvBApfCgSBMqkS+FqNGSmQ+U8jHLO/GKlrGkXPK+JFNLAxo8bA
BQN8rVWZqZ+KrFUEM0NYHLFhUlM26mbDV2jD7Epg0A/6Eg5mSUwhKtN4LDC58fWseVSAcFRON5U9
RspE6Dv5P/qIoFipVJtcTy9DCA1YVGlbqk1DOuRbuMOOki/Z2K52n8IMNUQfQEoCLsATvO4GMJSl
q6pj/qxAw4Z5Ay5vXLqFzK1pkRWSvjsNjmgtQ0zNypfZA9kdsZsN+hVfn5GIV7OQrrY8VmAcjdCk
d359l5YaJ2D9Tz35INNdhnBfYFz9QnOkJQ6NPzGkrMBV6cQ7jtA71EIVsPdyuAr9E7i8qcmIEBWO
KVnrKPG0wEiJvM3D4uTDDou4D8CK95CeAow+t+D74Gpv5KdMBkACukNPLGL4niaJ2a/wHJp4x9wR
iC2KTa7UOz8BRFtepgCnqpERfcX9vUtPIQ8iVxOrH3r47pdzqS0awoUmGzzi6abCHGBtquF/g2lZ
nqXx+TE9kEk9bsAoqtxctbHsMOR+LwHse2Bkjt12L/1QvG1efXaoMEkIKJCl2Ct8g6dMCCbmQkgI
Hxe3fm4e0RuYZ3lMpMnHhjTGwwwGnro8qwi4EPL8KXewryG+5kb668/X39w1Q7w+dBpsMOKIfFB6
w4mV6i3X583T4wvQh84i4STog60+7+NtKqP14GdIfYwrhjYSjhHsLhxP5MxZLorocolrclew+afk
uUqUNP88dNtTnuyGWwH/MQhvXSWykRU7QizDiwibgIxPkXvPO66MPmmivsZ0SVCt9m+7qSL+tQa3
yPgdR/C+OTE1tub972Oe2LDsvs96BLiFEIOyURkm10n2RV6SNj/u7RZ+mBSyj6uVS8iV/GOuURNE
pfF4rfpH/naWGxT2wEbh6lQvrmyjqEE0svE4CqfnWHRO2ZI9Wuww5xpF27BbJug+/tOY/yFx0X2/
q5TW3Z3lWdEZ42qbaB8mENPPhKye5WxiQjKfolxMHJIMbRJGNWBLiwrVJfkbwhDFMu3c5xiGGPDV
w+LumtZH6MUQRPUdojznR4dWwfEAXo/WR2bOta6kuL34LCQz8rH3II2IWtaMGPedqTdEpA201aXG
Piz+RJs6w+Q3SQsh7xcJSOWh0akcS9GxySts4Z8CcbC00CJZViFX4AKwkEzc6bD8MswdH8rJsvIs
31LLiRJJMhvgkRj3VmXZBf8Y7lM2zybBFqLHZ+8EmvKHAE1IesVW+Vnlm7cGg8vyoPopmm8BQe9d
O8o45xt7scCaEibQ68skU2+PIbZ3Y8tdoh9AYk7shzPbcPlmWBdF7yWWEUTdfHxQ21yBvHtZNzpy
JrkvoLCj5hTcJP6VH5K4f7qNwtiFRDgF/KRQ4iCvDmYDCwzRyF/Tbh8zvaqcAk+q+n9q3WsPvYBH
0oit/psEA8kaE9fKt2SovFif41JTrZ6RKguqT0VVkyei2emJ+crz+NQ/qLgQnOHpP0ixsZ4iNrTH
ZPNhxFu7awZ3JrGR4X4ldzIGP2VLxZdHLNWheUB+tJY/r/ka+e6+/vmYJklmwi/+HLhLO7ES0Akz
9StUEYJqoMwDRFpDhe/3pVvE8+MI9e1eN3lXU9IKtCKtpcZnChuLI7tSjc4fsA5/P7oLgqEDq2Gj
xyOw9K+v14tk7J66e6Lh2HOWziff4iSy+krkIaOYqfMHkppLjn0J2epxmiAddT+31mNZ5HcWX4Pi
3wgFx3H88ncHPVbxXusi2L49VhLBhkgi2/+LhQAWiYvJddbc6X2toEN0Y6RRb2hufjrlRk7XnYOJ
Y/FAujj3n0z/Ks4qGJKPxwbDkG2JwhrkyL/wxJjbw3mb3BnkeE0ojqLMjoB7xak65ottEHMi4Sh3
hnUsA5i+4e6PdbQdk2wu4m0mSFwKo1PWLiOQbehIdHVQrEqPFFl/PUi2C8JcD6JVgc1GCnx6eWG6
zee8QoPlloHgSQcpUTcj12txrlbWoHx8Eb0ubWkt9oRKT+vSbOsViiFBfiddTJY2ybOT6NKXQdbA
4vRdSj1+veghLdPWLkGJknzLUA8PXwhI1p6Gie/61stxohSEs8SBxn/LEZln1IAe7PuejNB3+0Dq
SS7Ngccmo2bOI/sXytEPaSXlV2ZsusVxzdUkuJE+exNgFD+W7kB+4WWn/HPgYl2dIMAdooWMJuQp
JRS3WT8V34z2Wc1sMnBSw+kMElY/IH/K/ECaNJCm41r8Ut9Ym5MUwaS+pqA7FbBX0ikuh7mW5BLg
1MSgoUQc14rNxAF23cWB5W20Vep+nR9qOJJeVSAKyqsWLi1iWX1fV4aqQnBfx+/0gniY94ZsmgGR
1fyKD+1DAbiG0zN/rdBvei1koY+RB4eI/pRBR15iCKpcLEW1ile9aUjlTedmEWezylMd4aR35ZS8
upjSc2yfJEfvxWvT7qe7ZRG1SrkXWXn0FfSgJ9XbKQWfIKq0UL1S/kny6se8wq8u7G/GVDiYoXYZ
zqJfK/IxYpDrG5xcnvv2CIxlWLHVkeoCgi1iG7/bVyxHOhzMF19RuggNdu3zGqZy4WPtD8cKY9gD
SRIKXbkewSpR2xRgJabw+yLnLraxbu+BLrShbSwSNzhncvdjJvw9QAWsYzOx/YAolmZ0DaO0G0kY
BD+RIW+PyTn89n0yrKsgKrToELi2NGdF/voWnrHj5LFUa+j4rFGcz/NfuXpytDyXRScxQlzCiFqX
4Rzb0Hz9pqw8DrLIUoDNAZ7Y/nIkcqfgxXJrfD/JibFczWYJhqLllX0Pr/uPDPzpSDNwf/enSFCi
53xYsCE7qD1TIMSisPTA+uXFmrt1JZb6OPVIC4GzbemzG5JcKF+DoDSiSJnD4kCq4QHeRiuyPHpC
AX4amhccxpdP2AhLqU0bvl4VxU4zPK+/evrdPD8uookK/LmAa3miyw+v5vP70Or4RK7YiStU80Yq
8xr4l0aqNTUnc5DqMdihLNaZza3VvhjxNfHwUHJyOmnTwbHs4Edw3zKcqZohU5INCcSgj32iOk1L
7jVteoxB6FG4yO81MAgjIgF5ump7AQQA64BlDRjXD8nV11xrrVs1slVw7kexGs1VDb2DPp07JJaX
kjRUjTrxdZOD4vOEgUp2VHHLErUn4aLL4EO58+D0yZJam74FXdGq2y++PJkEcv3pS3X4yUNYrNzY
Gb7b1QOidYqk0ZrCuoUqyGO24aABoMb6eGlykBAnSVd+iOcRPUYw2yWcz60UoTUGk2YIfaj2tL8W
oL2Vd1I97l95EmyXne2s9sAOL8WsSjnVB94vPWqb4bpYiPbV52RhUgH3uVAMklH0GCOAzRAOXQLS
aYSNG/WGEs6WWlC8c/hH5kaqRlsmhJmXjlWCzsQGI1aJTgy9qgHQihPuqGZC2al6nPyLWWQW1wfR
ZJ53vd3l2SnHW24U+FunrqJ3lUrBDC3MvH/gg5bYfjkpQfwbHsOk3hHBrChvODbHHYP2UlmnqnoK
Pl++2L892cI/F21wjL3paoUqOYRlZVSsx9sC3Vb6b10UqQxAgTk1ei+ZyNk0YbpxNXOcmKFYY4kZ
9wKG93vTTApSQrYDYCsj04pdvmb3qg3aES2Dk3l6W9+STey+0vfUUSIItBM1mly59zuRzOYifjTE
DHkwRLxnwtzTNG9cgtgkrif3nw+IykGx+aPd4M1ngnRJSsTF9eE/uWu6XzwtpXCXGumdaTGT1c2a
RFjny2pEfYGzsZs9hwzMUQpH3+LsJZwmR2jquVuGDndJaHqPxAb4KqXm+jhHq0sg8nrFy9ZSWV3H
R13aduIQ3lozV5I7ykY6GOJgIqs2bY+B/v4/qXbnikBcPhVDzTOPLjdZRqvNmOdVY/iY6g/pF+Qe
j03n0p8r4GriSACK38a8wwKsm7ImNnMVODtJw+C9Fci+R5eS55fIC4QGvrGPJdJZALoeNA3oO4lP
iCJCX2dBFuPbfEj8TRSWLz+z/W5QMgOe4t9l4w0OGqL/Q8sw8meOsUCT1xKlFOSEhZ34DMtpNQTu
++JeJOpCxbW6b80+6cijZorIxHz4J9p4TQZ4uDufdDcbXOokG9EQsPQkdZHDAnO3q4hEz//DUpew
O6/TSwT8qVD1RJss4hzeaIKvQmcvY8TiuhaQrhupcfjf3xw/OpuKDMH7w/hLQXtorG3GC66JhgQs
ihfXDeeTtkqd3IMEydC6/gJxSuJhlnEyWe45BhUA5Cw3KHabjyXNDOGtfcrJ3pP36HIaosru25+4
GL4B4eb1/3vGSPlTjnLVdss4E5S28kyS/FkiO8LPgQm/Ae1iQodUEX2L9tW4DkTHF638i2wV41wn
zOJmFPMgOMmOFF7DnMhUbXPHS/OEDjVlAOFfuZ37L4SO4OsGF0fEWeKqNEgEfxCdoiSRlRDqKbCn
7VIoVr/B8u+44lPFmbwma8/3h5k70V0oQpkwxCuLXz2GizQOE61effga8T+YtzJvWFXcWu5X1zNK
nB3w4YdjD9gimZeHKHw3boTvA0ZKHpNHQfUC3r+yenPLdhZ/KOjokpCeQcSWuDCbpiUJ3gkyUqxG
0gy3SNMMXjmTlGsaHpLbv0Pt0k2cXPPlrvMsFmGKTeosI3UuDgr/4XuTfMUOt9sVQ/BeF/bEVAYl
RKxQ28tL7if6Mxdfbue12bUCBR2vi7dla72WYHQnCuKNhuGEHdOnKOoYB6EB7+tmszDnyRvqVXGw
f8IKyejM8DF0NwSSo4FVuC4ujU0tXaTWuwcmErmyWbv54uSFDgU3CXrsLg+kkGVG++qJGH73MGMV
2YvcR1HdJoXIL9Y8ImjiDd+btpLYyRzX/0WZ/SmwMnlqPhyOITDeW6Ty+dkEZdX//m1AyyddgBMS
OZ2JEJ8S2kL5OnRJ85neQ/mTAwzZDzNxj/jfw9xEFmBaX4U5rfs4engP0s5S9W9ulHNXuL5ewQLw
/J7HGx7gHGxRI9j97a55XGdQXhfCebUmc7mNiZcfiujh0igTxpGxuBDNRAfqUhasspCyrRF+grvh
bHfDPsixWrVmVqXhPBwDyi35OYavBC981t35RJGww+ujLKZFH0y1akEmsrvnVS2Q50AmdYN5oysz
qUsez3u3JAhjyupA8CYlNoq/6PeGlq/Tsx5dS0cs0cuYVaAHAlmNUhafezpotde78v63ucIHpISW
89of42QeflwGsPrFVEpQhnjcW/I7il9b3VAWL0hsPfAG70VQ88Y3635o7lld5j3xV20HiBVhex5b
mW4XeUsRyFYoQ1G4/3s50+2aN13fQbeT0SiLAxg201+xe8a6EnlMkvcZFmMJ/+xZjd0n7yW72ACq
9TKO2Pw7NWPmkiPLOk0GN5lx7Ioy3ZqF5n0F19bpCr0gG3niM1Y/J4uT64u9tnS6HhURANYXOmLZ
34GQSZUCaLkxurCzCmIAQ43hicikgWKbd5Tp9kUAGhN2XkCW2ptjGhqMA9SfRNZOranNtxu3sN09
keGcQVm1MDw0raf+DQujoLdyh5Ztt+THzMYG56zJRm0YyOc59O8yI4RFaacFG7U405KmkkUNw+/O
CgAapY1wXuaBN8cqeViL9SAsbSvaWbSFyi7p9UfbArfz/wxcHGECWPB15xx+fIPkW6hZwzTPF9L7
nvrZYApg9m3NS1LEOOxw0TVosXawDm9fp0t8YDD3TBym+NOKoRIQvTF6GYbCoke7lL/2zbaT77ti
ZcmQ3jI3LXmTNyX1In2RkVnFAxBgFanMcF1BFNWszPA/jAYDjNbVssisFkNGwpv2pISXGOv2Mk6y
dceEk9hBRgu8e4zVuUZbzppYoV0vIQ0UDNWKdrEUpoCYZ/Ntj2Vfld05rw9kK3rIP646s8qC1l1q
/RECUNUiZtJQFfV1xzb+IBNj4ISJiXMqu8lb0wVczInxlmWsg1Tf/DS/pFnpiWauu09rw/d0Qz+u
QFjuAJPQ4Ntu8jjB2SFyINhSG2QhUJ7CY+C99Sg1jdA4dnKx5B9/FynYZsqu+UtpwfKmDQMdfIci
WNN/htJ+DJl2ya8JxgtItBxjljP+brTBrPflfDRrCe08JPQdEMqY+9bsbS7dedCogibKjqIwwQB9
oVjYEol4yKbrwGy4w6VZn19Pmh5M4AaZLVBQ5N5y1S+GNrwbw/nrk1ifApySE7vUQnQ57Qep0D8Y
PVop0E2gPqf9MycQYWpEZ22mNMsnUuDFxNOQiJxwJkk9Ru2Xq/gkUQVjF9VDTMgJllQ4LfzBf490
cZOZMbEYbRo/BeJoB71C8hHnAvQKc7SI5a9KJUexXRZaXL/npHFx2NVUAr+81wd3dOk9EV1XebcC
IGilcI9W6u0sJ2DAMORmHdPyiQPf8tI+P6AlXYOKk3fVwxbfFEvfmU8rvNdlbeRyUzrcHvJR4S1q
jlyDTanI7rLKrEVfKecZ7eAIWYkheRGb6ZUcrlQflxMxGudGFj+iX++otluUtguSfN9NF4ATLBP2
UMEbOt18d43fI3FBuAoPuCHyZK8xeNwoiDdOvz8NtcDKSpE3XBxGXOlMTUIzFaaXTZviWHznh21f
jr0UnwT3e/u+PdgZ3HYg0OKh/NYMxZfPd/Ru4CBGNoQ3+fJXWoTSQNlJL9X+IN7pQhNh3AP6kDry
3COAKetMEmJTchIcy31bckcH+mQ+FQCFlqGwlepN5aFH/pkQRrhv4srqznqdJ/0MZ97jW3O8xMz8
SO/fU1IsI+drvzSYxOSk6v8+ADqo4NrOuaDEZsvriOKGpyEnZkWJL8sLE0NvKp8eNXzfe6dfafGt
5gXAZ1ntg31tg9T2Yj0CNT4HDA+rPpRM1+TtA4GgFXFQZOynwYajH2HwkDhx2K9tw6TJSURPthnI
cUXFJFjt1rMH5+v+XykVLzVj1PPOP0zNQbafRx3AB8Y/lqrN87Epw9cQA2QAVbJnybscQNJAa32J
i40hsLi++HHRugiKS0hzaLlH9dhvuQnHiGv3mZweEqfT1AiWTKD036z6tEQvggylRM5ETcGY4CXl
YW9sYuYjCd11dz9KH4ciRvrg/mj8hhD/w26pamgUcv3DgwESW3KjC/euS8jekf9345FJ7XBGOjbd
Wre1syGh3XzNyS1i94dcUlhGeBRWAKKhjE2Q2S1JeK3rUc3wWunjYd1znnqrYnKKT2OUPI3jiQNW
peDC4eUW7ouIOtNkb7wOOZ81nSfYhMtXvBdkOE6H/GCzR/ycWNYqrRAt9S0W8QOBignIxI2kb1RO
wZhPRzxdvez9E6/YsondVsMS3UgTGBai6cDc1ICXN+gEcDKTiOZ2brxknDJs6+BPuPpqO5qCRMy9
6/mtXT1NHFigvOeMgMMDKs0s39ceENg9kjcS7FderlMLTcy8Y2juaLvZECopbCxLG+ekfN9pBnja
pv4q6EMmthKnI+A8d8cYwRHOZh6JjIjUz/sPMowfaY6VaEFoRh8YvAUiw7wtsjcft2jeszLIjh6U
JZTQY5TYjnIjT6QTHN7x/pXaNIfGGFUFxOY74KO1l+9gI7PEvpNrI9z9KPLMgkAKx0PKq9gTGGEs
RFrDEbbShFVyp6BzKyvAdq6lRAL4ZnqjmMQw3COyrCKEHsJhfHRqAiupXNI5+T9iDWyEZR3ipVJp
qRacGuEVd3rDRzhVo5LPxZ3+av1MUR6EdyvKSd+c18MG213Fef/B3DpBzGP30kEBfd5kGTDRqiOO
K51Dbn8kqQcwvQzIh08suqhVyRBk3z0GynD0B3GCjX2Axpztqkez4JOQvOuoHy9SpMAE9ZD+UffJ
Rk6Grb7M8QtwMFIqJTX9mesLkngFslUWbdxxoRycqZQHUahVqLfAprznEuWGVNrU9q7GsUeJVQCv
tqIkgftRLCDhhXzEbTp45UUPAQsoTwhuHu3isVJcgMZeoZ3ucuGQIC3mLhU3kjSaw0RCF/za5uJX
0lpFqwM5izViFLORH4NoUsoTmNcnDE/PG0avJQd/z9aryiEqXuAFhywh94N0c32YGesrZ2yIc2lq
61XxlMDKSlKjus9ElIkAGb53VOksql+czHrCy48v6ajWx9T22E3Gg/1eFJ38b0SrU9Xi8e3itW4O
+ckbJwRpLy2I7XIE0kYKcn603PszRekx2OBCsP75lm0Ys4/wcBBQDzsoirw7DvgPxAhYYskZv1qw
5PrajH3jk27BgiDcVjObmBKRSNuz4zj7eEDUTmytIxwIoSQuYJ8zAWFal7fKhBwRAD4lo/Ne5W0M
bw4BDWU1Kgf2wLZRcYWHYMzQAfU8bYFRhJvY5yPMxw5p6SomYWCWXVxv4vDPGnk3GjlfShEcduFG
i0OecmBSUdg8JPS8AsbIEtTWnmNOatlQmmqSFElxh3xNeSm3sKLqfUlfKesobztKvEUThnjIVkss
YZwERS1PrfYu0Sr1OKarJCZ3kbj33ExJFfpj/tOV+f4wn21eMsbN+TY+aefXHbw+fkP6kvAJDTtT
FIND3DND38vij63cxR3UMedGGOSJwIBU8DN3a/Or0XbHDxsfiG5pNY12rzLjPpPXaJwgrXpv7Kpb
qOyFwkqA0uCcQBW0e+Be9MazY+QgO2qX849ZDaQL3d9CxfWlmyAxnDTRher80Ku7/NFRBle4SJW3
A+g2xipuH7veCV1BsCqENOHz/FZCy1o1pbUnDiVlteYUiE8pzbOxbWfK0tBrPQcvn1sSCNuxJbe5
UDp76cEE5CwwBvLEVZgwI4tFmAnOlivSqRdwh+vGY/ZyAdcfayoWnjLWTxANOWjnFeTIbO+PY2qu
rzjL3sB+1bGjY/b1BaGWo8XPysdW5tHXXruKpA02tYnm/V8TGiS/WIqVgxn2CkC97pN2sKWo8dK9
DABOVM6Uw2tPVmzuksMGMQBNqZpDsZGawGnVdYJzBV9IJLi58lHjo2gTturBhhQjAdsh90jZsPFv
r71yY1kXBtiqFrlJ3FztsqI5onpxdLhcXS6Voz8keKtj9Ta2aRqJQfxpikVEUtNZku4Ch7YcNgVi
yRn/zsXaPspt5fphWWbKms3jce6C3iM9zmjQW2xP/f4Kb3UpZ6bAnVBiSfV4+VTQciL+i4HmlWEC
D7/j7IZy2J4aq1+syNZUIHWuo1WE8vIJjF3gV408xph+3ULAbcBVBvQwD8BajDfNvp7RfURZRb96
Z2oyqpHbUBt3kYt7BRbxaj/XXCBq+7spYfX1NL6aGJaIGySk8rxeXO9JtsluSoz6uOSVlocI6kPV
nBBtPGaNvvkvyQwF94ZtZgz0R8miqzCE51kugB4ccpyAplxusb568KOvWEh8z36n0u5OONlyGOL8
t+XxrjaC013/Dk8GgOLuVwrpjdgYikdLivnB3hVuN7BYEGTgMSoCsjWikrEpj23z1zHcBAzcsEWC
EMn2BTIZBv8PHNrWmuCwbsLN5vnTiVl/gNGQcLRHcfrsEx5IDeART7tFQuDmQN/det+9lOM7A2Ia
hJ4L11Pv+s5+sXSmUhfuHtBOmOiDX5LzuZkzoBM2q5xLfv2behFx7Y39kT588tBNZ68xYki3osj5
sOoYNCA86y44Aeor9RsUGrL+Y8a37OjrkN3pTkL1h1FPd8HPPmcDv6Nu8mSIqVzGnmPVng2yOT38
xhmVlvh69WZSSpo3N+2sGxmPZDkyiP2YqkWNGo5bwcx4YM9CI44xZ3ghxHAgVlhy/72yaDKpyh80
OPkTpCb6utKRsoReuzMsr9ArykbUPPL3selwQYb0jCdTNvTwjjPk2hW9saKnmxA5FXt/Pe3Pw6BM
3/16PT5OmydRvXiKxUvGpqwsEBj3tV9A/ojQPcRKI3Juqe5WZK5ydThRQyKxDLX9A/GZ5mLKeCxb
A8Pyzoj+Laz44mlVzwg4RPbRwd4AFBkYvjZ5O6yZGhpKQ1S8puUTap4ZgNcd/gtFnAFCHsnPAkU+
0RCHEIcQdYgJGOTQ/9WcOPlUY2Cl08o6AeOY3CICo6C1+/ZovMyqzS1LF83Ibfw+VQE+hTNTHbGZ
hzeDBSi0EHt8/GBmz0WFMwW3BvLn860JvsFQbpy/wpmAkQR5oNW8W2FaciW5LLi2rMBHt/WaCJMT
QfzlqtFRf+/3eG+yYJjDIftV+1YZBa2Eo25PBWXuEOSIMKiTMbf/GxtfiQU7i2EYyIi7qhEs+O0M
7LPdshb9yFpLqFdV0Nnndmql/lN87yRxr7dEun9kOOYXkzjr8rOeLwxvgAATssiGPIcJbwdaktwN
rNUyP5atVYJu32INZwF5V9ORWtLmO9PlDMb36Z79lcKbV2xsEWaGXgj5x2DcBlJA7R7FRtEXBWX1
GySlUjkiaWd8FR9R/zvcubBfek4KlifOV19ZCD2Mhb9iCg1gmhMp0pCP83+Kw9s9ehWHbyMV18zD
g5EfqzUauxJEucFx1UpejK/79kWUJ8eGmvfLqgC1MBIK06R3QKz36iGHNCqvRdrLyMTXPqROCLTe
arxl+HYaZFfUNPUYf8rSTrmHQL5hk6rrwAmBpqGDa82X0FFMRCRHrOQGVNxdzEH45ATCxReU9LUy
0AR0ttKhfEq15OUcTJTqyfardzytURMRC3Qu6u1u1XcHQluA6PJZhvL0Yp5jO6egq6seV6lyIpj0
Kuve0rJEOXaH5dlDrm2aZtHMjiM5PyTSaooYVbzuwSlWw/k8pDNaxiahQkTlUD1Trc1TFYq/ki6r
XdnW7YL2/9QrpUdIkWNv+RK+/FYtRFVbJMchM5+TsEbfV3P5d6jD18rw/62rO+jeILX8DAI87QIZ
vDCINPa/VVPQ69s7qAA5HglQeBAhvA7WQynO4wGHx0U+SWok3JIUNDC+O3ml8R0DZGep4D5sbBgs
Ec+BKUpwtWi4RzFMG+IrWGAWE6oklrpg4uaT3klFzGb7IaZTTsXv5nAiJm4rMNEnWJPlIFHp5h5U
ifE4SNU1/FIbij2ndPJ866+gi/NI+aXpEUD9Ng3z5A5AdyfXgd8sPelWh4VPgOXWsfd8BFlP/cyo
61dzLcFqUARf6kim5EA30oXMxJTTCNS3hsHyLKKi47YA7igZpqCna3jnBtfmPxAOFdK61sGyv6sZ
pnYaU0zwG2RzajrDJivswVDtlkZ4FgY4KLRIYZYsaskaVKmJ7ZfeOulgIBkG41zeiJFC3uZwj8Cm
V+QCi7QCelyE7lB7scjTdox9P+gLGH19rmQQbVUHTgOokD66EQRQkdJkEzkBXJOLYLdm1ZwtTgB/
S4MNI0IB9S+xLwZU102wKyxNrNHBHn618bofbTkwQpRrYcgg6C1IvYMTIos58C13R7FKL0T1EEur
qxv2icUEVg8fswbV+OB7s5j6ukOfZQdTzfgZRGF8qmDj/V20BcphBjevCXkivrz9Cln/TR/ebz6Q
KuXH63NqahcG9QicHDlM3UAvY61E48jjoAQLjaTDnTg3V642fVgbyMDBkbLCRFVVCIMOzZFGtTFj
T2J5ip98ul59ZKKLj8fbSGd2o05IoZ3OW2VTLvtERGXeQECPQXxI8WSccdfKgtH12fdGZiodE3Db
Qo5bbe//Bw/OvgPjXruwlCavVTcMHxmhhgh5E6ZEfXurU6qcDS5MjL001CkYb6Y6xXbJyZxJEjgm
GIAhFWkntJgvgZlLCy2N++xPJv37u40XL3mixxBqKZNvuDjSF0jS61DQrgSetSfrI+GpKaXBK1bK
npsMTKAud6Ne7cDIGPDY5I3lZxxnZvkxsUY+99jFNP+iogR+fqyxsXpqUD+9aHIhWRJx3pAyy6CY
Q5vTom8WJxnnsYvXdYme3J54/nlqBTkyJYxe+X/UAc3kzfgEmoYLAIOKov0VuC9GNH0w/YzdFXY3
MnkFbbg6TtLfydEtj+IEzMjIcv+ZycAYm9E9QflV+3e/wux4ppbYUg4WwvRR+crXWS4QWpYsp7DP
Jogc88Bbfg++N4H2wS3L9G0M00fsoWagEhd+4Lp7Stg4kgJ4K53txPW62OMuPxtXb7lEDJWc+opc
1sE5+qEiEFl9of1LfFPxziHvTT6VBBZKkQVrEZpereFHwYMbDdKyk3pEJIYQztGhwtvF090WsoHw
ppv/Zx1esOZkxmqzPoUAll/J40qrz1yT3motJD7oxRL0OicwVemruE23MECtMH2bqBBsfdkeHSkY
VH+y1qXuGb0xTuIA2yQLMd+f8c9vd4Sf/owGW9eTJzwNaf5+/VDKkVA/Aik/aqIIqKiZA9h4yfNn
Yrt1tvyEMNA77KgZhPehIc0EuUV3+G9rMNam3e8hAXzOwVLbv0YTsjQHn+kXD8lKLzJoJFjvhzy/
Z298MtZac9J+mSWVRTLWutGdfavsLFfNbdcs7CmQBTJbysej+tDjBd67c6/gLhWw5pKPpCOdWOTX
VVQMi4pBfJj2KvoSqM2QEJ/mwoC1BIdgIporBe6rDHI+SNXfSGIR+MajphZbqYWMQWqw+scr2WvO
FhszpJCqtqt8B1NyL5PZLO4HYDxlufDrYp/UEjRYJCCGFUq9Bl5wiX8LzlMkuqwDBJB+sDKFTFfM
lD2Z4tKa/t+e0QKxd590dyOYTdRYAH2UadHh7gxEXQtDBB2P9XUjnPR1WX3ldrDLQ7DD6ZvOFr/K
nOyaf3Zvyjha4aRY928Yn5y0CE316yGIWl81XIAoy9d7BiWS5c8/BLed59sdYkgslUpnx/OJy3Ns
DdWrU5gEA/HOtAs1RWRMSXe8kbuJ1qwpZ6j7CinO7EcBKiuNfF1TCdG712EDKgBoADXuVYlKWfUl
Eg8cNgx8rTv09rVdSw414H4HquIShCvXej7Z/RM+/lQWV2xWkNU+y3MAHu62+eI+rX9FCmXiVqW9
leursCgYEHFC/uRklCPIkMXwe+FGk4APF9L+HPIHtatGK/g20dOrNfIgg9WLQaz7HQ84LnAY/DLd
zKOdbvI90QfXka/tkyjg3K9SDJSgkqEzMwYGctWlaIKisBWm68MwRD3oq9hoOkXfzd8uDyniFnNf
Zzeyu0dc5PbRTmh6rfAt48TTnjlwl7Fw1WlhWdmvtET37kFNTn5teK8dHbx169lqNjhV2J6BCzu2
18CrPVGKKvni6oEQcR7erEm51LY5a5A/+VXKvNz32zldHd3TNkbcNsT9zXw3B0X5qmimhrn4LXWu
y7UIZ7hKJJ2geednm/yJ9OFaO1PY2ZWDRntWOBqxTPv1gxEN+3Rwfwtbmqr7dX7hwQcAmwrW39r3
ST56TNelrRA0Ut6fMFF5iXFmJj5Xj84al1t0wn4vtrHJLzOWouaUyVhhT2OALKl69pblOP15HaIV
KHIwbkRHryjIEn1uPEJJ+Zahq16/zTbV3ZwCjOiu+4enyeRhQCUEKCHE6DrSCL1H7B8D/YA0da9+
iLE06O0byGEzi+xLtQDe6k7Um5xqtqr4+5JFVg3viyjP+M9fwDOkkArNfy1GxhHQehj3ZPKPCKbZ
2q5AuwOUBRHWCV3bwdSx2u6oM+bUIow5wu1CkWEtt7iR9NVybvgDpW7mmoFhLdy5a5zrNfPz5VKD
zCWjlOdwdpgnXrl1a1iD3OoU1zTo4szOQUfZ770g8o+/g83wxeOOewrV8MFLD91YJLR4PwKMd0J6
Z7qgtHARvMk0p9bvDsB8VY1vywxWbMbvqctXUjop9mGy9NtxbSKIZiGElbJ7BLxqCSh/H0GcYxct
JedPTvZjiguFB8oUZW8e+/mzCKT6zj7SeeQ7oTYtIiC0mn9/WxcT78EMaA2wkPfEfU9yMURWK64V
MFhQHwXEyi0mU3rf9YHS5tigIMKzT3gRoxaI1gsbvKLzvUGexWyx0jkABbms3zXgKucDREZvwspa
blthQ370ko8gHC5Wo2HS1nWjcUIMJHoOxpRhKZjE+ZGtWLdh2hAYCo8/cLOqjkdMVy9c+aM33yTe
BOjceBjjBFAXIsO5K9zEEYJ4aRYoYPrnz/ne5ahxHlKHOLwvj5yFT3VgeRFnQKIt5HaV28RkoTLV
utaDxX6Te7ktS2fGkJCg/5rWS6gwcoRtz78mkso0jIG+aaUoPnD9bnMF4ButJLqGeSYZTi0UbDnn
lXaZAbYYCgmNDZ5rAsyv7BcbVzoBIT63BCmro9YE3NbCCq5OP9KjcHUST0fjkRFh9S89Gkpeb4We
7QcfXDijugn7XRLe922vtTYNVyul2tsQKhD7TrDpvFztOo3jtoQ/9ODK5ZpW+JpDGvEPOTwXcOB0
3uAwQXnQfRhy+1Seh5fidS0cPqVqd1R+EMIXeRuYgGlasX83H8KmTD/0CHaIBZEDAZROE19WVhKL
2zhJEVNG/09zbyy6Dp3VKOkmOJQbs6I3wsnfbDp7BzH8UmKLO0sA2E4ZTbMHgI1Xo28ByYiW60vw
yiIBSjE46oWODC1v67hGT7HmWqEj227OUWZgIqaOvUEh1W7DJ85TqdnYtFoXdU3Q4GKMRNeTVJaR
x/aQTa2H7U6woduoDs5QawHMPVCR+OymsVo+nadg2RpDfCxQvini5muCQh0BomHI7kGCLKfsITae
wrPUJCaJnw8I7eO0x+qdFwtcWfmSXoCLzU4nIemw3+WYIcELVHZLexe451rzy7kgsKeOaHLif+w3
kMyyMocJ8khjZun86n1byADyqcTdn22/jK/Jwp8XPMK05SHhvI30NLW8kic1A024eVoPPaiik0ud
9MlU91XdoC5eEH1CB7tmoPakN7W2+XmX53yoV8buQ9h/Zs/gMDsOLb4/mMNSWOTICzD+rRILAc1u
PhZ8bCV6zeLjYrE7tcb3mxqg/oWpdi9ewOMFk3VTn0kMGi2d5sRgG9q+v3dukbv7u4+SNR2EWdhS
9K1Vijd87aQ9zW8hvqVdzQGkO2+zsfR4+WLLabrKT+U0+FBBccoVchhaMVHDOShTpnfAZC1Jh37w
F7qQFLtOggS2N44b0S2UA/z8AnEroPC4CD22E7SPN2YJKnuMXxcw3+6CqjIuYE+WxV58tzoYuz7z
3wjB/O6ugD4568uo+kDAQslPSxGPr1ye6hEO2ylgiwoof9uhfhYGbNyuveDs9b+8uUEISMxMJN9V
echrjxqPL3p2cqADWK8Og37SWj19Yx/rXvOiq5qftZgzGvI6A7R3pzBmxG3gWyUbNUfYKbCrdEGe
EMlzUWwCIXBe+janPKT/kghxZGSrGtyxquPkghSXrIet9lItpl9EMx6UwUMEaNaSMFg2vuBYN2Ko
+XMK+/ufdA1hj0Chiz2c48oV1MOTjp4vIs8OZL6OHmLTkZM0pkhxro5/YP6BIB3R/lyw3gkmXWQk
gBI9dJ/zkKaAcnX3EsH7d4n++f3CbMKiDlIgKZE5x9Nw/G+AYwkvqB+YuG84l+Lg4v5wNUP/2h8K
ZL6OWFKHfyEa61ix8oj5ZttxIMzw8TOMyMR7F+3yVN0JQReN0iSIty/zuIpLi4GGfrcEL5x0758y
yCUrm3bmcGSGrCgvsjkv+7TDJpwryxi0Q3i3J7ysA4raKPyjXx8Ue5THUUm8z9XVjZ5IItBU0XCe
mkp31q8C6G3Kb/0sX5sN40D/1qr5SveSgbn65fPly5Uzik/aNgB0GROrTbiejCRlqnE+kzzpRvK9
0DccrtUG5V9AQP7ewECCS/sjA7FA9xXo+1t0Y3zkVlJ7Rq6kgiSULAAOeLxy8U0pI6PYQIvvGyq8
hbi/MQk1BR6Aw7H30vOLu5B5zEsnkvB+iQKZuVFgP61DaZ/vKhVL2jty2ThY+LeEVCoMnd9GwK+P
5HmTQzRrSx4RWFv6I0cUKoZy+WGHpOGk1IEBfnqgMKJTWJmJDpZZT2sL5nO3nRLWnY3oDyQoLy88
HNs0EA6ScqhsedONZ92+G/LN2cmBuAzbKBg2UA/ct64SxrodCFoJn77vxDshLSl5y/OYBvozaK1s
GnK96iVUteY7lJhKwoPbDoBClVLJtTd6LZRurd3lqJT1mHkdGuRE/YJQ4EIKq5DpEyMhESsXeBhS
C1+zxpUFp2VxuGapvv1KxJ+fOEc3uUsALhHKHTDJrpcteGppzMdPwIWCTvwaig9yQ2cpENY5LuFR
60CegcOkWFlhrN4LFvm1MXvUuX1tC2zJH3OdCb3YDSMF6+Z8HTCldpujzbZswfCR/7taahG7OM8z
7GMVa+YaWPjMZYXVU+onYqxAy0X++hu9Zbgz+rnJJRFGKpPKsHYf1c9v0P6QfxANyMPPn2jVmYHU
efcrRSoUexgsXSkyJdas6Ma8KeHKiQXH8SW5EQ1zCDzofbJQjns4TQTAZCsbW8iO70NrUhdhzBk6
+ANIxZDCXNaGwh7EzvG+vShzcIfaJ+n6AxkK1Io8M8euEDtrOYcjn/oznaL/M9QEflZ0gKJy8gxd
7XOSLbTPwbDrAU/eZLk5O6iaELtf/MbIj4vhzzEP/AZ5Tvf+XlqH5xiRGozV9t5H+A0OHQ4MlWcZ
LMPhovMZvD20L1T/yr3UH4rTrocm39eNGVXhLxRC4fmHmCFMTjGTvTQ8vZcQ3Md34+y6bfqkVlZc
qawp6K6+VoZvMx9ea0/hrXXfiNSTo81CsjYPI/3J9NARXSs0Olkn2zEdw9JNj+gyktoUll7I+iTR
1vlxoMIhw0au2DyMkxcI2e8aXlMjkHpSl1dUAYMUHi+3MNAlX3zv6CetKqsWDOYkPDTWs1G1Mu2A
ASzXO264NMMr8WE8tbxGpwh0vIeHb4vznC7Oi+IZSRN6c2zZuF+IHBsmldgh3ZXSOf5/w7dRfpRc
bGFvRKBxA+PlPfYgCi69O51deRuMn2zL18C1YQB3lZ8O/m3No+liUe7utyvEr4c/ZgLgRoZiiCKS
Yj3L5hT2bTKvgf5Ud0dudDeHvUqZYivZ36XDt68W8TyT2e72CEotNkDoWVtzemlD+MIeMOy/ZM1r
N4EwRkz3uK+PRrcKv/NhtAnKM9GsY1BSsiqeZTLpKwe1Ew4gNH5mA5iMFyABy4dRcC/1I/7IA00p
xyUTfeXT2EHdHcXgh8BGMzdUNqOGmp7vpg5cPVfKW0yNvWw2jpT9ZFxT0VpdAa3MHhPniLJ3KjT3
K3rdhD04id9pOo8JDo3BA6ztWlOHV8nluJjDg6MkZTRMgnH8Z5k7P4kxDnNoWETFqpTxgIZef8bc
P5jBGioFRme3Zs7Icb7wHvzZbnLh1m/SUNM5yjbObW5ZWxRuGpYl+wfplNHcvnBlJmg8W9hGpYL/
8jI8Qd7ytDX8SOI+Gc+HuUdVKhR4FsRCivhu+3Da+bsKwNIYT3XGg8+dze6htp2lGUhuydmtWOl5
WgD7xMla0cXsz0UrE/CKzgka/njBUloZtfjbPCTAjBt4oQ7H5AWA5JDFBQ4jxWgdFXvsUYbWSkjq
yofgWL0mTluTmyN/F6QF6C8VqgYUogMOdlRkNwjlBjqnjzMMCrrPnhQowy0ku79isvmWLiuwbikD
As7vsjFJYHsg8rYjAj84rIvHX2rByPPxssVd+GwXdmzMC3fisQt62u5V0a8dBrjV7w6ea37rZgZg
14kqqTFqhm2ZRTSD7yHQDmM8qjMmIPkHNZMYLhG5wVdR9DFoHasRRJMe7e2Mpl3j/K7CCMrX3/XC
XbB9rRR+8M1K0AMqiHkhOBHENreR78OmpHeFBwScDtUtWJzZA6TVg0slX5lYRI4S4kqTnTD5ww4y
r0pmDUAaRhcua1N4AjzzbySkf+LC6TG+TTH6cow0P3i1q7Agmm2AlLeN1ss1oTkTPJKK8p7eh1m2
sV/fFJ6FGYuAjLbtpqgwmTGWGgPjapdp1xisnfZ4KFD/7yqwT98DvMj+PsVEfpsRcOGx/nIAqETZ
M21WAqRw/hCYqYcYlnvW3zC10yuvdJ6C1BjhpYGgoqO0Nmnq5AN4NVPRv12DNqfB76ZIJzr40O3Q
hMvAUETCioCm8aRwldHyaZQjG++XpWIZGFn2nf1FORmI6woErIXuk9trb9Oswjf/EXNpR0V0Q3ci
V9piT9iTopogtXIGuJ1YpE3dqMgloneBaCOFY+G8nW492WMuQM2Arj+x5k61UZ+8AjEQKq+fmmf5
zK1TOufQqTwD9SoVIwwo1N60U6JIFmosmYaFaQpWij8jQ8fJJTC5t6hHIRTnWiqbbiDA56DfdIP9
gZfPQ/kMDbTlXhF6AeCoj1ReaNmPNFgBBOwZ3d9A3VgwSLg05lfPikIT4QrewVwB67X7vPIeXkT0
xjEyyoYqw0K+A+OG91cDXhWAEROxqost7YyhzW5m842c3ElZnTNaLbDS+yzXpSFt78RoFFAvCtJT
xxwV7WCZtbDpXBicB1ugVXIVpkJtjyminQxbkAfJbLv5bA50vaMa61bLWTXDnqYIAGk1OwPfiUVl
89KLZSVK17Jlf4kvQkN7Hs4LG3saaYzWK3frpudyS1Bxz9tx3cL98LzrubGIWDZSwsRHU5vHYMIU
ffboXhICjRXsYoAwetPic3hj1p0Ar4dTzOSf2E4hKw9w2NNUeWcOZ6bmihkj1KqWB2C2vE1Rhdbj
5GodugWgNXUGFy8WRY/yPJrnNuJ1pZgoH18RF2ffVZBukReC61nOEkwHKj9oT0QO0ZbhCJ9OhWCJ
OGHXaM36bukvfYFO2xtpXb+rDq0Qh2uPftOoayX7a3iAkHjIFwXjkPztRcHJWU53VavMX8UYTjU9
3N9S6iqtx8ngPXI5X4tgppzLBiJ3dm/OFzmG1m+2wXh1Fy/IdEMDJlFhLwVq4RlPHzzIMviqU4Ho
eAfWPg/i5ka+/bcmSbbK/p/cAI+e8WjtO0MFvbXhsgEPbpVGOFap7YcXU+B5VJRIJ3578ooYUsEX
2q+57btLFUuaKhCNgiGeu6g8D9s7XsWtCa+Oh8qcgHajoMsuqo576KpUtrw9V8dllKYy2wpl3pXA
rZqXdZwHbXMuR63XCT/jOxjjNUlDGDDQRpGO7mj8n0H6/jJaqsqPE0+gR5ou5W/7RexDuGG5L8BC
0lfah5YOiF1+VKsd6+F4Aqq5KkNBU15vRbL6lr1ifeXyRasxdl81gGO+GrldFvu43UTTKMN7W/PJ
UkGAMxT1DXe4KQ1vD8sR3wZBwW2/CnA01PiwpcMfpz/szujxt+2C0iFz/G58TF+4V2i0r/ZOEzd2
SrnZ+sGhNG4iig8jOHxPKq6PIQyhlkQ1GtqnU4w5rcrk9ReYak/x3IVIQT0uclJopRkAgDJP65AF
btCWlAc1rKHsxmoJlPZ9pLXpUjvibWwXAnc6ePcKUASbBWdElbYdhcIu9fxKWuOuv9lcApm8WSac
JSDqRO6FeQu0z9zv8VO7p2Ypcx6ex1vgcp5fDMCs0JbsgWur+u5fpJpxmudVAKwH7sMnOhNCvfdm
VQ2Sq/FTW85mGhxFlnDOAMabT/9LQyedxgczgA8NKgInz4oEO7eHUrXrCglnWdbghIJ4Q8sn7b0i
OEjwgtFZAjnKzqvdrT9ex+tsizr6HvBzCfjf+yZyaqOAAWxguqm48kBmETi/AUc/Fk1tPKTe9oHL
1Wc3YcBaCTEzvZ6tTy/TjGXL4laTdbPN2iWG+uU/XS7NxxINc27Z7OdHjwXUWl8oNA4hiARBfzQn
grq3Ew01K556Nx/XoRybdkE1I/eKGieI4bLhSo0L573Bkpe6DVk4WvylXdk1l+xGXqDvc5UPRoob
hl4n1XgHT7+TX9G+hQiFHylSkpEyV55BNaCsbDidyLxhZFcIF9tNdBgMV12eh/W6//XBDCi8yOYq
z1lvjremHk0MrpmWkFZhAUaRuxMWk6RuLsv/wS2z3wNCVI7EIEesRHZsFybW4pIH8/SwWbjTjljE
K8poKVVogK1qx3tSshePFlJTMKv3JLnB9kL56emRUmFRnoTjNlCMTmNzlKWjq99iIXU7bOArqOAb
+nnY4GLJj+Xy1CXxhOsWMoqmRaHW8VGSDeJdeyf4rttKsjgdDGdE+eqFdRgMmRu4GqnSM2TRujfY
P+sGIF6uhbqAQUaqmQE3vvPIq8WHpp9/KJNlVElnt8MYmY/weacfl7GNCRybXsp8JSbsNdE3Rnto
ALYolnfzBWpMVOKfoBEJ71SFc5fwg0fi5xg8i9E/L/glCI7DhYnxf0oOatbxcw4pVIsFSw+l509/
mciyeWydNf23iaBH07hPCr+inGM/KuJIxt4TXtm+RmfqYddMPDCVBQi7pBKcclzTeIhyK1mvOhoD
qEzyhLbK1up62Nksw8MFwEzZjAqfZDAsQSvl7SMSPcah/BDZONaOKYxduvyhvY94St7/5uuASeya
t/GbauznOM2SDM7HyybgjJHJ/Yg29riHT8oGmpRA4KKCpW8n4iCh4o2q4vxuTajV0I4O4zn73Kls
SpvSzBWkypTGcRiA0bipdFG0ZVAUIHiYyl5BVm5v6862h8MsCRy5K3NSeVblAdI9ui+pUQAIaLTm
fnMdMNzJrUbXJ/4AXXoqAkhqnNJc6bwmz6CzYEKr53BBvO7hueeOE3VCJSfj90dU+3xGFMWyiijd
Rv2K8IMnFM0f08yaefUDD1xJtw/rUK0dzKHgGtHSuvur4yp91+itUWTqc1B7veUOzjhk5GpgxJmU
6CoehQ9I7EPNeUOZVXfcLGtn5D8zodynXGuEZRcLG4YTRKBjSx4c5P3ic+mpY0NObraBfukMkVGS
bIZiMNmg0yOu+DfNIG+6S6KcyVlpHn08oCG6yilgCE9EIRFyREt/sBu/vNN5a9I2DY2e1EXbhDgs
NIeJpBYs+vi2jMpgUVp12VzDvLv8nv4xsbmgVNm+A0y1H7klY8aM6vdeVeFEGUj8PpGZUVPofjCh
nm854h+c3FcbNwR/JsOfoGZiLBkz91oMSG8NE4OthPORqBiP/wI8SrYRGXWw9ZEywMWYw1zRcew4
9ap/2yYyqEnHWiuK1Oc5kx2Q9eUnuFyxRRsfSz9NaAVisUxZdCe/oCGVkePeSsp1i5BkYjV7qxqb
jeEqXdxoDxVTLsazVead/7FN7DOIeE1hsG6ziw9PM6mrNLEdXTN6MB/EfRvAEzehPb9Tjty9+lnM
SAAxKXpTyUFoU2SPRYltU5DenREaJYXRa4razgXCgwWeUdhulRdvH+FP55/vEovEap6STfpJYgYc
SD0SFBZ26tbGRF1d4+s/ml3N0TOz12UR55yUCW/Kg0ltnJIW6JoHYfO7TLmyx949j+aJrt06DkeF
IkFBkpGxq2Q46HbMf/tqlvfH/IuLftZdQG7dxeogk5Y/ymo7dGHjDnQdCWZlKbhYzo9UsarqWB9y
0Ikq403ad1vFlqW2XlQBevVXezVq0h8Mj+atv4nndtQJ2MVTKzcg/4oZA+SBrMk7e6o5Q+LS7iA8
WoRKiLBfl61Cjn8C/XUua3uyKNDPV9ytmtycvEdg3c4zAoRsX0bA8IiqJdtxyWrDv7yc2AwrykWy
tsGjCgCiqXO1SwYUbhx9XKiP397KgcLTYovQMRPw+dLq57DrVEpR/YszxFv0oQsJkT/HVAmdSi9R
S6C+D6RqKclKGnAd5u/Gs7B+0pfxReM1kWV5zI9qAbeKDXYidlSwKeX2DZF4yLwpfHPDnfde753F
O53J1YKGkxqm8gazcfqjPf6h2O+HZTs3SI+/bRpfJl0jEqiJSKt8ROraTCno+S61OXSZX/WvdFUr
1+Vw5Lyu8TE8pfB6xig2ZeDWC6PZA5C8VhFkQWsMGHNY9JKoHSR3/cSEEY093LOhE4+mTODzNAyL
W2Nsez6UNtrfuVU5qpcjBMKesQV8b5iKjVT+NRDQxfZCvhJ7j8wc8X7+Me1IeAjm6tHm8SvyGXrm
BetoTdb++SLwBLjMACydqMKfSCiB7yMymteSw6/EGqTVUdD4irrtmS1z79S1HOgnfStcJt7AuXXE
dMQayvf/gM1Pz01sqD7W4jz4qRtIBP6RB1eWM9S7uefGJBkM7dmfWG+IptofInU5T9KD2tp2H/NP
Fi3/ETxtK1cN2Rorw/Wq3vjwwI9wYtV0cTzuD4tcevSSg6a2ZJT3d72lf5mYSuAIaFONT7dQsqoS
agITcdtS8I3dwgZTBq7NUFLypKfm6/85IW2rTVJZPj6wyytoUmWo7OjtgK3VG1f8jT8VtmL4Z1pH
h1/90r6f97/gw+ov8iCgddDWMiopEg+XtoqqHMqBVvtq1SvqVqkeQcnxXQw4JQgds5w02IdCsG3T
X7ve74+XXGNu5iLmXRRtGtTqGhUrr+NYqCRxqzrre+QNNJirgYnTpakBdFIiDaoWefs7pcuSjisM
DJnOtsJn85WjB80VNJ3QkmlEyMBDS5GjW3Z2qZziudvC7llkpGVTV3RRYQd2Wdss8mcJXSwQiz70
Cyj4cjThZgugRZPAGwI4T7W5cTpqnnIyPXZhuSOx/19/CshwWRgaa6EOqDI9yNQLqXskOKSLrVR3
TfeGI0L9rys8o0tVFMmJ+i5wurgvycA/R402M8VD9pb01TqvgpkELaKjdB/6MWxMAG8ZmBalsrLC
ggUYrTIhmHuqCCUm3T3F8xFRJie7cetEh/6q+IB9NGdxWAOC7K2ATo/w7qJa6PSdzIAWGge9UeJg
Q007re7+MTnih3xNP7lPPZfnfZA/8+73Grljg+kmEtqErdsNEC8XtoFQ4GHs9YA7vfn7SeCVYxTz
IXBJnvCcoQzbRAZVSnsoITMAFXbNvUxKVhH//6amUtPe6n4Zm03WfBgh3q1Fqxw1rGbrem3pxw+m
IjMW2f0SA/Kk5tI2eAvZZTgeFgXnDtH47DSVFGvdJeP5zpWA6uuNG+dO5ybS1wwricoiUATsC/1a
rPznCjJA08FyVZG5BLRXwhuZyoOqcUeg+VCA7y/nG+IyViriyuWdwqF65rbZkZMzkzTm1YAq6kSY
x1n4uMBshj0cI3w9G8X1tIA+AFmc+IrHz/LBX8Sr0e3zlaSsqkOI76NGzAcE9ajqdy9JwZHs2b5e
9Oh1m47js+JrunWytu/4XSs7432MPVP6vOcyrcSC4/tS4M9TqKei9dMgOWSjT0LeDWJc+CTni6Sd
lFSyrHAdqj0gtRUiQA4S88IllXL3ZkT8L7SvFE6uv91xWAM6eiDNfHFGi27EhXVu8X6q1feN0P4V
wSiqyXf2V3SVy+k/vO/cz4feNYpzd6zGp8uS7p7JbKxmU5J4bKVLQnD59QOPnO7joPM9ZBe5PHqd
DadyjwUKd+W8R+pkpBKUx4SrcMP+GO3GyOUGuc50x9VX6uiuSyEOUpk/cYgG2fKz5FgsUpBN4hUj
jhnSkWOZzZPn3/Z6SOwfbh1QNh6zrnu/+Ta2+SoOGgVSADhs49pkgRYUlLRfrMbPL9epNldqSKau
B+vubpZZI+QCCuKflprWb+GUeDZCoOkusIB+70ShCfAK+SIxAnjlgRdKHp0KPBRBS//YCt47WJT8
QgiP+E0r74mMJSPuXv4zssKSGDutDlWeowezquvXiOiy6fjplKL4qUmV+QdDOSBU1dHAScJfXsHt
YGWOWFT/mwIBvUd8EXGP92qzryG7O9X75OLCTXbFcPY0ptOmQfbL6hmnuBWp6V/7dGBmRV0n/1TS
CJaZqqTLFtJzBzp5Iv/TpqQR7pGS18nc3AZtpyVh665PZB1Pg/TGRptrPGs2vNR52xP6NxErthyW
BOE/n02DxHj45XjwHRjC7rrC9biOGyarZTFLWv4VUipBngWm60WgRutHozNTq4sumu3mC7bo83Em
oLVQkQyAYlW+Hs36n8hniHKpbyECqCoLAzwY4yAPZYz/wglK9b/c2/oDLIPYr2lbOSissORlidnU
ZVWUoLO/bfxB/cOHZrZkDTxxx27rwSwwOKA5YYRTegSmmqLhFCLEmgJr71PlEDbz6X0oRkbJb9oc
WZXeTKvvOtbHzvTSW4FtbQuMolMvVU7UEhEh1PV4sjD91a/9ULA8AsEKDFopwcNtkegPacvhC9W7
nN1swF0mrQ6wMGPUa5n9mYKHS6jB1Ga9JgXFcp5yzhJ9vfmAaUXMp1Lji3LgAbHcwmFRYJsbO5DK
OuRbKDp++8KG82fV8PJtKeHIRl3E1sMTQrFXM5S2gCvqHIrplZL7Vza8+wrrNYHNbLC/GmmmRgp4
cDcmDDQUB1ni89tryeXqRgRWgJVsDBlB7QwvA5ALC082REzl825jQQXD9ZsZepu3NgN3xYGOnkR/
38cWiV3m9cxJLgydNPsWaDA/t1EIgjuMFinXC1VV4ftvLwRTf+vfJZDZIOk849CuxE6E0hhF3tpC
Jp4lp8Q804HP3C3YXLUSaeJc7y2iC4b6NTRVSjYdeoBvQInMX57m3TKV1PIj1a9QAodH3o0V2w6b
b5/s7FGr2zU7D9M68ogD0vhut1tva9N/+cnOEE4WyHZveV2W06SKR77YDk33b7II63RxHjJd2IZk
R/gp17tgaoLErWyVZ1HOafCkSbE2pf/mMBGTBvsEQ2Lbb4E0T1hb2ckeDoZzO3NXnC51f5yNeVBT
8g0ov+JM1JxgT4R+a8LhOuJ8LWiFtT2yZw/rON7E70+Pi9caRdLmSRaZBIAu+wVj6gZiyUBPYf03
kqiw4iZx7SLVMzWav2yVsaDGx5Zv6o8xRVwuHUpkmED70mc0t6iwT7RxTvkboR/dFyUk6Rh2StNx
Mz8ScK6wrkOuu686jR3bP21JAgIS2uhsaz6K8E3X0XYflEI8LEIq96uPh5o/KSRYvdS/3sBqh8rU
XLfFU/4oJdNnUb4ehsRvfn8POzcXmeQOJSNy0vRyQ+4rQwxy7CcSU7aaAfeW0X07ofN288XsflDO
bGN2DBWn2AjT2ylNLyA92kF932quVPewqgEq6JMDkKYgbR5FuPObT+Xpbcvn6Vl9Ew4nyf1gOqwt
TE02B0qfi0F1kzdkbU9JaXVYARAuUkULJA+Mzp4+8nI9Edlrzyzn+FtO3N9Y7tfcbxkUu0Gxmwp5
P/6mhzLfIzRorr96dsyQ1uJFjXYNERMW4iI91VwIds7gg/UohNRqx4rBq3QRp9KU7QX11fW7X8Pa
PpgvgRXf8bAwCNgjwpPn7tPdK6UCdjWfDPZ82VUMO7OOfaCkmKgSqP6Awypra4n2Hla6hBv21b8m
ej8atmbUM5tBMVn4FCn7ZavlcpiZFRGcP8cSTzmR7X6URRRe7QvepCYXtwhwxTfn2pkcCiVRrSXw
XE10K/LzVeBy5OpsuNJYoCyCNowjk1pp1K5M5EJhGYfl5bA4AbXcEEp9rGnYQF7ZU4pGxvjBF+Rz
tehWYIyVGWGkkF5lzy/yna+d8PuouKd4tysZojk+YPiaDJ8cSQIwW6GfJlLn5Y0Rn+MPCztBMLlz
ZjCNyLm8zlHWZex3BOQ+Sj1HTXO3+mauNOCBv9e/qVodeUdhk2tgB5ztiB6Me3iY3ug259bB6XTk
Qjc9ZnxzHrRexJlVKNQN9YhZHbXo/d1YAsDEtS0npdi9cSa+qlYV96x7RqiLKVuJdzBFvsLaKSsH
6JT1GMuw1arLnJRTWGwcNIlPUmBjys6fSnspOSTu9Cl3njnyALMNmkJc2k/VuRbP05eR5x6tf5PY
gXez11T9p6/WxgGisLfa7/p7LBa1n8Y5QxKvtyW7CdiQev1z59EU6C6x60NBFv33jaUVbiMleN3l
8+qqJohQ0eqJm93LwqTjk9+mQ8gqtRIG5eslVZ+YeTygJuRjE5dOGxt1kQl45SvhX+RWOSK7ymwc
1FzlB5jx63YCWfftbIYmgM2WMNYiORBVeZtqJoV+gIjTbhP93QnC8mWWznChdlGcyfydsLLT4VV6
QiraXDSuKwrFjrxIh5lK88ay2D2kj57qqqkKPAs508HOyM1a5dyPIJyeAOFOvHtyX/7CuZPC28oU
e3acfPIqH5YzVvYTC/4QVCqSzKj1Mnu1RU/e085uS/5i2oPdfgp2/zuACXFI+z4rGdzpQOdCyZNK
J7oe7wafhjkf2HGC24abkFUeo/TEWzPEdymwONI3nYdUupQ+09lots2FBuP7Cf9O/dilLfKLq+ME
05i+aAMWNqgjsMwDCD0ZTp0RzvYX2GCRPjry8ADMJYDyqzJ1YGRQmK4gfIHthnvft9VQnyWnEiaV
Y4QOUuo26v+Wqw4TJyxLuMyPVnCnLhWaQWlGfmXDi7/GMn6fNCU1jzem1O62E3J6l9nj9bHoPdhP
rri3WThVToqUJ24uuiwPPGLNGPXndZ6JHp1+RjlVurMIiukkVr5VX3FIM7wPfJz99Ve9Dd4aiqrU
R/cOzsUFe+gR320RWSaBzS3B7ztKEdHvSo6yL9RPzdhIE8KWpYybW5XP/+6ROWQZuQDkVSnMJDhL
efjl0wXcM7acpr2+/U3+0p3Gtb0NRvQEwc0nla3cn+IhNqFAhBj3sZPpQwtd0sUw5h9LJEvaBPQD
Lp9YEqEGjjLNLF2lz1rA+Q1M25q3i3oV/1txEBe2eQARy5WmG3key2gOfnYqA+sj1HBrVEs4xrSS
x9PW+aDllpbFtClIov9y/Pm3xy1Zg+j/tEPYh5NpCjxRlBK28GxFVb33ocPLIrTRzBnyD507/RCV
O6M76Y+kU1+pEhVhCWwy0fvM8pFts22SXz91HgPqXSyUHQ1dUdPuYJ7lllr3SjpeMeoSXfLrU+I5
i5Of5WHqQMAdHD7XcXSUyc9sMrQtjj3nkqo0tj8lIY7YTJAPOcqjUzyXj5wTvQ2S6DC3vz+OT/b/
qnjcU6i/TujJc0czScW9fTs3HGQjWGB7+kqqU5rVOJpp2qNm7kc0/ifkVnSmcIXXTIXL7P8WEKGc
pAVzIgxbTILtnT9voNGofOjQfYTlidfR2qkmOhpS9kxkrTNecBXevNqYr5bKBSciiNkNhC0IC+xp
toOTAn4MRapMMa7IusVsF94d/fIlEf2N6u9BA+XTOXDCepXjv9L6CZFkz+aTn4EpfSUeWgBl19Y2
yC+SM6edZnn1TiLMtvucBRyB5ii9r5YlUgo8qmoFzU+huMBE8uWzfPzx1NlK0vwWT4LTsGUgbAoT
Jzn2cDP6HcD2aInC3/ESzmEmuew5nvRDGVANyJHv5gJiBsB2Bh8sb22j2cVAAeaA5IN2/CoDKfhS
JlEno/mvfBTf5GS2PI8vDG/9+gT6fozDhw1ggZlcjIVbI0ct/NNt1VUFdv/gkS9lpuuh2yj6WTVw
lVj8YRY7fHh601ReTE+zsA5fSdD+oAvQM9t4+Lvf960DrbbiPLsS84ieG6dxv5p2ZLIStCehiO/n
gx3nzZgSbnKtaYIyf23+9BRietnAAtT4t0fobPC+924dNxvwg6FPQGHqiaatv9g4X9XR5Wxr8Gwg
zxn0o/GYZnvoNGMxJj5Y7brK9OSaOYr1Vrxk0qZLXt284iQGt2UZE1mCBpeUd6SJFs52fPbiwPnC
y9v0Y4q6c08bO6X9DpBtCBA9GAsAqJbMvpAUmDrX+gxQEbLiJ7R4l0AI38lw7Gl3h6iz/79lI+am
nFKWsCdSbMAJCMtlF172htCMWoNgx5AoJkaxduBzNwz3JcbC9VkbnWh6z5hYuzg//qwexw42RyAY
ZIvFpIGVqnOlWKaO/bDv8sNZAUCHzL81kaZ7b2f49kVHS+WRzyjHdPpyyRWEWGeyo+JA6X8RRg03
UzsN/NZduYfzaOYVhuNh08BpAj1Hv20m3PQc33/n600Lpy43CIeU4ooUJYAW1uxSBFXUHV8u69MO
Ud78zS3tgCUfKLwpBFrD5X+4zNU0/hOYavth72FIvjK4t+YpNdnZHPL2flZfUDFed/ICFPx9aEYL
/gcVgKYr3aDq73gZffQRBucG3oW/Azmwh7dapYRhfejo1YNmSI24XVyvGpFrmxoIBKhLQEAA6WOt
OMHoFVhNq3CzuP3NBth/O9R5HrpDaREhoxb6OP6sjrY05AlVAg1N3FsZcQ6v/UXzl9kSw4FVf5Zr
8H/BPOea5wYXyxSH3AysmXiUILdWLnqSbjWQpCiz9KHAfx8jVpiGnE3FCKLf2bjHlm3gFHN8k0ib
TJ9HWbzNBYbrqxWdylIrBOuw+l6jG7DFqCYhV1LH9b0D0ID1LAWPeXCwCBImQs4cLRO9BY6IwtKb
AmNQUdYQiFXkLeYAeL2jQM0iiYOmR7IRlthfdHno/SjSupMwKVjYdpcHJ6szJ28ejXhDOzLVT4SQ
VObRtzc09sBJLvcygMt8pk9AfIj7p7JC7gMdmTvwtujRA+go8PWIYLHzpCFr+tDicMyb9DTSvsC5
avzgSugwjI0YZ1mpdfD39Z7fDB+BPLkAVi/B/ZsVhMllncJ8n/mA254AYxXIVrVfbnsYxDVMltJB
yt+xh9c9rShmLoZjGIJ1ncEvsanMjjOc72U7FFEriPzCTLkgOELvESfmuSeqK2u+MWgmz0auMonN
uLdQIuAFCrOMTClzlzEyUyKyQTxE7Td0hoWchj4QkmgWJe4Pe1dgpKeyThdfUz+71vT/bSWvdHzf
VxBWfnw2M0a67LOXSBolOME/InZkqCfWpPAvqQMejsPJB3/f89Ah4/PU0FkBc4D/w8QO6r3jki07
Q+WKHpIg3hP1A3wRPPtP2rF5Wc9rfqn2n3bvucb84+7fm7exEdPyqwilv/q9QLm+ItU6le9VYDKT
m9PoKDgW0ifzP1x0oKvrbj0r1sXaTwFcWwHgrHHQGl+Cf3TDlHlWjjqM1O1UfUgysD5JykPM1n/i
x3TEz/ec6cQ27wbIrI3WHovyeZJaCfjxnvoLVe4cxQeAfZL0RwLD+fYYRmIRf/yeijPZJott0GcN
MlhQGg8ObDx4YC2b1XksAU2VW2iBNh7WTXZEWB3S1o38b90tH0/pXHahbIwe0kpR68KHqgYhyCiw
8IQI8g2tOddsyyFiXXN0TUqwdRhy+EpmIZ2E06SOrWIUmw8uaWu00h/DOXLynpCa4/HM2vdM96xz
P8SvHF2ZBZ0syL/3+ACt/tq2WfBSfvYEIb6+2rOQk7a7NYaEysbzArWS9v8jehGGZTZbMtYFWe2w
va4Ffb8qfGHL4s6VNSa018DOnctIM4VcgWIeWu0JsZyRS5sOUebR/4v06HQZknNQIrdsuyk4tkYy
zaAXif9J4I3mMh51U2t/OUL2ygF14/GsphT5fMKcWn4JSpRUQIPVhGqNRrTFUeO2RjBe/dd5cGrZ
EehLbw4bmNPwysAvhUV6omnEBYQz1oEgf52fNu77dLvMJVcuoRxN+97QrSRwfAy1d9/yc4l4kFyh
3sjQfMHfnIAfb4rKLJhKjqVjV3/N1FJn4x4w116kBiwp33C/Jgag0w3RSLLPHspNY7eLolKMkMn9
735GeqZxQJs0lmoiE0RJJbHo6MFtwsjzrwsELexQwOr5uHHpJD4WXVJFHwFqx9x/tKC7fTJmdz7g
sMUCjd3B5XLdj/Fn6fdmoYbk0a8rqtJ1zADjbPjbrtMtFA+A+atmVMA7UAGlhEzt6gtE4dOPAMnW
XOe3c+kaki3yG8TUu4BAGpzsEn9HjhCdpeXXpxXIL7z6DouXMxjKs2C/AH+lWLfbLMx2xUp7G5VO
d7dVQm5xHuRfLiu37pdJ9NhubRpGQ+KooML0fHidegctIGxzvhpDr1sd5tWg77Gk5qlLjflTHsGg
zjuObtfvy2Wwizww9CdxPwY3PwQmE8CDg+nVc+OUR86Y97yyFHaVhjDdb+wl49WPTGgEMOTtTcWy
HLPe5jYn1Y77werGDEyNgSfSIKoqOWpl4OMEAOxmTnqbo7jF9bFoGHF9CrRLEtYwe4D34HfCrw/B
h57sJeZB3p/TYBFIhQG1R5M9SYD0pd6PyLJt9MueKrmMEahZvfh7mrjwmOmoDQRKVjgZomY8HVG+
+IiYGVQ7UF6S/f3Li6ynMj6D7IrMYHXpVXuCtsG8VaALkizhbRrc+LaVpqpWifM6/fxPtoRvSohU
CorJTruzv0A+LytHB30j094ttuL4YojPrfLmLrRDVs5t2p5NQkLpF7+dHhZvnc4FD/ytzYBn91NJ
saYHmdpL5Vg9UhFtdHin2num/KJ574Xm9vXoacu9Tt58ac6gxNf1jogW46X08FAPDLJ79eo4s9Yo
Ldz584VqaxicrM3Dx6Bgy2wwCAiol3AU4w09X2+G3YuUkpzVFNPkbU2S82pRpqbiUbcZaKUCV4W5
jN2opyghGvpoVEn+/cpSfcQU8rbBeMzTvXdbSEuS3EWcpmzmIQ183MYSNFhy4rMw07ZJJX3aYEcn
14RG/RDoF+3zXvzY+vileaRVcUPDvBHqsYrQ80AjfEgCoyPqCHOD/8dkMNM/wI1cHjtmyVgiVCMr
8D6t5mTAEj8jx9UKUCQ/lxze/JiRqRoowvB2GtAVQIPeXSGLdMWRawixSXN8ImdFbWU6suCwkId9
7tBKEnmEXAs75gtGJRSNhJRdrMYXcZUn6fKvcvYIgmiU3iHuEMyM2xCvp2zz9zECLwfZbr/2cWnv
WZmpc+XG7fuHlnAShxcAMM19hcaiapnlWSK7pa9LVX899eHAlUNsOpd2YsVm2K4lxo7L9wMnOS1c
P2kErx74XGLcka+9ZY3Yo09K8sN3eQTr8bH8YKZWZ7iEjemwKDwIJUXP5oFPz46OJbTjlgSDQ4mm
X0dvvh02CiDlSr3PA211BP0O9wMAlK2BBQS8yYRxZm9lltBedrzDNwjZSxvhSZs/fKR24qiAZ+fH
YwNAIZhmqdR+YesFwyfrTIWJYBdDPd+t50AZotSz2iePaukfoqWROQ9Gupo1hEsJqXXx9OPKdSTG
FrVvw62I56/CQptiBHiu6rX3PWZJ6uGnE5saDZ92Du2USCOngeJ4IF4AU65gHgKUYyPBThWU9lWZ
KxMQOwItW87s4Dag6BBr/QEHjLxfkJxInReqmmMnkT2or68XeLXy9RrItw8oadrDCgqQxTKeTFUj
OGPbpToIwQVmlA++ZL5fzOXjCPrmF6fp6nNmtcOM4xIF2Hj+VXduZGrqSV5IT0vD9sEeYfLPwcDs
a9cDcCmEkiTdDHzbhSdy4vwZ5VbUxyt0E1nt2RxvNe2Cphxc4OuO+NXmwiWajbJBDojjrGWj+2Kb
mrHzdnSSPCrLwiI+d1Y3K9LRtchZnco0vjq9cxHV9PqOOdizTkklLlygX4qMMFWiPazxM9/lFE6i
Xa07SZWkxMhp+0MNAr2fJGxUBAblhxju9HMH5OJvcV1yNWyO0WK/yhHcvPmUB9LZnt1lgTjptcdM
TVy8wSKmwRcWsAM6uHZ9tVZ1felwfRwOVPwqQSEMDM+zcIK3O/gOOLSuU0Uac1ULywCIRFwj2D14
VXgwnFvph85o2ZqO5ql0QNhB0YYsHDODbe2JexHKGlJ2ir8ZMoPV9ePw0PNJmLrBS4xZwafnwzs+
9sm7MKCG2vXEW8ilCDT8Xd472Il8PTmMOIRrvFUT1CcTsL2Tc3snsmtN9sL0deVMIp9rgNo9nA3b
iIHhQA4GCosw43vY85yAq2w4Tm4/VTF6eWHlFNLCSuJad7IrvzZT34PGRfrf0JG6VyOZwiObQUhH
Z1RQ7nrSJ0ysnwhEsL9h1h/hPLYyfzWudC2/C9awZa9hvNEb7EqaLNcXK3+Q8+p0jEoGmsoomtjf
9+mHySkblLlWFbkqI5W5sg0x/XPxdl7Oz8FtmgAc2f/HRKFkifWOdqP1TwXo6kf93ENOxE8We9Lg
U2TiqugZgbb5tLoSNHezUtLCUCUAnp8Jhp+be1zH2TYw5cus2VFQTM2ynFB1AFHzgMLSOc++lpPE
QVpeJMoVs8jnoTgqGGmcHab4CY75rcb38DnsxgIibLhqz19SJJpP0vbTUHQopx8WSO/FOE7DJr5r
JJ8iIhy7ivsVO+rkJIyNU1GxkfVB3f7T3rrpJco/zzpOYjitahcHA3aBZiIAsa/k6kEDXvjBNtfE
AF8rZH/VhougkLYBlVPlhEZwtdksA4ACTSSvVsOlLfuKoHq/noRxM0+6S4SmR0uiksFtxTTMwMqE
GJdYZxt8E69aiRs3VhJK6xxtqogj84r/39P/aTaCNM/IWvJVW5hVmlm8IdMhyJoNpa/I83khED3C
evnabguC3Tos+mfUQxHVkFAzpCGW91Ni5s6PAftOkLiNRLotja3/54c/yy++p/bUOuMvgxGHwYDn
EBpIiWfvTpS54MM0U/lzBEH7WIsLARvFdOJe5F9vB5JC7bFluPC2G3fWqEy6WUJ9QupVKadc6VuR
CGgJEhnt7mNrlyARkkJ/3i7Y5gxMJVaafXa8R5JlaESG8ytp7lhevbijEI3n5VmD4MW6bXVo2UVN
51o1VWykUFgXfGPuUdfhPOyYZ7gZC0m+sv+ztKZmk2+/UAvyvf9DIhkhlL91b4og2/X500GY8i2a
THOuIylUDAY3j/RN8G8bjr+A240+emeJYJAi6g0JtR26zZ7hp5rQJTQOiSyYkb0euhrzlAwHUMLk
Vrat3OO/qmK4ZdDAkE5TewZZ4TrgNBnwGd70bl0rPEfFIR7ZemPkOoU8raH2zVF661gZQu33QPIU
JP8CLSBRqfyQz/9poVVHCSjy8fChuNbHnMbEOvJNLxI5DPEPYekTj3mh+ym5UuW2ctUX+jG4jCZB
vUFUR6QBuxFoDRhrx8htQ1DDNOuhx4/9agwqz1ajWPp1xXFguVAyZF0awaVLnD4Q98ZE24E9nxiY
9tQCnx03YESRKdFIP+MfZhPV0Y4eSf9/nHShpOfhQqfdY2was8I3b53+PUXbkVr+GgihEuyVHOl2
HMuSDu02Lm14fJ/NHaYMofS83UrRXrbytn0SJcplDuzzmgrYKmQM6FPY2hsUWsoiZtqZ2jy1NTKt
iJeM46khbooWUFxI5ochf/GotzoIHMtGpMOrLYn5GuPuWlxuxUjXt2xJrUkW9UBSodRtCdCD2rZh
Ktg3A3pNgW2KCG4HBYxSdvvLoP/md/cH38qFXXgyjpkLjVwpef74GfIY8QmFKvKg6B3iXTlSh8QM
Sk9jsQYXTVeB1p+v1Kin4d6XKOEYT17tTPdja0zc3W99QLFmJFHUEx7B+ByyV/wQr7SH7nJEUd/g
us9V1g1YhaItmWJs9iWDx85bd58O9/xWWuwXMar9c2JbMyCdQZ0Ak8XK4jg5zn+drGk74oOy7i9v
LZetW63Xyvt7yLJPXmOprA/s3ApCkS1NAxv8YiZu/s/gxtlJKLpGtjDG5GgjYQtUMsJqMMl6ypGJ
lXyJS6adxJ7gLA8Wp5WsliQvRacD62GPnvtmMFYtrXpf87Jpip4YmlfmZH0+qKDJc7s48SDBehJT
y57pt3PvFEvtSzg+PCi6+PaY/SHzFCaLGBtTXeqzBLfTFlvyZtiVNP6ALT662dvp7hyLxG1RH7XN
XvwIn5vJ9qFK38cBGt8LR9fXvtEGuLZ7k/98xFUuT1xbzVp1u03+8xyJDxw2kRUjkZSGLpaUCvh5
eU4iwYAoxPeCe1xbfX7sC79OOmGgMjk3tjn/4UEsBT/5H24hRvSqqYsxDhO3gzStIweW7vPjP/DM
Yu5RUPz+bNWsJ7fwppLj5/6fJdg0+MbDr9LIv9AP/X2ItpIT3mNlWkMlh5pAfrwtc35k4ygYELDQ
3W+RfQI5IVuse8ASvx8G1UG+W4Ud09RDBEYiRFwmYUl8RVDK7LeJ+X6jiS87acQjF1R2x5OzpdMM
GFz+KDS2rrnaZALdF0xYpGpNVq+VVhGXqqp3jK8Ogj5lsL1Exgu1bM0jU+iwIp/1WJ7vbDnzOYlj
GcH6jh1dYN0MpTIn5p4NYpuhp02FV6mWnRUj2PTVV/BnE4fBZo0y1sGGwfZf7I+mliE41iVbZ6VJ
sYKZpZkjSR+IvtBS+se8LKW/Ge5uFNcRWEXlsyrTlO+cnLypVuL2TcExHgwokjscj7BbJM+m27cH
hlMb2kPlPTJJeeUQW6LWua8ahWYEOdRsMJxw25yNVM2mj3boRP0sFNxnrJXs6L+tdrXSKLCLBRNP
5M5jcVgltt31tTX+Pjx353fg7CVYT66s/igthouvok7C7FxeoFMCJE4bz1YNe2vmY6hmBAgE+7na
g+NPANTwqnV0fRjSv3X6St1rkEIj5rLSiFK/Bjz1JvaLmZL0sgista6yzBLgIyAgbcrBnS7tPhps
tx1OK9b0Lfnh7M+8BhL/qkG1nP2r07djyyQQyUgH7nvIxbtCNKADr+4OawO3Zm9H+4qMI8Sy/Rxh
wpS0GMNzo3Nft2QJ5+hxbmAxs4MIZHJUrUhEqCZLz8neC26D177yyacmQ5ExaTCriKt2dK29l7ZM
ru5WRU/1JJ7m85GxKzbt+u0tqwICgf15Sx0rmog33/J/02eKina6AczcLzD00FUUDr4KJJwY33p7
/uwK5MH5E9K4m3l8UfFRxQgIwVYdp/FdDcIKnP3dGJ/7lXiUdCUm7Ipy4iLXzUS5YwxVhBteu1H9
TFIvblI4lMx2dKbxASiswoiLjvNLX7BAoQhVy9SGPUFrw7DNHoci0bsvMXhGwVfc2sAqemYYxsUL
e0tkgN4LcZsEn8VHkjntAHOXaLqPTa2bAGtzUs4ElVOr2k6reaOMwVL4qnRcWr5OoBktQBNOlRLB
akLaRjIe/u4p/aPtee7EOAt/sh+lA8y8z/8L/rjABMwHOc3mx2ur6MBMRv/00lmXc3I0TOEgyuZr
2uuX3UO1m9aOG4LZYJA0AVdfz5JeOUHj3Gpd9cW/OvcYBKwiMC8InDXf6RgdR9BtSoThSLx1WVIU
96j30nVtZtWCOE/SQIp0KNUIwbZDsDNV/vI6F3S9ArKyWcESwfmjpjeSbR/52mcaSZDlGzGrv6XK
6SiFsosFNNHP5ZiArZQhoysze4rP45/k7n/seSkUYHC6uRf6fmonC06gyBLcvLgtwyOp03Oj6LLc
eETj5PKJ6HKM4HSkHEaXf1HxMwPtUnn19zKyLk+4ePA2vRskL7kSmHxdvAyAHb8yEUqIhs6RtNdP
6Tke0e5z8mm5yoOuKRv2rafAZJrMFdVFR+4vDxsqf10v6o9ihlnFRJigbyLan+bVLL1TcyeHAvEC
zFX3P33wU63NZvTXIUJLkH2Vsj2tIoM7xItIZ5e5RUT6+IAY487ZqI+K3DJckqP9W5v3qmUuPjqs
pWV0Ia/4MQyRFrW8BWk5tjHDKNOAGycDwVhAiOwT4HbMFw/TeMeX3eCNal7rfslBtKeIqmTd7xG2
sfosg4QyA9dCLASlENF+AgM761ooCYzc50309hcTjQtZXF+UYIbiKjzxBTcEsHBrJrJNraSVVQTm
/HJ1Gu7zd+tqCEDvvNdY8to6MelCyF7qMrv4dmsRB2iKrzO2UZR14qiOSsySmj36mQ6e87kPwv+9
lOc2umgqN/22H5XZ347GcPi1j6L1x0YBsYJM4qJmRUzzbXn18C1cwCrbQ/KELMt3FESsVI5lqxBc
aeucYoU1Uv0WxH8cBkB1mSwGKwRTt+OnEAz6+LlsU+QoYiFR7mQ45LOC5NdBXFLzf/onYJfuBL1D
N9Xno3MtpIlnrbMPForGZPHpGdBg1kmPgjE+BpEIBNTovZpeUe/3dL2BCm3t479j5F9JSAmsGyaB
kNP85UVEocOYANdENatle6tSUJTsxtkvJJLy6tO9hxxd3BkpMc+75TRZp3xH+6jkGQ2ktkdW8/Qv
q8F3l0Zuk62g2DlyBHNHfr2hekrEAuuzAa2eLiqn3YGvCPGNhsiOcUoM+6BYanXMFHopJ7y4QBTR
dAuUmhl/PMAjopf7FCMkpZ0REfc7x/LZ7HzgPMTYFZX4jEk43gWLOds0WEAVxYtjCsXIaJ0DwgSQ
fQup14Eky+Q8jMGwVA71h6UAwcBDfzAOhxrNWad8HLn7RiCICWe0EGrkymy4PqwTtZ8WT24XJONa
oYDqh3Sz8RLveVJ0KdCTnBHK0p46ZV8HWpjPxxECZ43+a5psiZIrkre5+Kt/YOGbk+RKupYELKbk
mkkeqGFjV/F9tw5WNr5pw952UKM1RFANat9JyriUJsXlHIPe6wzdT5PgOX5vmqhOCHq3xuZGvoKX
ufj5MmTkW2L7bCbaVVLw3wHnUIP4S6ti7cN0lI5y8Pa7I8+ZlPceG7ix9BXcfFpBaDy7/gsm7hHu
VpBh3SdjxqVJ5PLfmsNVHYTIs9daUlNnhrHIVw1T/1ypREjHIeyoLPZJKYsN2rMfBKJSIF9QZtte
LWbNGp24raBvaoqsrNbj8bFD8VdS6oeyShpKpW4xCujQn5pI7IMVsKEF9ktwWmMuow+tlYhxpQpJ
d/xkV1p6dFJJYqU0vJwWCrKFsktAxnNjTXHkfWx/U7ENAkMnjPFc5U/pn4Puw/V367MveNftpVoM
+nJNZtC3Mo0Xu6GX1KYKSkMpdSs+BYf5mJtimYUZn9C3uycO4CAMmSFnK1aAfVFhVm+KtEPuOx9z
o1bcU+cCZuzsVqD8qDkIEiSAZUoMJL2itLFOTOPTTIeM3GTMPHGEWyf+wMEfnJK4fOKR2sfujKkE
2DX7C2ReWEtA13dysz1Ltx/40kifJhBnBo/PvQYRPDoLvFMAixduNTgC9l8+CBozQRdwA9Kjc6eq
zMKw3OVpAmo8I1ePJL0bNRovBsAuUW1Y9piuQJkELAXFodNZ3jWHzEi63EW6ZmUy4I/9WH0M9jmd
nytchH9DAAv314DFKfaeglv3K15Dq2br50MJzuBSYqpyBDmBJYKjO60o+X5c4iUVbMiTFVygQfB6
zHqEa/dThRJQ1iFO9IizcUQ7zEU8SPICI2agZR+rRXuLmHy1t4cysAluAqMw4yAfnannR55rnuBq
fmV9/QwokYHxG+e5OLJ+LS50ZzKICaSjENjCooKg/F6j20ey5M0f4a6iK9EV1FD58y1LrhZy0wIY
SITio+6s5OKAKR7hX0/X+3AXRPDB41R2Ppw3XwK2bSfmcWw54s3f3BmftTZMCy2nyc0p2SSj2OBU
BADy9HNm6WUiDwHXAkFlnZB1s2qhujDi1YuSKgyGLkfvAigdRv8u6I6lc4HX+Q88tpSIjmMBvRtP
6LSFKq/OsRDrDV3eez8KrGPY5Pm4gwSFv5qo/c1Ol5VTcK6N9F6y2j13J+dTNV0fJXAFgfzOECb+
ZSjYkUPOcS3yVNtTqCIFFCXjGcINtTBvd1QzLt54lnFKjf5vczVpMWg2xAbQK3xYHrIVQolzoVg+
H9zGuR0sanIJzTYbaTKuJh5okOccH10VaMZjKdxDuVKqg7Tb3Y8RiG8lBwEBzxFWIfl8cGNkt6Gp
3CYCXj3IqS6IHQ6lsnSGW4odXznXffB3QrQ0dhuSxNN1fJBzCk9wMQQkF+s24rmKvz0trJvXzBCT
WDuTKZ0QJsYI9FTLYNHfkE2KiWNKsF08ZH9nC4S5uHkFk7IUjgvuOEP87hsCeY6uEgjmbZacwfdz
9frrGkfeEmRdv8sscrgtC3aS8I23e9nUCdZlGNz14kI8/0+HV2L6gaqUoeoVKwOe/sJizR0TKwe1
H/QUtOCGBf4IpcWz/quWcsoNB/toGzVxvJlE7LFKxIcfof7natc7DFMmd2a3Uf8LKWUcUtHNvwYC
zwmbd0dK+yvaeRlN93qOtYD6LUmoPqJKm8Mf9W1CUMUDEGk33t8gObphrLu4gz2EcB0kdpHWiY5w
CKtJSiaDClngcVFq3Qdodv6ynvYTBH3fdII0VKxfhUNodls04d7poaa6OZeSW58qPenkz258ULWu
jmxbrFn0GqpMhlakRS2BAVJe5wJ5LtCDI9sntsc5H52NJf/WmSjmt41eXgK0AUzBt8ndGcK/VWty
6lWCNGCtXV31Li/FVIvyJGXrkHhJ/MXYaSfZhG313ES+3JVkLyZrvuoL8jzLvw4cQu70A0bezRpl
2piKg5t8vNMFjx+EgdhksKwY9rA49iGkl172jArcmFcbW10rwFeHH0Ja9KlpibALwd6Vua78Gkfd
/d9wEJbaPt5dwI92SYpupN3a8LJ5QZRg5Fr7OzS9aV71gmpUt6b0FdFEg7PqpNFE4XgwBixlACPC
h/5ekN9MYD6FcY6GaV0AyVdsYIdNDcNHESvu3uueUD7TLIKwW1fthc+L0qcZFwikI3OFMV5V4KM0
AZDll6/jO2QFXeD6za0ajSEu6cir81+LuHdmRBMxiaT8NzEsmqyTK364L90TgMZ4+Iwdub8rqc7h
A1tcye+nd0tviuDri8r1rV80fgG/ohuY8O8iMGpZaBAimqIjjk9vKXOGGQ01JEPwmv9Xbkap5EdN
tN/0r/ynbOD6gn6xqFsglPuEfCzY+TaxpNITC7ZQz9P3HxNmWSLvyrF1jeBmH6U1zPl1M5kFn0mC
/7NmeO3iIPrlsALehn6gU2CqyvIxAyk8dMbUe6W/4V9YqizhbetN3e7Eaolo1WEui/huU+m+Vr9s
Rgumzferjob55iOSs2kHnjWx8acbSO8tGQz6o8LXQbVj4CM1fMsmoUttb/lkysyemUjVR94DEAbL
nXTC5XMdgOpYSU598RRxjSbQKwyB3iKfgPh0S/L3v/45U2ta8SfGllEJMcaBdRlgVh69YxeFadiy
EI3OgSojt+GUoHYB5PkQ3L+UOcZvjK1PF/xeurzMf4WvLpzvWtq3TkGo5rVvomsV2l5usHtQaEVR
WiaK+OBnawDJobPHv4hthOZ0JIJi94RVT5hxgq19cI0ERHtesfkeFsawyDEBegKd3iFWy+d1fgs0
CiOCR0LzCjLLV6J1MJqQIeMXfvRkAuk8CX/xnOQ8JatQdicLpWzqsEr4uubleZkiupYy2FZMuaDs
hu3mI3TA1j2kDfgk/+UjUdbhSmBPFdm6qorlzIgKvLmJYdgfoWuhQrimH3ebOPmd645/gRSor007
OGR4b0mHigEj+mD+Kl8mv0foKt6nSiQOaNB4mDeFhdt8muBjAl0uwSCgIQHItyA6GTRSkjf9qUoH
CtJaHffLAaYlcoZLdveOv/COjn/2zm5VoPvsFvteR0g6/ddv00Bdr7YQ+XLqwLZA/HKuzcDwAbM5
pdfPNDH7nHBfXrO67Vg5c47SXyAVNa+Wla8UrkRMuLYCSlYIJcve/+oC/lEth+JVJwFdaaW+gyF4
vf/w/eLyuRFUYSkvl+JjevSM81wbKVQD0l/OLgoStlO0Pr0zTqnnub1K406vsO2byix8oh8/Y1Hg
l82r8rnWHe5WBlMvpBpFxEEd7T17P4AMczDkycAVUmLSKuh4YbQbQkqRvIvA25KjW8k02yLIW86w
bQnDptNLZl3fcw0X/DUlX5yJ5Y0NIRO+j1Pf04/3mjxBKuHSxPpFJaZVkzNqLreCxMOyBe/OrB9B
2u8Uq7G09MNFm9x0nGw02fMW1L4pShFkyIHCoLULtAuzAYWGtAhRwkFI++Ne4proUu4B+M4fUDbM
VC7w9nZwnGlZ+U5d9PQ6JLTM1qyGnPHzkw3ua0ARkvYljK92QrAS5tj2hRNDiH5OYloy2Qs3jCbE
k1VXP6QczioQ9Br+y0uNh+D3Ku/SkW9wNUIfF4DwIllAQBv67ifNWPveDgHVFfi1O4Fm9aQYsxq1
+3oin5fl8m6dME1iKLQRIbXp7PKjLz8k8YCwkLsDEK6ZtBTt+W0qJXF1psRqgs9GkV/kPL4UmKIx
Br/XSOelwMQk/eCYrDlT6Vn9yasiWzlHBfOkib49k1Zn6/7+zfXCVFDpxlUug0oOmYDCLqb/hS5B
qR5sI18jo74gB9X7kySF5prD6mV+MLZsoQyN3LgMv4qH+Rvq1zni5siYQthlCLgqolKMR8KTZr4o
dWamfB6EABp20c+Ccq1VOh8Zt9JopjSeuCQ0mEneYEKkRbvv1zG6/n4yDdXwE2Pfpfrh2IhEEobk
oYmDXmFLPjO/9XyZBYZlOG3TZtr+ywsrCuzMV4mJnY9iKZVzAQ9lxUxSepvmNYr61M1eYGKiV8Gm
UrhlN/rJMBUFfUtwZFzmMtpEkmuqOP8Ou5p6s4YirSjqyhwE3fB7rLpGhws1tiT+rSSc2ONEEU4Y
fvrh8ce717Yvr8A9uTREIoyDsBARqLrT23zVgjVRej78Aq1T9FiGMoiUQPj/SmUw+jJmFFbGsuC+
RhVHq+22sH3FbeUuqiUzPRNB/oEcT0vIlsncpmLCVrGqCrLzqkSlUoYieK6jlVXwspLGK8DwFvw8
Jfn5kllaH8zvISY8spoMUdlt+jLr6Zt9PX+6IQOlrO6mtwwCH9QV2t+UO00J7RxZBOGpWBXmZ7oG
y0+sSxFBanHBxmFD/EBpIYYJpkuyQe/jf2b6BdgD9nRBZD2eaXB4WC76OD/kLtEE/w0VzUOmDwNv
Uj9oc56ZRa7CtqHucvHnr25C/JBbUOw9Kz0X4My5AqY/ojl2UrQW02Yua3BKHEhmtYP3yu2k437w
t9RbY0ywLaFayB60vx9Qtlxa9HPBDRx3LWv6TjS4PpqeptXH+S0LMZ1z+KeLdpREnK2MOhZRY9S9
XSse5Iso32xBb1qMv4xCPm++l9kY4RjKyMroDnCd3mBjoiSqQJtFqk1jCsgljfBab4sfBZ2Zjk7N
k/8/Ao4ANhD5zX89sL2Wxk1U9+D/lwTVWMcHyeSd/Rfp+pkpD/QRR6hP9i4AeB21RJHI0CqRDoKl
KrKE2KDiDWd0biykkduAjCmi2wvY5xg4/4+PLf9Sa18oARhHy1kMkG9ghhi3IM7sRS0RfoBQX2og
m0s8xaavmjGrn/b1y5ktJgjaPsGe3C9IrGplVzlhBbMk/IX2IG/LjEpcC9aZetIdPdi67tkMwN6e
EBjIAv8tKlOnBpbFy1BcKZxFgP2X1uSzLLiyaDBkX8xdnbyQx/cC5iNTiftFxo3LC0R/dLQQx6nP
CXz/fLysM4Heoa1ShkRj/54UppcGC0yy0DrUbYi8MiYa9PJinRmHmkYIG+jixLoetVRAtf4Rogkx
3GR8L2W0FfFbQ2M6WQdA+lin6oZDHqttmbmYSoTfnrnPkrHI4dqb9I74EL9knef7SGskLPq7LI8T
S1hA3dUWS4Tqzrmd8VVjIUxYMm1+b8suh3j7pZ8D6pLw6ZlyeVjCr+kaG5Gg5GXy9osnXdT/doYg
nWuJf52QwdWyANXGEVTfewtYyCX87cJCOjJ7MW0xTHXEdDzTMgDAs7u/mDODTpVMoqFMcYdfzgWx
P7KADan/DDw2veE8HyIXKLvdiS8HIpWBJeM6aGKrteFzcNJs0hl47VTgodKkc09dJru2bHtofESX
vekaelLOzr1/tQW/YzDSmCapdERdmyzRjw42g88htQeHQbTIQ1YpnTLotvmwTBYoXD7KycEr1uLE
nJTunRJNF/lWjXosDJzSgN40DTdKeiuwdkz1XbLppm8mu1Cnq/R7NYrDdRxd1SgUv+L0o+T8ftJl
sQNiEN7vE3PVQ6wvdwqaE/ty6tIgJ+qs+BpKjgZJR7Db3KZFstGN7F7KxPPHKAv4+0H771nF7kF6
27AdgT+2ibnjDvEpCMx3aM6PSQ29cuNkrFQH5TZgAW73KirVMZmpE9Z/MPAEikZ0zf99oZ0KNeuC
ZhwJnj9sAUTirmnCnt9d/s/Gkj04hLprt8VOCr2Xs7ITRjDGDEsGGR/Xw3Q2tJjJspr7qt6A7QyX
WGpyZtUa2E93ifRJjACVMzdU9IXXI3REvO7ZkE1EqKUM8W0+laj1LpCAJ5LNGh7EM57kk7vmd2/b
v9jR8dgIFkv10+L70JeeqqSq8yPldKS/7KHj+2CAEQnDxw9BdaCWywtrZWEeGhDH+visueU7i97X
dfl55QMZdc2APiKTdQ7qQbCTJWFYIz0hfwohVIACIbvutB/MjQZtbz9hmGDajj+8gaHdA8w6KcyY
AGGOfW10I8cA70mN9ISJZkD6lQMHuyoaBpq6G0kw6cyLuUxCeCKeoNlQfI8wUEwfDU1mwzjEoLUC
bkXHRweRZ0If8wWOvrWlYy7uZXrr5aal4vIZuTOaFQ2BWThsSptV5UuH+CG4nmgm0ZTo+xL0Feym
SEkhOcEgtWlNcG2mzyvTS1NblesRNzZn+ecw9FC1l1dnBAZgiujlF2dQSPShMON9pkYxnUKNfjx1
MNDjS8owiPTodrpILMmvO3UuSqDMSL86sxv333NbwkZ6K7GqGFU37bL3pJWjXBnsvn8BQB+dg1sB
LRSUUnkbjxCmnNMfjizYbhXXHgMn5FNNyXzMBUK+qTLy+Ph5MzPJSVSJBtdZNKxIJEQKRPYjvfdp
5hxUtP7XyaDY/jWBxrrBgdc+dE6+Vje2NeLTmuwDNJv/tlQqa3TknFFfljWU+J2x/tQ9Cqwhj0hZ
N/XK7Z+t7lOHoXNMeJVhoaHfwJv3NRQNhWaACZqCdm5LYwH0Y+/CSrjumr5EMXDyC/okUj6Ae+FU
5soFsDnFKL5aBTFEewFZ+Kb4+vKHHE4sRBUWP2vHv4MprgZFEBwJZFS+D7zLFim/iHLSHd1FRPum
jyk1R+Fwx9DXIVe/GaEbtmG26CTsOOI8KBY+QUFzzReF9/Uye+oclZwbpfq23ar86jXCWl8th+DM
UmftuN9PdrQBIBX8ZkDFwGWBTpSfzF+rGkgRus5wK/z8BvJTHWRzYuGettdltReW/JUKjU4xBqZT
t5w+iLNNksT11GJlnsRQqlp9pf1Dnk3m25rP0j+Myw3jjNME7xgL9oPFZBoTojeO2xNR6e7F6G2w
cPHTdK284NpcDoYwpS+PeK8fBFIi8MOeP/d+wUnS87YaetlxXubGMUIeEMC87peoK96TRzWIAbuL
pel/fg2r9nXoMsAyornWescV+o3z9rro6SCwXI6hx0yLyWUP7llFZ/ru5Wt73mg/a+P4FzhWSIEl
iZc5nb6R4NZIqJd8m32tvlSnKxumEZQtWeChtDVTO2FoPV755QFveTVl9/QuO9VKCnRjhspwAzbj
JzuYlzGthfiDMmDRf4m+t8JQxy+yD/uCkhMlAMZCODgM02TzOBOlYpaF0zs77+pT2wSg7wb1r8wT
D3wALPZpuz9OvbTS8n1VpHktcOgxxbLnKwjyDlfDf7dw5kzXG3o71UxsbACpVfiNDBNz0GbeETlz
B4kSBVRov2H5KmXH/UMWKI3UGzJMJcbDCSQUNqB4fIHVjLpmbfpEQJCFKdvke+70ToT9robHnXq/
aQ6n9L5EsMikk71hsdSJoOJc4+lG24mnz4JWATtVk85F0a9dAb8l3Brwk4+dD/seKgnM1z1XxEGi
ZE4cKCMEWd9h+9/vhcrnZHNhrTO4fz+ke3x4YkUugAPTowbp5ndr8IDLjWKHdFSIIndrLKyivB+u
ykujspecS9Vxyg0JUerpnLwSMYh8U+7HDSEEtvJmXNK4DHX7x0eGDwjc6NMeTnKyBdZaUK1ymPiD
0GWgOwVpU/uGL3qbQj/IM2k3fW2VMQ5rIoWeedGuEH20Ro3kWu7Dm6P7IheT094BVOXPmGtALsNH
HJyTClA0Ygbi0L/knAdL3Vp5x+912xqufLJ73hQ6Xc9USA78Lk0E719sBL/04Sqbn4JF+EW07tws
Zr0TjCMnfCu8aMybwsym7wxdvi6YaLubG3k6VxsdYF8gqtvybokX5hgoE6ZGxLmYWlU0q5ZpA1Je
Tatl8KLUKe/kHAiKBBrJCKXP6cHA1kDIjPHRBCNNY+zvzwxPH3Onnzmo43CXKNeIX0uwYYtlyH/e
Cg6vvHDiSi0VrJQUjzI9jtT5HDC8tV1eEfBVdWtbU4B5iC1YsOx1Bzbm2nU0BET2j01Wgmm3BD/8
t1pG3BJ9TtpzP8/7AGk5tNe3EQJv4/fDH++O4DQkO+oCllqwvjFAEThUiErZCyoILK5R4n+I3lL9
dol1gQz63/eCQWbIiedIWCWV3McovgE+S4yFQRvANXC5lnoBg7mcUqdGpXkOXGofYJ8lPnKi3MJy
yrH2iisK10DEVjwrQOmTmHrF7x9/D6i5SO9sDmx8uCUmfxhjOrP7Y5l6GjpyOIHAE49deCIXaWQP
QUYY3eiGemrDFlKuBiPp1Ed/M0fydo+5oBVoXXIO1gwse45S/Z/SDlQRUnBP09gf0qIKTUwK++bO
nXFqaChh9Sjn7qFJ4BuF7eAamVqNUiYW1qrViHeRb6G3KzBdxzL1ayoAcOxt3LCXM8fqlC8jIqbr
VCJGBu+6DNfUGPe0hY5Ek2pBScZXpGEVZP0LYHeqBU0kTt/SHhBb7kkO+pRXjdFHXHC3NGxrAxrQ
BRvQk17ULMnYZqjnrXRRknNGl6vG863KYgT+DJ2t0uhKhN+m6gmUxvFnW2PG1negOnUr76iLWU8G
Jxc+FqvXcqbeE8INaDgHmYcs5mXLfOjbw8GGD1WhgHSAmnOv3HfMmXKRuOA6anU6GEL6SVeNYYgv
SYEd682Bmw2cbGfcPJR7bi/nmaaXNreu858sofIFlEDC5g5lX5QxnjJUAIuBIJIYnZFRhQkKDghG
3Z0PcyIZAOXZC+S0o13UEBU50cIfARNK9rzBjHPkTbPzaRvxi4WE1gD9w+0aDeGoRloCSZnz6DwK
+AZN861/veHBj0SzZtDldN9mbGGP5BRGCLhrGccaNQ6jDRhxS42/xjs/o97DOIMBfdSz3I/1uGwS
X+2umL/QhFyUicfL8TdOA/4cPKRF6W1gB4jG0GkpXEb1G0mGTNoczcKhvf32XZdtlgMGJh6+bLfu
CcDGWhgncRj374rDdIkESYu7O4mSwK9kNTSjN27byntwT9+A0KqjoeiirsHUsypdX7lLJhbdW9fM
3HwrvxLRvr66XFKLXGJ8sCizy0x4YhqLseIi+mMBSFk6cmLhAU/YqIZ7okkdvvQVLCfFIJeeDZ1D
SbWBCNi+gKaMmUCR4yVKUDlqy/6WPk5s8k3nRJrrhTG50IhRd+zYqSB7dva55RFYzddji4dIzxHt
Xf2BXDO7xX7o6Ly1683ksTYa1lHDEyWbbX6EVYxD0qesCX0g2t1o9qn5GPBf/TIQC+PGTT4e8SvY
uhTK6l5CPox9uc2RGVn1VIcT7stxQo3br4D60K/Y3ZU+2tdurYh1Rx8odlsS+eLQn8akOcGX5MIA
KwzVBPQVf6ODA7dtLI93MIWf6Wv8IOOVgFfCE+3cqmAaqGJKhC8giUPV3AKyfe3BAlQQCw/ENOQ3
F6nPdU7A8cXgBbuec7PJADbxe1PFFulF1rqwn4CuM7mInXQErBj3//rrTSwLUtVCejtbbcdQDOe3
43fbD2/TeZ2GWVbdB7Pzxzudiu5R6el+OLD6g+VNUEMfGS8dLHNPkXwrsutdPU+RgN4afe0hXt8W
oP6I1wGyQAdJDp5NqvFd8PJD3lPdMdn5GIsvjULMaUfTGYDi6p8lk2oxdBd2hgza82H0BjCaCHQT
Qm3XzqQhoniXPCQwWHVIIz5Bd6q88kKSWeJqQyYELtu9+ag3CJliBFx+DctKZu22igGyje6v4Mux
X3bzVXdO5QVKtIZonkrGGVwgMbHDOijIzDLm8egoo9iJdMx04A7kTfgE9RWBNouwA1kFh0W//1A4
+OAUZbxwyO86CLL40N3RktFjrSLDFgL3CF8jLtYtCjbyKVLMMJJGERE5xNncW+S92YusAIVDTDYk
NoWB3nU7T4Tm31aEEadtctyEKIxmonjHxzJa8dQ9lpM2+Ovfr6Yx53iQy9nLEbVnEvP7z8/6rUnr
emW/VUvCWM5uHcUUAxo3m78z/5sclKOiH4Z8l0gRgYKj3EoCiFhax1SKVItzUUhU5NLry6B7JCm0
1TQm1pUkVdA31RzkSMVPbmOIaC7492jsherZA1rwFbkD1NTSmsOZxdrjS2PDWj0qGa6wk4J/DEHy
5corO7vvEX7oVHunmq0f2DSayRqhp8AarE4HGwzmQFCj+aCXeZ5tAleSyhIGN7txtFVM/KJr/DYz
3ooCgZmfs3ZpdSUZzxnSKtI1cVaUMWfR/yC8JUTAfvEH4uv/UdDn3r664n3t3FXn5z9DMRKC0T+O
psm0x1JmcaJ7XAm/9SK9ps2sCn+Yc2/WQ993MZ4mlDgBtXl6fR8g8+kPCSiAFt2aiA5GgfAWj94t
M6W4rIK9AgReZcj7Ni4P/CDYfDi83qO5KUib/pOETLJcNpOeuyxrqvTtdWW+BbNJL0sxwndceiMe
a8ssT9IftTuyP7wYQZ1LQZhGfzSzoCTDjurR0UdqXw58DbenMwhqVO9u0e4lI0Suigs1CvTQpfjF
STxDSKyfhgpNa0oDYC10uT5DsKxwb1nUolMXLm+UltvtW/sbA3BcqElHvfG4UCiR3q6TbghYIgtR
ywoSJKyae21tUTYaeM55S6D1D0bQ3MdqrZnJa4jQWhOgTFcsTXuU9tbMYj6VXDl6mN5wceJ1VDeL
Wvf3iA39nG7ZjkfsjS0gYHdP/OGanBSvA0/VFaYClOjeiAMTW98zf/LlZUEPFLiM5DxZK90M+NCm
cCakNqKOQOofgc/HDgAOK37BSHHb9uNMPXbH4l26BxBQ6dqthrC0mKyK3SXE18Lm9yEvdmHTTCar
sbiVs0hbwcHtOXjsQlKIXSL2K92uWPSLH4+DooXr3+S534n3UyfhuDtiqAuQmqapBoqtZbgJEGzK
DInFZKPl+k0vLUmVj76K31O6gxE5BMs/vCpWbvJ+kwtkpU9GE4k61+Oi6/TfR2VXeLrxeWyJOe3x
ZnJcPmBH/kEjvWWXwxivNuJs6f+evpcQUkcTtpzqcIN92MGskGGKcKRnHSX/XrzTgH0i/VaNCkcF
kgOzR/GC2gfLPgRgNHdFgP5mDn8E7vZ7ueKDBtHBPCbcRE/IVC2SOH1tPkDPBKITiR+wGff1SXhs
nl2jF8VExfqGEgWdMVp9cVgrZA6A9JHZnNadgat6YjyUO5HQa80eG3IoJ4tljrT7SIc6WvTYUi35
5cuos0Uu0Cw830usa/lZB8bqOzfd6rPVwbCMZbM+nPH93dIM+7DI3O9Jb6JIvRiXNJVF2QKDyJQ0
15YjsFjmFSRVJrNqQcIXdbkH9UHn7AxE1dZLAbQnMPS9dbgfRus5mgYcLUk7QYdcvg7dzJa3NU3Q
iPbUEMf+dC4TBx3ZBpNg7ra9lDNSy6SlRycmljN3fRebGZ1Htzrwgt/MzKg4offXlvVX0avNGccI
dPXZSVrzOL8yDJB57rdYQcKt1znnp3SJIahKawHjfd8ujLZKghQMMbpoLs38e+YttIKGsEicJ7B7
oZzpXOGv0hhfpUdDW+gY00M/wr+5jGX8IorxDMx2IejhbHToK8//S2wXevGXcVCtrpcVLf6CiGdo
8oY/BC0OAl1bf4Aa0lFKng2oppEyeaJdP/NHO3qSd1KsmfXnUMnBdcaPf2QmtstNws10CwR061Nf
3e0JE/HnsG7ik0XGUCunmgyoa1nZbnmgKjkeZxOkqn4gxnKYvwVNE7xhmUZl+HrEofubzLpzut8i
LsA5SzzSwYmDgZ9+MEnirrqk7b2fNeUh269vNC1fvLXgF1HzXYBbM4JiZ20Cxjc0BWQChQAJNHhe
CTAwfja2Wv3EQ6c4C0pkYSp/nC8tT+qbBvLfKUsosJy07P9RTb4W+5Y0vpHRarODRki/RcfD6h7W
oUTGjsoE3rYnXiWdGUfjQX9hvQxUaNgYe0C1GbvHJKmxS6usOL6XGQha0f14IxpYd4FIiX0dHdwq
gVFQFOOGHsJLG0ZjtP+klXxXSqne3pCRQMSVKS+vUL9KKLnXm0guBMTfLqfrfg0lBxaAvVfzNkw2
AgvfbRMFmVq9sDDHF7DnEF4VYlljQDIlWOseqLS63INRXaznhfFCDeJUuoWBCL0vFhjtYEA2BPnJ
w7qPn2kewszeEa+ooVFBnkrOknwOj55htjwgFN6CqtC4EAFbmAr19BXTwE/VcpC5f9ptec5SKP8n
uUFGRnQnRTQWhNTx2oBxratLu/D429jBJWHZoCAF3vNFbAfnhWkSD17NJcno/rl38QiqGh3z5Joc
TFWComBENDOJU3r+/FiShalir/ve1X2nAU3beFhsL1k9ZhrvpkQE/dRmvSqRdAAdOtTfT9u20Rgg
y/9OD/X3++UnplTVi43LFA1XGsxd8m0A0bBSbCrS8MDqComFmz2z754ilK+kwDyRZu22r72CEakN
F9At80quSQrQv4k8iZFe2Li6KF6WprMIWC1f1rMvnwZvJQXabV/gzGZm5kOvf0VIU7ZqewgR3Qtx
eVilXBdkYsy9zOzdXuPAh15cv9xn9hYrESXyrGD7Q72aiQLXpiEMS6KPJeucP+XU/0jBClOv0u/J
wMHez4GuTYavVD4GILl2KlOhz0sJzhStE7GJ/R4RGTzpkuCzTeIXCYmTo/nlf9pyk6joEQoy5S39
DwrCpWnd14j9V1sKPUyZLeHekW4MoEQbpmXkae4aj2PNtg0N0qJnEgK7iiqsnDhfcol7tJtT1pTi
CTVlxzxlQdlY65lLEZPE6buAaqu9C5OcVuhDL/OtEsh70pqJhIAw0ribAPzqdWsju508EtVLBL7a
r3szuMzTmAZs6GsqoHHvWDMIi8REqLVcQaP5utpebQTg/0nBhkNGEnnicc9OqiGjeMmYoXf31Dbc
BzgRt1a+qc/o0gvKkFdFP8TJrgTq6I14pbFkzr//Dn0e9uxHE91/8dV0M9QK+qljrtU5yGnusIlD
dd0lUQBkc8QczkOkc1dR2lUI7wyK8plHoXeEO8EQVcGFEg1ahF/DpsZm0Dupt/VvrSe6TWycA630
0LibtV5BGpLnK9LU58xAoDxGvnbefcmQ8zaVIj3Hvqa+xyAVfBZEyzR/juyTWq46iGb+dH+sGawr
cVW8A5KjGobu0jZkMYrx/67pyJ/MR6sGjbN/kvFZzAajIyBHcI6dAzFdFxCLbSKb9XjYihcvoGpe
2hkeP/cudw/uD5xbnKmReH2t2ZwKt7EQqMDeGmWPsIjqzJ+mjaDnNIONfW7V3pE9jBRq1n1MtZT+
cjjvGMPc63KKBr39C2GneiCWA3tgOz5oCIkxwTjGZF7zqpYfFmwIbzoLeptfK/ctX+SGzLlfCmSs
HOk12DdZxIKiN56jqYAega7Mzs3omnijrIndywJQ2Xg24dJpbtRM7exr1gUwJqmM7JzyYyiKMTbt
1mgJaKaB1rdd5lgctYKafQPQJJYq632/MeEHETB3nj8CmGJfBlr541Oyq9/ZVTB8IYUUH9+4+N6j
YTlG/7dJkUPzSYM09rM4lcem1X2uKfIXma6IzzCc65reiXWknPh3xFolLHOEruz2CuESN9AkQWIh
vEgi+fE0vuD8rXPObRKLMGkHabppWa+idRtzKLzZ3xgCX9Sj2LZrkd1ECvIw9b9CNvIc1zEEODoA
qZgQGVZbRvAa5qBgzn9TJp+eo6NLXDPP7ge1EdXaA9zJr7F2A3cb0IDlv492f0d9bt6zhg3Prc1k
Dc72i0QJ9v1Sr+equOxhCaijgHXvENr228DWdCCDCTaWLRPLa3U7PCGe5MGMuP3MwmHUKcEyN5jI
owdIr9FewGQ4Bf0KDxEWE6TfMvcynAhbzUQNVbPzdoxuKLGlD987qGJv5H3siJz8jqJTGGhanoj+
shdpcDvxkV39e7ySIymjSs30Hmz7hN5CUBJkTkxRg+e+/JL4czP2sS4O2IuItiIQTsIroWNwDM2J
tZph6kD6vveGdlXPdfgerL8Ezq95OBSSGRCoK3D/jRXH99kBktcVb8QXwwSJ/6UocAitDTnzhhCc
SsEsY+a70+xYpIfUu/NcbKBzNFFvqQizTUcSPGWt97wdjxUWqUPpVFyQg7MbtVnOcFC9eYoLlNgM
wWPXlHei2DhE0k0rGfHLDmxQ1KzI3xJybVD03ywAMprzqqRnW3+gcrZbf4CT8+gWUHUjuQdDXwm8
j9gkVgDuXqwdZNhR4or52gQXAGmRRkyDbPfoOAOQ1jExEWI5VnqtlxzKG0QE8Z9uPMYgB6af4SEc
pTcnujr1XtPwzvBMajRTcLNYkdo9qOQi3b3dAOJDgfSXMyP3S/olwiMWGBewmes9xedvY0a5iR1Y
FBFUAiHN2YMmA3Dwi1W1oCuvIefl67dTxRo6TIXXYQdbnIU1F9gir5/L3DvfL/X93oMl1BaNgfEB
uO7GPdYh32sCXFSotZN50b3O1ibQlnX2Ogg1wnbU+MbLmSy6JishiwnTkgrbP1o3CFr5Chzl7Mn3
+54JStsOT25veP7s2kOH2i+/vu+rJCIA9MK08RIbSIsU2BvsSEWKg9GTCa70Cs0LjycPVo6jE4e8
ouMBHCgt9n+FLynE8VAEQMR8D1O2XRpDb2WlxAXWQour0405Jiwxp0t7I1QvmQJhuWiHEEroK9Ad
hvsczX3qDKggDcvmh6aoZM3nNb+VhPxVuU3aQCltrp1ms65bU931iJkmpqH8h0j8h8x/ATmjy7G/
6yANvo5MXTHnhC5NqG8QWoVCrO4w6JDCQtOK7GKKMeP6ajj15fMSNH7O4PgyTVPS+13UBPHTB/m5
GSjRft3OAwMS4Qkatc7iwnwZqx5topQSxJsc2fQjRd8opX2+jlmEGmD/pwGlXZ4/WFEBbYfnF7W1
GZu1V6o7Lnj1mjZ8tHVRNXBzJCK+wCjR9z4TF3tzL8o/lrEVkQIclaJYxOWbTDgO191d0zuusrQx
ihIIq428V8vSSNdAf8+n88fniDXoS9Sd3VtBp0xFS1TrhFNZmkU3yRvJs1TccmRWnuwXcKLEX2UM
YDoxxSBBLdd2pk1JynPfteldiMSoDKpjYD12m/NY2aqndcuxtwS2iTrlkcO8f9BcZPNWA0wiR08U
xGOGm9LU9zyEiLWenIfxv8kzaELmq/4J2SfjAVhbjdeUSerp7FLjYcJNOz4dkDYWD3tMN7bKKyUo
AR9KhSBca2QDzVZHgHJ2YqQlSh8pARzloXnvmlKjUZlO2GtIGMLd/FtZWQolzSTHL4XaNpl5eW6u
2b2sA/T8GOhj/sajvwsZsF3reiii82QiZX/NfQjje+QLZZyBQJvsqF2d4a4R6GCYTM5Zn8vwvCpG
UtaVQNn1iamhcd+NAPPIB3JnEbcIz2fENeeFgWfUy7+Pz9ME70FLGaaa9sWbndYpTPJZRO+RzJtK
jqBbTBdbdiyMQVHHSYnsXdxhqPmHZufhMN/9Y3Ot/pGJTGn8FlMTXCFGlilNLXfwGF1Hwh9TAlcm
9nCk4GowMf/1yNO1nL5sIey/6nYMEoQCv8uD5yswrJcIj6/Wc2ECh3ED7K7U3TIjR3qg1oPOPmH0
MxpsRk+QePNS8yYwb12BgbR/w2PojEBX7NShSktfRZ8/Yb8u9blgZScPPa50z7HYI3Se5JA677p6
xB23WWHUnk5j/RyNIyvvcErNYADh0ko4aiS2BR/wo7l1bTYimUL5tV+Hwjm6wmUDHKfEqMEB2/8E
W1V2FpfF2OI3FxwHITUkeFlr8iSlCRtikSuIDmm2aZN6o/hcja8bSKKmlMffUzEd587QvCSaGJcY
JOcDgEIDDZrEY1NKcCmOWZHp0vvqFSye15eTsgqpIUUapcNCl61s7tbVb+KzaVE2klCfCEStW3AF
dU5eb26rrF2mwUMSKo8WQH+oIhJw+KeBODOz7uBDogOAHKDbSiy8I14JkcVxw8Dd1CIksTuojWPZ
ftp1BqX1dCwrUjVRyOVS3BtoMa1S8f3+Nmc7mRG+7jbZtAofr6JI3+4g91td00zQNX67q/iW7PAV
M/khS7YqaIl9hVKr3OFS5c22iZYhIgt4FhjP4wxacyt/6QJVVR/c00vJmpRhQnfHPaK0V2m/ZF6n
4bpe9a5gfiFU1jFy6TJ+UaoiFwdB8Bb/6D/J4Bb9Y0ickpSRTZppGJNGbXXVaIcygcEItRv9iaea
GYg7xrdx0V9aXdJkPUaAA1H7OulTlbFZ4nG7acxa2so9jVPM9SNBu0T7vYGJo1OtUdtCnzxNnZUU
UuGnKD9FA9uoMCujSugS255kA90lLz0QcNJAyVQwzCbSzr43xnAukvgT4bZVKfjy8YbhjRe5VXYX
cBv98Y0NJa4gLgazA2XF5tlt04S0Ox03hUPOEARp9h6Ibbl+nJpBn12Lpp6q29ayewG0gnhSCAwd
qW0zst8DspyPOX8nmY4N4LpdBv9FBrjxjEbC/qpqcRzZxEXem27t7ql6+twxt1QrRs2gzLnqq3/F
jQcKrlO6ImqD9VEm0eAwnpQw8TwQM3GaHTsR7esNkOOUNHutHC3+tS+WKB7A3I4S2itp0Ehc8E9R
kKJOiNGsyk2T7EeZRpZVolFdtEw1gb5ZhqBL95SR0LL+vP/k68HOss8zeOYVp34JKsEPwAXt2EqD
HgWHyzYuPxP10Z/CzIBeuy+Rk1K7GIDjiQLqu70aadiiYsOHpnAH+DSAexuygOBWxdK34BUW5o+8
EP5o4bxJWWpBb/OsHVis7h8ScracqEr2fsP+oKG9E4GqjvHhNSDgnM7wJwej0h6d2rymg6s7lPag
/cN8MdH6tt2fpVzJGwbpoZUPdNlyvAyQg+079UeKRqNN2VmHHpbWFzgWF9FxkRBE2eXn4Z5GRATO
JsdyvOX8t6Wd+EAeLQUom1o2Hewu3Nceh5kvTWb0A+k/QQhVt56CZJoSGuiCcAVWwU2PvG6xlulg
IdOEdBggelOt9lexraIvH2TqunAd7if3ompY+K6iEZ/p/6VyMLryl9BvRmGMDjFxSFAv8tB1Ps73
n/uTnVNjsIhNMkyS9XQw2xghqdM3dU9X+OtU3tr+4FlRff53ItQKA2Joe6xQjf30rQjZrIOmgPnQ
3zsCYNytOYQ3MtUngeS2UUsluz9AZQPIqVt8oKMLpiZ76LaRK9Yvhmbpr4+0QLvTBuYPckk9LuE9
GPzRjxDL4Kal4OjPEQJDn8e0+mg4s6JzaYDtrO2LNFwE9FlXmpVg91W91Pch09LPr1B4+24r/cVK
9bmM29IPRxBLtXmqDh1rQX3u7NbGTu7sB3zKePpK7jsIatB6gVe3jkTf1eVU0+MWURddFs/+pKVH
MZ1ckgDQWdJ/8Y7ZmHCHI4b5XXWwZu1SVc6xXH+zgrXU5J83JvGlt7yMPDuwBqsPH6UdBJW383Jp
eVOU5ZvUeT7mAiPZCWIZfJOSq/oHv3yeu9j6SyIWGJlThdfaNETdzBaKmGTHG+oT96+WjkfzNvga
dqcJf9nPZ3ocll2iFWGQz+fJzfI4QhPT8ZY0jDXopURtc3VyK1nL0eJZFson2UVd+4rHu+crwtsY
9VdJM+QOBRQ1NQxuCaa1SoZ+LdXJHHsXNR/arzsY7JcC1gEkClSF9O3Z5UHgUb8AMao3EmRpT3vz
vWR/a6ym6LMqqj37UJi/0ddRNmHeQzzlEYWpOc0vhGKXIYl7FyZfPZ6rWAOP6roTNayb3A2IoLCk
lDRDH0dAm8FKdLaqRPoxutM0F+FM0G5FZ5ksbAtEQOoe86jpqLg8m8OUm4lRiGgND0kd+saKpGD6
SUbFoofaslfjK5NOFTWmt6bXLmTUXRPT3j+8RJak4S3cOBI0rdaMd3DOhf/NSDb8YGJunUbcO7Z/
7NXirg4NBUf1YawKpg06ZKqFkfY1SmGom9xz2WEoiRx9LIUO7FOkiFUg7NkqNvGuvCPy2uscYpUZ
OaCwu1OfvKQczKirrIL+OiKFc67xBnqrwlVMFMXUndtI4FCOdy/IBjNUopJfTeyGuLpy0W2AKQwf
4yNORYELRl81QApZ46oUMSHWwRBa02GrxcHVaHOh4WUiON/qoS0oCli2pVKqo38SO6hf4okHVtUz
n5AtfVnNpPVEzjcYdLjtITaQoMHMUFHN/+Kt38B/h+af3nlrlmLBP5aYIijjsMIZpXgNLd0oBQb6
1e4CVZL8i6BlxfCHPK227rtZlc9ngimP2IdhYGHR4GSq9+m6CtJSL+dRT8TpCSFL6MH86+OLkd+C
D86j6uRAYw95dcuwLoekRNLCojO47H1d5UqSKGsWakkItQHAIyMMRp7CzEwUuBPv9Q9naNnKxM8z
Fg0UsprLa1PUhAfaZoBWxgzRsInZemQqXqA0T3H1uZS1uYewbOj70YmctT6P+3NDpABiot6yB3TQ
HqV+pMycvQb/jufTT9FX2yOF1N7GO6aSwhsBaIOvZTtppkYPqU7A6M27Bx36P0veO67X5XOVIwwc
LJC11xrAz7zm4j79BMg2cUEB5P2pqOXnpll0+xihzzVvvE252NG0og4Oc+MfeUA6dXhcYDF4+Oht
EtXV/ACloXDRjKVyYZI5EyPViFsMhtxAMWHwOeHqe/RgYfemn+GJEbiLaY4zgtP2krrztc5LQqpV
zRNmRzMlVd5vAv5AiRPqslqOrSyO08JpnEAp4xs71b2hL3R9/BZxfXwmw5ktiMU3E8r+N6XSLW2q
QeSHGODcTI4sS4nI+stLz7vEfcOe6JIj348oGWvBbIys8ZqOKi7tvt7UzzKlIAPlZspIyq8rjIBN
ml+FhHE38vBrl60LVM7bkjqc1L++5ZtYjkoG64Nw45WOtewhjgYPUJ3gqazk0b4eRbIqo/hcsfqS
HW5LHemLU8tsK5lFlANHoE/GOv5FMf7o+RdPrMU7DJ2r4+fKJ+4/NZFfERGyuDTRXmX4sdwG5Lq3
bcTkW7+NSjo/XaY1Nj9F9dA337vByyinfUM0ZJDtYvOOXVlG4QACVvjOK+nYICvf6aHbBxFU6U5J
MgRmW44r+ym2muFZO7osUztdGe41GAcizWKFUTbFvc2ow3kJ8UFB8qp31lVDHx2rLAduih0wUgAO
JHIYE3E9sadx2WmG7U5kMmEnilBLYu+444F9Sf8o3pgoaNOL+nd4klpo5hYNVQvqrF7dWUr0Eva+
lvaSypcSiEBnelotvGOgpFPr38UarJ6HM/Xuqg8QcFfjP8aJ2gX7Q2Wulk9F4GXffZKRbbO/B3Gw
hvnih0qx3+n9UZ8Du2vMy5B0OAbwu4iJJshHZ7hOCkF3uztOss7+HOcejsfn1ay+3LzxkaPFQsnU
6gMlv66LYvMT8bGiPqptqr7kF5If5ZRqvVfdNNAFCvxxsHFsONV//AWQhMAJZv/mxyhJ9+C80a9I
FIQt/lcxOZHCwEQjF8V7j6MuyFi5ZUiR7DPLkzazqZkBok3mSma8XdFCKesD9TV4UHrSwg6nd9xD
3+tNdS33EYPiE0NZj9lkkBapeXNez9M9TRS5mS3zu8kGH44iR4btVarQKlEAMXwA5J1RSdRW/Qv+
Qykce6BixFu6JFNbu97qHECUqUAMe5i6cLS6T2DCbk+LFFgCrUebQeFSGayhFFNS5AaOKCd4pvIl
77XV0grXLvBjdZ1k9H24eDnbnHFpXgCqcf/Hb9AppwFIC2nhn90BxheurXcZu/fHrzwakVetvwHG
VGeHzDXYiHdO3Lt3puxGFBppiiGlS6qhBpYIatmcp0NZs4B9xKL36MLbDTatyRKzZWgMHG0P/AnX
ZqAgIYBmOmgCcmNZbqfNFu4bfPiNSjPf5CG3AqCvUKmJlx5CGx2cep0TCIiVdOL/PsUEl+rwXkni
fHzg+qT8ytdZbXIhEFUYJC6wRuk+hiogRt2+KJrsbVAH2u/3hNsvzwRwuG6fDG25hVUT3abRqqcw
IUCjabkf/skzHRn/IShA2imOcjAhhW1gi1W/S6XfnpZeSLw8FIXSOVX0JQm33q3pLNyTIuOK5DWj
/OMltwlpZrHN7i20VnmP/J0TJpUjyfI0eGIhYKulaxKHi6mqv6Cl+Qq69BCFR+C7avzDUkR8RmgL
U4MS3/MbE2pZFs36aSSlEOd2bxFu0aKc6DpA0GYlhS2dYe47YzKNxnm1DNXWK87i0F+n5gSxrCUj
8n+nFbYIcuPcOtrfCY2VzMUxNDDd2YDjxOC4UEtpgBjutHyVX+PTmSGiUr6QWst3/2U+n+rJ4stK
19whw0TXb8CfAORIB1xVZhmMQPyNxSBPNiPJzJgGuoQJNooa9Uev3Bm/tXOgFdrj5Xyhlekj8fit
vvkSy2JXC9mdVDFfDqsf/aNAo6paLZgnlqQyScsNxvvAUa+CtiBnIf8uDQI6h4Dla9jcwxpSWRP5
eVeJ38/d7r2wkALPfcYSxqm/jmDc/T3doAHY9adnQRdYGgWJKAwa6cidiUoPzy0fLjDmByugn77O
FFTJduHMqrqRRvD87Andfc+4WpLbQCBRlMuZUoPrjWR9pYMp6gE8odLckSFAp3f41sihHCaXenVA
/rjtrwSdjY22KL3wz7leW54n664XPD/nHLcdqNfwxEajjkFNZnZ4syLJv3IagO1zkbJ8TGZz58d8
K+UX3HH/APjruRrdW55bm9spkOTRZT4fY0yrytcoJRWeO1rjEX3aFM5TNowDNKLAVS2TjOBztVK3
EdiHoC95cofAtNUt2ch4Lwew6jmTd/C3OP38GbVgmOOowZPWBFqDTpKR66VQPJDMWhHdSNzjLim7
1DMZqX59uUR9w6uqNVLCLpiEUeqE8EG3wKnVi5JWF/CgMI0KtAFLRTLp+wnixvPQDyRS17swGVQp
C2ktFtDxz6FUi+Ge0GpGhB//IRdiRntuGD6ElF6q0jNfQXBzEC6QYFMJLSMxobobLP0H6SdOXTuf
nmc7OG0QVnm2tY8o6I0GagcZPrrduKVcALG89NJQzFqEcfOWav/dnEJV5WmwS4xAX5D+wTb1YeWB
1omgRiqms5OL696N/M66Jb7LoeYCpGc6OhPQD7/os1f4edlLpbDjZccwkOOhAGLvh17BUXURtne2
pMM+stxptIYCQ7J8U6CLiO7MnyJ3L/zSwkxwORXlODAzr/xmdwuJ0SJlVrtSe5QViO4ZoKdIWir3
k9t9yaZl/d0TCkBnbGDrq3vjBP3vBuTqCBLtVsr2skcklfyI0XoHjAyYmkMus9VVKsiuV6AGe1ut
QF3KMlnrNIcIX9fQ7Q2DP0bCpjmXa/N67KcL3k9g08I3fnft3tn4NsrRb4BkT7eFWKJZpWKIy6lz
WGDyYTBBYmWLst7YkZL/ICwHhNAJ/+eYGnNqJ/wOFmeaFXZzAqzZ9SpBPAorXjVaK/NRp427oICh
FkJqNJj6Oyx84OeyR0YrsMTt+pfkmaA4wk5nacNeExKqQOC6oHjtZ/mD0Hfm4ijRuoRHkjr1FNXt
67XISAWA5+T4MPAiUkHlNwJQnfHbkaAztoKj9u3AxIFcg+ErJPUMOIwjtJ3mjhvd/MVApKiGE8H4
hb1RAAxbES1+jXdDbhfYYsqRt1MzJKtMi3XmICJmzllgtxV8UDXHjHuLyGeozvxhZgYi9kaOTV9b
9IDzng90jYkiMlKsNYkWs04pYC7Q28/9fUx5b/iR856xxTZxy1wxCVBrZHLSUYObyM8o894hmix+
VH+gYpCexfLerkPoNiK1wI6QTGZI0LiMTlLFk6gpSOaD6xval1VcaSsKc1DW8d+r41bnxVW17GcN
rJfIZaTJzUz1B5DHI7nq0TOOTU/v8ORiJ0yoGruTqD5beHpAqqcZN5dt9vI3BrCZDL+2ZJgtQemh
tfkYZ6uWvncqDJsa9xmIl04BqIxnBpItMkc+E360eTfDDu76FhZw80+ZR2VejhR30iz2s9/V17LM
BkGCu2dVyNDBWvCVEu+ABAYYrQ18fMiy0OUgh6VM/fa/TNSfNbMqUASiamP1mmK7dt63cQsSmRio
5zKMKmHQeY0XOsYpowFitAtWjCHoWHUE1bPBmwijaG+auQg2lHcU9YDPMPLY5Is7Bzgxnduf5E56
YmbkwFsBINcXSdJFdicYF5wLFHncaRLW//um17FjcvVFr/WXp1xHamz1TsTrID75hTArt+9A4S1R
V9RBzb7fTX9+VBMP/LC3+a1Pdx/734YSt/PUKBMlm4gss9T8Q09epzwfZX1mEHKiyJNz5L/nA2t3
bnyiyhRx5xIS3CM/sgYKYD41c7rhSTHUEC993H0cl/lgMJdcaVnMRngOf7thUQp16PoRGxibrsEl
FHvn2f6q7PiDPr6btNSlnmTwVDZSAK9Qp2AJoBr/7EwLykGAHg9kmoxfCoJHNprWRX1mIuj2eRs7
aY3IIl8coe/rU/LRScYoOu8Mi8nGn4nyfdeN+RLWERDoidu4QcRxws8srQCqleSVnJjFF63wLBc6
sKQBH/Bo4wKrNPGVuOQA3lWL7TyUe09pyOQQ265cU/rEtBUVQR3gd91TeEUsz68eY4HxO3XBzAmV
8WO8sLFlbJ/BURYufU5aQcsXBEXH8bS50LUeTymX/ZqE6xiL1EnfqSSA6bo85SMx0z3EPsxeIkFe
2Ksfflqx7pu+hHbx5bvx+FnY/o8Zbho494GkOWrmTSE7n7MoEAV14w+z4NtrRTUlpa+GMWdel7KE
fk4c9zsfihbA0AveAVTAXmZaEAVzg5wUvH39OZ6KsBrE1bTUqJhSLo2RSdFCS+uI5f+jRXfYbAE+
VruzctTwYSzDTM9t9wUBH+OK4Vh8q2D2HS8joWETW0xH0RyTVZogqMARQhh+Ny9x2krknRnEDC5P
utNJoCp4HnjLm0fHz8dqDcJPtd69DpPY4Y5z5AgSXQQt5ex37Us/7q7tt8vylWMGYGTPopGX8vmq
DXrR74p/Rk7eanGDbOGhU46wGz1ugvuRBQQ76Un7HrGlAecMYbYXEhaqXwACraYEso0teajq5+OJ
0l65oqgaZMprytA3YYouJTzK1BBcNgBToUwt5bNvDeGAMwi0M9i0F249N9cx+ZVcgKXye+G5i6VJ
+4NaXLzX1mYYYKn26GVGFMVyOgTvgHyl/tRHE/JGoSN7muuMji2msKByJbGrG2l1OZYFy9OzhSq1
9Sx0M7oZKFoHbXOK/V92m1dLioDXFgvzPsTpojjfmdeYGYJw2kpoyIFLJgNql36qUOdsJuS7XEin
j4ybZfHgu6Mmhfu7Ea0VX+1BafaXHW4CyDsDmLmD6FKAJD+rK54vvAMrFalNxLkGWqQDIWjXHyVo
7MjuVJU0/Iay9NrklMDkg25Q12GE49t3VM0pBcIF3lZ2R/dQKgc1AcdLZZfNAsyTZYomC5ujxdzD
2owWh6AA6WcuGCPekIaih3CXiQ/D7X9LDerMvTLnv/K3d5eiyZvPTJCCtc0muSWbhi++ipcfPjt+
FqSBYG0yERzNYtVp3ZBCCtu0TQdVVTpM9186PK5q74NBbqK4ElQXXrl2icnXbye2aDy6smURL5er
3cWjaIYt6FGgKuWgt5HREWJCnsj0u4V6GU2vBTdqHjVCQ8bDAFknL1XkT+izrlt9+ZH/Q6xtvLbD
COGI8LSUDHygdGNO6lCkVSOr/4qG6sutYkaNcdzHlFXtsy4NGMF6DV/XvRXTuGhk7lDt4ZUK8szO
YS/V9IFQn0Cpi4dk+zWx48OmA5VtL1jKRbVwdMRysUKL9J1BI2CZKeO3GSlLozzRvoc5awJf2BuL
5qbcR0qyoOM/NNqz9msEPdacH9o81ZPov5k5ehhp6VW6ZaoOpcvtnrTadGLesrtaHImEbOUfQ76G
oITe+jsxtciNVvEQy1/wJtxU70lm5yDyQqSascj3/0xix/FOxPGjOqVZdKHKVkW4TB45kPIGyzgf
wd3IS8tnA7zGy8YFNl6YDUgZssZ9zh7ISmP9xN8UX5A9y9v4xsQp/taFOXQknIuKecz2zmkk0LnE
5mk9h3axcMPcq7SLswroyvnOzjLkB/gu/1pkyTQhH6B0F5LVT4ZYsgpQ9hT1yAG/o+R9EYGQabvJ
iRWKSaJMQLZHj39uyX+CpGnPmA4Nm82yvik13iHguwl1CbyB1jfgZWX6G0TWu46hQ1BjjMUFJoJy
+Ubiq8yc7XG3cC89t5xOtybXkD0dpsuPdmnvkigFBWT67jzzdOgI+Ihlis3SC2q5uco3nS4srXpC
sYeEk+KoXw6tRt3SLkPSTWoGR5Ll3sTrHfnB4zvzlBNvK8oOwJGlkVzAqx98icd9oVIMqnZwi/0N
Lln2RMwE7pQ3alPq2FFH7exVe6GRhLFDHtyNYwdX4jy7dnR9JGlSD1nlTg4dHHKAT9+q8XirQG/3
Vlb8BHRRfdS4jmLsczzxoMwMCJCWiKoJrzVynbt7mSGCFYAlXjfVaPw5rNkDm2YT785qHpQF4OrX
3tvAkBeCEaXzRyzF44urpu4leBKrzOqqFvNWkB0XFMO5q98rtdIGBTsfYmxPzxIB/1Z8Ie8tWacP
UhMT2vbYTB+L3/kmwFiAwVCnKQIKcD+w8EeRLYxqhmfgr3JS0gUyw4m6Mg4r/kuRXazkDNqWtISm
/zox6jk6Vnz80H2csS1aywm7QO9v2jQuLnl7EYI/GDpMMNc/t7ny2kYkIpWxiqQuaSu8x240FF5H
fC+KWKxGyuZrq1Ru5SZpITtFumOw+pWxW/I23ZmOAyoQwGfEBsn2CYUwdEP/B1fFXrEvz7N78yEm
mxFuixYJ/dTJt7L+Nzt6DNVJbL8Bi5Dv71CZ+laGJJBdjHsE9nryUxZlxhgGlnxCi6Qelu3a9lTX
G/rYy31VlE5dcsGFx1m1rIHcD1hZPotYOMZWsajpsAlyzm0fW5TXA447fe0IunwJpr5JqY1Xx449
+JwtZXVRPGwAXTgBhD3kUFKChF93bIAiIX8aGJticZ+ZPBpjBakmFhxheiBFOI2clh4+X79YOjLl
6d+0m2yhSGGUYDVvchX8sLnNXEMiN58qbn0p8e40oNw/Cqyz1CFMJsE6vSlkr6tEA68I5nktPCAa
CzJeehTMSXNFwe+xlCrixov91JwKca7/sLv47Ju7DG79C25qcT+8iHGZPeDSnd+3p3Xdvj+cvYrC
4fSRaPobHexQpeR7GfdsHQ7udZLelH9hzlirvrrdVMitvA+jCtDR3K84NOitbYY/qdSAF5m14ps9
z1rJadAvm6vx033zqn8zELB6GYJtilzsAIZ720uKShfvaFyi2sHUrZFCWln5JmlHEfxvUXNW2uM9
D71v8AgY/KkkunFNlbVtZd2YjNHSYmLGVndRZNkx9D1/Lm2Ita+/co0cEPEufsqWuESyBTJkcbOx
UQGsTQpRItiE4GgarRdpwebUNr2xOjILk/fG0RlIsT6QYV1WPGhCabNGUuWKoNKjOzo+PEfXCEU9
JCQfB1AEaGk6FwpRvk8aJC7eaK4E2S459YYGtZ57Mea8uYXdCoIRFpbRD35gJX7xLu6o5KSzye6o
cQjC4cplVtnsgivbvYvQXHi43jSrX5EB4WPJMyfp9XHrvJM7PVGWjjI7+wSl8dc3+kVH9M4hFaFJ
Np1wO2esXduP69Rip+EtBvdz/7CoHA0MjVTiv3+/Od/H/Ec493AyelfYbjV1zyS+eg34ZJ3HhrEO
GOGDXA4sQVB1qRyK5AytkrrHcqQAvskh2962R0q2x1jLNDWUpXeVcHekgG1avHkVY0Ic4ZoW0X9O
dFOl2DUxowgPCRnnfw1acIoFNUgczdf8Qa00Y5Y0MsL3GhBqE9xiIWFbqKLJZa8LLHHnieaNY5Jr
p5Z338edx09091EHb+EXxvi7gUfNiYGPpr9HzdgSPnjy8RSCaQilmHKS+xlIpUDy1S9uz8K7MyLb
LyVyAygH6PAQ1Dyydk3qUHJ+PUNX1CpejYcQKn+7bIp5UPAqDwTOMnkhd2MctNAyPD4JQ2DobsF6
59a/UMWHWOorfVNePGm1xSVKcMgS7GepM/SU7nhKrz89QAEPv2nyy/Bgl/vhrUsUCVB5Yywu5NkS
goxBs2HAK/Lh2r7Koq2OT/u2oK0rqMdT8SJ6Vs7FjQaGH3k83CWIYjX09LxklfTzgqBXzqz9rY+z
+BBFYJ/yBh4admxYIwmFJF0qKlxxyJ8MBqx02ohwe9puYY578s9PRdvDrSBHMzOW5Bzas6kicgUu
LdVTMnygY3yusE/OV32tcwc1o9QkusBC0C1WdtvZTtNYWDfp9eGgf16DxnctS1dHSuAkIKK4b31/
it+IoRc09vG3jNr7wRdho2JJf8Jk3YEDgADjj6Enx07zFvstHyJwoyCeFFN7upHp1q1l0SFHyqHJ
URXbd8TbpQmAlBn7J2rVqgXxA/WnqTkF+OyNYi0iZ4gM7upgD/2+kHwcPtqPUderaNiCrhe8nCP4
kIKl4Vi5Gt4uCXMJG6YKS2MEGJa8J+dZ0Y2FsnLZq2QG4ky6YZJFt19IdzfiDl09sS9cPebo54Wh
5cYg8gm9gdUK/SobrIdrDCMv1fGfXA1K4XjK34gSXnHymdQGvvraA0H4Ze5dDFKJ131roJjiPtaZ
ZfrhkLfb0ipV/CrNDG4hsIDXMy/d0z2d//cSkkvy9CM/cClu1xNLPfXHelnQeoH4s+4MizO6USPA
m/oX99jTz3JGo3OZew7XPC360rJOUzBbOIjLzBff0vzIn2BhIsgw7HNLhppU8fH7MIlizvxujhtF
PHawcqSyCvyXaYopVTvJ45l9xHdoQ4+dPmPAFB6i8QsgFpvGiYN30dH54umzG7+iSpgcLvYX3o+p
5ELjB6lGDpJDaNzqSCsEwVVI2bYzHCfP2mPU/HnWtw3a863ztmcpd8TZwOaM27uBXM5ul3NhEqly
yT+B7KFw68WGjkPEhGv0ugXVea6GhQ3zLBKWJ34y8CvSp4wWHzPvRmJ2vP2tH1wuAGA3PgZOyR8d
okcLaxnz5z7sZPn/TvF7yTaQQQnF6OQwJ4ZreUBjhXOM1zJE41Q5aGbjio7oieqSOhoRuPVj25TH
WaOBxpX2GhQdyoWmF5b2W+kRybV7mLkCHgKaCjx7RjihL0Gv59bTrT1yVtNgte3SCZ2Bor0TFUor
jqfg9IQeWIrr4B4+F/3+YbXFMUrhFkryxXW5fW8vHwaqa2BFxKBqMaYRP8MxIFa3ILnSKxFmpeQs
WG32T7H2nD/KvX5UTiNcvr/tlfk3xyS2lw2GiXsJb6tz2CzMsqKbt5n7/fmDIkKU2EGFq7MsOtCm
P1kUbtxuLCusNDpKtarEBdncUXV+RQX9z4PUfV6DStJYhKeOVm3qGper4e/vAZq1LxPhth6MztIk
RisFVzC1Ry1plWLWVp7kuRkLIxQXUQCvrXQA53q98a4KBYIwI/pf2GGK+qWBzjM7wvLbmNEXZxjL
c4ETduWoAUXbHO3A8i+cYIbLO8h8haElnuzRKVrQw5jmqJpk14FxXlEwK4pZ/cEh9IF5+T6QysKL
gSfvc3GGhyRSCyQZQaD6sgABFB5c2FNEG57w3BihHfQ7DgTSNccwdDjtszLrOG1IzGeGZTKwctVg
t76XJhIQ239Qr+3ptJwY7FvY2DF7dUkHGCRDHEePSnEyfQqBCHAclMiWckFz8sxIIiya2qV1u90o
gPG2kH7i3SgoYBypqFSsygkxoLOtV79038w4jfHVniVqcMiUCeketJvfkpUJRVRTvubUGnLRdRV2
uczzn4Yz4IHkl5HiG7pa1lqSRfKA106Sh7tipDlij+0oFIts0nNedwsU5jYpiHmyHuOq9yRM8MDO
xPvKCWSwssdxfRM46/Zr6Sjsw5tJmEINWHjuWTNN+ztxoNumU0GcUd5TZU/Cyg5tTZc6UWIKWHXy
FTlrxiBla/f/HaPz3tlnatHIhMzcYFFzXABKB5Ajlb1DpI/v+B5j3mI6Pnb4H3y+b/oyZH2SdAtn
MwWWHdXj1eRId1Y4bcufbUd3fhMaNSHWIc7LkJOTAJRKcVR8LhmU1I4p/4eXdVBg5sbbaTcJAFFV
8yPFuLs2UK+HdMDTbJ7ETNgsb3VVjACp+XmoyOvjdzxV/ZxIcPVWqTcZ389v74p+Itdbfb3yDk8m
+74twfwwSN93iWxVAt5l9tGSPMgTg7tiyQ5deHqwPORPQzIqNTu/0K5WXtvlclbGK/9t2R4YsSWS
mdCtEicHLk301LXIibsXUqshSwBg0+WqEvJz1tHTxmBiOg5nZ+iiXcDPGb2/l9MfRbFal/Kbwb47
JeRelq2F3S7IkV8ZxQvExlgu+FFopQZLGIOzN2jsAwxSeex+RGzsfekhM3fmAZwNePjdj9zz48Aa
/ebWxSpTutudPntnmikfEvnx8Oj3kJrQsAX0jxkhNcTcgseZ50iMCXz7X5/k7/oEHAkMkxfclNum
+R/rd9b4AVvM97+r3N9LXNBwXB6OjlNBvzKXYiJJ63jKQsiDIO1L/BtISw5YwGcqQwuSJJizf11u
uqhdQ4qTLCbmFh2MGQdryGHC8csKbzjEp0mh0XEoWKGEKvwPUYTRi5hUl0gN34rQa8QUdSQhf1UL
7RlZl88RDKc/Wz7Mp9nE+8GuAuv1J5zMEAD7c4UHsv+TEs0fwbYzxkkYKiVkvK4x35tJODcfNtff
1bnKWs4mKOv0TbypMb/eW/mLO+ApXduvZcHfj2DA4OzyZwAR4pqIcD4vkyg72uObB4jjWleFl8TX
z8bO8y+VhAaAMAiw0sLEHVlCsMC2ENe+yLF3Z5uTCbhdpZaVimjkg5CmE6mN876/0xCbnizHkpn4
jmQtJW54YwDbvBgI2+Ze+Msm8xdcLsXHOT2R0pn2WJaOGQ8JlPnxZhnjYqNLIQDdINbdAK1wWJBH
6euo+mXTpToX69WDjDLIQZJE4dEhvaDW38hePgFZ9/fjPoW66XVdxydzqKX2lKoEYNqo6/ZE4k8V
XspGIRLGLGdgSKjy7NMGB//jMb2DmAm9khP2X7cK5dEBv9JOwj8ObCsr8QIwltq6/G2CV56/kr5e
Lr0Oz7m8Fgn9tUs4KZVHT4Lgm9Fiq3KogkP6FGWbZpsVhEgkTRFfCElJd/4OyHm7V99+N3hZ390B
Z1iySLGHOmrAEzD9/GED3maQ7ki20mOksCB81Syw2W3IVMPchx4IIOiECbWVahaQbgVgX5EPw14C
IZNvOtp7Wo9IbUTgwvlDBXB/CyUqdl7be0FGwNCIK2vIMdjRSkDyOOyrXGLvwY67HsPy1lgU7EcN
swUdqXIYa/Fq5Q6cxa3rBL3QQIVfKvoobrAPR2A3Eu34hVI06jrZvYvlyVC8toDAMGLeS7W7HIRW
DrufkxqPqYTa3+c57afyh0tAFYhXSoozHHTj1CbJBPG861yNaCfi3jyWwuQe5m5Rk2HY0ICSRSC0
V6wqD4X/a25or/4kuyr8ZWa3WvZvZZ5+oifwZkdxLbqGTRP0GHUKHRxl9NmERSwxjMEwEn09FB3W
Jelwcr9Uje7EN3GHXpzMvHB7AxtJSbkALCCrCAUf87B/NsyNVjxBJH5SarJS0NkwgcmVjc3Zaz0g
ISUt26lXcuXM3eegxEblpVXSvYthbJZcGoZz/uzWvH+fzdLAYR7tK1y0Nh5y7qnzi/KFmlLMzoFo
k9wiFe+mZQ3i6T0QgRZ52z1eKOLgVPjK1abfCxpHapNWwk9zEkyJyD+3l0rRV7bVFf0DsU6EiO+Q
6JMaV0QW1xxsfYzRkigvceqmaiEEJrSnFmCc95rpntozIhpi6FzLQe/tp1hbUr+qEA0t9mltdvE4
Lu0Ch4EmRg4ojF2Fgl6a+fMEtxvMpcC4RiuKcJtISoyFFSHsCaYDETx35T1tiokdyRFhxi1ghzZJ
256K+khP/LcXqrCytEex4TdOegTI4I/Fs4yUKjMhckfdnFpZP7JipP0f0vJTfPt912Q6xiw8o6lj
xCsaU6/+FTnQbYNOxX8g+gl87oFazuLJnaicHWyYQMqRWHM1eszJUccjB3Pa4YTDPMx5n5jlDb4y
yjY80pB2E3rDGZQH9TWk8Q5XyRPDb+S8bWvkqmXn9gsKVgX+zCO+8N9IUDiCvTSs4GktOC1uF5sk
5jJ3uLABIqmDROcw9sNG1XtqE4D35PSLjKEQ2JfQd5R6fVxhPbrWXyQHByi+yevVgaZJQtAWroaJ
fGazijIvOkRlVOncUqBfsoc3Ltt1Cc1CtG4XLlwk35iai6Hy9TFCBTZqd9oC6p6QRMTA1/jJJGi6
4q0OWkA6r4/1D7n7TDuv4anMlso99CFXXJH53gIq03kYZcwyb+YvOzdrdz+obef4wBBbAjRc2vmR
/dhGs0wLF8ZaSUxfKC1X1uvmBkNiTs6N7/Z/AJZ4tZKOzc1zLqyEsOhUvcGtfT7G65Xu/P+ub1su
9bNjQo8AO19yhi7e8PYS/LlM+j+VMYc//B40aiGUBanyrj4laWBYQ2I83PyTRCIUp0j7wOokc7Nx
bt8G2JY1a3UydvEW1wYiTG3PszSnkpXr4EUfYAVBS9x+BKIMPhRa3+nYztaRCKO9qsuGbZZt7fpe
hezbKD53c4J9JZnxn8VqboS7Q0rtnhyBkRxEwJB0Wauut1Auq78CcpVK1zbLQjJJK2cKJrYoed/D
AteNMtp5IjuJVdjU5IbSlfOxdLjJLKIdNtXW5gQW2LfrDwO+mHk2aRZ54H2WQZhAdFfqEzKVZ7mT
x+GiqrybEhCWA27jGpEYpiAASNU0GSFAeGeVY5DTtysUGkkCJUfxKT0erUPGQz0myRjHmg0XoHbz
/272wikabjXzk0AoWyPWF5NwTvqpMjKKRH9LntMDGIs4kjH0/YFiADT6CgZusLUowo0HC/Zkb75m
+jLF8SzZxCTBg3l1z+WEFaYsCyWF3NohQcdP7cicHef4WpmvaNROys78Lg4YuFcD2kZa2kYR2sVK
gD9WXkTHnxg1Qr5vfYdH5nngx+Z531/AUBWpNKIcPCgRKTWFQaewRXZyjcI3hhssOZIOaIrp6tDM
q1rY07gRlgXxLs+or6VXJs+jdPGkmpX1b1I2+zYcsx33yok7dhej8Ydh6Q7jl3ILE0aIWlVvO7cQ
NONHwZxvYt+dGu0O5O9c2Q2EMLBl0kJcmfxM+sEob3obxdSMqRHCz+bGBaNq37NmJzQMd2NwzkAJ
4IwdiGt+YUaEGKKPib2O+xQT1HNmYUmzMkh+rtQZGTbcNo/WYO3aD0kIqKezDExiNFaRHHR8r7rg
eqBprXGfJBYuZ+djAf9KfV3cnOTilcjfhtLaNnIINir6QO3POCdAiBTRAr3hAOZCbImWrfSZ0oft
ewrKkabjWZf4u5AS2EYchxJs3ZP+YjVE8gRoRdiZu0TqNhK4wtqdbxqg04RNvpgKkJYNdzh/VoY3
iWj6DXqnH5Quz7fwsB6eALB3/V2Gtl/PTimrhNspbqAHQE6GumhCy7eHyrtKDXVbe6UdSbxkum95
j52gbN3jO1ZG+KT9hRgRkEUb62mN4HCHmJS0gwCpmGH6vHPAAKxwKcxIABmd5xfXqZtLVD4rHsuS
5VJhJh8rYvdoQo7YD15T4cChuhOqudgVdrrnjy5V74mxRIGEVjIALHWTTWSqB1siRyIvKEIUvDFm
Vzmn2+K8UweVMs84KRisV0kjhlMdqJmLOxwv5wQVGI8bHgoiNIiEK/Buf9Wqp0OzBBKrmO5cwU1b
9mrTZLoC8Bh71l0qE6w5JI6fXdl2RVu5lrDK+1/+nVKU4njdoTYRweA2b2z7xgjp6cyELnnbnSys
mnd3TJ9Vx1XmuIKyQtgEf6IvsHEO/S7Kg2pTjRlTfHtcRum0ZnCrnbOb2DkGY2IEEcwTLKvMgLcZ
FioteQfEKVgu7Mk3ZegoDicDNPLSswg/rKNFJ0+uuY0b1khcyiRyXV25X6O//0QCAY1v8X4XF5uw
kHH9sJ+g5Hod2a0mAOscDEivSFMbswWGZgXo3ZEbvL+Zfi22di4kqGpwG4CPBrxDWlzrGhSFEaqQ
4/Pi2tpY+6GgNHliO2qbpJLnOIHQGz3TXR1rLpSqRkBX50U3mcQiKYmYkuCV3SwsKk3Pi57Do3Lh
d3/+Ceoj6ASC17jTiJi9KzC+wSGgwt7wmIv/gwItVGIwONbzl2cmh2fSSrFchtSEYjZEq7oEG1x/
PPKwmgu8keH770sOF/EOS77r+L2QR5Ksqri9oEGWyYR7NmwzWrxCecTKwkKSheAy9OyIJAwlxQZ9
A9hbHlWWs9HSzIplwoDOUV8DdHGtszeyLNyZXQzZ71R3wn640Se1l012cSVIfzmQx5CeS5JDU9iO
sJMMUipGTEWIff4m0S9PkEg8ht81GvRauJdZx+Pbiyrj4EsiwZflkzoyz82SGeFK+rn2eXrLKFbi
03DkX4dLqasDGNMQaz+AYlaLaJy95XVB8oaA5r+PCNjp6sDtUocd9j9lWAIUlUNl5zo+h4Pw6KGL
Um1GNEpAHrFfEiiS42s4A89l26AVLMkVmgr7JZsxW/ec5umbWjMapTCMDqluA6+1Km/Kh35o+8Br
1R4Id0lLPeE5uDQvtTaAAe0s4c8xY84EKwB6gu8oxW6O32hzlWfN55tsWDD3oQp1B0EQqEzLGcOs
jCNwbXp79B2HGuHnwAAXdVSXWxatQxlMJ8et+JwZ/901jXTl0TFJh7Ks6TVqNUuKVTDFAROuGwwC
h0w49yVqkU/fg5SfeF8yAu0Vtn2l+G7z1ISdtmJDq+X64Sz3IK5EaNK1Wu/s0JhGQVDWAyRaYpcT
I6pBwG+uVVxm/TZM3qKvmB3IeM8fPNTRm2WOWEX/lRYpeBS/QPm+VzuDfVwJMLScNixbxwpOrr9y
T0i42tQmKKN52vPyP9QJFz2BVQZIifHHGh/zkDVD77kqvGbBcarlVUvVdVrWiIRJZQ8E0/FCK3cs
BJk0s8lF9WG7ufqEIWYOj/xuGtYG5W7YlcVyJMLh4D8mWLkxBWMErMv37qCyiiWT2f3QNW8wjlAp
KZj6fAnVGXYZZrYw+iH6bu8D1M2woCSISTbr5JDExyyiW2AYfPluRrbIgba/oOylgo7U5meWbAfL
N0ZIIs9O/6T4kwCuvNz4S62kqOyKfneOhqysOzpsJQpfGUT0L1ffmd2AE+e6QkRBK+aMhRz3MeFa
CY1Rs9ek5rV6uj0p5LA484MW0kidPFOphtK2I/0mHp97kDw1K+rQkPbMt/YLcDcaV/d+LldJAx2O
D4Rq8l6l8o6Xmdo0rjnLVsd5m6LkeBxIkz26COAZ/6mR+I2/xfrXW0HpXqyh9jzQe2r+VqK4H9jD
Zl3BFQNADgGCXqfCZwT3QB+QuAqnr1mo231ksDhgkrdFrQuxDtvXHhPjUqTPAN/zS/O4agk4yHA8
WHgyR1Azkuaf94Sg6iIsgwxedrlWYDL0T45lEyC4NNJVqwcAPUTu3soRg4fbOwvL4X44AtKJDobP
VGxilk2Lm8JYC+c5tdwNmFQINyA5+3VM5ue29pNVX1cyzmVRZZTmZCFDFlfjWmDCNj5pJOHgqp7C
/Hep6/dKQyJ1eYEKkeM7N8m9f07IauXV4HgwQZmz9GYFg9RRZRSqkQ7rbRJn3QXdKeuEGyQwMrNE
BQCWaOzFkv7uhgSf6S8LfSU44nAFaDpHZ1sbwFVt43MXB3UzylYAG0NxG15On5m+a+y+tXbPc75v
1uTyg5hzVTgmU4ZueXkz9/I8QTIO5pCu6zRrwhJeYi92pnshp6+ywINcJ9M+vrECzYe4Xfg6asAU
Mae6xfsyAd4d94ClwumSll3AKjsJVwn/XFx4WZ3lvq83pKVxi+OmY/jgXIM5xTeh+CuEPsoZRrRv
Jwa0TGYDAeQiKH08UzFFlPQIgrN63UQiyl2tkhUdj3WEc0fy1jqvtXoOHJQcdNS7maUOHyOIw9kJ
O35LCRThnM7fh9y5opbGgScB2ykAC4Df0GquiUiUNYv+CR4B6oRja4UyM18qXFIJtiWD8T7zW5/s
ZPYrQtlmAYJhDCoZhyUmjl6g0F7Y4S+7lss1Sxt5gbW1IE0ZjDsh2XjsTWvsUZ+ulbYHzsnueTga
b8aGNiR59di87wwyhxgrmD5d6Nu0KDiS8OVipjmofOfFXZTDRGyML+qdq//py8s7YPi2/sQaF5hX
3us+y2F4vU9DB6EY3Owvn/XaodUDwbuZGL8cxnVM3KuFLVs8xOsjYUvBNFP+eg2FufqDcn9lWjdo
tKYYQUB2hAKxJBUkR6Y1bwD/nwFuZzaSWswJu0UiiQ9s/yLhKtWIHj0a5oMrzGrGIn7xEuYOYZZW
VtytrdrV94yzgUMUF4U4qL8JhsNq+bJT5zEFoZXeW7A5ZXwEKcPcvhI2XaLJKRfBkhKHI5Gbb4QD
ZRiaDZrVAlGupSUpfvcwb1tWSzMNqZyOkS+vo1v9KoUgDRlzgsAoPtwLXGm1t2oQ2sx+WP7+xY83
igCEe5/SQmOCCkbovl8yRB2anYI7qRNKKNvxIT77RVC5GW2AsPJc3m9Iqml1pRqc9W9pWhyQj46I
r+/5lWydXWW8Ya0rrNYTtQjffJCrQAUkhhFCRHtEQqJztWx24aVY2FYVW0IOfSYsbOsKZtNWLAV9
2f93XEwjfryIMbCq7jGemrDIylU3ZEMoG1IkLbPTmo6KodUQihr1NeKgNZCrlOS3XOki3Y0DKJlf
6/Jro11OKZ/olh7rM7TPJkvZKOS4U7nkRQCK5hg5L0L1RURZWCIM4AOYN5XWt4D6jx3f1py7htlJ
RFazanYogutBPV8Cw86m3bdo2Wl9aWOKF3m5yOiMFySU8Xp3YzgSZlNkFqOJwhnejTgFyKFrx7kN
aoKYfLyhwX+8sAVTEYzJYqY9mjWf6aO5yPVvcFTjmxrefltA/NH/fXiddFtCCbgj6yJlzwcmIk0L
gJHmF+noRKsZKCTAAZ+U0iaV9eBzdMONMBbj2HCVOw7efI8xknZFivT22Sc0bIggJZqaCl51R20F
0gMbXgTMs/nizob3OZO0XHcXs16i1AO8SmqRH/hqqBnAMZVq4D8ZnVWAc+9PEOmJF09DJvjYVCUe
dQ62vyaa8l6rEtWJv/a0am3+UZCVO7GzAXi8Vv4+WuLv+oYxjNqFlPk3uJS28FlCupIdbIUqQGgp
ILfKZPsbfUkXDp1xJzbKQvdU+sg7P0A7jlZWE7DUHkVXWk54u93/3a9TusfeTQDITp9gBM4aMS+7
6MyTrZcLBO1eEEHda3ojpAqklbVwQFXU3ULFATpR1aYu7WTfWAWy2a0aKxdpjDOmBHmu9IZWs2JM
U0uv/l/9C5J3+Ci66hbduN7jq5My8qxHqSHserlSU5FRuwq3zMBho4lDHknaSHOst52pAFvOwFzg
5bFTSMO7E68034JOxZJQz8tzKUJLPXu/kRE4xtKmXgt/xPRlPUlEvrEQQ4h3wFOYFO3pT91xRP9B
eKhqXAKf/O3jkAk2ssjm0gzvscZlWfUCQVFhRbTFAmvGUTcjdKM28B+sdkdIwvS24cABsqeEAJs1
rGsnjz0wwHpSMvlGu0CHbPnX6X5gItYRpR2BDO7j8hW9aNwx3/LanFtOzXfXHXdjwmWXZN53Op/I
29W6wz8OfEEAPS7JFxpYVMI+ZCdxtPhEjZ/l+Nea3N5RTgJJ3vZ7K0PyMAg1/wTWEDdP6rQAoIVH
gki3A0Kg0AEmYpDLxQeEFH8IAeAQk6T0bPXYQWVHR33gnH9+9cA2SM3AyTnOHEwyvgstInysMGOP
6wMTPR+mAc8e0RprKrWBQJzX3mgzmmSO205wxdS0ax31t0ri2KbDZbrNOO6sG4iVJ8FzZX3vF45Y
wHWKKMV7XRj/L7eEEn56iYnkTrF/4Ga+WlxR94M4Ymq16gberNQvF7j7am8axG2KDZDW7MhOAZmE
Lo+9rpS3CQG3vD1W0A/g9MacjEzqEPVGTrI51CF49X6PVdh79GtpWho/iFPkDYG0AyV9NhNcQQE2
QuwxcgdhbK+ocxqvJcn3G45GaGqfC8AEIG8WxvTmGdRgW6DgZpYMSmVhxn+mE/WHqA/v/AW4rAkz
x1Ain+ZygCNqjvLr/9afbYCyPQm61hcICqbaJCqeYXehVHRZNsHIA+azHQXVIA0ALmBb3dlDN3UR
KUzazVHjLX/wT6QX/f5k/X6+plzv+eRxCs6kDKkkIB7UGJT9FZFcvTiPNoYTmTuEQBYct9gYHfAu
WYjMFFzLd2SsW+FuqI4wUk5BGPgt6i4u6nzXWqf5FRta0b86nRhY2YSOg3Uyp4Hn0FymOBEUTL+1
wIaLHp1NYq49W4YD+cWXBGSJm0ruS7B9gHQVaVVFFyCI6GvhW4qxmmmEft1rXC8OOB9lX93XsQKj
2UYb30H5EOuoGEe610zvY/b4EcHjK0qQheBUrNmhnDmnXwLK1F1YWtkHtiw1dp88aKwUFOm0pfRj
TPsTlWFgMQ9iNPM5W1MrfEOpKl4DrLbl5AFAkTwb053zYTUaEu4mswpYegku8q57NBNUp6YHM/7Z
gkxrzFSMRmie5NQ4oLUZaVhNs6qz2wg/gPXShZwWfiilg1UFIPwfUeTNqOP8BCmUmnvj09EgL6Gd
+s3rjxuU1L7S1ibkljujW02xcGUEysoRT9cx27gRJZyb1Pk8dFoA4pfKMvBUGh5Q1cgROmw4zlIp
ZfcIUXVTfSfoXcmeb1jaSzb0wlVv+A9mgw22pUJbq81eujwcCPD/8D79crfr9MX5i/JtsAJM2k1z
0TmN6+3cCNNscRRpomHtm9iftyDL9z1OofKmJB+7VxCk5w6bcWWDt8JpSDTjM7U6vevo23m10zck
hv7jIYmNjjHucYMo2Mo3xB+CYfUVSboOxNA/98uz976byVH0t+mxoIzwdpl+YOsMtccAL9yL6mkj
1fgdC9pmD8toI4zXabi9j6SSE0PgHomEEqbJHprchODgh0yJLJftIJZ7QAKrnb1e1QO1xbvLvrL7
rbvev0fddsFb8OmviK5j8AwpFhQRNWTCg14VUDc77T81UfzJpk2oEyvHE/5k7Jc0UwRcu/Csvt5s
pc69jPOI626xzvL7YcBfi5Q4M2u9h5RaxMsu7ypf01V8T8m3Oth7JtN01NTNowubud+QTAnsXwMe
XnFpC4101UAe0MlsOi0uPr8sTuN+Gg6qdM515cUujc/0Ctynw3y6ZOedYJX+zv4CUDLe3ciKKaM7
SkiPuEirjTMWux9zqREDt/OEgvjHLPG8kQTQvwR56YzBidjHTojFGYPaQSXhG4Mw4gcB3MMSk7Iy
Zj3nU6cbNBS6/vIUb/1Oxo1mWGHq9W50GU7a2alKZigFKzhNFbzxkoGaD1JzOtMyqYnsZeqTboUW
tkbrRUFxezS0DwB92b+neL0hCVjp5RwKGb/rlZVBy1/swEGZK2QDf4/+J4RMZUYBnZOo4dW7Cahw
NUOx5JxnP2YP6/wPLNOh2yWNoGIAWnXxr/IfV5B1Myg/sfQh2A5FPMd3KY0bWOOHU4fNww7PzEiD
7ri8i/0bOUTKn+KTTzoOp+L0sGUKKG1ysvCoo2B6R+XLQHp1l0tjAhIWfGx9+yr2+nrk35qNyEP5
WzfO26dMcFfOz0FDSANMrblHBVk9RU7DUIXWKD7uYyjZnWkpPtdrDbVmG/13CJf3dNJhFEDCi3wL
KSFPr3Th9SBADFEwXwRBKiIPRuzaXYj5Fh16HdAignYb9oKRpf+XmJ9wU9mOGyd32k9Pys38SlqA
zuIa6lUHnuFcaXU5H6VnKDOpfifgL2pMocbfcWpT4c1IbDdKdVT2FQOHykV0zLhNdlBA4jDnRlCq
OoUWA8Cg8TMB3syG8weOja+OQY1PBGwYhYWekUoxsl1kczY8hgVb5pz6hisveixGg+/WpKmvOmwy
SUi9Z537F6qMkaUcf2yd8i2O3kErltR1eFtTxuaf5MNWyWjOmY9gGkY6wILSe7JKSueKfrvyUTNB
abMKSFXhCg34cDDMrojOjOYIl5Y73aBckXlyOn3An4a+aK6kcCw7OVlYsjL1A91FCDWFjo82tqFG
DbLSybP1hb1d2K2JJlZ5LWh2JUAzorUQD6zE9VyomZItwGkklF4l03IOjSaKDuonAkV6Do0yLszx
HlB8KUi1kMbiBCtkNLPl6Vsm5S4oIjmC6H09FD3MSCFfrO/qn2air1Bv3/20Fb5Re1CTPLKcr1JN
38ngofeVNRvBNdoNApceGYFSpzq49U6n2YHLNu5L9LzGkOkTrERjNQSCtYnDpiRr6baQsp1TAU/t
t684xOe/D27Gkinx37xRRjPFuI3RBEDq3e/kUGeq5NaKnvuoFUlGzI5HN8gx9pOYnQleEwnjlgtR
vZcvNV3S6xbLgEDF/ZPNh+85C0QDOjinJPEx7PqZT1XbnvDWgrFKRfykNMf9milInq8BsOmhQ0Wj
jHfLBNXmnWjWBdY+AaDHAmiUwUaK0X4zFg6AHVOhpjLZMUALTwERvN704Y5EPxGcpFyklY3SMGkp
bGuo/DZhM/k16VxOPeDyHkfOrD+26Yh1Q6/aa7/8cj5k0w8BF+9zxdq/Uu9sKrrLU+riY48gYE1k
8GzyndBaS+8gmJ6KRx39yyEmQNGw325Fllzt7p/d1ijR08tP3rLqqN2H5dKuATua6fVVevEhP/NB
sGqv/eh11PCoHBpQg64ZrAV7htRKmJ1V1rJTKnv6c8IcRsmvFezJfmfT0Osin+fABLY4Qnwbwr7A
1RrXAAIiZb0n8WWOzzgCw/SkDbuUm1U2z733Dul6mpTzgSRv+PMObJlu2NmD5RkGP2q21bYaRSOM
8BYrK67FMxL4/p5G2/JQPr0oIimuh6NNBwSJ4srRzKtW0eArPgld3LVdUjH7NVmkrec7bHzk/CnQ
UNK1e5gsRKxajho8WODFnjBgp6jKIwpa6HAEiiwZ6KKPiblGgv4Zp1nQJwnGizetdZ6xkSPBiPIT
jncUAZ9+Kj/lKUcWFppHyaNv45Sp4MTiLDhkZQSHI2zyF6c9qshdrZtAHQC41ftorPBw6QqKP1Av
hG+QTiW+Z3RGP7srUZkrXaWdhf0vDov475nOWFkVd8ErA2Q2uFA2/EiaE+GKoQ+g+ZJkVUqLHNex
sOWDqPfRztocaxCACpTYLW4vHyNDIgGQyPsZGxYohWxkp1e27J48Vks5N+U4B71h9E2B57dYQbjs
CDUqUiYCag5742aDf18ZZb+gZBf2rqoxrKDytr038gNr+rx5UgIgGFgpdT7FtDEBN1cRLRVwvk2+
2lX05xYFMCSbNsqZ9R0BsbDZqoCiMswDSp8zxZ/JgSpgiYaiSTG2CoK6tkQufRMn/CqlAdA9ubb3
AGrSA86Ngt2KG8lahOMFrW4inksuMk9TLbE8ubiLv95x9Nc04I+ROG5PxvQ5Zfn+uAxsxDLYPnI9
Frd2kPo+NJWX5AkcCCNbeBF6YQOrMgCl6yU9m2pd21mnLI64KhaiAft0eDSN4fgUaA3DoMZn4p/S
vJqwhMecJlrpIPrKKnslRh4qy1LwKC+fANO7M9e2A/c1G0jIYfF+sH0RVzYnh92A1I/cbzp9iEIV
XUGHqjXXRPIgKEbsSun+xTfBeNEWN+QDwlJJDfaaZqrWOqlCxbcZ0wN8lmLVXGQlyxYAewjdPnr2
sDfI+8KyovZ9ygC3iiN6tLzEvahQQj5J94L63ERC1nxX1UleR4Tiktj9+dCUZNqxwUjNgffUs8CH
NYoX+NZFV+1NdWESiErKlkOohRiTAMSLhB1J/fQNMnoI4xnckGyDv2/XClf8PV/K9bie/jt0wHol
3SC999JbgSvGYDngW3uQzbu8rx2MLGcccg7RVkhii5hRlpD9mlkJccOnBBA/qZ/MnArtKAZbOA8B
PEOfImH9U7X1rf/yI3eri1P330+7qwvN/fkUqQH4a5fUdk+xWkAT8WEzPjZfbqEMOGkew05AuSyM
wzsS5dOvQ/pdDYmiZlxw7UaaYlN9/5AMs/Cn77R7JN/KeIyaIyej3xkxDyC8UyOKGuCDMzswj5Yt
/RgldsQrd4F/VdLDqgavZokFBc8P2yrTpAxAOymgwWPFjtsZfDuULM+QixiJZ31jJrr1N1oMZjh1
RJ1sKbp/PAW5l2TZ0c3WR0g9rMhay1ho41diZq1RBGGYAoUUL5/XVi/3ZU+Kx9mfKuRf3Eek+eYf
w/cqa7Cp+uKskNCxRllTTlBbsADYTOindeFCMpJDk9eDHiQdyBSbAEMD57Z5B1POJOwmR7WXBVao
unT0MeGKWWTNUzAF5MXtE8HwmKdtzBiTryULS8gqhnHyCoAEFLMyuUXx73GgX0ePZ8v97gCVxuH9
R9SAqPWdrRU7YznaBuEsLEy2yH9rNEyH8eMRJA++b94J2gRzd3NFlxI9RumMN9VbFMIvZIf88906
cnCy1KCkx91KL2igCS+aClQlSmpVKxA+KeSKh5aT6WAyt4GrITu6rG2vLm68sznWnrlMx08aEHhK
WXkgZKizDsc5gveIiGm/ouSASnAG3NVsvkAfmU87W69ecC93al8tQ7EqFM0wUSBtyTZcRovjJktW
o+mvJiL+u5xMyIWaq+N9Q60mN7Y/FtRwut6NzQtUE4lylTUAXjaobFudM8HYUQ8ExqNKiwm+kG3N
U7O1p4TJ8wjDrhu/AkFTJbgOOMYnrGsQIiYY0di1BCWGSruSK6PgEuYWqffyr/gwLXtN5W/ENCXx
oQ/Iv5In5Tf4PiTYnsOFMzSYwqq33xdunKT6hFQBSEC5Ob1Dp3veZfG+B9Uyw50OF7MEN65mKONU
adAEjvT26u2avayfAWFXzj529Mk8zawwMLVbgzKESjN72nkP+R2vvNyurFfNTCJaWcmWJBx/1FFz
4ADZ7qnxZ0lLsR2mlZ1nN4vG0gXMt9iqRXHZRv9sdvLtEituP+qJ/Dtona6QGUfv3ECGLWVkbD2K
tpd+RuQO8zy4ltjWYS5mqfrVOp9UIUqiQTpxSycj6W3V9NaI+R01/M7Hlb0O3UR2VSfkeInBGlrC
yzCT4AOEiYws90/S+qJmwUZ6qnuNGa7BPLk9n6WjAEf1SFC5S2ugu6ginZSKuwHJhHnvtS/1FHFG
l7raTR/A8dXDoE5O2e/HClv3ZvHFHEO0GxGZ91B2JEVdEGqEfrqsZ/sss5Z4Ggcgm0eChpUsGtSZ
qbxXMZAdeJrtI4TmKETvOeiRi6eWR4Bdxy0+W8GHEiEoIGp4FuUUG2H1RZzy3d4Uvq+gLBPOj6yU
C1dbSTkd4JOK0C3za/chnCT5wg84MER6FauviqsfZ7l8h719eJz59kXvIlOP9zb1uWDGRxXRM83u
EiXPUdCGppxCIXsrovnflgghClNrAwLU1W49+aYZf86LjdOMFs+pYYiKv88GOG1TiwhJRL7Z6z3X
q1Nr32a3ldPg92jlkH9sX8rWJh7PkeNKn/rGWI9wn9Jp8a1zrKt4RkCKV7S+eK2C/K6GwS46ODtJ
x45oNYU7mEB7GNQ+LguhUZQTUT+ZftS08YHnW4GwBmTBno43BgalHyHW+QlTQFqMD18FlfXEYeI2
mrm2u6+r3QGiKAgazRd790FTmvAG+ohcRanrjrkfS1+Zos514Ld8lQjDHddUQNqA5AfxKBfahzFo
qDMI5OWuQGG5L6sHHu/4Cc3dAB10ZtgvCdFQby+HYy1YbBlYbzHmWG0UBS7vhBtKCGxOh3BE6SXn
tsfUyCgMioBd8bwXOM97lY5f94U6K0uXmYmCRJqulGuy585H7kkP3d2+qGU6EmWVJOF3If1a+yQF
2N6JNdmWvOIxgsz4hKuzzTMhMfUP8I+QEwHY2KbDefJzHYzkC2uGKuX+0JPrIIwhG2Ap7PSx8e3s
yz+VNSEcacQTD9yKsxmdXiks31iGVRTpyw9B7YsSBFTzxQ1ihhOrPnTXxYPq9NqeFLpxAotfc0dC
mwat/KNnwVD+NubuFILl3xPsDBVOeT445YpPlGp/4Ir4MMrabwnt7/jPTX0H1OBTrqeJYSjsW6Tg
aIFOHAPPwcMSMbUrBcNtVnp2itK20hwNXjbDQSn5c3d4fL/xciRjF3/52tSAxbVH5Dqj9ixiqj+n
teFkE6Hf3f7uNa7bJ9KJXkNxMZj++67+v/c3E4aTtlquDaO9MrQL3Bnwd8bFJE2YXAMAq/BXlx1x
Atq5xRvshAe9UEOovbeitdd2spElDA3/RtJ72Dq9N5Bhx/yZxLrNUJP+WFPTxejMsBuAzYDGC5Oz
K/nVaJdigpoBeaNrWowpFr/qp/abYg4J9WD2VpgWdgucOEjfGG8dbGCxCtUCOA2w4LcPfK6h3qc8
emouhD93Voif6y/dDDs/zt8PhHNROZ0SgeA6wT/H+QkKKDWXOvKzHwI7D1C6j5vMifpmndec7pVn
ZKLwKYw6Yctgn2HH8toFU67JSETi7ucQCIG1+4mm7zv1y/955jwCZF5ZKFMjIHrh3jL+DcedN1vm
klORiEwOKV4jI0nnObE7ZJHJvAUsARiFFgzPTwlNazB6ZuyfF63pxfg8bujgBs/vlZtbagxocMWY
8yLhS/jzsIwNrveRMNbvIMODX96uLCKpBfveow3c/xXzsQOi8SkHxjr1Ro2aJ8AWWdnQsKN6flDB
w/L+BOBJmNEcQHtCeOFbqYj6mVXlE9ZQKrbsYRYKxJrQBvhPrB2w0FQyg7buQ5XfC8SObcRDLVyN
Bt3Yd8VM1AmUeJP0o9Mt3dRcX6cjXguyPKpcjOd7SjGyDknmEPy+BImh8e0Ek7dZxzMyMpjDcbZI
V3zCVUVKQ36aXX5pYMcp5HYk9zOimn37dNThQX1XhkAC5QYLueJtQU/EbitdqO5udPP0NmjDhEac
4fCEpKBtB1IXw2n8RNTnrbJ0NkveC/n5cOjS6vs1jzLxOXa6Ne/q8+KtyHrNg5rDWnPW/8uY/WMH
a5qDHKdOJ+b40r7yi7zQwSsZTcOtAbq2A/oh0cGeATfBTWRd/pThM074TMjlk+a3ybxWoGaBx7ns
0b9D3OceKTXZD+YrpkY0emue8xtIgrbfTFGlLIaInSPgAFpWJSEPj7Q78Yidgmxj05u+yUIGtlFu
Woi4+jRd9fe8X43eUrwcu16vDY+rtxHUFDNn6Dxxz2F3fP9HRiE7XlnD0eGWdRi3y7+/+XEYoj1f
7+LrwzHp/iarVuOZE/y4gXRmiuP2bYOClqblPfKovXsYaQJ3Z2u6TOkHX+w645VTWBPMGWNrHhMq
jYvpqH9Ex8nXvdca6No9da+bIc/uYwu5O6e6PtRIGCizNTtCWMAXWCnQVeyYs94QqKhOwzAUpyWX
Zt2lGIgTZUauSn0MEFE/EeiceQTfzD48KEoQ7taa1v1T3CiCkxdr0f3C9T7betCkwNNiOgQuGzlz
vSZMC0/tw4CXKE6RI+JmzNbrikcFK7VHnaigcGG1LAF15mIgr6nhiU6F1VegiqMPZLLLXPOk1bf8
uR0iHfzg0ci87gAwPufRMOisH2LKLhiJ44/NxGPk8iw1ooQ2Xm+cZnqld0fvmCzpeRUmAsJ3kHwL
OWjYmssVJb+t0ODnxIBGwJLdQ/M7GX79ZubJ4ycZbNRPg+WBtnj18yiYqlpcfG9bznfM0FEFodw/
4rxU7W2Df52pRHySvCkcnaGVMJoO1Uvvw6YtdHeYXQJ4BmymPIEVNzhrWwguGzMPjY6e4TURbrdv
YsuSL0M0UkAgze9r4Uwlho8bMo1CPqcgkrrmEqFhwIA9/BC/xNRqTmicJgn15KTPtyYM7lEkT4oV
+YF5DcdwZXJKp7WyVteMxFJIyn9m3finG/xJBPGRuEP/FCuJwDp+tiQmZb4VjALuocASC+FlyGOi
zcDOvk0Zv9nSgGO0pQIaHutZ7FwrOtp6V8K2ko73JZ4pzwGLsw7BINUWnh5Ry0OA4IqGraiyyY85
IHZOXbPfXJNmBWhloBCOhlUaPQD0wgElzbSdmdctKsOoOh3axpkYOGRPZR93QJs6hiR1BO8fd2NP
UCGqgRzTea4LOCgKAWAcTqqHU5YPzZx3it0Mr3ghC0qH9lvWVD+J/950RkOGVszyKnIuKwmDR6hX
ZZ/yVoVkKz+oQOzbaiuvm7DX6SepEJ7qBmpGQuJFVYi/h/F2s/UGWyJRK1tERlIx5vnst28UWnVT
t8R92BykTCIyEMWXG6eciRJkJavXvmsxFqZnWrdv81Rv4DVawDIL3Qe2/DbJGilLjSfT4jr2dqHd
XwUmN5fBgzhg5NIVwq/9+D50qsexuF5u1IO6uWY87WzHeK+t2j5UVrgQD7X2oemj3Nt0JSRSxETe
q3iFrYwLA/tQUhli28UumaYhGHYD14XNIVvXgJRca/voN7j5GrXhNyZG9lu+8lf9Vp7yt4Kr78L0
x4SJhqHfxCgeJucmIkrb1s2/3hOylvGGbVQz3v48CPrqjDJ799NFTgOVjU5WMeSkp2EvzVpqjhpV
1yGvvcotv+tCur3fws1xar6BTtlNzr8t+OaIoxrLii1bsV2UKKB4klWiNarYjbHyDYLJTg4J8cRU
h8yQRcnHdU9jZC309FacSsDhbuZFC/VuPBlmsHYNA+fsZw0rUBQ99FsqyaxOKkR2Zdm6EJDcVFmC
PYJpCoqMu8m5X3sDK1JIICReb9LnmQLYITpZCAP0hUAHDkemKkUdYJt027fYKVOk3sJ4z4iL2NIE
4a5SBV0AaWRf6Nn2w50wiH5gMo/xPXgc3AmJv57kAtSsS7af8frC5CrATRvqUCR+R1WFr883l57Y
kLLwVHEuVgUFN7AcEr79dd5d82GwwHX6jWHmgU3n3hQIlWQaWRf8RDzRuR+423mBz9dhdVqU2nLa
SY8jPIsDHELWr8aIXCJdU8SBSzX07/WlPOUSdcdSTbhOSInfXtWGGyCRdLMBvtflikVtJOwWRQzd
nURIhuuxL+E4WQ8750jLqazyE5FDMCQUihRGvbG6injINM5c2lurC1c6ljUCEFXqPs3cbyXjDzTq
Vx6Co2okybBjdZZUZs6o43ufNc0kkAXorZtTSP1TWneuV4IvZETb5Kunofn5nz+TojW/Fk4gen1B
b8s3jeHZ11TJqxunnPHxXMIvO/xsV7/7WnkzOrFLRbWTfpQBUK9DJ5OH+jI6db2YsTShekXTRGi4
Zm8SJEDNH5Qrg90E6hqCYjoQJmM58JWcW3ty1Mb56QBe1Id9L1UwqWZObd9gFVSpX9g5prJNgu9w
Cq9D4SJmEt9Q10068FzfByCUnIwxn7fhv/ErQwQVxrGW//W5ur7U4/Xx4uczYfF2w+9wZipmAkn9
KJ+ufZns88EZh/Y8r/s5fMIBcp7s9AOqV+K0gSuQ9R35t6Pv/GSVxFvYRZVkDskCyIqKXX1ZfnyQ
ETw0M+sFBNjUMVy5TpyoO48nVLxhSd9ypQPpgKjBG9wh9Hy8c8YaM2Y9WY0qbXPzX3RzPidIBADZ
6kFT6SPb92FJyNf0Z8BzAqAIghIQmR8jLZeweGpyQHgFdR8wR+u6k9PM2qsXMXPSGqhvI46Gm955
JIn1IKz2SB8/zIGrlGFZksfjLMrNaksf7vfcOAoEEyh0te9HXBVELaFax1lfS4ABmWVI5LG7xc8t
aCVj9TvJ5gSFEL25QNt4rUWnhPXSV2PgCb6Q7WYBy2FFE1pcoXUhOl94zM/I0O3takPEQE1UPrC7
/17hMDMItYzFLAE2UK+5Q/E1YgnqB/CUqSl5JQv6G/EMaNySXSZk+NBIUAPXWbao2BLrctwdgm/X
o2hrtLWq+l5RD5EbAtWTyQ9+LpAcHhzCKjglsnLqj0fbcoVCed+FVp6yDx9kVSE+gqJpKeKb9n9t
JivBGfypfy8UcsjoOwYAcK8vSRFABxHkhIWDzYJKVLOGSMBKt0HHATuXAtSym+vmosMzA8DqKwKI
WQHL5HRFsr3dN08nwzw7wK6n7S90TOi14LLf37nFVHVYbhb3FnJp3BSXHlFq753caAw2o/HzNrTu
GZm6CEa+TyiSu9LHRt65Sk48tBNVgMKQjQUmu65zLH1vVcgybo06NUMVKxoBMciAy/6fMwsATGKI
WsLcynS4+f66HnYNzvuYkCBU7br+GfQfdSmS/PtMvMSkrhMrlF4LXOvoc8LxmgjypGPlc3Tl5+0g
YPxYc51OozSSn3xGW7U08e7O+Xt5wTLjoKtpbI2jiTMBwDrG5w4FPcBhbd9c8WFMkf+cvquhN3TY
5ieGBYuUgJCaLKcmgRQRtpBdwwaOJvsz89gqf+AS3M+r+eEY3/V63S8q9z6gbaZuau75QvQTNRc7
CgbnA6p2AKnOmG2i94JIWRZ1/yOvA5qa26OExIQcOLwEgiee9FICHVXhYXpK6r0i2bj9mrOfn/SF
9OpRFKcoA5DbCXoPB4bzXbcTX46Wouzr7vHENMJ5RyDVrtsSSm6wF2+AyAVjxnHAc2Lw54hmfT5R
+9BMy031lVUNi2W9wp4BJcIbUyrRVaN0bpS12o8jvtYHy2K5WSJA+gnsoo5Atz0lC3ZMDc77cS9a
Zx3dlw6sQGO3v7wG6RpYgDfQTEdyVdNtcbhKlvHIYxyYKtk3msvNKBLymee8XN4JqbDiKPzKTpmJ
uRcUB/wZE814QQ5h1b92akg8qmVMek6P7ySksv8kdiI/IT+O1pPPSti0cFpNs3IZnzxWuWFz3uVn
ssd4QEEM2Y8DdH7Oo3Ds9Z0J0NJVNAWfBrCYEHX+/4sGPXyPYoxil0TAKLSL9HMU+erDdOjO2ail
W3qRwGxppMgk8mVoeO1G3EE5O2MOqeTTbW/TDn1M5ZeaN6Rn0xWKdYw7xyK7Wtf8BRQkneckSL6m
1u3tSHv1Ildlnp8sJt9U1EWbYdys1eDSmmKbrfwCuvNVlz1hBGvKziu4xX/L5UvVtqjO96erpEmp
eWVr/G+QFU+tm0vwN3H0deipi+CmNkcPhVVko32fZXAzuRTx1M9qckxnTI4WErcjIygYpYjF/N6E
Fw6vsoPe0XV52xoiFlT17XziNwo5EUGjSRHZ7grJLnWU8FfW5uJME8usxlXho1tvuJEJQjAIzlg+
LLFSODE0RZmQVKE9kX9LQSk/IJQG1jgaiL6rLjMQQ9FcCellcdKkAfTFdEGzzh+hZOgb1AZOeBBi
++JW5FvleCPPxUz9Aktx6HeC9Y25HX6gRQLXkqEe+qg02MwpF7r/ijNciBb4oxJHGwfiIjsBRF0O
DwUMLKzgBhOz8NKBszmNATs85WN9d0RAhYhsIGaE2479VUNfxeAiMA8+90tTBsy+V2x+NE8J3vwQ
CqZyrmYW6vwb0YCN39VlP2Y4ae9YkpXBaFl8kRhtL3sdlhLXydaEMZ4flw4drxpEVYr+ancQVSKp
ctTxTzr53ugrn1KZ4XHSbVx3IS++oHnJj4CSZ8BLPY6vqXqoNcf265NFx9AZy9auSjeO+Z7MNioE
+x7vtgtOVltNXodSeASrWqp2/8WLA6uRZlMFcbvNO+hKMKbU/zGMVxofBYhOxDHRxUymlZOsWA8L
Ra9ygIDplbQerCdxL+nL8L4puFWmet/u1iS+kYQPqxI5/YCH+5qrIBeplpVKGvY9Y2b/KL7cMzUb
j0PopS1xocP5fQ3zfwcYR/gYmGwPzzpqZyh/QzHZv3kBtD45C5TlMx0puJYRCrgHd6hGCPvHvdqh
UQ5lDOEIvV1nGG1Q07cnmtxNpEXI7tMWqv1zbUKnLJCTs3Jb2Ab8CzmkJv/nC+zN1f/iCsrn3dg3
SQDSDyHHKNhQDXaDmBt/Fg0elO6D1tXuCRmQiLN40CshwY0X5LAxVGRK7KATNisW7UmF4mNPTEWC
ZP/jMWvtrVwWeil/CU4AQ7UYqA22yBpMxUB1ZdLFxCRhxdGEyqZQipmODS7vXuQ53CE3e+oNWzHD
Abs0YzWvRS5m1Q68K5Rnzt0f6I41tFQI7TCbf98yzB4hB6BAbY3pK++fUt4yJ/dcOYNVrafLCWrV
ZD2LzFAO2aseMvSsN6EJrFCNnkO03dd6VHfD0xUnUYVcdzHBW4fcAr8WwIt9LddWO/iXWEXGpJ7s
VvM1RtpTVDs3l9d5D7Eth2YAcJo3khDIiexdAqmcV9BffpVqvggDloehCha1fPkPBD2GNdG7M4ip
/jgu0l1x2Vec8AyfF25an7m8czrXcEZQIakA5YLYoJhJM7LwH3x0bH6OUovAAjVNqMEYXhm6YW+z
PZoQ1NQzQOwcttt5xxkGTe8MbPSxdwzR/kAI0Lg3L0Yhvy51OoCwSZmT7CqZB1JZDhq4z9ZIS6X0
LLgvena6u0yWDUTUePN3FWc5OD3hg2aC//yyS+d6rFVkY4iL4P4iKkIxSFlf1eVxUP+LhOT9r9ZZ
kDzcCL7qRrfPpla/LGMHIoFSdi+lAMntQCttuIFe0/ItrwNa/EdqhHThf8/i6u/78KF7CsiMCbnh
duEc+boEtlcX87SqCkt3CGhFHLmy65wrmB/I468NaXb5XUmKgeACYQsWe8ysmhPfQokjiwvUeJGQ
hKgl/E/ZTjLq2ZpF0plzUDO6d9ZfFQtLQ26G1c8caVlVb8w9WZLdg97jZz4fDYY4u+J9dzV4pLb4
u2EqVzRwpO5AmnG9P+VhfnsPcGmxO0MYniRkg6xIjjGqiGUHq7JPE4pJUiKpPd5jyU6IML2WgRVS
sHIK7u5AecDjvZXvDxMN8eMQScmxYjmyIjNLpa8jAiR5vhz4XXYRJ6SN+PdXKryHNTC/Hj1Nsckj
Jy4JKybFN4SsflB26/7s6P0pe2CUfscdReYZAGzYob6pZxVPW/HP2HDFOuJVY7b24awaTI840Tdf
koMngSWXfYfA+TquEpuR713FpVmO4el3Qpkyk2YdAF0gpA8nC2vGNjRA53+1d5CmffE3U0Ss0b+P
FCgHTbEjQN5/wcYI18GX3UejDujvBCnqG+jgTLw3rxojkpw3Tmy6PUTS0INGFEPQie0+s5eK3+B4
bnMT9XD/LEPekg1S+u4vVj86+Q3D8cak+oIG/WGv3FIEmkMzDOSmfClyiH0CV1W0uPG7RGUlsHn7
24bCCejTyEBtUErlIjtJDCaepiZwNfkQ/yIeuI+LlScI2hupLZQVgLRrFhvLOx+4Clc5UM/Hbf/X
DOXhl+gnCiWyXjxfayKTUQwqE0nDRgngNHxiw8eED+2fqZnyAZBNk1P+60oMnzLAl+ciOtCpAtkp
NA/3SfTIMKlwAWpro114DfoEEZ7MslOL0VbyBj68GGFkar+PCVDIDYZsp3T+SEqOKJcfAgWT+ekQ
B+f4bO6UU4/sM8eXqyj1v8kmgJ4qLOyjzAdwboLggRyLrq+dEbZQ9nVIOxjcBkL9aBamQm8txWK2
EkrNMZyBRy/Tt5VAfd5wvS0pt0sRP7wWjp+zh/ax3p64XRFSjZ6gAQCz9klV98+Swxsun/ym5ExD
dmtA8h6Mg6dbKp2YHSJBxGmEV2ffBYmafL1gOLwMW3r0Q4vYfAy3WOxJgwDW4CEtFVtaT1PZGhVd
NDaLxqaRuc1stxCAtfa0DSOeiFJd6jmcY5IBwWVbr6Qx/avcFrN+7XyIdQLu9lmRWm9D91MZ0sJ3
UAdVsD1Q1gA1DqKB7JCchfZhNdx8Y63DBUhvA80WaRfOIMQx83xenZXRr7Gwx7Twq3TdjYg2uBdo
NSU7IPl654vS6cnfiWzHpf9b9fgJOZhRjBJC5/H8MRjKbCrKmrPQTXVHBgiIVTPIg/djkLPIoADc
y78FDgKLstptTMDSb7Dt+KSs3+6BNxVPJqyhuu5WGJBEoJybwsaHq/B1wd6rzq03x7LcJQAx14MU
4dsd3hCFz9FPIPn2eSml/mFjeaDpPFi4Iif5F9m3G55jeZ2xrJ15CMqWzjMd9n7RIQH5dBAAQF0b
e3m5Tpi+ZDRWrxkC7rkvkvuTg9W+a0YsJB3/ivWlPgPk7M7csgUFgkgcJNp2CKfKT6GU5BppUcra
GwrAk1d2r2RLTFarfYibcJ2rslyRHbXFRXpubUm+l62fui4ByMp1szHUwfAngvrEwGxeyMGWrB5p
rA9oL/uQ5b1Sko1uDtuTWejN0rWs9SJBafomkhi+uEPuaa9bxY8hbunNfM2kQb4SUCKylzIr9+Nm
frmWdBuRp+t7ZpuePopBNa5x5/GM7UohNjhSR+fiNSYWkAKqyudC4WTrfcz9bujiVtSt2wsDc5NE
doMxjJSh/WFD6CH5+b5fPOUeYDvZ3KuvGUPeg9yTECUmWytrpoRf+Wzu0FFGz7QetlNrzGzxA8jT
seP+iL2qpi0VaxSwN8ou5/mwCmZU7QyBfiOdXj/Kra/734GbrRSFSOY6tW4fy7PuhsYX1O6t+AKY
ujZo9be8e7gYQnwCPTx+8zoBX9Q8hUItUlCHqWpzA77Z73YpyTwe+14JDQfvJ6sxYFlGHEPNT64p
fIJh1sR8zbSkqIK1A9tMOIpI1QZMrJZuYaJemYVfRqq3fIyC8oE1MDZhlczhAl6vcQ98Ys/uHFla
p0qpPZMeukyad6/i2QVol0oqaGk6FCo1ZzSphfhTpMHy0msyujnxknQH+Nr4CgnxXbKy3CF4xVoh
B1bQoaDuA5HbCRyFPe58FHNeDnluUochaHIewhr7top+6ZTvtte55MSyhefwoLaJVUqmQy/e2Fx4
cMrWEj8A6ozp0JS8BOesdKa24emJ4ZN0NFlSlSsdzmvNGi/zkN5xGo4rgmRBIvulD/ZIpA4lAlyv
ONdklBKbUN+CEjXMuEOkfQBVoGZo8IIz6YoCNTAtO027wg+hRNdQ5bgogSgum4fdVcGejJQeQ+Ra
J0vtWtWZRdVHx8otfPeciSwpaWmKnHbG/sN/3l5uAf2zOfOEdYaufd5gLzYFf6Bj3KjXQtHQE+j+
1JOg6FuHEUZ/lpZ618mxzx21nCkoUtei1j1Q/BB+CPLumwiCyRi9v+qbR7LLK1qeru4GKQXDDceK
QSEzJpilssFjLFZ/i4FFHhUXS2dnZWYQlc6GOZlobV0LAskn2WCQvNdd7Hxp38XkedsdWUpQpHyI
88bSnGBW72UsU7pr3y6nxlM77wGQd5ievRi6y4ZL5twrdgYTKsaYsHS8DRqT1GjNtwMGj2Po56bG
FK5qlQvEURsfCki9CIk5rNZfKynEEhBRgGY8RoSwc5IoDz9TQoSm+i4VBSJ9Rw9QXPXZmfRDv1mj
15PtvOKvOF/AWSnFBGJo+VVmKzEGb4Fq9a23OrDzqVeQcPnoV0CGCTN5rjU/+q8NDqXOkfZxC92H
5FHe2c5w7eG1RPr5nPR4jdIM0sp6rrhxUXE5scqNRqJrg87S8qP7a4y70Ny/7jf20eUJVfoRsjb8
E1AbNgGz+cQ3gU5I0mcsd1/t3G4oP9DrLfa1U7VcwKpcAE9OULIIp8QOm/0tZJwnYL1FCyc1blB7
C3Qb2L1Z/j6luCtPMH6Cw2zJkcgvskPSYMH7Vto0j1Wo/qD7B9ramJhN0qoRHjuzjgaCESklOEDt
UZN2WopvTjzahWxpWMvLJbGSkqIBi/fQ5CB470qo9hFxCRLzOU3uqu09zKz7gY6AKB6/eLVqYKRG
IixOvJiUB6Eb7C5sxuHHL9Cvhm/F+wgFv/ivTu1Ryznf2AD8LPu3cVAJB+AdCXBQULd/VHBmS2Ae
JDTQi39olz82SDvxN6pZxlK+QhV5t/VAzgMCiUYd0h8j1aWRoCbZ4o+Phl4ypEYwlXW+W1uCtJnl
nY2f69hUZ7gQwb325ftPT3fj8a3zHkwzjn+jaM+v8A/cCOK7m2fN7Bj5xKNnUTuZcziy+KkfBJTH
Iq8uu5azsR+fKIvCFsH/QGpG7wAqFnWJQ/LFjJ1ge13CYZC9igbEL0dDSoTQJ3CGVvjhKDqP3rDU
EXLJsvoKJqZmXri8+n8+zdWW8Q0DpazpCuZ5GsSKOuAqGc2FpD9T5YvEUU6y9e2NiFXaOogh8ytj
th1zOJrmYJPdZSekhTB257LGs2C+gKh7JbAiiUlYYjcqyT/GPb8rdTC4pNfRjZDOJaR2pfPXO6Np
JlwD8cIw+7etusG6vDxbHZloN6jdI3trTocp9vSSzw3E36f6JGHh0gqRDrgqVBuhRZXuOBoEP0wx
IPciUoRKSK+8gtEqFwtcbAprcIbYsaKlDyKdow4R5WrfwPqZZ67WQnmay4Yv+nyWeanwkOFHtGGO
BxMJavUqd9XHUZmh/hrQnbER2X9OjnYltMJB7Nj/AzfoV9fKaeToMw09Sukf3jy6cFz08HEBB0Hg
qXeAXO/UCd/EonSX13AY0u7SUBS/BIvbrht8czscIP2x9f4PK0FEi7To48BEpykKbh+Jxb5WxiMz
fe0BxKDzftfnRYZeRyS0n4vLmAlMiZGSDJDSkyES5UrtZSjmNzl0J8ZP1bLYHg4z2oPrPitOieqU
wvURTYIzx+yi/VWxoKAxn/Xfp2y9Rsq6GzgAKgclrPAgu0khErG4cAXJEPcbYQ6mkI2ANxZV93Nu
YmZunvUbmlhghpPRz+OXi/el67b5Pp07OaP0G0ONorElWp4Ghq2GYIVNxUyw8pUXNbnyD5fedVnk
/VTTtp2aFQPTnirr6/kbMDgZ2I5avdhrElXTwP61n2+J/I1VI2+0RXPnzKrQT3856ei9QaAedJxB
tfVE3QWD5Qf1Fng8kV6l8K3MKMv2BBjUXKcCFCRduMHNKSg9UUwN0YeTebOzqO7XWWk9N0nYaFXD
IcZhwspZbVNyKxr1XfiKrOOitfqz/qEhrz6OpTrqvPvzQ6t1ZH29Sihhjno7iEst2kP4SCKYLy+I
xnnrH+X4q4hCZgW+tbPIz9NqTNB0Q4atWX5UB3WLAVzcXsG03iHFw4a6cuB1w9EXoA60WBb2DGJi
+bQAEkeEG7gJE+lMp5QUX4ap19NG8/o9wuMzstexbj7ZIUmW2KSVLGXRwr+IXMpIeWmpbXZYpW8c
/WJ8SF+NJG3wkWqr0IaRgV0hM3OZwyogfanL9JldDI4zGHbps0oTRccw5w2s5uG1zEysmLp+PA6N
TESrCGhoP4V1vMFw5VvvmFFgZ1aq3ZFfZpBq9jYG4dBr5PCKRRXiLIz1/ruI9RHYCpp5O85InWUt
AZ10imLT3XfP/kIDGRMNtNDpM7mf0/ZzJykdertMIsXyikZn8bTNpUw8LToTT9Z1f55IRisbHkXg
x6NRjNyLxtYOEYVusPh3zP/DiidzA78e2lmicbqruA1jQZ6rVo3fF84Ept3qMlylqublcjsZSACi
SAEo5+TuVvgnSJ0UtJCxW+Gn/RIoa7hJ7ZSrTil9PyBnako3WsU4Si5d3twdJrx9ory2fjUJImA0
sfr44OZmpTyfJkMbVFuAZvTPCIdXGdGqqNYoY8yga+Xg/OtvWRuSWBsdV0X9EYuFqeb6aKnkiQg+
FhCmbiKBGJPWgUXIUAtO9q6QNwr3uz+NLGcQT/MU3tE19r8ujm2c2AMZObyDtNleiLb5VEGz6aIM
VtBjPSd/U0xZFhECyvkzaGADPXqq7eCBKcty/+Y6x+xL7NQvuSxeqiDxBh/Gmzp56yeQ5PBc5l2p
o0qUASuY4Ax4pq7daCnWdBUmZ6oM0++wZuMkpNegc9d0pDamq9bjiyyKVw92ly5Gb2gYultcbTu7
+5VWaiaNX8Yov5PPk9yuQzlJROy6qjReKcOOnPibMpi4zQvE6N5sqGSkng1Ew08z6TnipInQLZj3
KbZBrZ5zSV49M+0+IwXbXWkzR1sQfmDLIQybJcWJUD+B+1GsMY5dpU96nNHoi5QSo2oQvNbSOHlX
+/Kz7EVArGIjl1qlxpI9UKaoZBLHBi7mXpsEDLTpKpdwNs0VEPsCiw0YiRg3eiwVW+47p7fwDcUg
gYd8BIhUTGyKCLi/OgUXqwKzl2V4dMRK8Wxywx2GcFXiYG8xA85ubh3HPpXDbTPwXy6CgLseWQZy
n1+z5uGBQi02e/SabI3GK4hH1uF8X5W2PWNu41+04Dzl5jsiopvJdGIImQqJi58pH7JdvUUsh+il
K5w+R63Rv6jk/qKxKSTW+wQkgck5ScVJXHiP3GXhTmue9klUBIVWRn4K3seIU0itHEtsqMD68Yc9
chXxpkMa0qVTPw9qjFAFF9S/RJd3gCYXVrR67dg6rCjyprF40okaWjdKrnUnzcmhH9rqgde9DDFV
9eS3LsPjMBTk5frLanot40HTq5cZqp9S+T4Jy+eoXWCGP5vqPFFAiA8cqUa6G4wutAVVigxOPjrG
ky58U5EbGynbqOejkvjjZKCfWMSpy7JcgiC2EoDsckti3SJVVmfGl3uQSLUwd9ezIfOymPfqblwm
W+eF7JEkiboHpv5q1n0lcM8LU/ZkhPVCIDeNYtXIX9fxIy8i7sSGtXLXlb0U+BzuJU7jfXp3P1Tq
1DHmMMCUDhKsVHTYMyOaIhHVpy2ZzZeMA7RJDcb/2aYyGPKIFrBaPG3Q/bjbkl4WB5Hr6Jjwuyn4
0LfGG63RP0wtNK6RAVDOV7AjSwred52TLVRrQKKm8Z6f9GKIJzKRGkHunz8J0ON5OErQM+ipex4t
NuvO4vrQEflwhsOOj9Oo5g7Qx8ipwLDQmL3dDkyHtXeU41E6xP9pwiKpLASQz0c75O1PeCXn9LLa
m2+MuZg+8byAYsvOFBNpA/25bIQNsXfleLNtxz5eopLv5iNKpFHYSz/D0CNc4eNFEIcVLv7LJfjz
rq/HNsMzVFeSeN0bCRTf7KYLCC+3IwNtsIbP+QFuUXWSKzCJwimFIeZBOaOUs3Y4eNnjypXGWGC6
8l5wZwygGpmCR/6Yw+4o3GFbhmcGHmVONTFQqAji7MRVoTOxn+UOlkwqsPf5e7UoYND6+g2taZHx
yrcWqyZOVrXox8WWfHmeuPFAmzxRJz8jbxA1f1lmTnFaVTSsujPg8I+weOd4FwjGBTEgmUGyFutR
x/tb5xmsZ5OYNn+ZkU6mAZbKe0bwNF+qKXcM/vXrFIB8rf1bREPZQfItfye0PggZzh+GREq9isnh
l8u6W1Yrz61hCpGWtnqGFQkfwIayCFmGYSioqe1/VLaN8w+Ge/1Gv2ji+hwPemL6vaQZnkD36lAm
Vk/gUvfGW9Jpyi19MCrGc9HBB0qANWQTSxkg9PiLUcDIWA9E+okKXNH7CG5GktgvnLlOq4Cod1gx
aZk1glxNxHPV4L7FkVPiq/kywuPg9p5Jx4NQVKHtQ6fIXlVqdyzrb9kPtLeQ7RalKezi/QwiKaH0
a5i33NZcdP8MssREF6ivuIGGB9g4j4u7yilEiV7W/+FgJcTTCCpjXfl9LB5Ko/yJdX482qE3I8/E
5P0k7RgmybfX+47WFpoRxf9kFjZuSIgUiAnbEIHZYJBCkQFnfRPY+tOM5EQwlEifE6GDLKA1YEkK
aiNqNNNF1xtGzcNAgO7DoGwcmuaqkyVtyOUOxa5DUJZfcUejUg6cfRkdDb+V50fiwY07yHXqo11b
qg0pad4uqO47qSNTpVu73H9llryInTmu57UN768GkAyPgPRlLyyq1QOGw7OidR7l3AtEesEcRDkk
f8O+FMub7TVcw8sWf5OWXEG6xMWE5VxACoHTBbYhuIgVtd5NjYKudMoQQ7TNh9BQgkFJ7LSwoHwj
AreQgIlwzxjOmrfLQ3QBzIxgvEYD+d8p6UPWmSMXxNpYbQ9RhbhJ1Q5A3Yr/BiufwUc0pf2koZsa
DQfETsewkV0F+YaqMn6pNDnEi5ZMSYGpVsX7lJkrCYreqEJcTtaHILujtHHU8S6qk9xNMY6BT/27
fwURkrmjuNVDPk68MQrXaZgFAF02TciIK39+PaovAsam5yt3NKsPeCWfaTGrlF1rKKI7BfbG90tM
bOHGkz72EDM+w6VZyV9UIju5OUvh6bcmU/N1C+hMnUzwkpVFgMMzg6uV4SeQwUECnMel5gFh3FLK
1sveJewp7H2GpGpnPzEjtGWcVIcLzGD01asl3uq9U3L/NT6qJdU81k6FBZJWz3LnA0PSiKZ4KG7c
4/aKjcL9n+z1yH5wCCbXcGnwYRXtwCn41iuV8M4NeMyQ+4JRFgrMgNvvmgvHxRMFk2MqEM3t2szm
RVYDAZWdgWr1uxrV572DtZrsKsWrx/F38CAE4O/fZlhmVQeP3Fkk/40G+7qWajQiODnysFS3JyQx
6d5rlte6SyGjpdDjw+K5ZoTp2xONBlxWMm9liO5kkQ2VWN+/1tN0aAYQEAKiNrts1tCyq4lHkMVv
F8sBqgJjgmJpSMlhyI7e/1YbnBXiHamSeBZgTcmdcHQy971LgM4fMYBPo/rY+wecQC+Oml18SsCX
4x1/Y42p5y0kYtzIjoG7qY0FM+OIRicj04yVmu6epxJa7YdrEc3GPfpk8o2yRH4jXoVZ4SY7F2n7
8JD/OsVa61l4hRGl69nmgKv3ap1bmPhUDXLm1uD349w0RZEUC5xniFb1tip+i8REWlx7KlFGMWCq
Kz/6NzECqgCVA5kT/1oq81xLwes5w1C6f3NwTQ2b6iun4lgG2X4CNL3lzzoPcbMrJa7nU/hRT1vn
6vHqpFcabWGDSiTxLPsv18KM8HdEgMNKhavgoLJ1E5yTvIjTLaJ8nIiL5FcvDkouJRnoT3YvfgXV
T53sk/w2buG/YX7Rav9Xb1zFmedk42kFKx5oqJesoqXlEdjf2ioodb8RG0WCC2A8CoWSoyRP8blU
/fsrQ+WxkZuGLbbRDLnxzi7D0GhqFB9MH2Jg0owiXR9979DofXgAEEDKbALLlxTR+2JFUitRDhHL
KviETNzS1gIrmwGc6h0wkBQypQb19SBtnIuFE8/FY0jAWqgQkK+w367XwTt5od87dRSjWw6rUiVa
fnrfuPL8QgR9TDVjYSVk23PVtbg14uBAlCwompflXd+QOyxbHPvNjEidnHreJba2umVOBTEVD4s2
MBEgEna8OZcAWcS8fu6kRfBPaklsFgTJIhAZYYi295HsWlKgvGlL2HTmK7dSX6gAHL0q2+6BsIdD
8jCtSBcFuAhOmpDvQHMlNOXCeWhq3ck6eVstPaebTs4J6meT7QybYcEfA2LgLoAG4+ZeAsy2oEu4
fG7/RPgSftd8TikERtn9kMCTSWoMMOCPPWvnkFj5D348cc5DDUmF/TJ73/InzRICySUjQFW48S0p
H2uXoYuG1OI4IJzsSj/09BVrHTPBXq6pmMy6ttdvo2wjbwV+c42xIPcL+PPKVaSrBcZzB62hQO1f
JICV02oNXlnWOxySJqoA1pOLkqSmA3lC8BBLNg3gjPCSOf8Nn7hYRLYzH6Z3x6OMDglQxxXiaZH9
MYHCYZEjoPJ0+dMR1wvyYTMuQRMPiupZ5QWBu1QZTng85+N73BxMlqBY4jhXn6OdkHkc9fQvsNRf
O4TlQ2ozobsx/nuBywc3MOEldHp0WcMwUD7KTyXK3ScxTVH03JAqCXANe66ACjqF3CBtdAb7BBKL
ggrwY0vGwS8L5RGHNpRyWf21yBS9OWzcEOYVEH0sOe5k8XzAnVcohkIXfZEnDbDOa2UQpUgBr1hv
f+j9zm0V3eRnZiXES5qwq3CpO/Z50ryUWJEv/CMeSQIO1ZjkdcIFpvIYB/X4lpr2B4/i3T2i8pTC
ImTX9mRl72RQd8HVomyLX6jkf5Tq1DK6cWihTJ+nAPrmdDOzovdOAnSJ2O3o/fNJbKyYOsSD1na5
csfrAdxnf8X9NOJggwMYVdDTpgEqJ3qfjTShedWszGDqMZN10GOJCtSnWwAchNBUEIZlS55EvblG
pMOJ2XxhAvomhM0PVl94dwD2VjTfYHO6Psu62hCwbJ1eY/KfLfVIbVO2EICVrbeNKxHFkyj815+D
ejMMqjqjK0cJMTKzar9e7qj5Ie5VRzTEi9sgw084Xedg7LrQGYboVhAVyZ1Oy6yej5Nbi3DdC0G4
i8YFy/GNd1l8Loj+Y7dxWdj55K94Huvt5D0noB42VBxRb4FPhiRCEp3eMa/0j/ad0YSqpaLAMJlN
DKgJ/NC8Vn9dlBwS2gb/MyC94G0FvMIdUyKHu9batGb2KmWxN/M4wlUr9bLa4pYxd3Ch+9fNd7DR
pd5FS7WWrf7J6S6xpRWLj+i/HeubfATNWxVft93oJYXu+d9Sfl0oH7nhfDPnPeTaEOyO0Znlv/EV
bH41ocYIkabDaQ8PmWiJnmv2fk+N4s+JOV9ybF+x8qTHdNWmY3860nolb3nP3qg251LmCEhbtED3
PIn1XtzBkpLwzEsc+P4+b34OPXgN5kSImOKRV+VaNkh0iCA81pV4uxxzdDVXFpkhiTI0KEFIE/LP
lT8hL2sIldScFq6qk/GS6Y4XuW6WlX37YXG31v1TqZ//1TDdpYkyf3ECNOHZzGb7KCMj0QvpdMDn
u4WaGXIoP68gXhDkZIXMGPQhynfjJVPanu588jMsPatx7Bb1IwlWWtpuzju6LpaO5ES30+LiV57l
vtVyyct1e2c9lNcIP+GVnt9fTQJuxXNZCcwgtanJpqQGjlNAbAuT19e1FSPeG1b5JdftG8P5dLt5
c5MxiUkkCHV8oEPwo2xqjQUCdtGIaIxFeXyZ17VJ3pv4FFd/4ZokyPxxsoeE+BP+RoIv4oavQC0J
xtvdtCXnHA2yer86Kz+RhWliDfULmyPHSp3dFUGPH2Nd1V1DVXHcy5sy90eSlRBa+SOCUU86cu7n
W4GKd5dBxj2/E2YqzP53gbgVo1NOyQScTsC3xMui2vs7+LaeV/s9Xs4o4pt8OHRKNoGX/NqjcDTT
Azk/83E3BmWt6GtjGNxOfyLsbsk7o5/dwFAvtk5/oSk7X8yDzfjRcsyg7bmutzjaFGvOQspoJjrb
n248ENJR7W0/JTGLJxlWkvfre+CRlp1tf5BwcGyYpEyWElimmQ5gegwHG4wpq0cwZvLJ8A4MCYBb
SBX5vDRUD5Lia7U3bUteMGSDaBkdzc/ww4pg+68Yd5yuCz48tOANImpc6CKHmjwHu8jJpDqD/33D
nWbOR98d88EVS0qDLWB+5aF3Yx+JNzo+YOKBBhmv9kEcFu877fdVGgUHu/ex9sU/nypJTQFOs5yv
SaQjtZVJkHAJz7LbFOd+L8IJKcE4I8wmn85vOQV0RxHaWTDpzBBEG4Sf8RfI2x9Ka7SsW5efHZSo
gRMgwbMMYlpV3Qulx/VbBQjtECi28e6cctGgudIQ7XIu+srKPzMqkq4QxuhO8P9rtplSh/hQjX+a
wpE2HYxEobioUQXCyOoP5VbT1VW68kXKahwe3HnjgJb1MYFg5SKkfIZB4R1e+flLyGeUsoD/OL63
LVPKfpMY6IFCIsNLy/A+QrdN3S0qiXvUHT1dlgpZibNJmIodM+4FXDZyPVzy8wz0+NdPlFML8jaR
VQK+pFOm1FM4rPIkCyIYovmLmC8KwYglJEat6FxT/YlTFNn+rfRtUBJHqCPVbtBHMmE2FzBcldna
unVVYW/2dsjgshEWntzs0Jrt9SmiuvJEzxwLnGiGjIuJ8jdpou3PM1pqJe8TncHvJnZ7H337hsvX
y67YULKioLkkfJXRlwKeQyOF0KjgJMoDZ5s7ho5/NY1y2zUCVk2x2xKVcNEBK6PzC6BqTnxa8zS5
5DZirYPt4XU1bwH2vDHun42Y6EOF9TzKMDblmJBAJkMw/aCnM3A1vCX43uKjgEC+bqXu1bAL+4it
QyCkj+S5AjJyLcVGSjo12k9yAFtcWr/HUMavddLWF0QcCUxJThHJVmBSG7tiQlBIwmeDxWcDeH9j
lua2FcSNOL2l5f0CzqNHVerLNvcNcFy23eETvXmY7s6u03dK+TwkVwfXdw5G0TaZOjhK1Ry2GX41
t+AoSQPPkA/8QRXCRY2tVOXeBjyqtaacbqA5cZIV2+QjQBZfZvLyqkE5t6Km9kcOWeUc/YONyQwL
788aikVkTVRc+6KlURuiVQ/SafAsHEzZfpR2HGWF5eveR2+VGS90tXN/AeaSjf32ExZq5H9cq4x2
IChw0KDBUF2SfigyP5SgrUxznFZGEqi/pq1yqpIQdUTD7wupLRt35191ezsj/tHaZyyeSVVRY9r0
yIK+1hFIqU29IUrB9T3OwfqQa0awgpDEFrKmY/fOgVKE70V1W7seLUpEULhhduWRhA6NyHSlDPDT
+4W8F2dxC/0B4uAVxDZy72zlBgP/jIQhkY/a3oT1SReKE8ZtoOKhver3fyCtG0Y5CVXW48ur17kc
J/ZlkTmdrLkccZB6V59D05FNAipFnrGmLfOY4bZbz276HGrWO3wfPt9i3UvC97g7Hd7q1l7BxtKB
850SDzp9tR4CE3DHdigD15Kf1TzihhoGvHnmYTAOdiyFrnKg4cHb8r1jGKOEva2OY4EznkYDc8Om
ags3RCTYoyhtxqFjwlP9I6OZNPg7OcJxOWOI+78GbEYU5WY2eyH/MJh+YVtnOBPa9XxTgbXWOOcw
I7GvJ7YFS2lB6q2irt/1UtfaSzcpxIBLhYRwhV0rAYqSukurRIr7vd0CkpY+RxtW6qM2bMYy//dR
DbcgFJ4fRihXZ7p/eko3pouwP1VVeStacjFCpH2Px2Aq0/8eAuHHdUjXnUBiHceKQytPd8lg4pG2
BvuyvCHAbGPYZG/LSHmIWTJCARuHXk8JhAthBnkjoT8eqvyRO4Y5Xg++L/Zl8UVc5d7r/do71twB
tM/4VsYzLEGFocQ/otUXviNeTCp86m2v1G5v2BpIeTjFExv5GrupC3GAvLBQragCo/dL41b8Q6KP
lrlrZNIn8hqmpmaztetOk3YFPwld1ZL1oCtMdY+Dvlf/Quopw4Cv5MRUDucUgnMPEAHgkSie1OiD
pSLetrBU1r9ho/qD3nYJ5I+ByrlorjiLZge4Y2LmfCxWOLYFwHhXAOFK6/5/CSXdvI7uwlNhm2pA
a3Mm0CBmrgydpQFKum3PhNC1xl7cPMmwNv/FNV8gLNwbNzXFACRFjQ9PKh+0N6iuQ0MFCvXRiyfa
vqun1w98cFC7NRckMdgXr3YHVSqRmvA+wv2eWYwfQhBSAFIV61/fc77LrbZ6iHHS9ehTwenpR0K7
hJivZQmrqXkfV66uqq5++kOn2Crhz3vci3O5IQjgkE8WQMxyZ5qsvguHo1vpD9cww+WYx8hz0loZ
GEnwkXaAjYsahw7WN1By6jROh0h1cxEk3kPCQZ5qQTrN1POt4+CSFinJbVAu9Jpw5HhD+MpVkci5
49zJLvoGEq4jKabDWGp2zj/+Qf+UsLxub7skPbslKeFlU+/Yn1FJEyJzojWdftmwWyeWj6WWSmmb
Pgnpjz4eb61lK5TGbKPYclDSccPWdYuLSZVsTgIC1lN/IBw1dnhLp5ca5ILtOEmArh78sruy3X/2
EpU+7pxS6bce2s3W2Eo3iunPGmCQk9u+46LNPXN94hOWU+np7FqbVorOn3FLKWJE1G1PHspAVe0i
138FflVZ0F1IXH5CIFJWoXBgdz5ObKlJPn5HsmeKHcgXJhJM3DYxtuRIza8hqno0ZaFLqjhvbbGA
Z5wRkGypBLVeyJgf2gtYKWBloc+bcwXJ1MpbCvJQKXG6+mBkRK6N9WeW+GYGmB65QcW7utAIw2uM
HVS5H9Mv3zn/WZSV4D6Q7hhcY14DJAMcx7WZXjK6oTWSA/Sk6oLkC5SWCkFt9FyKWMC0l5LHINzz
uKmeTAifms3ksXQIHTqSGfTQie/UDe8Hdw0it5FKEuA6h3aMUlAxSBkuF+dr5tTg/Qw12f9p0XPh
EA2vy9WAK/udwKCLsaAG+jLrfXUy2xAqtg==
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
