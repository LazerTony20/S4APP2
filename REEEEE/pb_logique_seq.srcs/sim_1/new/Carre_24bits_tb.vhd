----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 03:30:56 PM
-- Design Name: 
-- Module Name: Carre_24bits_tb - Behavioral
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

entity Carre_24bits_tb is
end Carre_24bits_tb;

architecture Behavioral of Carre_24bits_tb is


component Carre_24bits is
Port ( Xin2 : in std_logic_vector (23 downto 0);
       --outTEMP: out std_logic_vector (23 downto 0);
       Yout2: out std_logic_vector (23 downto 0) 
      );
end component;

SIGNAL sim_Xin2, sim_outTEMP : std_logic_vector (23 downto 0) := "000000000000000000000000";
SIGNAL sim_Yout2: std_logic_vector (23 downto 0) := "000000000000000000000000";
CONSTANT PERIOD    : time := 10 ns; 


begin

UUT: Carre_24bits PORT MAP(
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
