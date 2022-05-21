// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:00:22 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mef_decod_i2s_v1b_0_0_sim_netlist.v
// Design      : design_1_mef_decod_i2s_v1b_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mef_decod_i2s_v1b_0_0,mef_decod_i2s_v1b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mef_decod_i2s_v1b,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_bclk,
    i_reset,
    i_lrc,
    i_cpt_bits,
    o_bit_enable,
    o_load_left,
    o_load_right,
    o_str_dat,
    o_cpt_bit_reset);
  input i_bclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input i_lrc;
  input [6:0]i_cpt_bits;
  output o_bit_enable;
  output o_load_left;
  output o_load_right;
  output o_str_dat;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_cpt_bit_reset;

  wire i_bclk;
  wire [6:0]i_cpt_bits;
  wire i_lrc;
  wire i_reset;
  wire o_bit_enable;
  wire o_cpt_bit_reset;
  wire o_load_left;
  wire o_load_left_INST_0_i_1_n_0;
  wire o_load_right;
  wire o_str_dat;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_decod_i2s_v1b U0
       (.i_bclk(i_bclk),
        .i_lrc(i_lrc),
        .i_reset(i_reset),
        .o_cpt_bit_reset(o_cpt_bit_reset));
  LUT4 #(
    .INIT(16'h0111)) 
    o_bit_enable_INST_0
       (.I0(i_cpt_bits[6]),
        .I1(i_cpt_bits[5]),
        .I2(i_cpt_bits[3]),
        .I3(i_cpt_bits[4]),
        .O(o_bit_enable));
  LUT5 #(
    .INIT(32'h00000002)) 
    o_load_left_INST_0
       (.I0(o_load_left_INST_0_i_1_n_0),
        .I1(i_lrc),
        .I2(i_cpt_bits[1]),
        .I3(i_cpt_bits[0]),
        .I4(i_cpt_bits[2]),
        .O(o_load_left));
  LUT4 #(
    .INIT(16'h1000)) 
    o_load_left_INST_0_i_1
       (.I0(i_cpt_bits[6]),
        .I1(i_cpt_bits[5]),
        .I2(i_cpt_bits[3]),
        .I3(i_cpt_bits[4]),
        .O(o_load_left_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    o_load_right_INST_0
       (.I0(o_load_left_INST_0_i_1_n_0),
        .I1(i_cpt_bits[1]),
        .I2(i_lrc),
        .I3(i_cpt_bits[0]),
        .I4(i_cpt_bits[2]),
        .O(o_load_right));
  LUT5 #(
    .INIT(32'h00200000)) 
    o_str_dat_INST_0
       (.I0(o_load_left_INST_0_i_1_n_0),
        .I1(i_cpt_bits[2]),
        .I2(i_cpt_bits[0]),
        .I3(i_cpt_bits[1]),
        .I4(i_lrc),
        .O(o_str_dat));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_decod_i2s_v1b
   (o_cpt_bit_reset,
    i_lrc,
    i_bclk,
    i_reset);
  output o_cpt_bit_reset;
  input i_lrc;
  input i_bclk;
  input i_reset;

  wire d_reclrc_prec;
  wire i_bclk;
  wire i_lrc;
  wire i_reset;
  wire o_cpt_bit_reset;

  FDRE d_reclrc_prec_reg
       (.C(i_bclk),
        .CE(1'b1),
        .D(i_lrc),
        .Q(d_reclrc_prec),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hBE)) 
    o_cpt_bit_reset_INST_0
       (.I0(i_reset),
        .I1(d_reclrc_prec),
        .I2(i_lrc),
        .O(o_cpt_bit_reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
