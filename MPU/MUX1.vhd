library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MUX1 is 
    port(MUX1_IN_MUX2,MUX1_IN_MBR: in std_logic_vector(9 downto 0);
        S: in std_logic;
        MUX1_OUT: out std_logic_vector(9 downto 0));
end MUX1;

architecture behavioral of MUX1 is
    signal MUX1_SIG: std_logic_vector(7 downto 0);
    begin
        process(CLK,ARST,SRST,S)
        begin
            if (ARST_CONT = '1') then 
                MUX1_SIG <= (others => '0');
            elsif (rising_edge(CLK)) then
                if (SRST_CONT = '1') then
                    MUX1_SIG <= (others => '0');
                else
                    case S is
                        when '0' => MUX1_SIG <= MUX2_IN_PC;
                        when '1' => MUX1_SIG <= MUX2_IN_SP;
                        when others => MUX1_SIG <= (others => '0');
                    end case;
                end if;
            end if;
        end process;
        MUX1_OUT<=MUX1_SIG;
    end architecture;