
---------------------------------------------------------------------------------------------
--    calcul_param_2.vhd   (temporaire)
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--    Université de Sherbrooke - Département de GEGI
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
-- À FAIRE: 
-- Voir le guide de la problématique
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
entity calcul_param_2 is
    Port (
    i_bclk    : in   std_logic;   -- bit clock
    i_reset   : in   std_logic;
    i_en      : in   std_logic;   -- un echantillon present
    i_ech     : in   std_logic_vector (23 downto 0);
    o_param   : out  std_logic_vector (7 downto 0)                                     
    );
end calcul_param_2;

----------------------------------------------------------------------------------

architecture Behavioral of calcul_param_2 is

---------------------------------------------------------------------------------
-- Signaux
----------------------------------------------------------------------------------
 signal s_i_ech, s_i_ech2 : std_logic_vector (23 downto 0);
 signal s_i_ech3 : std_logic_vector (28 downto 0);
 signal s_o_param : std_logic_vector (7 downto 0);
 
 
---------------------------------------------------------------------------------------------
--    Components
---------------------------------------------------------------------------------------------
component Carre_24bits is
Port ( Xin2 : in std_logic_vector (23 downto 0);
       Yout2: out std_logic_vector (23 downto 0) 
      );
end component;

component Conv24to29bits is
Port ( Xconv24 : in std_logic_vector (23 downto 0);
       Yconv29 : out std_logic_vector (29 downto 0)
     );
end component;



component Conv29to8bits is
Port ( Xconv29 : in std_logic_vector (28 downto 0);
       Yconv7 : out std_logic_vector (7 downto 0)
     );
end component;


---------------------------------------------------------------------------------------------
--    Description comportementale
---------------------------------------------------------------------------------------------
begin 

inst_carre : Carre_24bits
Port map(
          Xin2 => s_i_ech,
          Yout2 => s_i_ech2
         );

inst_conv24to29 : Conv24to29bits
Port map(
          Xconv24 => s_i_ech2,
          Yconv29 => s_i_ech3
        );




inst_Conv29to8bits : Conv29to8bits
Port map(
          Xconv29 => s_i_ech2,
          Yconv7 => s_i_ech3
        );
---------------------------------------------------------------------------------------------
process(i_reset, i_bclk)
begin



o_param <= x"02";    -- temporaire ...

end process;



end Behavioral;
