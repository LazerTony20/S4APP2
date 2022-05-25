----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 01:46:21 PM
-- Design Name: 
-- Module Name: M1_Compteur - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity M1_Compteur is
    Port ( clk  : in std_logic ;
           i_reset : in STD_LOGIC;
           o_pulse : out STD_LOGIC);
end M1_Compteur;

architecture Behavioral of M1_Compteur is

begin


end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs

entity M1_Compteur is
   port ( clk           : in    std_logic; 
          i_reset       : in    std_logic; 
          o_pulse       : out   std_logic
          );
end M1_Compteur;

architecture BEHAVIORAL of M1_Compteur is               

signal  d_val_cpt: std_logic_vector (5 downto 0):= "000000";

BEGIN

compteur_proc : process (clk, i_reset)
   begin
      if ( i_reset = '1') then
          d_val_cpt <= (others =>'0');
      end if;
      if (rising_edge(clk)) then
          d_val_cpt <= d_val_cpt + 1;
      end if;

      case d_val_cpt is
        when "010111" =>
            o_pulse<='1';
            d_val_cpt<="000000";
        when "000000" => 
        when others => 
            o_pulse<='0';
      end case;
   end process;
-- sortie

  
 END Behavioral;