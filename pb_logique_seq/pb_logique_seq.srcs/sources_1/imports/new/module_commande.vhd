--  module_commande.vhd
--  D. Dalle  30 avril 2019, 16 janv 2020, 23 avril 2020
--  module qui permet de r?unir toutes les commandes (problematique circuit sequentiels)
--  recues des boutons, avec conditionnement, et des interrupteurs

-- 23 avril 2020 elimination constante mode_seq_bouton: std_logic := '0'

LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity module_commande IS
generic (nbtn : integer := 4;  mode_simulation: std_logic := '0');
    PORT (
          clk              : in  std_logic;
          o_reset          : out  std_logic; 
          i_btn            : in  std_logic_vector (nbtn-1 downto 0); -- signaux directs des boutons
          i_sw             : in  std_logic_vector (3 downto 0);      -- signaux directs des interrupteurs
          o_btn_cd         : out std_logic_vector (nbtn-1 downto 0); -- signaux conditionn?s 
          o_selection_fct  :  out std_logic_vector(1 downto 0);
          o_selection_par  :  out std_logic_vector(1 downto 0)
          );
end module_commande;

ARCHITECTURE BEHAVIOR OF module_commande IS


component conditionne_btn_v7 is
generic (nbtn : integer := nbtn;  mode_simul: std_logic := '0');
    port (
         CLK          : in std_logic;         -- devrait etre de l ordre de 50 Mhz
         i_btn        : in    std_logic_vector (nbtn-1 downto 0);
         --
         o_btn_db     : out    std_logic_vector (nbtn-1 downto 0);
         o_strobe_btn : out    std_logic_vector (nbtn-1 downto 0)
         );
end component;


    signal d_strobe_btn :    std_logic_vector (nbtn-1 downto 0);
    signal d_btn_cd     :    std_logic_vector (nbtn-1 downto 0); 
    signal d_reset      :    std_logic;
   
   type State is (S0, S1, S2, S3);
   signal s_current, s_next: State;

BEGIN 



Process(clk)
begin 
    if rising_edge (clk) then
        s_current<=s_next;
    end if;
end process;

Process(d_btn_cd,s_current)
begin
    case s_current is
        when S0 =>
            if (d_btn_cd="00") then
                s_next<=S0;
            elsif (d_btn_cd="01") then
                s_next<=S3;
            elsif (d_btn_cd="10") then
                s_next<=S1;
            elsif (d_btn_cd="11") then
                s_next<=S0;
            else
                s_next<=S0;
            end if;
         when S1 =>
            if (d_btn_cd="00") then
                s_next<=S1;
            elsif (d_btn_cd="01") then
                s_next<=S0;
            elsif (d_btn_cd="10") then
                s_next<=S2;
            elsif (d_btn_cd="11") then
                s_next<=S1;
            else
                s_next<=S1;
            end if;
          when S2 =>
            if (d_btn_cd="00") then
                s_next<=S2;
            elsif (d_btn_cd="01") then
                s_next<=S1;
            elsif (d_btn_cd="10") then
                s_next<=S3;
            elsif (d_btn_cd="11") then
                s_next<=S2;
            else
                s_next<=S2;
            end if;
          when S3 =>
            if (d_btn_cd="00") then
                s_next<=S3;
            elsif (d_btn_cd="01") then
                s_next<=S2;
            elsif (d_btn_cd="10") then
                s_next<=S0;
            elsif (d_btn_cd="11") then
                s_next<=S3;
            else
                s_next<=S3;
            end if;
         when others =>
            s_next<=s_current;
     end case;
end process;

Process (s_current)
begin
    case s_current is
        when S0 => o_selection_fct<="00";
        when S1 => o_selection_fct<="01";
        when S2 => o_selection_fct<="10";
        when S3 => o_selection_fct<="11";
    end case;
end process;

 inst_cond_btn:  conditionne_btn_v7
    generic map (nbtn => nbtn, mode_simul => mode_simulation)
    port map(
        clk           => clk,
        i_btn         => i_btn,
        o_btn_db      => d_btn_cd,
        o_strobe_btn  => d_strobe_btn  
         );
 
   o_btn_cd        <= d_btn_cd;
   o_selection_par <= i_sw(1 downto 0); -- mode de selection du parametre par sw
   o_selection_fct <= i_sw(3 downto 2); -- mode de selection de la fonction par sw
   d_reset         <= i_btn(3);         -- pas de contionnement particulier sur reset
   o_reset         <= d_reset;          -- pas de contionnement particulier sur reset

END BEHAVIOR;
