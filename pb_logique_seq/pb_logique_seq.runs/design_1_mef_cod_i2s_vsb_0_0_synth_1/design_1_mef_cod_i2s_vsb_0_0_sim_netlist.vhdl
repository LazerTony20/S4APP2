-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat May 21 15:05:16 2022
-- Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_mef_cod_i2s_vsb_0_0_sim_netlist.vhdl
-- Design      : design_1_mef_cod_i2s_vsb_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_cod_i2s_vsb is
  port (
    o_load_left : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC;
    o_bit_enable : out STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_cod_i2s_vsb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_cod_i2s_vsb is
  signal \FSM_onehot_fsm_EtatCourant[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\ : STD_LOGIC;
  signal \^o_load_left\ : STD_LOGIC;
  signal \^o_load_right\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_EtatCourant[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_EtatCourant[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_EtatCourant[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_fsm_EtatCourant[7]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[0]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[10]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[1]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[2]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[3]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[4]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[5]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[6]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[7]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[8]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_fsm_EtatCourant_reg[9]\ : label is "sta_g3:00000100000,sta_g2:00000010000,sta_g1:00000001000,sta_df:00000000010,sta_g0:00000000100,sta_init:00000000001,sta_d1:00100000000,sta_d3:10000000000,sta_d0:00010000000,sta_d2:01000000000,sta_gf:00001000000";
begin
  o_load_left <= \^o_load_left\;
  o_load_right <= \^o_load_right\;
\FSM_onehot_fsm_EtatCourant[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FAEA"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\,
      I1 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\,
      I2 => i_lrc,
      I3 => \^o_load_left\,
      O => \FSM_onehot_fsm_EtatCourant[1]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^o_load_left\,
      I1 => i_lrc,
      O => \FSM_onehot_fsm_EtatCourant[2]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\,
      I1 => i_cpt_bits(5),
      I2 => i_cpt_bits(3),
      I3 => i_cpt_bits(6),
      I4 => \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0\,
      I5 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      O => \FSM_onehot_fsm_EtatCourant[3]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      I1 => \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0\,
      I2 => i_cpt_bits(6),
      I3 => i_cpt_bits(3),
      I4 => i_cpt_bits(5),
      O => \FSM_onehot_fsm_EtatCourant[4]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\,
      I1 => \^o_load_right\,
      I2 => i_lrc,
      I3 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\,
      O => \FSM_onehot_fsm_EtatCourant[6]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_load_right\,
      I1 => i_lrc,
      O => \FSM_onehot_fsm_EtatCourant[7]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\,
      I1 => i_cpt_bits(5),
      I2 => i_cpt_bits(3),
      I3 => i_cpt_bits(6),
      I4 => \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0\,
      I5 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\,
      O => \FSM_onehot_fsm_EtatCourant[8]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\,
      I1 => \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0\,
      I2 => i_cpt_bits(6),
      I3 => i_cpt_bits(3),
      I4 => i_cpt_bits(5),
      O => \FSM_onehot_fsm_EtatCourant[9]_i_1_n_0\
    );
\FSM_onehot_fsm_EtatCourant[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => i_cpt_bits(1),
      I1 => i_cpt_bits(0),
      I2 => i_cpt_bits(4),
      I3 => i_cpt_bits(2),
      O => \FSM_onehot_fsm_EtatCourant[9]_i_2_n_0\
    );
\FSM_onehot_fsm_EtatCourant_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_bclk,
      CE => '1',
      D => '0',
      PRE => i_reset,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[0]\
    );
\FSM_onehot_fsm_EtatCourant_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[10]\
    );
\FSM_onehot_fsm_EtatCourant_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[1]_i_1_n_0\,
      Q => \^o_load_left\
    );
\FSM_onehot_fsm_EtatCourant_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[2]_i_1_n_0\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\
    );
\FSM_onehot_fsm_EtatCourant_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[3]_i_1_n_0\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\
    );
\FSM_onehot_fsm_EtatCourant_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[4]_i_1_n_0\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\
    );
\FSM_onehot_fsm_EtatCourant_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant_reg_n_0_[4]\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[5]\
    );
\FSM_onehot_fsm_EtatCourant_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[6]_i_1_n_0\,
      Q => \^o_load_right\
    );
\FSM_onehot_fsm_EtatCourant_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[7]_i_1_n_0\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\
    );
\FSM_onehot_fsm_EtatCourant_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[8]_i_1_n_0\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\
    );
\FSM_onehot_fsm_EtatCourant_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_bclk,
      CE => '1',
      CLR => i_reset,
      D => \FSM_onehot_fsm_EtatCourant[9]_i_1_n_0\,
      Q => \FSM_onehot_fsm_EtatCourant_reg_n_0_[9]\
    );
o_bit_enable_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[3]\,
      I1 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[8]\,
      O => o_bit_enable
    );
o_cpt_bit_reset_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[2]\,
      I1 => \FSM_onehot_fsm_EtatCourant_reg_n_0_[7]\,
      O => o_cpt_bit_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_bclk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_lrc : in STD_LOGIC;
    i_cpt_bits : in STD_LOGIC_VECTOR ( 6 downto 0 );
    o_bit_enable : out STD_LOGIC;
    o_load_left : out STD_LOGIC;
    o_load_right : out STD_LOGIC;
    o_cpt_bit_reset : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_mef_cod_i2s_vsb_0_0,mef_cod_i2s_vsb,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mef_cod_i2s_vsb,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of i_reset : signal is "xilinx.com:signal:reset:1.0 i_reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of i_reset : signal is "XIL_INTERFACENAME i_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of o_cpt_bit_reset : signal is "xilinx.com:signal:reset:1.0 o_cpt_bit_reset RST";
  attribute x_interface_parameter of o_cpt_bit_reset : signal is "XIL_INTERFACENAME o_cpt_bit_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mef_cod_i2s_vsb
     port map (
      i_bclk => i_bclk,
      i_cpt_bits(6 downto 0) => i_cpt_bits(6 downto 0),
      i_lrc => i_lrc,
      i_reset => i_reset,
      o_bit_enable => o_bit_enable,
      o_cpt_bit_reset => o_cpt_bit_reset,
      o_load_left => o_load_left,
      o_load_right => o_load_right
    );
end STRUCTURE;
