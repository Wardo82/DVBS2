// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Jan 21 00:37:48 2021
// Host        : Jarvis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ jtag_mac_fifo_sim_netlist.v
// Design      : jtag_mac_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "jtag_mac_fifo,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2020.2" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_5 U0
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137024)
`pragma protect data_block
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
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
