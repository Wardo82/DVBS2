set SRCDIR /home/wardo/Documents/DVBS2/DVBS2/src/bogac_misc/SimulinkBCHTest/home/wardo/Documents/DVBS2/DVBS2/src/bogac_misc/SimulinkBCHTest/filsrc
set SIMDIR /home/wardo/Documents/DVBS2/DVBS2/src/bogac_misc/SimulinkBCHTest/home/wardo/Documents/DVBS2/DVBS2/src/bogac_misc/SimulinkBCHTest/filsrc/sim
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
$COMPILE $SRCDIR/fil_test_wrapper.vhd
$COMPILE $SRCDIR/mwfil_chiftop.vhd
$COMPILE $SRCDIR/fil_test_fil.vhd
