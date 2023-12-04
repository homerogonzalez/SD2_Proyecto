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
signal tmp: std_logic_vector(n-1 downto 0); --señal temporal para z parametrica
begin

-- z parametrica con ciclo
    tmp(0) <= auxf(0);
    or_para:
          for i in 1 to (n-1) generate
				tmp(i) <= auxf(i) or tmp(i-1);
          end generate;
     Z <= not(tmp(n-1));
--

	auxa <= '0'&A; --Se le añade un bit a la izq para el carry
	auxb <= '0'&B;
	F <= auxf(n-1 downto 0);
	C <= auxf(n);
--	Z <= not (auxf(7) OR auxf(6) OR auxf(5) OR auxf(4) OR auxf(3) OR auxf(2) OR auxf(1) OR auxf(0));
	
	process(auxa,auxb,selec)
	begin
	
		if selec="000" then auxf <= auxa + auxb;
		elsif selec="001" then auxf <= auxa AND auxb;
		elsif selec="010" then auxf <= auxa OR auxb;
		elsif selec="011" then auxf <= '0'&NOT auxa(n-1 downto 0);
		elsif selec="100" then auxf <= auxa(0)&'0'&auxa(n-1 downto 1); 	-- SHR
		elsif selec="101" then auxf <= auxa(n-1 downto 0)&'0';				--	SHL
		elsif selec="110" then auxf <= auxa XOR auxb;
		else auxf <= auxb;
		end if;
	end process;
end behavioral;
