library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity PC is
	generic(n:integer:=8);
	port(ARST_PC:in std_logic;
		CLK:in std_logic;
		MBR: in std_logic_vector(n-1 downto 0);
		MBRAux: in std_logic_vector(1 downto 0);
		LOAD: in std_logic;
		INC: in std_logic;
		PCH: out std_logic_vector(1 downto 0);
		PCL: out std_logic_vector(7 downto 0));
end PC;
		
architecture behavioral of PC is
signal PC: std_logic_vector(9 downto 0);
signal x: std_logic_vector(1 downto 0);
begin
x <= LOAD&INC;
	process(CLK,ARST_PC,LOAD,INC,x)
	begin
		if (ARST_PC = '1') then 
			PC <= (others => '0');
		elsif (rising_edge(CLK)) then
				case x is
					when "01" => PC <= PC+1;
					when "10" => PC <= MBRAux&MBR;
					when others => PC <= PC;
				end case;
		end if;
	end process;
	PCL <= PC(7 downto 0);
	PCH <= PC(9)&PC(8);
end architecture;
	
	