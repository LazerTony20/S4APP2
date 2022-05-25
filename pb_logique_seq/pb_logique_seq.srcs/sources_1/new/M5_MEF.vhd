----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2022 12:46:00 PM
-- Design Name: 
-- Module Name: M5_MEF - Behavioral
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

entity M5_MEF is
    Port ( i_sound : in STD_LOGIC_VECTOR (23 downto 0);
           clk : in STD_LOGIC;
           o_reset : out STD_LOGIC);
end M5_MEF;

architecture Behavioral of M5_MEF is

type State is (S0, S1, S2, S3, S4);
Signal s_current, s_next :State;

begin

Process(clk)
begin
    if rising_edge (clk) then
        s_current<=s_next;
    end if;
end process;

Process(i_sound, s_current)
begin
    case s_current is
        when S0=>
            if (i_sound(23)='0') then
                s_next<=S1;
            elsif (i_sound(23)='1') then
                s_next<=S3;
            end if;
         when S1=>
            s_next<=S2;
         when S2=>
            if (i_sound(23)='0') then
                s_next<=S2;
            elsif (i_sound(23)='1') then
                s_next<=S3;
            end if;
         when S3=>
            if (i_sound(23)='0') then
                s_next<=S2;
            elsif (i_sound(23)='1') then
                s_next<=S4;
            end if;
         when S4=>
            if (i_sound(23)='0') then
                s_next<=S0;
            elsif (i_sound(23)='1') then
                s_next<=S4;
            end if;
     end case;
end process;

Process(s_current)
begin
    case s_current is
        when S1=>
            o_reset<='1';
        when others=>
            o_reset<='0';
    end case;
end process;

end Behavioral;
