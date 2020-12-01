create_project -force mlhdlc_sysobj_ex_fixpt_fil .
set_property target_language VHDL [current_project]
set_property part xc7z020clg400-1 [current_project]
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/hdlsrc/mlhdlc_sysobj_ex_fixpt.vhd"}
create_ip -name clk_wiz -vendor xilinx.com -library ip -module_name clk_wiz_0
set_property -dict [list  CONFIG.PRIM_IN_FREQ {100.000} CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {25}] [get_ips clk_wiz_0]
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name jtag_mac_fifo
set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Input_Data_Width {8} CONFIG.Input_Depth {4096} CONFIG.Read_Data_Count {true}  CONFIG.Use_Embedded_Registers {false} CONFIG.read_data_count_width {12} CONFIG.Almost_Full_Flag {true}] [get_ips jtag_mac_fifo]
create_ip -name fifo_generator -vendor xilinx.com -library ip -module_name simcycle_fifo
set_property -dict [list CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} CONFIG.Input_Data_Width {16} CONFIG.Input_Depth {16} CONFIG.Use_Embedded_Registers {false} ] [get_ips simcycle_fifo]
generate_target all [get_ips] -force
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/jtag_mac.v"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/jtag_mac_fifo_wrapper.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/simcycle_fifo_wrapper.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_dpscram.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_udfifo.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_bus2dut.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_chifcore.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_controller.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_dut2bus.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mlhdlc_sysobj_ex_fixpt_wrapper.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mwfil_chiftop.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mlhdlc_sysobj_ex_fixpt_fil.vhd"}
add_files -norecurse {"/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/mlhdlc_sysobj_ex_fixpt_fil.xdc"}
set_property top mlhdlc_sysobj_ex_fixpt_fil [current_fileset]
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
write_bitstream -force mlhdlc_sysobj_ex_fixpt_fil
open_run impl_1
set par_str [report_timing_summary -return_string]
set timing_err ""
set result [regexp {Timing constraints are not met} $par_str match]
if {$result > 0} {
	set timing_err "Warning: Design does not meet all timing constraints."
}

close_project
set log ""
lappend log "\n\n------------------------------------"
lappend log "   FPGA-in-the-Loop build summary"
lappend log "------------------------------------\n"
set expected_file mlhdlc_sysobj_ex_fixpt_fil.bit
set copied_file "/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/mlhdlc_sysobj_ex_fixpt_fil.bit"
if [catch {file copy -force $expected_file ..}] {
   file delete ../$expected_file
   lappend log "Expected programming file not generated."
   lappend log "FPGA-in-the-Loop build failed.\n"
} else {
   if {[string length $timing_err] > 0} {
      lappend log "$timing_err\n"
      set warn_str " with warning"
   } else {
      set warn_str ""
   }
   lappend log "Programming file generated:"
   lappend log "$copied_file\n"
   lappend log "FPGA-in-the-Loop build completed$warn_str."
   lappend log "You may close this shell.\n"
}
foreach j $log {puts $j}
if { [catch {open fpgaproj.log w} log_fid] } {
} else {
    foreach j $log {puts $log_fid $j}
}
close $log_fid
