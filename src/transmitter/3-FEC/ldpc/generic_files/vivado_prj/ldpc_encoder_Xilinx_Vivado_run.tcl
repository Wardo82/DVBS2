# HDL Coder Downstream Integration Tcl Script

set myTool "Xilinx Vivado 2020.1.1"
set myProject "ldpc_encoder_vivado"
set myProjectFile "ldpc_encoder_vivado.xpr"
set myTopLevelEntity "ldpc_encoder"

set Family "Zynq"
set Device "xc7z020"
set Package "clg484"
set Speed "-1"
set MapTimePathNumber "3"
set MapTimeAdvAnalysis "True"
set PARTimePathNumber "3"
set PARTimeAdvAnalysis "True"

# Open existing project
puts "### Open existing $myTool project \/home\/wardo\/Documents\/DVBS2\/DVBS2\/src\/transmitter\/3-FEC\/ldpc\/generic_files\/vivado_prj\/ldpc_encoder_vivado.xpr"
open_project ${myProject}

# Running Synthesis
puts "### Running Synthesis in $myTool ..."
if { [llength [get_runs synth_1] ] > 0 } { reset_run synth_1}
launch_runs synth_1 -force
wait_on_run synth_1
puts "### Synthesis Complete."

# Running PostMapTiming
puts "### Running PostMapTiming in $myTool ..."
open_run synth_1
report_timing_summary -delay_type min_max -report_unconstrained -check_timing_verbose -max_paths $MapTimePathNumber -nworst $MapTimePathNumber -name timing_post_map -file timing_post_map.rpt
source -quiet "/home/wardo/Documents/MATLAB/toolbox/hdlcoder/hdlcommon/+downstreamtools/extractVivadoTiming.tcl"
extracTimingReport ${myTopLevelEntity}_preroute.tvr
puts "### PostMapTiming Complete."

# Close project
puts "### Close $myTool project."
close_project

