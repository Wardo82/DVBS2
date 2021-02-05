# HDL Coder Downstream Integration Tcl Script

set myTool "Xilinx Vivado 2020.1.1"
set myProject "bb_shaping_vivado"
set myProjectFile "bb_shaping_vivado.xpr"
set myTopLevelEntity "bb_shaping"

set Family "Zynq"
set Device "xc7z020"
set Package "clg400"
set Speed "-1"
set MapTimePathNumber "3"
set MapTimeAdvAnalysis "True"
set PARTimePathNumber "3"
set PARTimeAdvAnalysis "True"

# Open existing project
puts "### Open existing $myTool project \/home\/wardo\/Documents\/DVBS2\/DVBS2\/src\/transmitter\/6-BaseBandShaping\/synthesis_reports\/vivado_prj\/bb_shaping_vivado.xpr"
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
source -quiet "/home/wardo/Documents/MATLAB/toolbox/hdlcoder/hdlcommon/+downstreamtools/extractVivadoTiming.tcl"
extracTimingReport ${myTopLevelEntity}_postroute.tvr
puts "### PostPARTiming Complete."

# Close project
puts "### Close $myTool project."
close_project

