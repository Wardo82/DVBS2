
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
}
BMultithreading enabled for route_design using a maximum of %s CPUs17*	routeflow2
82default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
�
�Clock port "%s" does not have an associated HD.CLK_SRC. Without this constraint, timing analysis may not be accurate and upstream checks cannot be done to ensure correct clock placement.
88*route2
clk2default:defaultZ35-197h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2

clk_enable2default:default2

clk_enable2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
reset_x2default:default2
reset_x2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2 
end_of_frame2default:default2 
end_of_frame2default:defaultZ35-198h px� 
�
�Port "%s" does not have an associated HD.PARTPIN_LOCS, which will prevent the partial routing of the signal "%s". Without this partial route, timing analysis to/from this port will not be accurate, and no routing information for this port can be exported.
89*route2
in_rsvd2default:default2
in_rsvd2default:defaultZ35-198h px� 
B
-Phase 1 Build RT Design | Checksum: 636f2557
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:13 . Memory (MB): peak = 2985.387 ; gain = 16.008 ; free physical = 13981 ; free virtual = 220682default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
{
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px� 
{

Phase %s%s
101*constraints2
2.1 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
M
8Phase 2.1 Fix Topology Constraints | Checksum: 636f2557
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:13 . Memory (MB): peak = 2985.387 ; gain = 16.008 ; free physical = 13947 ; free virtual = 220342default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: 636f2557
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:13 . Memory (MB): peak = 2985.387 ; gain = 16.008 ; free physical = 13947 ; free virtual = 220342default:defaulth px� 
I
4Phase 2 Router Initialization | Checksum: 1a83e38c6
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:13 . Memory (MB): peak = 2986.418 ; gain = 17.039 ; free physical = 13944 ; free virtual = 220312default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
B
-Phase 3 Initial Routing | Checksum: f0acd9de
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:17 ; elapsed = 00:00:14 . Memory (MB): peak = 2989.773 ; gain = 20.395 ; free physical = 13939 ; free virtual = 220262default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
G
2Phase 4.1 Global Iteration 0 | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2990.773 ; gain = 21.395 ; free physical = 13937 ; free virtual = 220242default:defaulth px� 
E
0Phase 4 Rip-up And Reroute | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2990.773 ; gain = 21.395 ; free physical = 13937 ; free virtual = 220242default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2990.773 ; gain = 21.395 ; free physical = 13937 ; free virtual = 220242default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
B
-Phase 6.1 Hold Fix Iter | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2990.773 ; gain = 21.395 ; free physical = 13937 ; free virtual = 220242default:defaulth px� 
@
+Phase 6 Post Hold Fix | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2990.773 ; gain = 21.395 ; free physical = 13937 ; free virtual = 220242default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
A
,Phase 7 Route finalize | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2991.773 ; gain = 22.395 ; free physical = 13937 ; free virtual = 220242default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
H
3Phase 8 Verifying routed nets | Checksum: c6a1be63
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2993.773 ; gain = 24.395 ; free physical = 13936 ; free virtual = 220222default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 1520705b1
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2993.773 ; gain = 24.395 ; free physical = 13936 ; free virtual = 220232default:defaulth px� 
@
Router Completed Successfully
2*	routeflowZ35-16h px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:18 ; elapsed = 00:00:14 . Memory (MB): peak = 2993.773 ; gain = 24.395 ; free physical = 13974 ; free virtual = 220612default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
562default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
route_design: 2default:default2
00:00:202default:default2
00:00:162default:default2
2993.7732default:default2
92.8912default:default2
139742default:default2
220612default:defaultZ17-722h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2)
Write XDEF Complete: 2default:default2
00:00:00.212default:default2
00:00:00.082default:default2
3001.7772default:default2
0.0002default:default2
139702default:default2
220592default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�/home/wardo/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/synthesis_reports/vivado_prj/bch_encoder_vivado.runs/impl_1/bch_encoder_routed.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
vExecuting : report_drc -file bch_encoder_drc_routed.rpt -pb bch_encoder_drc_routed.pb -rpx bch_encoder_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2}
ireport_drc -file bch_encoder_drc_routed.rpt -pb bch_encoder_drc_routed.pb -rpx bch_encoder_drc_routed.rpx2default:defaultZ4-113h px� 
>
IP Catalog is up to date.1232*coregenZ19-1839h px� 
P
Running DRC with %s threads
24*drc2
82default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
�/home/wardo/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/synthesis_reports/vivado_prj/bch_encoder_vivado.runs/impl_1/bch_encoder_drc_routed.rpt�/home/wardo/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/synthesis_reports/vivado_prj/bch_encoder_vivado.runs/impl_1/bch_encoder_drc_routed.rpt2default:default8Z2-168h px� 
\
%s completed successfully
29*	vivadotcl2

report_drc2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_methodology -file bch_encoder_methodology_drc_routed.rpt -pb bch_encoder_methodology_drc_routed.pb -rpx bch_encoder_methodology_drc_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
�report_methodology -file bch_encoder_methodology_drc_routed.rpt -pb bch_encoder_methodology_drc_routed.pb -rpx bch_encoder_methodology_drc_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
�
�Port %s has one or several leaf clock pins in its transitive fanout without any clock buffer on the path and no clock reaching the clock pin(s). Vivado cannot infer the clock source when no clock buffer is found on the path to a leaf clock pin.276*timing2
clk2default:defaultZ38-493h px� 
�
�The property HD.CLK_SRC of clock port %s is not set. In out-of-context mode, this prevents timing estimation for clock delay/skew167*timing2
clkclk2default:default8Z38-242h px� 
Y
$Running Methodology with %s threads
74*drc2
82default:defaultZ23-133h px� 
�
2The results of Report Methodology are in file %s.
450*coretcl2�
�/home/wardo/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/synthesis_reports/vivado_prj/bch_encoder_vivado.runs/impl_1/bch_encoder_methodology_drc_routed.rpt�/home/wardo/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/synthesis_reports/vivado_prj/bch_encoder_vivado.runs/impl_1/bch_encoder_methodology_drc_routed.rpt2default:default8Z2-1520h px� 
d
%s completed successfully
29*	vivadotcl2&
report_methodology2default:defaultZ4-42h px� 
�
%s4*runtcl2�
�Executing : report_power -file bch_encoder_power_routed.rpt -pb bch_encoder_power_summary_routed.pb -rpx bch_encoder_power_routed.rpx
2default:defaulth px� 
�
Command: %s
53*	vivadotcl2�
yreport_power -file bch_encoder_power_routed.rpt -pb bch_encoder_power_summary_routed.pb -rpx bch_encoder_power_routed.rpx2default:defaultZ4-113h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
P
/No user defined clocks was found in the design!216*powerZ33-232h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
672default:default2
152default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
report_power2default:defaultZ4-42h px� 
�
%s4*runtcl2w
cExecuting : report_route_status -file bch_encoder_route_status.rpt -pb bch_encoder_route_status.pb
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_timing_summary -max_paths 10 -file bch_encoder_timing_summary_routed.rpt -pb bch_encoder_timing_summary_routed.pb -rpx bch_encoder_timing_summary_routed.rpx -warn_on_violation 
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 
�
iThere are no user specified timing constraints. Timing constraints are needed for proper timing analysis.200*timingZ38-313h px� 
�
%s4*runtcl2h
TExecuting : report_incremental_reuse -file bch_encoder_incremental_reuse_routed.rpt
2default:defaulth px� 
g
BIncremental flow is disabled. No incremental reuse Info to report.423*	vivadotclZ4-1062h px� 
�
%s4*runtcl2h
TExecuting : report_clock_utilization -file bch_encoder_clock_utilization_routed.rpt
2default:defaulth px� 
�
%s4*runtcl2�
�Executing : report_bus_skew -warn_on_violation -file bch_encoder_bus_skew_routed.rpt -pb bch_encoder_bus_skew_routed.pb -rpx bch_encoder_bus_skew_routed.rpx
2default:defaulth px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
82default:defaultZ38-191h px� 


End Record