// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Feb  7 18:31:13 2021
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
