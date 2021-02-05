# HDL Coder Downstream Integration Tcl Script

set myTool "Altera QUARTUS II 20.1.1"
set myProject "stream_adapt_quartus"
set myProjectFile "stream_adapt_quartus.qpf"
set myTopLevelEntity "stream_adapt"

set Family "Cyclone V"
set Device "5CSEMA4U23C6"
set Package ""
set Speed ""
set UseTimeQuest "ON"

# Open existing project
puts "### Open existing $myTool project \/home\/wardo\/Documents\/DVBS2\/DVBS2\/src\/transmitter\/2-StreamAdaptation\/altera_files\/quartus_prj\/stream_adapt_quartus.qpf"
load_package flow
project_open -current_revision $myProject

# Running PAR
puts "### Running PAR in $myTool ..."
execute_module -tool fit
puts "### PAR Complete."

# Running PostPARTiming
puts "### Running PostPARTiming in $myTool ..."
create_timing_netlist
read_sdc
update_timing_netlist
report_clock_fmax_summary
report_timing -npaths 1
report_timing -npaths 3 -file ${myTopLevelEntity}_postroute.tqr
puts "### PostPARTiming Complete."

# Close project
puts "### Close $myTool project."
project_close

