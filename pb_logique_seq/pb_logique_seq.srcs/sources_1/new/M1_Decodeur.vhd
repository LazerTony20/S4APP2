----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/24/2022 01:46:53 PM
-- Design Name: 
-- Module Name: M1_Decodeur - Behavioral
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

entity M1_Decodeur is
Port ( 
    i_data: in std_logic ;
    i_lrc: in std_logic ;
    i_clk: in std_logic ;
    
    o_data_left: out std_logic_vector (23 downto 0);
    o_data_right: out std_logic_vector (23 downto 0)
);
end M1_Decodeur;



architecture Behavioral of M1_Decodeur is

component mef_decod_i2s_v1b is
Port(
   i_bclk      : in std_logic;
   i_switch    : in    std_logic; 
   i_lrc       : in std_logic;
   o_load_left      : out std_logic ;
   o_load_right     : out std_logic ; 
   o_reset  : out std_logic
);
end component;

component M1_Compteur is
Port(
    clk           : in    std_logic; 
    i_reset       : in    std_logic; 
    o_pulse       : out   std_logic
);
end component;

component M1_Register is
Port(
    i_clk       : in std_logic;
    i_dat_bit  : in std_logic;
    o_dat       : out  std_logic_vector(23 downto 0)
);
end component;

component M1_Register_fd is
Port(
    i_clk       : in std_logic;
    i_load      : in std_logic;
    i_dat_load  : in std_logic_vector(23 downto 0);
    o_dat       : out  std_logic_vector(23 downto 0)
);
end component;

signal load: std_logic_vector (1 downto 0);
signal data: std_logic_vector (23 downto 0);
signal switch: std_logic;
signal reset: std_logic ; 

begin
    
    MEF: mef_decod_i2s_v1b
    Port map(
        i_bclk => i_clk,
        i_switch => switch,
        i_lrc => i_lrc,
        o_load_left => load(0),
        o_load_right => load(1),
        o_reset => reset
    );
    
    CPT: M1_Compteur
    Port map(
        clk => i_clk,
        i_reset => reset,
        o_pulse => switch
    );

    Reg: M1_Register
    Port map(
        i_clk => i_clk,
        i_dat_bit => i_data,
        o_dat => data
    );
    
    Reg_Left: M1_Register_fd
    Port map(
        i_clk=>i_clk,
        i_load => load(0),
        i_dat_load => data,
        o_dat => o_data_left
    );
    
    Reg_Right: M1_Register_fd
    Port map(
        i_clk=>i_clk,
        i_load => load(1),
        i_dat_load => data,
        o_dat => o_data_right
    );
    
end Behavioral;
