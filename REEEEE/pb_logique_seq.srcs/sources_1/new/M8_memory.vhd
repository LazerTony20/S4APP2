----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/23/2022 03:49:31 PM
-- Design Name: 
-- Module Name: M8_memory - Behavioral
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

entity M8_memory is
    Port ( i_write : in STD_LOGIC_VECTOR (7 downto 0);
           i_reset : in STD_LOGIC;
           o_read : out STD_LOGIC_VECTOR (7 downto 0);
           i_clk: in std_logic );
end M8_memory;

architecture Behavioral of M8_memory is

type State is (S0, S1);

Signal s_current, s_next: State;
Signal memory: std_logic_vector (7 downto 0);

begin

process(i_clk)
begin
    s_current<=s_next;
end process;

process(s_current, i_reset)
begin
    case s_current is
        when S0=>
            s_next<=S1;
        when S1=>
            if (i_reset='0') then
                s_next<=S1;
            elsif (i_reset='1') then
                s_next<=S0;
            end if;
    end case;
end process;

process(s_current,i_clk,i_write)
begin
    case s_current is
        when S0=>
            memory <= i_write;
        when S1=>
            o_read<=memory;
    end case;
 end process;


end Behavioral;
