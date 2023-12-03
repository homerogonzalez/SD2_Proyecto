library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity CONTADOR is
	generic(n:integer:=8);
	port(ARST:in std_logic;
		SRST:in std_logic;
		CLK:in std_logic;
		CONT_OUT: out std_logic_vector(n-1 downto 0));
end CONTADOR;
		
architecture behavioral of CONTADOR is
signal cuenta: std_logic_vector(n-1 downto 0);
begin
	process(CLK,ARST)
	begin
		if (ARST = '1') then 
			cuenta <= (others => '0');
		elsif (rising_edge(CLK)) then
			if (SRST = '1') then
				cuenta <= (others => '0');
			else
				cuenta <= cuenta+1;
			end if;
		end if;
	end process;
	CONT_OUT<=cuenta;
end architecture;
	