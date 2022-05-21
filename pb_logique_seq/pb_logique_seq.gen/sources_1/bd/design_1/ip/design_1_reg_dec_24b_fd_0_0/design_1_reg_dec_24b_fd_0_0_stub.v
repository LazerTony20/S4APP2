// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:07:10 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/antho/Documents/Programmes/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_reg_dec_24b_fd_0_0/design_1_reg_dec_24b_fd_0_0_stub.v
// Design      : design_1_reg_dec_24b_fd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "reg_dec_24b_fd,Vivado 2020.2" *)
module design_1_reg_dec_24b_fd_0_0(i_clk, i_reset, i_load, i_en, i_dat_bit, 
  i_dat_load, o_dat)
/* synthesis syn_black_box black_box_pad_pin="i_clk,i_reset,i_load,i_en,i_dat_bit,i_dat_load[23:0],o_dat[23:0]" */;
  input i_clk;
  input i_reset;
  input i_load;
  input i_en;
  input i_dat_bit;
  input [23:0]i_dat_load;
  output [23:0]o_dat;
endmodule
