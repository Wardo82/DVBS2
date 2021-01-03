vlib work
vmap -c
vmap -c -modelsimini FILL_IN_SIMULATION_LIB_PATH/modelsim.ini
set path_to_quartus D:/Quartus/quartus/bin64/..
vlib work
vmap work work
vcom -work work -2002 -explicit $path_to_quartus/dspba/backend/Libraries/vhdl/base/dspba_library_package.vhd
vcom -work work -2002 -explicit $path_to_quartus/dspba/backend/Libraries/vhdl/base/dspba_library.vhd
vcom  tran_dut_pac.vhd
vcom  FIR_Interpolation.vhd
vcom  FIR_Interpolation1.vhd
vcom  bb_shaping1.vhd
vcom  interleaver.vhd
vcom  interleaver_dut.vhd
vcom  Cosine_HDL_Optimized.vhd
vcom  angle_selector.vhd
vcom  bit_mapping.vhd
vcom  tran_dut_tc.vhd
vcom  tran_dut.vhd
