// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:05:16 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mef_cod_i2s_vsb_0_0_sim_netlist.v
// Design      : design_1_mef_cod_i2s_vsb_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_mef_cod_i2s_vsb_0_0,mef_cod_i2s_vsb,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "mef_cod_i2s_vsb,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_bclk,
    i_reset,
    i_lrc,
    i_cpt_bits,
    o_bit_enable,
    o_load_left,
    o_load_right,
    o_cpt_bit_reset);
  input i_bclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input i_lrc;
  input [6:0]i_cpt_bits;
  output o_bit_enable;
  output o_load_left;
  output o_load_right;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output o_cpt_bit_reset;

  wire i_bclk;
  wire [6:0]i_cpt_bits;
  wire i_lrc;
  wire i_reset;
  wire o_bit_enable;
  wire o_cpt_bit_reset;
  wire o_load_left;
  wire o_load_right;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_cod_i2s_vsb U0
       (.i_bclk(i_bclk),
        .i_cpt_bits(i_cpt_bits),
        .i_lrc(i_lrc),
        .i_reset(i_reset),
        .o_bit_enable(o_bit_enable),
        .o_cpt_bit_reset(o_cpt_bit_reset),
        .o_load_left(o_load_left),
        .o_load_right(o_load_right));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_cod_i2s_vsb
   (o_load_left,
    o_load_right,
    o_cpt_bit_reset,
    o_bit_enable,
    i_lrc,
    i_bclk,
    i_reset,
    i_cpt_bits);
  output o_load_left;
  output o_load_right;
  output o_cpt_bit_reset;
  output o_bit_enable;
  input i_lrc;
  input i_bclk;
  input i_reset;
  input [6:0]i_cpt_bits;

  wire \FSM_onehot_fsm_EtatCourant[1]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[2]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[3]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[4]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[6]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[7]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[8]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[9]_i_1_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0 ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ;
  wire \FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ;
  wire i_bclk;
  wire [6:0]i_cpt_bits;
  wire i_lrc;
  wire i_reset;
  wire o_bit_enable;
  wire o_cpt_bit_reset;
  wire o_load_left;
  wire o_load_right;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFAEA)) 
    \FSM_onehot_fsm_EtatCourant[1]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ),
        .I1(\FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ),
        .I2(i_lrc),
        .I3(o_load_left),
        .O(\FSM_onehot_fsm_EtatCourant[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_fsm_EtatCourant[2]_i_1 
       (.I0(o_load_left),
        .I1(i_lrc),
        .O(\FSM_onehot_fsm_EtatCourant[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \FSM_onehot_fsm_EtatCourant[3]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ),
        .I1(i_cpt_bits[5]),
        .I2(i_cpt_bits[3]),
        .I3(i_cpt_bits[6]),
        .I4(\FSM_onehot_fsm_EtatCourant[9]_i_2_n_0 ),
        .I5(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ),
        .O(\FSM_onehot_fsm_EtatCourant[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_fsm_EtatCourant[4]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ),
        .I1(\FSM_onehot_fsm_EtatCourant[9]_i_2_n_0 ),
        .I2(i_cpt_bits[6]),
        .I3(i_cpt_bits[3]),
        .I4(i_cpt_bits[5]),
        .O(\FSM_onehot_fsm_EtatCourant[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAFAE)) 
    \FSM_onehot_fsm_EtatCourant[6]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ),
        .I1(o_load_right),
        .I2(i_lrc),
        .I3(\FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ),
        .O(\FSM_onehot_fsm_EtatCourant[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_fsm_EtatCourant[7]_i_1 
       (.I0(o_load_right),
        .I1(i_lrc),
        .O(\FSM_onehot_fsm_EtatCourant[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
    \FSM_onehot_fsm_EtatCourant[8]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ),
        .I1(i_cpt_bits[5]),
        .I2(i_cpt_bits[3]),
        .I3(i_cpt_bits[6]),
        .I4(\FSM_onehot_fsm_EtatCourant[9]_i_2_n_0 ),
        .I5(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ),
        .O(\FSM_onehot_fsm_EtatCourant[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_onehot_fsm_EtatCourant[9]_i_1 
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ),
        .I1(\FSM_onehot_fsm_EtatCourant[9]_i_2_n_0 ),
        .I2(i_cpt_bits[6]),
        .I3(i_cpt_bits[3]),
        .I4(i_cpt_bits[5]),
        .O(\FSM_onehot_fsm_EtatCourant[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_fsm_EtatCourant[9]_i_2 
       (.I0(i_cpt_bits[1]),
        .I1(i_cpt_bits[0]),
        .I2(i_cpt_bits[4]),
        .I3(i_cpt_bits[2]),
        .O(\FSM_onehot_fsm_EtatCourant[9]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_fsm_EtatCourant_reg[0] 
       (.C(i_bclk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(i_reset),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[10] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[1] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[1]_i_1_n_0 ),
        .Q(o_load_left));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[2] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[2]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[3] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[3]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[4] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[4]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[5] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant_reg_n_0_[4] ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[6] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[6]_i_1_n_0 ),
        .Q(o_load_right));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[7] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[7]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[8] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[8]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_fsm_EtatCourant_reg[9] 
       (.C(i_bclk),
        .CE(1'b1),
        .CLR(i_reset),
        .D(\FSM_onehot_fsm_EtatCourant[9]_i_1_n_0 ),
        .Q(\FSM_onehot_fsm_EtatCourant_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'hE)) 
    o_bit_enable_INST_0
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[3] ),
        .I1(\FSM_onehot_fsm_EtatCourant_reg_n_0_[8] ),
        .O(o_bit_enable));
  LUT2 #(
    .INIT(4'hE)) 
    o_cpt_bit_reset_INST_0
       (.I0(\FSM_onehot_fsm_EtatCourant_reg_n_0_[2] ),
        .I1(\FSM_onehot_fsm_EtatCourant_reg_n_0_[7] ),
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
