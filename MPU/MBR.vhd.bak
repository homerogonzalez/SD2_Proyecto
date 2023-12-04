library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MBR is
	generic(n:integer:=8);
	port(MBR_IN_MUX3: in std_logic_vector(n-1 downto 0);
            CLK,CE,ARST: in std_logic;
            MBR_OUT: out std_logic_vector(n-1 downto 0));
end MBR;

architecture behavioral of MBR is
signal MBR_SIG: std_logic_vector(n-1 downto 0);
begin
	process(CLK,ARST,MBR_SIG)
	begin
		if (ARST = '1') then 
            MBR_SIG <= (others => '0');
		elsif (rising_edge(CLK)) then
			if (CE = '1') then
                MBR_SIG <=MBR_IN_MUX3;
			end if;
		end if;
	end process;
	MBR_OUT<=MBR_SIG;
end architecture;

