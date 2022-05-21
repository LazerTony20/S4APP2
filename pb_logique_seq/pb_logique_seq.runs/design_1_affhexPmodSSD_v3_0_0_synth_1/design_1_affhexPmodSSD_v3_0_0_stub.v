// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:09:05 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_affhexPmodSSD_v3_0_0_stub.v
// Design      : design_1_affhexPmodSSD_v3_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "affhexPmodSSD_v3,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, reset, DA, i_btn, JPmod)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,DA[7:0],i_btn[3:0],JPmod[7:0]" */;
  input clk;
  input reset;
  input [7:0]DA;
  input [3:0]i_btn;
  output [7:0]JPmod;
endmodule
