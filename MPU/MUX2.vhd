library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MUX2 is 
    port(MUX2_IN_SP,MUX2_IN_PC: in std_logic_vector(9 downto 0);
        S: in std_logic;
        MUX2_OUT: out std_logic_vector(9 downto 0));
end MUX2;

architecture behavioral of MUX2 is
    signal MUX2_SIG: std_logic_vector(7 downto 0);
    begin
        process(CLK,ARST,SRST,S)
        begin
            if (ARST_CONT = '1') then 
                MUX2_SIG <= (others => '0');
            elsif (rising_edge(CLK)) then
                if (SRST_CONT = '1') then
                    MUX2_SIG <= (others => '0');
                else
                    case S is
                        when '0' => MUX2_SIG <= MUX2_IN_PC;
                        when '1' => MUX2_SIG <= MUX2_IN_SP;
                        when others => MUX2_SIG <= (others => '0');
                    end case;
                end if;
            end if;
        end process;
        MUX2_OUT<=MUX2_SIG;
    end architecture;