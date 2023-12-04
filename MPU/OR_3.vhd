library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity OR_3 is
    port(OR3_IN: in std_logic_vector(2 downto 0);
            OR3_OUT: out std_logic);
end OR_3;

architecture dataflow of OR_3 is
begin  
    OR3_OUT <= OR3_IN(2) OR OR3_IN(1) OR OR3_IN(0);
end dataflow;