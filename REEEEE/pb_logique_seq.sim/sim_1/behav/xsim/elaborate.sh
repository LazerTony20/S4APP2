#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu May 26 17:48:48 EDT 2022
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto ae302d5aa3284400815652c101d33dae --incr --debug typical --relax --mt 8 -L xil_defaultlib -L util_vector_logic_v2_0_1 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L xlslice_v1_0_2 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot simul_module_sig_tb_behav xil_defaultlib.simul_module_sig_tb xil_defaultlib.glbl -log elaborate.log"
xelab -wto ae302d5aa3284400815652c101d33dae --incr --debug typical --relax --mt 8 -L xil_defaultlib -L util_vector_logic_v2_0_1 -L xlconcat_v2_1_4 -L xlconstant_v1_1_7 -L xlslice_v1_0_2 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot simul_module_sig_tb_behav xil_defaultlib.simul_module_sig_tb xil_defaultlib.glbl -log elaborate.log
