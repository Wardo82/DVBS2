open_project HDL_DUT_fil
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
write_bitstream -force HDL_DUT_fil
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
set expected_file HDL_DUT_fil.bit
set copied_file /home/wardo/Documents/DVBS2/DVBS2/src/Receiver/4-Mapping/hdl_prj/fil_prj/HDL_DUT_fil.bit
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