library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_PROC is
	port(--entrada de datos
		A,B: in std_logic_vector(7 downto 0);
		Cin: in std_logic;
		--entradas de seleccion
		selec: in std_logic_vector(2 downto 0);
		--salidas de datos
		F : out std_logic_vector(7 downto 0);
		C,Z: out std_logic);
end ALU_PROC;

architecture behavioral of ALU_PROC is
signal auxa,auxb,auxf: std_logic_vector(8 downto 0);
begin

	auxa <= '0'&A; --Se le añade un bit a la izq para el carry
	auxb <= '0'&B;
	F <= auxa(7 downto 0);
	C <= auxf(8);
	Z <= not (auxf(7) OR auxf(6) OR auxf(5) OR auxf(4) OR auxf(3) OR auxf(2) OR auxf(1) OR auxf(0));

	process(auxa,auxb,selec)
	begin

		if 	selec="000" then auxf <= auxa + auxb;
		elsif selec="001" then auxf <= auxa AND auxb;
		elsif selec="010" then auxf <= auxa OR auxb;
		elsif selec="011" then auxf <= NOT A;
		elsif selec="100" then auxf <= auxa SRL 1; --auxa(7)&auxa(6)&auxa(5)&auxa(4)&auxa(3)&auxa(2)&auxa(1)&auxa(0)&auxa(8);	
		elsif selec="101" then auxf <= auxa  1; --auxa(0)&auxa(8)&auxa(7)&auxa(6)&auxa(5)&auxa(4)&auxa(3)&auxa(2)&auxa(1);
		elsif selec="110" then auxf <= auxa XOR auxb;
		else auxf <= auxb;
		end if;
	end process;
end behavioral;


