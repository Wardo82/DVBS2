load_package flow
project_open HDL_DUT_fil.qpf
execute_flow -compile
set sta_file "HDL_DUT_fil.sta.rpt"
set timing_err ""
if { [catch {open $sta_file r} par_fid] } {
      set timing_err "Warning: Skipped timing check because STA report does not exist."
} else {
   set sta_str [read $par_fid]
   close $par_fid
   set result [regexp {Critical Warning.*: Timing requirements not met} $sta_str match]
   if {$result > 0} {
      set timing_err "Warning: Design does not meet all timing constraints.\nCheck STA report \"HDL_DUT_fil.sta.rpt\" for details."
   }
}
project_close
set log ""
lappend log "\n\n------------------------------------"
lappend log "   FPGA-in-the-Loop build summary"
lappend log "------------------------------------\n"
set expected_file HDL_DUT_fil.sof
set copied_file D:/Documents/DVBS2/DVBS2/src/receiver/hdl_prj/fil_prj/HDL_DUT_fil.sof
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
