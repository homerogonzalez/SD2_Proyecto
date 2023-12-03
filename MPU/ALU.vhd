library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_PROC_PARA is
	generic(n:integer:=8);
	port(--entrada de datos
		ALU_IN_ACC,ALU_IN_MBR: in std_logic_vector(n-1 downto 0);
		--Cin: in std_logic;
		--entradas de seleccion
		S: in std_logic_vector(2 downto 0);
		--salidas de datos
		ALU_OUT : out std_logic_vector(n-1 downto 0);
		ALU_OUT_C,ALU_OUT_Z: out std_logic);
end ALU_PROC_PARA;
		
architecture behavioral of ALU_PROC_PARA is
signal auxa,auxb,auxf: std_logic_vector(n downto 0);
begin

	auxa <= '0'&ALU_IN_ACC; --Se le añade un bit ALU_IN_ACC la izq para el carry
	auxb <= '0'&ALU_IN_MBR;
	ALU_OUT <= auxf(n-1 downto 0);
	ALU_OUT_C <= auxf(n);
	ALU_OUT_Z <= not (auxf(7) OR auxf(6) OR auxf(5) OR auxf(4) OR auxf(3) OR auxf(2) OR auxf(1) OR auxf(0));
	
	process(auxa,auxb,S)
	begin
	
		if S="000" then auxf <= auxa + auxb;
		elsif S="001" then auxf <= auxa AND auxb;
		elsif S="010" then auxf <= auxa OR auxb;
		elsif S="011" then auxf <= auxf(n)&NOT ALU_IN_ACC;
		elsif S="100" then auxf <= '0'&auxa(n downto 1);		--auxa SLL 1;	
		elsif S="101" then auxf <= auxa(7 downto 0)&'0';		--auxa SRL 1;
		elsif S="110" then auxf <= auxa XOR auxb;
		else auxf <= auxb;
		end if;
	end process;
end behavioral;
