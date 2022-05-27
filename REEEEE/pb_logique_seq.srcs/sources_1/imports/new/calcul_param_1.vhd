
---------------------------------------------------------------------------------------------
--    calcul_param_1.vhd
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--    Universit? de Sherbrooke - D?partement de GEGI
--
--    Version         : 5.0
--    Nomenclature    : inspiree de la nomenclature 0.2 GRAMS
--    Date            : 16 janvier 2020, 4 mai 2020
--    Auteur(s)       : 
--    Technologie     : ZYNQ 7000 Zybo Z7-10 (xc7z010clg400-1) 
--    Outils          : vivado 2019.1 64 bits
--
---------------------------------------------------------------------------------------------
--    Description (sur une carte Zybo)
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------
-- ? FAIRE: 
-- Voir le guide de la probl?matique
---------------------------------------------------------------------------------------------
--
---------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs
USE ieee.numeric_std.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

----------------------------------------------------------------------------------
-- 
----------------------------------------------------------------------------------
entity calcul_param_1 is
    Port (
    i_bclk    : in   std_logic; -- bit clock (I2S)
    i_reset   : in   std_logic;
    i_en      : in   std_logic; -- un echantillon present a l'entr?e
    i_ech     : in   std_logic_vector (23 downto 0); -- echantillon en entr?e
    o_param   : out  std_logic_vector (7 downto 0)   -- param?tre calcul?
    );
end calcul_param_1;

----------------------------------------------------------------------------------

architecture Behavioral of calcul_param_1 is

---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------
 component M5_MEF is
 Port(
    i_sound : in STD_LOGIC_VECTOR (23 downto 0);
    clk : in STD_LOGIC;
    o_reset : out STD_LOGIC
 );
 end component;   

component M5_Compteur is
Port(
    clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    o_param : out STD_LOGIC_VECTOR (7 downto 0)
);
end component;

component M8_Memory is
Port(
    i_write : in STD_LOGIC_VECTOR (7 downto 0);
    i_reset : in STD_LOGIC;
    o_read : out STD_LOGIC_VECTOR (7 downto 0);
    i_clk: in std_logic 
);
end component;

Signal reset:std_logic ;
Signal decompte: std_logic_vector (7 downto 0);
---------------------------------------------------------------------------------------------
--    Description comportementale
---------------------------------------------------------------------------------------------
begin 
     MEF: M5_MEF
     Port map(
        i_sound => i_ech,
        clk => i_bclk,
        o_reset => reset
     );
     
     CPT: M5_Compteur
     Port map(
        clk=>i_bclk,
        i_reset=>reset,
        o_param=> decompte
     );
     
     MEM: M8_Memory
     Port map(
        i_write=>decompte,
        i_reset=>reset,
        o_read=>o_param,
        i_clk=>i_bclk
     );
 
    
end Behavioral;
