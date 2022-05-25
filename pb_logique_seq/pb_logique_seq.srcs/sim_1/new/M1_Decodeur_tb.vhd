----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/25/2022 01:09:44 PM
-- Design Name: 
-- Module Name: M1_Decodeur_tb - Behavioral
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

entity M1_Decodeur_tb is
--  Port ( );
end M1_Decodeur_tb;

architecture Behavioral of M1_Decodeur_tb is

component M1_Decodeur is
Port (  i_data: in std_logic ;
        i_lrc: in std_logic ;
        i_clk: in std_logic ;
    
        o_data_left: out std_logic_vector (23 downto 0);
        o_data_right: out std_logic_vector (23 downto 0)
      );
end component;

--SIGNAL

begin
UUT: M1_Decodeur PORT MAP(
      Xin2 => sim_Xin2, 
      --outTEMP => sim_outTEMP,
      Yout2 => sim_Yout2
   );

tb : PROCESS
   BEGIN
         wait for PERIOD; sim_Xin2 <="001000000000000000000000";   
         wait for PERIOD; sim_Xin2 <="111000000000000000000000";    
         wait for PERIOD; sim_Xin2 <="001111000000000000000000";   
         wait for PERIOD; sim_Xin2 <="110001000000000000000000";   
         wait for PERIOD; sim_Xin2 <="011111111000000000000000";
         wait for PERIOD; sim_Xin2 <="100000001000000000000000";
         wait for PERIOD; sim_Xin2 <="001000001000000000011111";
         wait for PERIOD; sim_Xin2 <="110111110111111111100001";
         wait for PERIOD; sim_Xin2 <="011111111111111111111100";
         wait for PERIOD; sim_Xin2 <="100000000000000000000100";
         wait for PERIOD; sim_Xin2 <="011111111111111111111110";
         wait for PERIOD; sim_Xin2 <="100000000000000000000010";
--         wait for PERIOD; sim_Xin2 <="000000000000000000000000";
--         wait for PERIOD; sim_Xin2 <="000000000000000000000000";
--         wait for PERIOD; sim_Xin2 <="000000000000000000000000";
--         wait for PERIOD; sim_Xin2 <="000000000000000000000000";
         
         WAIT; -- will wait forever
   END PROCESS;

end Behavioral;
