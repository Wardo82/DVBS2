set SRCDIR D:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/D:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/xilinx_files/fil_prj/filsrc
set SIMDIR D:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/D:/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/bch/xilinx_files/fil_prj/filsrc/sim
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
$COMPILE $SRCDIR/bch_encoder_wrapper.vhd
$COMPILE $SRCDIR/mwfil_chiftop.vhd
$COMPILE $SRCDIR/bch_encoder_fil.vhd
