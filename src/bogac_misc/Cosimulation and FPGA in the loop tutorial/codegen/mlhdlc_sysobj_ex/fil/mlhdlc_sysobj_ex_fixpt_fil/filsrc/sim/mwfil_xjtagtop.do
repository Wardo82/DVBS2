set SRCDIR /home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc
set SIMDIR /home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/filsrc/sim
set COMPILE vcom

set SIM vsim

vlib $SIMDIR/work
vmap work $SIMDIR/work

$COMPILE $SRCDIR/jtag_mac.v
$COMPILE $SRCDIR/jtag_mac_fifo_wrapper.vhd
$COMPILE $SRCDIR/simcycle_fifo_wrapper.vhd
$COMPILE $SRCDIR/mwfil_dpscram.vhd
$COMPILE $SRCDIR/mwfil_udfifo.vhd
$COMPILE $SRCDIR/mwfil_bus2dut.vhd
$COMPILE $SRCDIR/mwfil_chifcore.vhd
$COMPILE $SRCDIR/mwfil_controller.vhd
$COMPILE $SRCDIR/mwfil_dut2bus.vhd
$COMPILE $SRCDIR/mlhdlc_sysobj_ex_fixpt_wrapper.vhd
$COMPILE $SRCDIR/mwfil_chiftop.vhd
$COMPILE $SRCDIR/mlhdlc_sysobj_ex_fixpt_fil.vhd
