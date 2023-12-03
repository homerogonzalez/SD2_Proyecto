library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity IR is 
    generic(n:integer:=8);
    port(IR_IN_MBR: in std_logic_vector(n-1 downto 0);
            CE,ARST,SRST,CLK: in std_logic;
            IR_OUT: out std_logic_vector(n-1 downto 0));
end IR;

architecture behavioral of IR is
    signal IR_SIG: std_logic_vector(n-1 downto 0);
    begin
        process(CLK,ARST,SRST,CE)
        begin
            if (ARST_CONT = '1') then 
                IR_SIG <= (others => '0');
            elsif (rising_edge(CLK)) then
                if (SRST_CONT = '1') then
                    IR_SIG <= (others => '0');
                elsif (CE = '1') then
                    IR_SIG <= IR_IN_MBR;
                end if;
            end if;
        end process;
        IR_OUT<=IR_SIG;
end architecture;