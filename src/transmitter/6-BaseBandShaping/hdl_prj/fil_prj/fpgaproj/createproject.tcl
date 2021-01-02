load_package flow
project_new -overwrite bb_shaping_fil
set_global_assignment -name FAMILY  {Cyclone V}
set_global_assignment -name DEVICE  {5CSEMA4U23C6}
set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE SPEED
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/hdlsrc/base_band_shaping_model/FIR_Interpolation.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/hdlsrc/base_band_shaping_model/FIR_Interpolation1.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/hdlsrc/base_band_shaping_model/bb_shaping.vhd
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/MWClkMgr.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/MWAJTAG.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/MWDPRAM.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILUDPCRC.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILPktMUX.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILCmdProc.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/MWAsyncFIFO.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILDataProc.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/MWPKTBuffer.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/MWUDPPKTBuilder.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILPktProc.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILCommLayer.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_dpscram.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_udfifo.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_bus2dut.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_chifcore.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_controller.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_dut2bus.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/bb_shaping_wrapper.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/mwfil_chiftop.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/FILCore.vhd
set_global_assignment -name VHDL_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/bb_shaping_fil.vhd
source D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/bb_shaping_fil.qsf
set_global_assignment -name SDC_FILE D:/Documents/DVBS2/DVBS2/src/transmitter/6-BaseBandShaping/hdl_prj/fil_prj/filsrc/bb_shaping_fil.sdc
set_global_assignment -name USE_TIMEQUEST_TIMING_ANALYZER ON
set_global_assignment -name TOP_LEVEL_ENTITY bb_shaping_fil
execute_flow -analysis_and_elaboration
project_close
