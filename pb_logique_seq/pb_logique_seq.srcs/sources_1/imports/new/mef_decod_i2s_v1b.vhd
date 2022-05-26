---------------------------------------------------------------------------------------------
-- circuit mef_decod_i2s_v1b.vhd                   Version mise en oeuvre avec des compteurs
---------------------------------------------------------------------------------------------
-- Université de Sherbrooke - Département de GEGI
-- Version         : 1.0
-- Nomenclature    : 0.8 GRAMS
-- Date            : 7 mai 2019
-- Auteur(s)       : Daniel Dalle
-- Technologies    : FPGA Zynq (carte ZYBO Z7-10 ZYBO Z7-20)
--
-- Outils          : vivado 2019.1
---------------------------------------------------------------------------------------------
-- Description:
-- MEF pour decodeur I2S version 1b
-- La MEF est substituee par un compteur
--
-- notes
-- frequences (peuvent varier un peu selon les contraintes de mise en oeuvre)
-- i_lrc        ~ 48.    KHz    (~ 20.8    us)
-- d_ac_mclk,   ~ 12.288 MHz    (~ 80,715  ns) (non utilisee dans le codeur)
-- i_bclk       ~ 3,10   MHz    (~ 322,857 ns) freq mclk/4
-- La durée d'une période reclrc est de 64,5 périodes de bclk ...
--
-- Revision  
-- Revision 14 mai 2019 (version ..._v1b) composants dans entités et fichiers distincts
---------------------------------------------------------------------------------------------
-- À faire :
--
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- pour les additions dans les compteurs



entity mef_decod_i2s_v1b is
Port (
i_bclk : in std_logic;
i_switch : in std_logic;
i_lrc : in std_logic;
o_load_left : out std_logic ; --
o_load_right : out std_logic ; --
o_reset : out std_logic; --
o_dat_strb: out std_logic
);
end mef_decod_i2s_v1b;



architecture Behavioral of mef_decod_i2s_v1b is



type State is (S0, S1, S2, S3, S4, S5);
Signal s_current, s_next: State;



begin

process (i_bclk)
begin
if (rising_edge(i_bclk)) then
s_current<=s_next;
end if;
end process;

process(s_current, i_lrc, i_switch)
begin
case s_current is
when S0 =>
if (i_switch='1') then
s_next<=S1;
end if;
s_next<=S0;
when S1 =>
s_next<=S2;
when S2 =>
if (i_lrc='1') then
s_next<=S3;
end if;
s_next<=S2;
when S3 =>
if (i_switch='1') then
s_next<=S4;
end if;
s_next<=S3;
when S4 =>
s_next<=S5;
when S5 =>
if (i_lrc='0') then
s_next<=S0;
end if;
s_next<=S5;
end case;
end process;

process(s_current)
begin
case s_current is
when S0 =>
o_reset<='0';
o_dat_strb<='1';
when S1 =>
o_reset<='1';
o_load_left<='1';
when S2 =>
o_load_left<='0';
when S3 =>
o_reset<='0';
o_dat_strb<='0';
when S4 =>
o_reset<='1';
o_load_right<='1';
when S5 =>
o_load_right<='0';
end case;
end process;



end Behavioral;