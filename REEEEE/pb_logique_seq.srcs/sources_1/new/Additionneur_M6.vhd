----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 03:19:16 PM
-- Design Name: 
-- Module Name: Additionneur_M6 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Additionneur_M6 is
  Port (    
         input_add_1 : in std_logic_vector (28 downto 0);
         input_add_2 : in std_logic_vector (28 downto 0);
         i_en        : in std_logic;
         output_add: out std_logic_vector (28 downto 0)
       );
end Additionneur_M6;

architecture Behavioral of Additionneur_M6 is

signal s_input_1,s_input_2, s_output : signed(28 downto 0);

begin

process(i_en)
begin
s_input_1 <= signed(input_add_1);
s_input_2 <= signed(input_add_2);
s_output <= s_input_1 + s_input_2;
output_add <= std_logic_vector(s_output);
end process;
end Behavioral;
