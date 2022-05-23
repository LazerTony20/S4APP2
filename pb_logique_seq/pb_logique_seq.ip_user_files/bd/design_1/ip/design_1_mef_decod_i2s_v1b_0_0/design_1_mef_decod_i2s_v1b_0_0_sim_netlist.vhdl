-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat May 21 15:00:22 2022
-- Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/antho/Documents/Programmes/S4APP2/pb_logique_seq/pb_logique_seq.gen/sources_1/bd/design_1/ip/design_1_mef_decod_i2s_v1b_0_0/design_1_mef_decod_i2s_v1b_0_0_sim_netlist.vhdl
-- Design      : design_1_mef_decod_i2s_v1b_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b is
  port (
    o_cpt_bit_reset : out STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b : entity is "mef_decod_i2s_v1b";
end design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b;

architecture STRUCTURE of design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b is
  signal d_reclrc_prec : STD_LOGIC;
begin
d_reclrc_prec_reg: unisim.vcomponents.FDRE
     port map (
      C => i_bclk,
      CE => '1',
      D => i_lrc,
      Q => d_reclrc_prec,
      R => '0'
    );
o_cpt_bit_reset_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BE"
    )
        port map (
      I0 => i_reset,
      I1 => d_reclrc_prec,
      I2 => i_lrc,
      O => o_cpt_bit_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mef_decod_i2s_v1b_0_0 is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_bit_enable : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_str_dat : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mef_decod_i2s_v1b_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mef_decod_i2s_v1b_0_0 : entity is "design_1_mef_decod_i2s_v1b_0_0,mef_decod_i2s_v1b,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mef_decod_i2s_v1b_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_mef_decod_i2s_v1b_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_mef_decod_i2s_v1b_0_0 : entity is "mef_decod_i2s_v1b,Vivado 2020.2";
end design_1_mef_decod_i2s_v1b_0_0;

architecture STRUCTURE of design_1_mef_decod_i2s_v1b_0_0 is
  signal o_load_left_INST_0_i_1_n_0 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of o_cpt_bit_reset : signal is "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST";
  attribute x_interface_parameter of o_cpt_bit_reset : signal is "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.design_1_mef_decod_i2s_v1b_0_0_mef_decod_i2s_v1b
     port map (
      i_bclk => i_bclk,
      i_lrc => i_lrc,
      i_reset => i_reset,
      o_cpt_bit_reset => o_cpt_bit_reset
    );
o_bit_enable_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
        port map (
      I0 => i_cpt_bits(6),
      I1 => i_cpt_bits(5),
      I2 => i_cpt_bits(3),
      I3 => i_cpt_bits(4),
      O => o_bit_enable
    );
o_load_left_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => o_load_left_INST_0_i_1_n_0,
      I1 => i_lrc,
      I2 => i_cpt_bits(1),
      I3 => i_cpt_bits(0),
      I4 => i_cpt_bits(2),
      O => o_load_left
    );
o_load_left_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => i_cpt_bits(6),
      I1 => i_cpt_bits(5),
      I2 => i_cpt_bits(3),
      I3 => i_cpt_bits(4),
      O => o_load_left_INST_0_i_1_n_0
    );
o_load_right_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => o_load_left_INST_0_i_1_n_0,
      I1 => i_cpt_bits(1),
      I2 => i_lrc,
      I3 => i_cpt_bits(0),
      I4 => i_cpt_bits(2),
      O => o_load_right
    );
o_str_dat_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => o_load_left_INST_0_i_1_n_0,
      I1 => i_cpt_bits(2),
      I2 => i_cpt_bits(0),
      I3 => i_cpt_bits(1),
      I4 => i_lrc,
      O => o_str_dat
    );
end STRUCTURE;
