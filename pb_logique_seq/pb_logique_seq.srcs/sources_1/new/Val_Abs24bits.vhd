----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 12:39:21 PM
-- Design Name: 
-- Module Name: Val_Abs24bits - Behavioral
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

entity Val_Abs24bits is
Port (  X24 : in STD_LOGIC_VECTOR (23 downto 0);    --Valeur 24bits d'entrée signée en complément 2
        Y24 : out STD_LOGIC_VECTOR (23 downto 0)
     );
end Val_Abs24bits;

-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
architecture Behavioral of Val_Abs24bits is

component Add_24bits is
    Port ( A24 : in STD_LOGIC_VECTOR (23 downto 0);
           B24 : in STD_LOGIC_VECTOR (23 downto 0);
           Ci24: in STD_LOGIC;
           Co24: out STD_LOGIC;
           S24 : out STD_LOGIC_VECTOR (23 downto 0)
           );     
end component;


-------------------------------------------------------------------------------------------

signal s_X24fliped, s_A24, s_B24, s_S24 : STD_LOGIC_VECTOR (23 downto 0);
signal nul : STD_LOGIC;

-------------------------------------------------------------------------------------------
begin

A24_01: Add_24bits
Port map(
    A24 => s_A24,
    B24 => s_B24,
    Ci24 => '0',
    S24 => s_S24,
    Co24 => nul
);

process(X24)
begin
    if(X24(23) = '0') then
        Y24 <= X24;
    elsif(X24(23) = '1') then
        s_X24fliped <= not X24;      
        s_A24 <= s_X24fliped;
        s_B24 <= "000000000000000000000001";
        Y24 <= s_S24;      
    else
        Y24 <= "000000000000000000000000";
    end if;
end process;

-------------------------------------------------------------------------------------------

end Behavioral;
