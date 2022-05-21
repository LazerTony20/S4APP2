// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:05:16 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mef_cod_i2s_vsb_0_0_stub.v
// Design      : design_1_mef_cod_i2s_vsb_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mef_cod_i2s_vsb,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_bclk, i_reset, i_lrc, i_cpt_bits, o_bit_enable, 
  o_load_left, o_load_right, o_cpt_bit_reset)
/* synthesis syn_black_box black_box_pad_pin="i_bclk,i_reset,i_lrc,i_cpt_bits[6:0],o_bit_enable,o_load_left,o_load_right,o_cpt_bit_reset" */;
  input i_bclk;
  input i_reset;
  input i_lrc;
  input [6:0]i_cpt_bits;
  output o_bit_enable;
  output o_load_left;
  output o_load_right;
  output o_cpt_bit_reset;
endmodule
