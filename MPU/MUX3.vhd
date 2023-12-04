library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MUX3 is 
    generic(n:integer:=8);
    port(MUX3_IN_PCL,MUX3_IN_DATOS,MUX3_IN_ACC: in std_logic_vector(n-1 downto 0);
            MUX3_IN_PCH,S: in std_logic_vector(1 downto 0);
            MUX3_OUT: out std_logic_vector(n-1 downto 0));
end MUX3;

architecture behavioral of MUX3 is
    signal MUX3_SIG: std_logic_vector(n-1 downto 0);
    begin
        process(S,MUX3_IN_PCL,MUX3_IN_DATOS,MUX3_IN_ACC,MUX3_IN_PCH,MUX3_SIG)
        begin
            case S is
                when "00" => MUX3_SIG <= MUX3_IN_ACC;
                when "01" => MUX3_SIG <= MUX3_IN_DATOS;
                when "10" => MUX3_SIG <= MUX3_IN_PCL;
                when "11" => MUX3_SIG <= "000000"&MUX3_IN_PCH;
                --when others => MUX3_SIG <= (others => '0');
            end case;
        end process;
    MUX3_OUT<=MUX3_SIG;
end behavioral;