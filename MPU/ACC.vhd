library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity ACC is 
    generic(n:integer:=8);
    port(ACC_IN_ALU: in std_logic_vector(n-1 downto 0);
            CE,ARST,CLK: in std_logic;
            ACC_OUT: out std_logic_vector(n-1 downto 0));
end ACC;

architecture behavioral of ACC is
signal ACC: std_logic_vector(n-1 downto 0);
begin
        process(CLK,ARST,CE,ACC_IN_ALU,ACC)
        begin
            if (ARST = '1') then 
                --ACC <= (others => '0');
					 ACC_OUT <= (others => '0');
            elsif (rising_edge(CLK)) then
                if (CE = '1') then
                    --ACC <= ACC_IN_ALU;
						  ACC_OUT <= ACC_IN_ALU;
                end if;
            end if;
        end process;
        --ACC_OUT<=ACC;
end behavioral;