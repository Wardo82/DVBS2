#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/wardo/Documents/Xilinx/Vitis/2020.1/bin:/home/wardo/Documents/Xilinx/Vivado/2020.1/ids_lite/ISE/bin/lin64:/home/wardo/Documents/Xilinx/Vivado/2020.1/bin
else
  PATH=/home/wardo/Documents/Xilinx/Vitis/2020.1/bin:/home/wardo/Documents/Xilinx/Vivado/2020.1/ids_lite/ISE/bin/lin64:/home/wardo/Documents/Xilinx/Vivado/2020.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/wardo/Documents/Matlab Projects/Cosimulation and FPGA in the loop tutorial/codegen/mlhdlc_sysobj_ex/fil/mlhdlc_sysobj_ex_fixpt_fil/fpgaproj/mlhdlc_sysobj_ex_fixpt_fil.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log mlhdlc_sysobj_ex_fixpt_fil.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source mlhdlc_sysobj_ex_fixpt_fil.tcl -notrace

