library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity CCR is 
    port(CCR_IN_Z: in std_logic;
            CCR_IN_C: in std_logic;
            CE,ARST,SRST,CLK: in std_logic;
            CCR_OUT_C,CCR_OUT_Z: out std_logic);
end CCR;

architecture behavioral of CCR is
signal CCRZ: std_logic;
signal CCRC: std_logic;
begin
        process(CLK,ARST,SRST,CE,CCR_IN_C,CCR_IN_Z)
        begin
            if (ARST = '1') then 
                CCRC <= '0';
                CCRZ <= '0';
            elsif (rising_edge(CLK)) then
                if (SRST = '1') then
						 CCRC <= '0';
						 CCRZ <= '0';
                elsif (CE = '1') then
                    CCRC <= CCR_IN_C;
                    CCRZ <= CCR_IN_Z;
                end if;
            end if;
        end process;
        CCR_OUT_C<=CCRC;
        CCR_OUT_Z<=CCRZ;
end architecture;