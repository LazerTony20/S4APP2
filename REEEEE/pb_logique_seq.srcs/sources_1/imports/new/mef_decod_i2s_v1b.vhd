---------------------------------------------------------------------------------------------
-- circuit mef_decod_i2s_v1b.vhd                   Version mise en oeuvre avec des compteurs
---------------------------------------------------------------------------------------------
-- Universit� de Sherbrooke - D�partement de GEGI
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
-- La dur�e d'une p�riode reclrc est de 64,5 p�riodes de bclk ...
--
-- Revision  
-- Revision 14 mai 2019 (version ..._v1b) composants dans entit�s et fichiers distincts
---------------------------------------------------------------------------------------------
-- � faire :
--
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs

entity mef_decod_i2s_v1b is
   Port ( 
   i_bclk      : in std_logic;
   i_reset     : in std_logic; 
   i_lrc       : in std_logic;
   i_cpt_bits  : in std_logic_vector(6 downto 0);
 --  
   o_bit_enable     : out std_logic :='1';  --
   o_load_left      : out std_logic ;  --
   o_load_right     : out std_logic ;  --
   o_str_dat        : out std_logic ;  --  
   o_cpt_bit_reset  : out std_logic   -- 
);
end mef_decod_i2s_v1b;


architecture Behavioral of mef_decod_i2s_v1b is

type State is (S0, S1, S2, S3, S4, S5);
Signal s_current, s_next: State;

begin

process(i_bclk, i_reset)
begin
    if(rising_edge(i_bclk)) then
       s_current <= s_next;
    end if;
end process;




process(s_current, i_lrc, i_cpt_bits)
begin
    case s_current is
    when S0 =>
        if (i_cpt_bits = "0010111") then
            s_next<=S1;
        else
            s_next <= S0;
        end if;
    when S1 =>     
        s_next<=S2;
    when S2 =>
        if (rising_edge(i_lrc)) then
            s_next<=S3;
        else          
            s_next<=S2;
        end if;
    when S3 =>
        if (i_cpt_bits ="0010111") then
            s_next<=S4;
        else            
            s_next<=S3;
        end if;
    when S4 =>     
        s_next<=S5;
    when S5 =>
        if (falling_edge(i_lrc)) then
            s_next<=S0;
        else    
            s_next<=S5;
        end if;
    when others =>
        s_next <= S0;
    end case;
end process;

-----------------------------------------------
process(s_current)
begin
    case s_current is
    when S0 =>
        o_str_dat<='1';
        o_cpt_bit_reset <= '0';
    when S1 =>
        o_cpt_bit_reset <= '1';
        o_load_left<='1';
    when S2 =>
        o_cpt_bit_reset <= '0';
        o_load_left<='0';
    when S3 =>
        o_cpt_bit_reset <= '0';
        o_str_dat<='0';
    when S4 =>
        o_cpt_bit_reset <= '1';
        o_load_right<='1';
    when S5 =>
        o_cpt_bit_reset <= '0';
        o_load_right<='0';
    end case;
end process;

end Behavioral;