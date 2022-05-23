----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2022 01:34:14 PM
-- Design Name: 
-- Module Name: Adder_8bit - Behavioral
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

entity Adder_8bit is
    Port ( A8 : in STD_LOGIC_VECTOR (7 downto 0);
           B8 : in STD_LOGIC_VECTOR (7 downto 0);
           Ci8: in STD_LOGIC;
           Co8: out STD_LOGIC;
           S8 : out STD_LOGIC_VECTOR (7 downto 0)
          );
           
end Adder_8bit;

architecture Behavioral of Adder_8bit is

component Adder_1bit is
Port(
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    C : in STD_LOGIC;
    S : out STD_LOGIC;
    Carry : out STD_LOGIC
);
end component;

Signal s_Carry: std_logic_vector (7 downto 0);

begin

A_0: Adder_1bit
Port map(
    A => A8(0),
    B => B8(0),
    C => Ci8,
    S => S8(0),
    Carry => s_Carry(0)
);

A_1: Adder_1bit
Port map(
    A => A8(1),
    B => B8(1),
    C => s_Carry(0),
    S => S8(1),
    Carry => s_Carry(1)
);

A_2: Adder_1bit
Port map(
    A => A8(2),
    B => B8(2),
    C => s_Carry(1),
    S => S8(2),
    Carry => s_Carry(2)
);

A_3: Adder_1bit
Port map(
    A => A8(3),
    B => B8(3),
    C => s_Carry(2),
    S => S8(3),
    Carry => s_Carry(3)
);

A_4: Adder_1bit
Port map(
    A => A8(4),
    B => B8(4),
    C => s_Carry(3),
    S => S8(4),
    Carry => s_Carry(4)
);

A_5: Adder_1bit
Port map(
    A => A8(5),
    B => B8(5),
    C => s_Carry(4),
    S => S8(5),
    Carry => s_Carry(5)
);

A_6: Adder_1bit
Port map(
    A => A8(6),
    B => B8(6),
    C => s_Carry(5),
    S => S8(6),
    Carry => s_Carry(6)
);

A_7: Adder_1bit
Port map(
    A => A8(7),
    B => B8(7),
    C => s_Carry(6),
    S => S8(7),
    Carry => Co8
);


end Behavioral;
