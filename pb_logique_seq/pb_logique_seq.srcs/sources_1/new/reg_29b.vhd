----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 03:37:40 PM
-- Design Name: 
-- Module Name: reg_29b - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs

entity reg_29b is
  Port ( 
    i_clk       : in std_logic;
    i_reset     : in std_logic;
    i_en        : in std_logic;
    i_dat       : in std_logic_vector(28 downto 0);
    o_dat       : out  std_logic_vector(28 downto 0)
);
end reg_29b;

architecture Behavioral of reg_29b is

  --
    signal   q_reg   : std_logic_vector(28 downto 0);   -- registre
    
  begin
  -- registre  
  reg_dec: process (i_clk, i_reset)
     begin    
         if (i_reset = '1')  then
            q_reg  <= (others =>'0');
         elsif rising_edge(i_clk) and  (i_en = '1')  then
            q_reg  <= i_dat;
        end if;
     end process;
 
     o_dat   <=  q_reg;

end Behavioral;
