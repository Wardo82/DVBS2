# HDL Coder Downstream Integration Tcl Script

set myTool "Xilinx Vivado 2020.2"
set myProject "ldpc_encoder_vivado"
set myProjectFile "ldpc_encoder_vivado.xpr"
set myTopLevelEntity "ldpc_encoder"

set Family "Zynq"
set Device "xc7z020"
set Package "clg400"
set Speed "-1"
set MapTimePathNumber "3"
set MapTimeAdvAnalysis "True"
set PARTimePathNumber "3"
set PARTimeAdvAnalysis "True"

# Open existing project
puts "### Open existing $myTool project D:\\Documents\\DVBS2\\DVBS2\\src\\transmitter\\3-FEC\\ldpc\\generic_files\\vivado_prj\\ldpc_encoder_vivado.xpr"
open_project ${myProject}

# Running Implementation
puts "### Running Implementation in $myTool ..."
if { [llength [get_runs impl_1] ] > 0 } { reset_run impl_1}
launch_runs impl_1 -force
wait_on_run impl_1
puts "### Implementation Complete."

# Running PostPARTiming
puts "### Running PostPARTiming in $myTool ..."
open_run impl_1
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths $PARTimePathNumber -nworst $PARTimePathNumber -name timing_post_route -file timing_post_route.rpt
source -quiet "D:\\Program Files\\Matlab\\toolbox\\hdlcoder\\hdlcommon\\+downstreamtools\\extractVivadoTiming.tcl"
extracTimingReport ${myTopLevelEntity}_postroute.tvr
puts "### PostPARTiming Complete."

# Close project
puts "### Close $myTool project."
close_project

