library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MBRAUX is 
    port(MBRAUX_IN_MBR: in std_logic_vector(7 downto 0);
            CE,ARST,SRST,CLK: in std_logic;
            MBRAUX_OUT: out std_logic_vector(1 downto 0));
end MBRAUX;

architecture behavioral of MBRAUX is
    signal MBRAUX_SIG: std_logic_vector(7 downto 0);
    begin
        process(CLK,ARST,SRST,CE)
        begin
            if (ARST_CONT = '1') then 
                MBRAUX_SIG <= (others => '0');
            elsif (rising_edge(CLK)) then
                if (SRST_CONT = '1') then
                    MBRAUX_SIG <= (others => '0');
                elsif (CE = '1') then
                    MBRAUX_SIG <= MBRAUX_IN_MBR;
                end if;
            end if;
        end process;
        MBRAUX_OUT<=MBRAUX_SIG(1 downto 0);
    end architecture;