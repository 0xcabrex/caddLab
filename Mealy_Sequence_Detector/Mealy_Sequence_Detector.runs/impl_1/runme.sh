#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/XILINX/Vivado/2021.1/ids_lite/ISE/bin/nt64;D:/XILINX/Vivado/2021.1/ids_lite/ISE/lib/nt64:D:/XILINX/Vivado/2021.1/bin
else
  PATH=D:/XILINX/Vivado/2021.1/ids_lite/ISE/bin/nt64;D:/XILINX/Vivado/2021.1/ids_lite/ISE/lib/nt64:D:/XILINX/Vivado/2021.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/XILINX/vivado projects/Mealy_Sequence_Detector/Mealy_Sequence_Detector.runs/impl_1'
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
EAStep vivado -log mealy_seq_det_ap.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source mealy_seq_det_ap.tcl -notrace


