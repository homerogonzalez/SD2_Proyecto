library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MAR is
	generic(m:integer:=10);
    port(MAR_IN_MUX1: in std_logic_vector(m-1 downto 0);
		CLK,CE,ARST: in std_logic;
		MAR_OUT: out std_logic_vector(m-1 downto 0));
end MAR;

		
architecture behavioral of MAR is
signal MAR_SIG: std_logic_vector(m-1 downto 0);
begin
	process(CLK,ARST,MAR_IN_MUX1,CE,MAR_SIG)
	begin
		if (ARST = '1') then 
            MAR_SIG <= (others => '0');
		elsif (rising_edge(CLK)) then
			if (CE = '1') then
                MAR_SIG <=MAR_IN_MUX1;
			end if;
		end if;
	end process;
	MAR_OUT<=MAR_SIG;
end behavioral;