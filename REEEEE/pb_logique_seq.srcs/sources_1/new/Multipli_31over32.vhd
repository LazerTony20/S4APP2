----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/26/2022 11:48:27 AM
-- Design Name: 
-- Module Name: Multipli_31over32 - Behavioral
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

entity Multipli_31over32 is
  Port (
         i_multi3132 : in std_logic_vector (28 downto 0);
         o_multi3132 : out std_logic_vector (28 downto 0)
       );
end Multipli_31over32;

architecture Behavioral of Multipli_31over32 is

signal s_1, s_2, s_3 : signed (28 downto 0);

begin

process(i_multi3132)
begin
s_1 <= signed(i_multi3132);
s_2 <= signed("00000" & i_multi3132(28 downto 5));
s_3 <= signed(s_1 - s_2);
o_multi3132 <= std_logic_vector(s_3);
end process;
end Behavioral;
