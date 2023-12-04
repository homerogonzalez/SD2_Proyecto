library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU is
	generic(n:integer:=8);
	port(ALU_IN_ACC,ALU_IN_MBR: in std_logic_vector(n-1 downto 0);
			S: in std_logic_vector(2 downto 0);
			ALU_OUT_Z: out std_logic;
			ALU_OUT_C: out std_logic;
			ALU_OUT: out std_logic_vector(n-1 downto 0));
end ALU;
		
architecture behavioral of ALU is
signal auxa,auxb,auxf: std_logic_vector(n downto 0);
signal tmp: std_logic_vector(n-1 downto 0); --señal temporal para ALU_OUT_Z parametrica
begin

-- ALU_OUT_Z parametrica con ciclo
    tmp(0) <= auxf(0);
    or_para:
          for i in 1 to (n-1) generate
				tmp(i) <= auxf(i) or tmp(i-1);
          end generate;
     ALU_OUT_Z <= not(tmp(n-1));
--

	auxa <= '0'&ALU_IN_ACC; --Se le añade un bit ALU_IN_ACC la izq para el carry
	auxb <= '0'&ALU_IN_MBR;
	ALU_OUT <= auxf(n-1 downto 0);
	ALU_OUT_C <= auxf(n);
--	ALU_OUT_Z <= not (auxf(7) OR auxf(6) OR auxf(5) OR auxf(4) OR auxf(3) OR auxf(2) OR auxf(1) OR auxf(0));
	
	process(auxa,auxb,S)
	begin
	
		if S="000" then auxf <= auxa + auxb;
		elsif S="001" then auxf <= auxa AND auxb;
		elsif S="010" then auxf <= auxa OR auxb;
		elsif S="011" then auxf <= '0'&NOT auxa(n-1 downto 0);
		elsif S="100" then auxf <= auxa(0)&'0'&auxa(n-1 downto 1); 	-- SHR
		elsif S="101" then auxf <= auxa(n-1 downto 0)&'0';				--	SHL
		elsif S="110" then auxf <= auxa XOR auxb;
		else auxf <= auxb;
		end if;
	end process;
end behavioral;
