library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- pour les additions dans les compteurs



entity M1_Compteur is
port ( clk : in std_logic;
i_reset : in std_logic;
o_pulse : out std_logic
);
end M1_Compteur;



architecture BEHAVIORAL of M1_Compteur is



signal d_val_cpt: std_logic_vector (5 downto 0):= "000000";



BEGIN



compteur_proc : process (clk, i_reset)
begin
if ( i_reset = '1') then
d_val_cpt <= (others =>'0');
end if;
if (rising_edge(clk)) then
d_val_cpt <= d_val_cpt + 1;
end if;



case d_val_cpt is
when "010111" =>
o_pulse<='1';
d_val_cpt<="000000";
when "000000" =>
when others =>
o_pulse<='0';
end case;
end process;
-- sortie




END Behavioral;