-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat May 21 15:09:05 2022
-- Host        : ThinkPad-Antho running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_affhexPmodSSD_v3_0_0_sim_netlist.vhdl
-- Design      : design_1_affhexPmodSSD_v3_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_affhexPmodSSD_v3 is
  port (
    JPmod : out STD_LOGIC_VECTOR ( 7 downto 0 );
    i_btn : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    DA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_affhexPmodSSD_v3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_affhexPmodSSD_v3 is
  signal \^jpmod\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal SEL_i_1_n_0 : STD_LOGIC;
  signal SEL_i_2_n_0 : STD_LOGIC;
  signal SEL_i_3_n_0 : STD_LOGIC;
  signal SEL_i_4_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \counta[0]_i_3_n_0\ : STD_LOGIC;
  signal counta_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counta_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counta_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counta_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counta_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counta_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \donn__11\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal q_DA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \q_DA[7]_i_1_n_0\ : STD_LOGIC;
  signal q_aff_mem : STD_LOGIC;
  signal \NLW_counta_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \JPmod[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \JPmod[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \JPmod[2]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \JPmod[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \JPmod[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \JPmod[5]_INST_0\ : label is "soft_lutpair2";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counta_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \counta_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counta_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \counta_reg[8]_i_1\ : label is 11;
begin
  JPmod(7 downto 0) <= \^jpmod\(7 downto 0);
\JPmod[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF6D"
    )
        port map (
      I0 => \donn__11\(2),
      I1 => \donn__11\(3),
      I2 => \donn__11\(0),
      I3 => \donn__11\(1),
      O => \^jpmod\(0)
    );
\JPmod[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"497F"
    )
        port map (
      I0 => \donn__11\(1),
      I1 => \donn__11\(0),
      I2 => \donn__11\(3),
      I3 => \donn__11\(2),
      O => \^jpmod\(1)
    );
\JPmod[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"76F7"
    )
        port map (
      I0 => \donn__11\(2),
      I1 => \donn__11\(3),
      I2 => \donn__11\(0),
      I3 => \donn__11\(1),
      O => \^jpmod\(2)
    );
\JPmod[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5BED"
    )
        port map (
      I0 => \donn__11\(2),
      I1 => \donn__11\(3),
      I2 => \donn__11\(0),
      I3 => \donn__11\(1),
      O => \^jpmod\(3)
    );
\JPmod[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C8EF"
    )
        port map (
      I0 => \donn__11\(1),
      I1 => \donn__11\(3),
      I2 => \donn__11\(2),
      I3 => \donn__11\(0),
      O => \^jpmod\(4)
    );
\JPmod[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6EF"
    )
        port map (
      I0 => \donn__11\(2),
      I1 => \donn__11\(3),
      I2 => \donn__11\(1),
      I3 => \donn__11\(0),
      O => \^jpmod\(5)
    );
\JPmod[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB6E"
    )
        port map (
      I0 => \donn__11\(1),
      I1 => \donn__11\(2),
      I2 => \donn__11\(0),
      I3 => \donn__11\(3),
      O => \^jpmod\(6)
    );
\JPmod[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => q_DA(1),
      I1 => q_DA(5),
      I2 => i_btn(0),
      I3 => \^jpmod\(7),
      I4 => DA(1),
      I5 => DA(5),
      O => \donn__11\(1)
    );
\JPmod[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => q_DA(2),
      I1 => q_DA(6),
      I2 => i_btn(0),
      I3 => \^jpmod\(7),
      I4 => DA(2),
      I5 => DA(6),
      O => \donn__11\(2)
    );
\JPmod[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => q_DA(0),
      I1 => q_DA(4),
      I2 => i_btn(0),
      I3 => \^jpmod\(7),
      I4 => DA(0),
      I5 => DA(4),
      O => \donn__11\(0)
    );
\JPmod[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => q_DA(3),
      I1 => q_DA(7),
      I2 => i_btn(0),
      I3 => \^jpmod\(7),
      I4 => DA(3),
      I5 => DA(7),
      O => \donn__11\(3)
    );
SEL_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => SEL_i_2_n_0,
      I1 => SEL_i_3_n_0,
      I2 => SEL_i_4_n_0,
      I3 => \^jpmod\(7),
      O => SEL_i_1_n_0
    );
SEL_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => counta_reg(6),
      I1 => counta_reg(7),
      I2 => counta_reg(4),
      I3 => counta_reg(5),
      I4 => counta_reg(8),
      I5 => counta_reg(9),
      O => SEL_i_2_n_0
    );
SEL_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => counta_reg(1),
      I1 => counta_reg(0),
      I2 => counta_reg(3),
      I3 => counta_reg(2),
      O => SEL_i_3_n_0
    );
SEL_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => counta_reg(12),
      I1 => counta_reg(13),
      I2 => counta_reg(10),
      I3 => counta_reg(11),
      I4 => counta_reg(15),
      I5 => counta_reg(14),
      O => SEL_i_4_n_0
    );
SEL_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => SEL_i_1_n_0,
      Q => \^jpmod\(7),
      R => '0'
    );
\counta[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => SEL_i_4_n_0,
      I1 => counta_reg(1),
      I2 => counta_reg(0),
      I3 => counta_reg(3),
      I4 => counta_reg(2),
      I5 => SEL_i_2_n_0,
      O => clear
    );
\counta[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counta_reg(0),
      O => \counta[0]_i_3_n_0\
    );
\counta_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[0]_i_2_n_7\,
      Q => counta_reg(0),
      R => clear
    );
\counta_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counta_reg[0]_i_2_n_0\,
      CO(2) => \counta_reg[0]_i_2_n_1\,
      CO(1) => \counta_reg[0]_i_2_n_2\,
      CO(0) => \counta_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counta_reg[0]_i_2_n_4\,
      O(2) => \counta_reg[0]_i_2_n_5\,
      O(1) => \counta_reg[0]_i_2_n_6\,
      O(0) => \counta_reg[0]_i_2_n_7\,
      S(3 downto 1) => counta_reg(3 downto 1),
      S(0) => \counta[0]_i_3_n_0\
    );
\counta_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[8]_i_1_n_5\,
      Q => counta_reg(10),
      R => clear
    );
\counta_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[8]_i_1_n_4\,
      Q => counta_reg(11),
      R => clear
    );
\counta_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[12]_i_1_n_7\,
      Q => counta_reg(12),
      R => clear
    );
\counta_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counta_reg[8]_i_1_n_0\,
      CO(3) => \NLW_counta_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \counta_reg[12]_i_1_n_1\,
      CO(1) => \counta_reg[12]_i_1_n_2\,
      CO(0) => \counta_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counta_reg[12]_i_1_n_4\,
      O(2) => \counta_reg[12]_i_1_n_5\,
      O(1) => \counta_reg[12]_i_1_n_6\,
      O(0) => \counta_reg[12]_i_1_n_7\,
      S(3 downto 0) => counta_reg(15 downto 12)
    );
\counta_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[12]_i_1_n_6\,
      Q => counta_reg(13),
      R => clear
    );
\counta_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[12]_i_1_n_5\,
      Q => counta_reg(14),
      R => clear
    );
\counta_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[12]_i_1_n_4\,
      Q => counta_reg(15),
      R => clear
    );
\counta_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[0]_i_2_n_6\,
      Q => counta_reg(1),
      R => clear
    );
\counta_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[0]_i_2_n_5\,
      Q => counta_reg(2),
      R => clear
    );
\counta_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[0]_i_2_n_4\,
      Q => counta_reg(3),
      R => clear
    );
\counta_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[4]_i_1_n_7\,
      Q => counta_reg(4),
      R => clear
    );
\counta_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counta_reg[0]_i_2_n_0\,
      CO(3) => \counta_reg[4]_i_1_n_0\,
      CO(2) => \counta_reg[4]_i_1_n_1\,
      CO(1) => \counta_reg[4]_i_1_n_2\,
      CO(0) => \counta_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counta_reg[4]_i_1_n_4\,
      O(2) => \counta_reg[4]_i_1_n_5\,
      O(1) => \counta_reg[4]_i_1_n_6\,
      O(0) => \counta_reg[4]_i_1_n_7\,
      S(3 downto 0) => counta_reg(7 downto 4)
    );
\counta_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[4]_i_1_n_6\,
      Q => counta_reg(5),
      R => clear
    );
\counta_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[4]_i_1_n_5\,
      Q => counta_reg(6),
      R => clear
    );
\counta_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[4]_i_1_n_4\,
      Q => counta_reg(7),
      R => clear
    );
\counta_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[8]_i_1_n_7\,
      Q => counta_reg(8),
      R => clear
    );
\counta_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counta_reg[4]_i_1_n_0\,
      CO(3) => \counta_reg[8]_i_1_n_0\,
      CO(2) => \counta_reg[8]_i_1_n_1\,
      CO(1) => \counta_reg[8]_i_1_n_2\,
      CO(0) => \counta_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counta_reg[8]_i_1_n_4\,
      O(2) => \counta_reg[8]_i_1_n_5\,
      O(1) => \counta_reg[8]_i_1_n_6\,
      O(0) => \counta_reg[8]_i_1_n_7\,
      S(3 downto 0) => counta_reg(11 downto 8)
    );
\counta_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counta_reg[8]_i_1_n_6\,
      Q => counta_reg(9),
      R => clear
    );
\q_DA[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_btn(0),
      I1 => q_aff_mem,
      O => \q_DA[7]_i_1_n_0\
    );
\q_DA_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(0),
      Q => q_DA(0)
    );
\q_DA_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(1),
      Q => q_DA(1)
    );
\q_DA_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(2),
      Q => q_DA(2)
    );
\q_DA_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(3),
      Q => q_DA(3)
    );
\q_DA_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(4),
      Q => q_DA(4)
    );
\q_DA_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(5),
      Q => q_DA(5)
    );
\q_DA_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(6),
      Q => q_DA(6)
    );
\q_DA_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \q_DA[7]_i_1_n_0\,
      CLR => reset,
      D => DA(7),
      Q => q_DA(7)
    );
q_aff_mem_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => i_btn(0),
      Q => q_aff_mem,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    DA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    JPmod : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_affhexPmodSSD_v3_0_0,affhexPmodSSD_v3,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "affhexPmodSSD_v3,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_clk_100MHz, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_affhexPmodSSD_v3
     port map (
      DA(7 downto 0) => DA(7 downto 0),
      JPmod(7 downto 0) => JPmod(7 downto 0),
      clk => clk,
      i_btn(0) => i_btn(2),
      reset => reset
    );
end STRUCTURE;
