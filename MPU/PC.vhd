library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity PC is
	generic(n:integer:=8; m:integer:=10);
	port(PCH_IN: in std_logic_vector(1 downto 0);
		PCL_IN: in std_logic_vector(n-1 downto 0);
		CLK,ARST,SRST,INC_PC,LOAD_PC: in std_logic;
		PC_OUT: out std_logic_vector(m-1 downto 0));
end PC;
		
architecture behavioral of PC is
signal PC: std_logic_vector(m-1 downto 0);
signal x: std_logic_vector(1 downto 0);
begin
x <= LOAD_PC&INC_PC;
	process(CLK,ARST,SRST,x)
	begin
		if (ARST = '1') then 
			PC <= (others => '0');
		elsif (rising_edge(CLK)) then
			if (SRST = '1') then
				PC <= (others => '0');
			else
				case x is
					when "01" => PC <= PC+1;
					when "10" => PC <= PCH_IN&PCL_IN;
					when others => PC <= PC;
				end case;
			end if;
		end if;
	end process;
	PC_OUT <= PC;
end architecture;
	
	