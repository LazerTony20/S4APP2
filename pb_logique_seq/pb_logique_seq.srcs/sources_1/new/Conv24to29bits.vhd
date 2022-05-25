----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 03:03:22 PM
-- Design Name: 
-- Module Name: Conv24to29bits - Behavioral
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Conv24to29bits is
    Port (
         Xconv24 : in std_logic_vector (23 downto 0);
         Yconv29 : out std_logic_vector (28 downto 0)
         );
end Conv24to29bits;

---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------

architecture Behavioral of Conv24to29bits is

---------------------------------------------------------------------------------------------
--signal s_Xconv24 : std_logic_vector(23 downto 0);
signal s_Yconv29 : std_logic_vector(28 downto 0) := "00000000000000000000000000000";
---------------------------------------------------------------------------------------------
begin
--s_Xconv24 <= Xconv24;
s_Yconv29(23 downto 0) <= Xconv24(23 downto 0);
Yconv29 <= s_Yconv29;

end Behavioral;
