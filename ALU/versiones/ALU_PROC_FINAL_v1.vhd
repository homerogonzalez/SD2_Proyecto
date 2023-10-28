library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_PROC_FINAL is
	generic(n:integer:=8);
			  
	port(--entrada de datos
		A,B: in std_logic_vector(n-1 downto 0);
		--Cin: in std_logic;
		--entradas de seleccion
		selec: in std_logic_vector(2 downto 0);
		--salidas de datos
		F : out std_logic_vector(n-1 downto 0);
		C,Z: out std_logic);
end ALU_PROC_FINAL;
		
architecture behavioral of ALU_PROC_FINAL is
signal auxa,auxb,auxf: std_logic_vector(n downto 0);
begin

	auxa <= '0'&A; --Se le añade un bit a la izq para el carry
	auxb <= '0'&B;
	F <= auxf(7 downto 0);
	C <= auxf(8);
	Z <= not (auxf(7) OR auxf(6) OR auxf(5) OR auxf(4) OR auxf(3) OR auxf(2) OR auxf(1) OR auxf(0));
	
	process(auxa,auxb,selec)
	begin
	
		if selec="000" then auxf <= auxa + auxb;
		elsif selec="001" then auxf <= auxa AND auxb;
		elsif selec="010" then auxf <= auxa OR auxb;
		elsif selec="011" then auxf <= '0'&NOT auxa(7 downto 0);
		elsif selec="100" then auxf <= auxa(0)&'0'&auxa(7 downto 1); 	-- SHR auxf(8) = carryout
		elsif selec="101" then auxf <= auxa(7 downto 0)&'0';				--	SHL
		elsif selec="110" then auxf <= auxa XOR auxb;
		else auxf <= auxb;
		end if;
	end process;
end behavioral;
