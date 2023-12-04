library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MUX1 is 
    generic(m:integer:=10);
    port(MUX1_IN_MUX2,MUX1_IN_MBR: in std_logic_vector(m-1 downto 0);
        S: in std_logic;
        MUX1_OUT: out std_logic_vector(m-1 downto 0));
end MUX1;

architecture behavioral of MUX1 is
signal MUX1_SIG: std_logic_vector(m-1 downto 0);
begin
        process(S)
        begin
            case S is
                when '0' => MUX1_SIG <= MUX2_IN_PC;
                when '1' => MUX1_SIG <= MUX2_IN_SP;
                when others => MUX1_SIG <= (others => '0');
            end case;
        end process;
    MUX1_OUT<=MUX1_SIG;
end architecture;