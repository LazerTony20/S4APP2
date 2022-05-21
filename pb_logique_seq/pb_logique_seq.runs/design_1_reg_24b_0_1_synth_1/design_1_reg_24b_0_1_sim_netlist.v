// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat May 21 15:02:23 2022
// Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_reg_24b_0_1_sim_netlist.v
// Design      : design_1_reg_24b_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_reg_24b_0_1,reg_24b,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "reg_24b,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (i_clk,
    i_reset,
    i_en,
    i_dat,
    o_dat);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 i_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0" *) input i_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 i_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input i_reset;
  input i_en;
  input [23:0]i_dat;
  output [23:0]o_dat;

  wire i_clk;
  wire [23:0]i_dat;
  wire i_en;
  wire i_reset;
  wire [23:0]o_dat;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_24b U0
       (.i_clk(i_clk),
        .i_dat(i_dat),
        .i_en(i_en),
        .i_reset(i_reset),
        .o_dat(o_dat));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reg_24b
   (o_dat,
    i_en,
    i_dat,
    i_clk,
    i_reset);
  output [23:0]o_dat;
  input i_en;
  input [23:0]i_dat;
  input i_clk;
  input i_reset;

  wire i_clk;
  wire [23:0]i_dat;
  wire i_en;
  wire i_reset;
  wire [23:0]o_dat;

  FDCE \q_reg_reg[0] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[0]),
        .Q(o_dat[0]));
  FDCE \q_reg_reg[10] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[10]),
        .Q(o_dat[10]));
  FDCE \q_reg_reg[11] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[11]),
        .Q(o_dat[11]));
  FDCE \q_reg_reg[12] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[12]),
        .Q(o_dat[12]));
  FDCE \q_reg_reg[13] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[13]),
        .Q(o_dat[13]));
  FDCE \q_reg_reg[14] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[14]),
        .Q(o_dat[14]));
  FDCE \q_reg_reg[15] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[15]),
        .Q(o_dat[15]));
  FDCE \q_reg_reg[16] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[16]),
        .Q(o_dat[16]));
  FDCE \q_reg_reg[17] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[17]),
        .Q(o_dat[17]));
  FDCE \q_reg_reg[18] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[18]),
        .Q(o_dat[18]));
  FDCE \q_reg_reg[19] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[19]),
        .Q(o_dat[19]));
  FDCE \q_reg_reg[1] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[1]),
        .Q(o_dat[1]));
  FDCE \q_reg_reg[20] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[20]),
        .Q(o_dat[20]));
  FDCE \q_reg_reg[21] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[21]),
        .Q(o_dat[21]));
  FDCE \q_reg_reg[22] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[22]),
        .Q(o_dat[22]));
  FDCE \q_reg_reg[23] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[23]),
        .Q(o_dat[23]));
  FDCE \q_reg_reg[2] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[2]),
        .Q(o_dat[2]));
  FDCE \q_reg_reg[3] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[3]),
        .Q(o_dat[3]));
  FDCE \q_reg_reg[4] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[4]),
        .Q(o_dat[4]));
  FDCE \q_reg_reg[5] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[5]),
        .Q(o_dat[5]));
  FDCE \q_reg_reg[6] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[6]),
        .Q(o_dat[6]));
  FDCE \q_reg_reg[7] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[7]),
        .Q(o_dat[7]));
  FDCE \q_reg_reg[8] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[8]),
        .Q(o_dat[8]));
  FDCE \q_reg_reg[9] 
       (.C(i_clk),
        .CE(i_en),
        .CLR(i_reset),
        .D(i_dat[9]),
        .Q(o_dat[9]));
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
