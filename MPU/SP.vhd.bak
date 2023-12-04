library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity SP is
	generic(n:integer:=8;m:integer:=10);
	port(SP_IN_MBR: in std_logic_vector(n-1 downto 0);
	ARST,CLK,SRST,DEC_SP,INC_SP,LOAD_SP: in std_logic;
	SP_OUT: out std_logic_vector(m-1 downto 0));
end SP;

		
architecture behavioral of SP is
signal SP: std_logic_vector(7 downto 0);
signal x: std_logic_vector(2 downto 0);
begin
x <= LOAD_SP&INC_SP&DEC_SP;
	process(CLK,SRST,ARST,x)
	begin90
		if (ARST = '1') then 
			SP <= (others => '0');
		elsif (rising_edge(CLK)) then
			if (SRST = '1') then
				SP <= (others => '0');
			else
				case x is
					when "001" => SP <= SP-1;
					when "010" => SP <= SP+1;
					when "100" => SP <= SP_IN_MBR;
					when others => SP <= SP;
				end case;
		end if;
	end process;
	SP_OUT<="10"&SP;
end architecture;
	
