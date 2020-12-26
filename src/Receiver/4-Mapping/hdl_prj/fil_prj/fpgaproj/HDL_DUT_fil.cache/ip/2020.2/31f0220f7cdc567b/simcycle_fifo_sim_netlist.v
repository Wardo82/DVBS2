// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 26 18:17:56 2020
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
3OT4vb3mYGkJd6aVRKEfPaiOQzSDkv5g6w==
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
