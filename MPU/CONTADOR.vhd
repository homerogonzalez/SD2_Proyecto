library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity CONTADOR is
	generic(p:integer:=4);
	port(CLK,CE,ARST,SRST: in std_logic;
			CONT_OUT: out std_logic_vector(p-1 downto 0));
end CONTADOR;
		
architecture behavioral of CONTADOR is
signal cuenta: std_logic_vector(p-1 downto 0);
begin
	process(CLK,CE,ARST,SRST,cuenta)
	begin
		if (ARST = '1') then 
			cuenta <= (others => '0');
		elsif (rising_edge(CLK)) then
			if (SRST = '1') then
				cuenta <= (others => '0');
			else
				if (CE = '1') then
				cuenta <= cuenta+1;
				end if;
			end if;
		end if;
	end process;
	CONT_OUT<=cuenta;
end behavioral;
	