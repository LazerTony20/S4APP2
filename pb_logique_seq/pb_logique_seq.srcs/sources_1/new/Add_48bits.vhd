----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 12:30:53 PM
-- Design Name: 
-- Module Name: Add_48Bits - Behavioral
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

entity Add_48Bits is
Port (     A48 : in STD_LOGIC_VECTOR (47 downto 0);
           B48 : in STD_LOGIC_VECTOR (47 downto 0);
           Ci48: in STD_LOGIC;
           Co48: out STD_LOGIC;
           S48 : out STD_LOGIC_VECTOR (47 downto 0)
           );    
end Add_48Bits;


architecture Behavioral of Add_48Bits is

component Add_24bits is
Port(
    A24 : in STD_LOGIC_VECTOR (23 downto 0);
    B24 : in STD_LOGIC_VECTOR (23 downto 0);
    C24 : in STD_LOGIC;
    S24 : out STD_LOGIC_VECTOR (23 downto 0);
    Carry24 : out STD_LOGIC
);
end component;

Signal s_Carry: std_logic;


begin

A24_0: Add_24bits
Port map(
    A24 => A48(23 downto 0),
    B24 => B48(23 downto 0),
    C24 => Ci48,
    S24 => S48(23 downto 0),
    Carry24 => s_Carry
);

A24_1: Add_24bits
Port map(
    A24 => A48(47 downto 24),
    B24 => B48(47 downto 24),
    C24 => s_Carry,
    S24 => S48(47 downto 24),
    Carry24 => Co48
);

end Behavioral;
