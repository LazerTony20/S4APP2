----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 03:53:07 PM
-- Design Name: 
-- Module Name: M1_Register_fd - Behavioral
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




-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- pour les additions dans les compteurs



entity M1_Register_fd is
Port (
i_clk : in std_logic;
i_dat_bit : in std_logic;
o_dat : out std_logic_vector(23 downto 0)
);
end M1_Register_fd;



architecture Behavioral of M1_Register_fd is



--
signal q_shift_reg : std_logic_vector(23 downto 0); -- registre a decalage



begin
-- registre a d?calage, MSB arrive premier, entre par la droite, decalage a gauche
reg_dec: process (i_clk)
begin
if falling_edge(i_clk) then
q_shift_reg(23 downto 0) <= q_shift_reg(22 downto 0) & i_dat_bit;
end if;
end process;

o_dat <= q_shift_reg;



end Behavioral;