----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 01:43:33 PM
-- Design Name: 
-- Module Name: Carre_24bits - Behavioral
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
USE ieee.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;  -- pour les additions dans les compteurs
Library UNISIM;
use UNISIM.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Carre_24bits is
Port ( Xin2 : in std_logic_vector (23 downto 0);
       --outTEMP: out std_logic_vector (23 downto 0);
       Yout2: out std_logic_vector (23 downto 0) 
      );
end Carre_24bits;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
architecture Behavioral of Carre_24bits is

signal s_Xin1, s_Xin2 : signed(23 downto 0);
signal s_Yout2 : std_logic_vector(47 downto 0);

begin
s_Xin1 <= signed(Xin2);
--outTEMP <= std_logic_vector(s_Xin1);
s_Xin2 <= signed(Xin2);
s_Yout2 <= std_logic_vector(s_Xin1 * s_Xin2);
Yout2 <= s_Yout2(47 downto 24);
-- Je me débarasse de mes derniers bits cars ils vont êtres perdus plus loin de toute façon. En gros, j'allège l'exécution. 
end Behavioral;
