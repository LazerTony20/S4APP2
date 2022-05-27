----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2022 01:18:50 PM
-- Design Name: 
-- Module Name: M5_Compteur - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity M5_Compteur is
    Port ( clk : in STD_LOGIC;
           i_reset : in STD_LOGIC;
           o_param : out STD_LOGIC_VECTOR (7 downto 0));
end M5_Compteur;



architecture Behavioral of M5_Compteur is

signal  d_val_cpt: std_logic_vector (7 downto 0):="00000000";

begin

compteur_proc : process (clk, i_reset)
begin
      if ( i_reset = '1') then
          d_val_cpt <= "00000000";
          o_param <= d_val_cpt;
      elsif (rising_edge(clk)) then
          d_val_cpt <= d_val_cpt + 1;
          o_param <= d_val_cpt;
      end if;
   
   end process;
-- sortie


end Behavioral;
