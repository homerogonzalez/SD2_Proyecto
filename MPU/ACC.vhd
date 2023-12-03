library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ACC is 
    generic(n:integer:=8);
    port(ACC_IN_ALU: in std_logic_vector(n-1 downto 0);
            CE,ARST,SRST,CLK: in std_logic;
            ACC_OUT: out std_logic_vector(n-1 downto 0));
end ACC;

architecture behavioral of ACC is
    signal ACC: std_logic_vector(n-1 downto 0);
    begin
        process(CLK,ARST,SRST,CE)
        begin
            if (ARST_CONT = '1') then 
                ACC <= (others => '0');
            elsif (rising_edge(CLK)) then
                if (SRST_CONT = '1') then
                    ACC <= (others => '0');
                elsif (CE = '1') then
                    ACC <= ACC_IN_ALU;
                end if;
            end if;
        end process;
        ACC_OUT<=ACC;
    end architecture;