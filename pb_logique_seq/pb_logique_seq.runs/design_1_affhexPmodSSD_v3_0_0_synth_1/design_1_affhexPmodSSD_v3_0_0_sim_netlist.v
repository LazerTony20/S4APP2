// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:09:05 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_affhexPmodSSD_v3_0_0_sim_netlist.v
// Design      : design_1_affhexPmodSSD_v3_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_affhexPmodSSD_v3
   (JPmod,
    i_btn,
    clk,
    DA,
    reset);
  output [7:0]JPmod;
  input [0:0]i_btn;
  input clk;
  input [7:0]DA;
  input reset;

  wire [7:0]DA;
  wire [7:0]JPmod;
  wire SEL_i_1_n_0;
  wire SEL_i_2_n_0;
  wire SEL_i_3_n_0;
  wire SEL_i_4_n_0;
  wire clear;
  wire clk;
  wire \counta[0]_i_3_n_0 ;
  wire [15:0]counta_reg;
  wire \counta_reg[0]_i_2_n_0 ;
  wire \counta_reg[0]_i_2_n_1 ;
  wire \counta_reg[0]_i_2_n_2 ;
  wire \counta_reg[0]_i_2_n_3 ;
  wire \counta_reg[0]_i_2_n_4 ;
  wire \counta_reg[0]_i_2_n_5 ;
  wire \counta_reg[0]_i_2_n_6 ;
  wire \counta_reg[0]_i_2_n_7 ;
  wire \counta_reg[12]_i_1_n_1 ;
  wire \counta_reg[12]_i_1_n_2 ;
  wire \counta_reg[12]_i_1_n_3 ;
  wire \counta_reg[12]_i_1_n_4 ;
  wire \counta_reg[12]_i_1_n_5 ;
  wire \counta_reg[12]_i_1_n_6 ;
  wire \counta_reg[12]_i_1_n_7 ;
  wire \counta_reg[4]_i_1_n_0 ;
  wire \counta_reg[4]_i_1_n_1 ;
  wire \counta_reg[4]_i_1_n_2 ;
  wire \counta_reg[4]_i_1_n_3 ;
  wire \counta_reg[4]_i_1_n_4 ;
  wire \counta_reg[4]_i_1_n_5 ;
  wire \counta_reg[4]_i_1_n_6 ;
  wire \counta_reg[4]_i_1_n_7 ;
  wire \counta_reg[8]_i_1_n_0 ;
  wire \counta_reg[8]_i_1_n_1 ;
  wire \counta_reg[8]_i_1_n_2 ;
  wire \counta_reg[8]_i_1_n_3 ;
  wire \counta_reg[8]_i_1_n_4 ;
  wire \counta_reg[8]_i_1_n_5 ;
  wire \counta_reg[8]_i_1_n_6 ;
  wire \counta_reg[8]_i_1_n_7 ;
  wire [3:0]donn__11;
  wire [0:0]i_btn;
  wire [7:0]q_DA;
  wire \q_DA[7]_i_1_n_0 ;
  wire q_aff_mem;
  wire reset;
  wire [3:3]\NLW_counta_reg[12]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF6D)) 
    \JPmod[0]_INST_0 
       (.I0(donn__11[2]),
        .I1(donn__11[3]),
        .I2(donn__11[0]),
        .I3(donn__11[1]),
        .O(JPmod[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h497F)) 
    \JPmod[1]_INST_0 
       (.I0(donn__11[1]),
        .I1(donn__11[0]),
        .I2(donn__11[3]),
        .I3(donn__11[2]),
        .O(JPmod[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h76F7)) 
    \JPmod[2]_INST_0 
       (.I0(donn__11[2]),
        .I1(donn__11[3]),
        .I2(donn__11[0]),
        .I3(donn__11[1]),
        .O(JPmod[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5BED)) 
    \JPmod[3]_INST_0 
       (.I0(donn__11[2]),
        .I1(donn__11[3]),
        .I2(donn__11[0]),
        .I3(donn__11[1]),
        .O(JPmod[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC8EF)) 
    \JPmod[4]_INST_0 
       (.I0(donn__11[1]),
        .I1(donn__11[3]),
        .I2(donn__11[2]),
        .I3(donn__11[0]),
        .O(JPmod[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC6EF)) 
    \JPmod[5]_INST_0 
       (.I0(donn__11[2]),
        .I1(donn__11[3]),
        .I2(donn__11[1]),
        .I3(donn__11[0]),
        .O(JPmod[5]));
  LUT4 #(
    .INIT(16'hFB6E)) 
    \JPmod[6]_INST_0 
       (.I0(donn__11[1]),
        .I1(donn__11[2]),
        .I2(donn__11[0]),
        .I3(donn__11[3]),
        .O(JPmod[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \JPmod[6]_INST_0_i_1 
       (.I0(q_DA[1]),
        .I1(q_DA[5]),
        .I2(i_btn),
        .I3(JPmod[7]),
        .I4(DA[1]),
        .I5(DA[5]),
        .O(donn__11[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \JPmod[6]_INST_0_i_2 
       (.I0(q_DA[2]),
        .I1(q_DA[6]),
        .I2(i_btn),
        .I3(JPmod[7]),
        .I4(DA[2]),
        .I5(DA[6]),
        .O(donn__11[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \JPmod[6]_INST_0_i_3 
       (.I0(q_DA[0]),
        .I1(q_DA[4]),
        .I2(i_btn),
        .I3(JPmod[7]),
        .I4(DA[0]),
        .I5(DA[4]),
        .O(donn__11[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \JPmod[6]_INST_0_i_4 
       (.I0(q_DA[3]),
        .I1(q_DA[7]),
        .I2(i_btn),
        .I3(JPmod[7]),
        .I4(DA[3]),
        .I5(DA[7]),
        .O(donn__11[3]));
  LUT4 #(
    .INIT(16'h7F80)) 
    SEL_i_1
       (.I0(SEL_i_2_n_0),
        .I1(SEL_i_3_n_0),
        .I2(SEL_i_4_n_0),
        .I3(JPmod[7]),
        .O(SEL_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    SEL_i_2
       (.I0(counta_reg[6]),
        .I1(counta_reg[7]),
        .I2(counta_reg[4]),
        .I3(counta_reg[5]),
        .I4(counta_reg[8]),
        .I5(counta_reg[9]),
        .O(SEL_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    SEL_i_3
       (.I0(counta_reg[1]),
        .I1(counta_reg[0]),
        .I2(counta_reg[3]),
        .I3(counta_reg[2]),
        .O(SEL_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    SEL_i_4
       (.I0(counta_reg[12]),
        .I1(counta_reg[13]),
        .I2(counta_reg[10]),
        .I3(counta_reg[11]),
        .I4(counta_reg[15]),
        .I5(counta_reg[14]),
        .O(SEL_i_4_n_0));
  FDRE SEL_reg
       (.C(clk),
        .CE(1'b1),
        .D(SEL_i_1_n_0),
        .Q(JPmod[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counta[0]_i_1 
       (.I0(SEL_i_4_n_0),
        .I1(counta_reg[1]),
        .I2(counta_reg[0]),
        .I3(counta_reg[3]),
        .I4(counta_reg[2]),
        .I5(SEL_i_2_n_0),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \counta[0]_i_3 
       (.I0(counta_reg[0]),
        .O(\counta[0]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[0]_i_2_n_7 ),
        .Q(counta_reg[0]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counta_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\counta_reg[0]_i_2_n_0 ,\counta_reg[0]_i_2_n_1 ,\counta_reg[0]_i_2_n_2 ,\counta_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\counta_reg[0]_i_2_n_4 ,\counta_reg[0]_i_2_n_5 ,\counta_reg[0]_i_2_n_6 ,\counta_reg[0]_i_2_n_7 }),
        .S({counta_reg[3:1],\counta[0]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[8]_i_1_n_5 ),
        .Q(counta_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[8]_i_1_n_4 ),
        .Q(counta_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[12]_i_1_n_7 ),
        .Q(counta_reg[12]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counta_reg[12]_i_1 
       (.CI(\counta_reg[8]_i_1_n_0 ),
        .CO({\NLW_counta_reg[12]_i_1_CO_UNCONNECTED [3],\counta_reg[12]_i_1_n_1 ,\counta_reg[12]_i_1_n_2 ,\counta_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counta_reg[12]_i_1_n_4 ,\counta_reg[12]_i_1_n_5 ,\counta_reg[12]_i_1_n_6 ,\counta_reg[12]_i_1_n_7 }),
        .S(counta_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[12]_i_1_n_6 ),
        .Q(counta_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[12]_i_1_n_5 ),
        .Q(counta_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[12]_i_1_n_4 ),
        .Q(counta_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[0]_i_2_n_6 ),
        .Q(counta_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[0]_i_2_n_5 ),
        .Q(counta_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[0]_i_2_n_4 ),
        .Q(counta_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[4]_i_1_n_7 ),
        .Q(counta_reg[4]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counta_reg[4]_i_1 
       (.CI(\counta_reg[0]_i_2_n_0 ),
        .CO({\counta_reg[4]_i_1_n_0 ,\counta_reg[4]_i_1_n_1 ,\counta_reg[4]_i_1_n_2 ,\counta_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counta_reg[4]_i_1_n_4 ,\counta_reg[4]_i_1_n_5 ,\counta_reg[4]_i_1_n_6 ,\counta_reg[4]_i_1_n_7 }),
        .S(counta_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[4]_i_1_n_6 ),
        .Q(counta_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[4]_i_1_n_5 ),
        .Q(counta_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[4]_i_1_n_4 ),
        .Q(counta_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[8]_i_1_n_7 ),
        .Q(counta_reg[8]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \counta_reg[8]_i_1 
       (.CI(\counta_reg[4]_i_1_n_0 ),
        .CO({\counta_reg[8]_i_1_n_0 ,\counta_reg[8]_i_1_n_1 ,\counta_reg[8]_i_1_n_2 ,\counta_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counta_reg[8]_i_1_n_4 ,\counta_reg[8]_i_1_n_5 ,\counta_reg[8]_i_1_n_6 ,\counta_reg[8]_i_1_n_7 }),
        .S(counta_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \counta_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counta_reg[8]_i_1_n_6 ),
        .Q(counta_reg[9]),
        .R(clear));
  LUT2 #(
    .INIT(4'h1)) 
    \q_DA[7]_i_1 
       (.I0(i_btn),
        .I1(q_aff_mem),
        .O(\q_DA[7]_i_1_n_0 ));
  FDCE \q_DA_reg[0] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[0]),
        .Q(q_DA[0]));
  FDCE \q_DA_reg[1] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[1]),
        .Q(q_DA[1]));
  FDCE \q_DA_reg[2] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[2]),
        .Q(q_DA[2]));
  FDCE \q_DA_reg[3] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[3]),
        .Q(q_DA[3]));
  FDCE \q_DA_reg[4] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[4]),
        .Q(q_DA[4]));
  FDCE \q_DA_reg[5] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[5]),
        .Q(q_DA[5]));
  FDCE \q_DA_reg[6] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[6]),
        .Q(q_DA[6]));
  FDCE \q_DA_reg[7] 
       (.C(clk),
        .CE(\q_DA[7]_i_1_n_0 ),
        .CLR(reset),
        .D(DA[7]),
        .Q(q_DA[7]));
  FDRE q_aff_mem_reg
       (.C(clk),
        .CE(1'b1),
        .D(i_btn),
        .Q(q_aff_mem),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_affhexPmodSSD_v3_0_0,affhexPmodSSD_v3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "affhexPmodSSD_v3,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    reset,
    DA,
    i_btn,
    JPmod);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [7:0]DA;
  input [3:0]i_btn;
  output [7:0]JPmod;

  wire [7:0]DA;
  wire [7:0]JPmod;
  wire clk;
  wire [3:0]i_btn;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_affhexPmodSSD_v3 U0
       (.DA(DA),
        .JPmod(JPmod),
        .clk(clk),
        .i_btn(i_btn[2]),
        .reset(reset));
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
