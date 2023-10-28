library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity SP is
	generic(n:integer:=8;m:integer:=10);
	port(ARST_SP:in std_logic;
		CLK:in std_logic;
		INC:in std_logic;
		DEC:in std_logic;
		LOAD:in std_logic;
		Din_SP:in std_logic_vector(n-1 downto 0); 
		Qsal_SP: out std_logic_vector(m-1 downto 0));
end SP;
		
architecture behavioral of SP is
signal SP: std_logic_vector(7 downto 0);
signal x: std_logic_vector(2 downto 0);
begin
x <= LOAD&INC&DEC;
	process(CLK,ARST_SP,x)
	begin90
		if (ARST_SP = '1') then 
			SP <= (others => '0');
		elsif (rising_edge(CLK)) then
			case x is
				when "001" => SP <= SP-1;
				when "010" => SP <= SP+1;
				when "100" => SP <= Din_SP;
				when others => SP <= SP;
			end case;
		end if;
	end process;
	Qsal_SP<="10"&SP;
end architecture;
	
