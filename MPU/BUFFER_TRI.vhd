library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity BUFFER_TRI is
    port(BUF_IN_MBR: in std_logic_vector(7 downto 0);
            BUF_RW: in std_logic;
            BUF_OUT: out std_logic_vector(7 downto 0));
end BUFFER_TRI;

architecture behavioral of BUFFER_TRI is
begin  
    process(BUF_IN_MBR,BUF_RW)
    begin  
        if (BUF_RW='0') then
            BUF_OUT <= BUF_IN_MBR;
        else
            BUF_OUT <= "ZZZZZZZZ";

        end if;
    end process;
end behavioral;
            
