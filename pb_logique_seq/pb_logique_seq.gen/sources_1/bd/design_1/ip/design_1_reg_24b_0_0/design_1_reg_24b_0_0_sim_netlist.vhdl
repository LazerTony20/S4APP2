-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat May 21 15:01:28 2022
-- Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/antho/Documents/Programmes/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_reg_24b_0_0/design_1_reg_24b_0_0_sim_netlist.vhdl
-- Design      : design_1_reg_24b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_24b_0_0_reg_24b is
  port (
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 );
    i_en : in STD_LOGIC;
    i_dat : in STD_LOGIC_VECTOR ( 23 downto 0 );
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_reg_24b_0_0_reg_24b : entity is "reg_24b";
end design_1_reg_24b_0_0_reg_24b;

architecture STRUCTURE of design_1_reg_24b_0_0_reg_24b is
begin
\q_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(0),
      Q => o_dat(0)
    );
\q_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(10),
      Q => o_dat(10)
    );
\q_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(11),
      Q => o_dat(11)
    );
\q_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(12),
      Q => o_dat(12)
    );
\q_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(13),
      Q => o_dat(13)
    );
\q_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(14),
      Q => o_dat(14)
    );
\q_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(15),
      Q => o_dat(15)
    );
\q_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(16),
      Q => o_dat(16)
    );
\q_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(17),
      Q => o_dat(17)
    );
\q_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(18),
      Q => o_dat(18)
    );
\q_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(19),
      Q => o_dat(19)
    );
\q_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(1),
      Q => o_dat(1)
    );
\q_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(20),
      Q => o_dat(20)
    );
\q_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(21),
      Q => o_dat(21)
    );
\q_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(22),
      Q => o_dat(22)
    );
\q_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(23),
      Q => o_dat(23)
    );
\q_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(2),
      Q => o_dat(2)
    );
\q_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(3),
      Q => o_dat(3)
    );
\q_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(4),
      Q => o_dat(4)
    );
\q_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(5),
      Q => o_dat(5)
    );
\q_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(6),
      Q => o_dat(6)
    );
\q_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(7),
      Q => o_dat(7)
    );
\q_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(8),
      Q => o_dat(8)
    );
\q_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => i_clk,
      CE => i_en,
      CLR => i_reset,
      D => i_dat(9),
      Q => o_dat(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_reg_24b_0_0 is
  port (
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_en : in STD_LOGIC;
    i_dat : in STD_LOGIC_VECTOR ( 23 downto 0 );
    o_dat : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_reg_24b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_reg_24b_0_0 : entity is "design_1_reg_24b_0_0,reg_24b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_reg_24b_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_reg_24b_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_reg_24b_0_0 : entity is "reg_24b,Vivado 2020.2";
end design_1_reg_24b_0_0;

architecture STRUCTURE of design_1_reg_24b_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of i_clk : signal is "xilinx.com:signal:clock:1.0 i_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_clk : signal is "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_reg_24b_0_0_reg_24b
     port map (
      i_clk => i_clk,
      i_dat(23 downto 0) => i_dat(23 downto 0),
      i_en => i_en,
      i_reset => i_reset,
      o_dat(23 downto 0) => o_dat(23 downto 0)
    );
end STRUCTURE;
