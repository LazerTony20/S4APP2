----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2022 06:31:52 PM
-- Design Name: 
-- Module Name: Add_24bits - Behavioral
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

entity Add_24bits is
    Port ( A24 : in STD_LOGIC_VECTOR (23 downto 0);
           B24 : in STD_LOGIC_VECTOR (23 downto 0);
           Ci24: in STD_LOGIC;
           Co24: out STD_LOGIC;
           S24 : out STD_LOGIC_VECTOR (23 downto 0)
           );     
end Add_24bits;



architecture Behavioral of Add_24bits is

component Adder_8bit is
Port(
    A8 : in STD_LOGIC_VECTOR (7 downto 0);
    B8 : in STD_LOGIC_VECTOR (7 downto 0);
    C8 : in STD_LOGIC;
    S8 : out STD_LOGIC_VECTOR (7 downto 0);
    Carry8 : out STD_LOGIC
);
end component;

Signal s_Carry: std_logic_vector (1 downto 0);

begin

A8_0: Adder_8bit
Port map(
    A8 => A24(7 downto 0),
    B8 => B24(7 downto 0),
    C8 => Ci24,
    S8 => S24(7 downto 0),
    Carry8 => s_Carry(0)
);

A8_1: Adder_8bit
Port map(
    A8 => A24(15 downto 8),
    B8 => B24(15 downto 8),
    C8 => s_Carry(0),
    S8 => S24(15 downto 8),
    Carry8 => s_Carry(1)
);

A8_2: Adder_8bit
Port map(
    A8 => A24(23 downto 16),
    B8 => B24(23 downto 16),
    C8 => s_Carry(1),
    S8 => S24(23 downto 16),
    Carry8 => Co24
);

end Behavioral;
