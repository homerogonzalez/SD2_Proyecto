library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity UC is
	port(--entradas
		C,Z: in std_logic;
		q,T: in std_logic_vector(3 downto 0);
		--salidas
		Xout: out std_logic_vector(0 to 19);
		RW: out std_logic);
end UC;

architecture behavioral of UC is
signal X: std_logic_vector(0 to 19);
begin
Xout<=X;

	process(C,Z,q,T,X)
	begin
	
		--ciclo fetch
		if T="0000" AND std_match(q,"----") then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0001" AND std_match(q,"----") then
			X<="00100010000000000000";RW<='1'; 	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0010" AND std_match(q,"----") then
			X<="10000000000000000000";RW<='1'; 	--IR ← MBR; 


		-- 	MOV A,N   		00h
		elsif T="0011" AND q="0000" then
			X<="00000000100000000000";RW<='1'; 	--MAR ← PC;
		elsif T="0100" AND q="0000" then
			X<="00100010000000000000";RW<='1'; 	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0000" then
			X<="00000000000000011101";RW<='1';	--ACC ← MBR, CCR ← FLAGS;
		elsif T="0110" AND q="0000" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
		

		-- 	XOR A,N 			01h
		elsif T="0011" AND q="0001" then
			X<="00000000100000000000";RW<='1'; --MAR ← PC;
		elsif T="0100" AND q="0001" then
			X<="00100010000000000000";RW<='1'; --MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0001" then
			X<="00000000000000001101";RW<='1';	--ACC ← ACC ^ MBR, CCR ← FLAGS;
		elsif T="0110" AND q="0001" then
			X<="00000000000000100000";RW<='1';	--T ← 0;


		--		*MOV SP, N 		02h	
		elsif T="0011" AND q="0010" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="0010" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0010" then
			X<="00000000000100000000";RW<='1';	--SP ← MBR;
		elsif T="0110" AND q="0010" then
			X<="00000000000000100000";RW<='1';	--T ← 0;


		--		MOV A, [DIR] 	03h
		elsif T="0011" AND q="0011" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="0011" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0011" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="0011" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="0011" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="1000" AND q="0011" then
			X<="00000001000000000000";RW<='1';	--MAR ← MBRaux:MBR;
		elsif T="1001" AND q="0011" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1010" AND q="0011" then
			X<="00000000000000011101";RW<='1';	--ACC ← MBR, CCR ← FLAGS;
		elsif T="1011" AND q="0011" then
			X<="00000000000000100000";RW<='1';	--T ← 0;

			
		--		ADD A, [DIR] 	04h
		elsif T="0011" AND q="0100" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="0100" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0100" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="0100" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="0100" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="1000" AND q="0100" then
			X<="00000001000000000000";RW<='1';	--MAR ← MBRaux:MBR;
		elsif T="1001" AND q="0100" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1010" AND q="0100" then
			X<="00000000000000000001";RW<='1';	--ACC ← ACC + MBR, CCR ← FLAGS;
		elsif T="1011" AND q="0100" then
			X<="00000000000000100000";RW<='1';	--T ← 0;


			--		AND A, [DIR] 	05h
		elsif T="0011" AND q="0101" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="0101" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0101" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="0101" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="0101" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="1000" AND q="0101" then
			X<="00000001000000000000";RW<='1';	--MAR ← MBRaux:MBR;
		elsif T="1001" AND q="0101" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1010" AND q="0101" then
			X<="00000000000000010001";RW<='1';	--ACC ← ACC & MBR, CCR ← FLAGS;
		elsif T="1011" AND q="0101" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
	
	
			--		OR A, [DIR] 	06h
		elsif T="0011" AND q="0110" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="0110" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="0110" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="0110" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="0110" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="1000" AND q="0110" then
			X<="00000001000000000000";RW<='1';	--MAR ← MBRaux:MBR;
		elsif T="1001" AND q="0110" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1010" AND q="0110" then
			X<="00000000000000001001";RW<='1';	--ACC ← ACC | MBR, CCR ← FLAGS;
		elsif T="1011" AND q="0110" then
			X<="00000000000000100000";RW<='1';	--T ← 0;			


			--		NOT A				07h
		elsif T="0011" AND q="0111" then
			X<="00000000000000011001";RW<='1';	--ACC ← NOT(ACC), CCR ← FLAGS;
		elsif T="0100" AND q="0111" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
	
	
			--		LSL A				08h
		elsif T="0011" AND q="1000" then
			X<="00000000000000010101";RW<='1';	--ACC ← (C<-ACC<-0), CCR ← FLAGS;
		elsif T="0100" AND q="1000" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
			
			
			--		LSR A				09h
		elsif T="0011" AND q="1001" then
			X<="00000000000000000101";RW<='1';	--ACC ← (0->ACC->C), CCR ← FLAGS;
		elsif T="0100" AND q="1001" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
	
	
			--		*MOV [DIR], A 	0Ah	
		elsif T="0011" AND q="1010" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="1010" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="1010" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="1010" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="1010" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="1000" AND q="1010" then
			X<="00000001000000000000";RW<='1';	--MAR ← MBRaux:MBR;
		elsif T="1001" AND q="1010" then
			X<="01000000000000000000";RW<='1';	--MBR ← ACC;
		elsif T="1010" AND q="1010" then
			X<="00000000000000000000";RW<='0';	--M[DIR] ← MBR;
		elsif T="1011" AND q="1010" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
	
	
			-- 	JMP DIR 			0Bh	
		elsif T="0011" AND q="1011" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="1011" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="1011" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="1011" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="1011" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1000" AND q="1011" then
			X<="00000100000000000000";RW<='1';	--PC ← MBRaux:MBR;
		elsif T="1001" AND q="1011" then
			X<="00000000000000100000";RW<='1';	--T ← 0;

	
			-- 	*JC DIR 			0Ch	
		elsif T="0011" AND q="1100" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="1100" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="1100" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="1100" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="1100" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1000" AND q="1100" AND C='1' then
			X<="00000100000000000000";RW<='1';	--PC ← MBRaux:MBR;
		elsif T="1000" AND q="1100" AND C='0' then
			X<="00000000000000100000";RW<='1';	--T ← 0;
		elsif T="1001" AND q="1100" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
	
	
			-- 	*JZ DIR 			0Dh	
		elsif T="0011" AND q="1101" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="1101" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="1101" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0110" AND q="1101" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0111" AND q="1101" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1000" AND q="1101" AND Z='1' then
			X<="00000100000000000000";RW<='1';	--PC ← MBRaux:MBR;
		elsif T="1000" AND q="1101" AND Z='0' then
			X<="00000000000000100000";RW<='1';	--T ← 0;
		elsif T="1001" AND q="1101" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
			
			
			-- 	*JSR DIR 		0Eh
		elsif T="0011" AND q="1110" then
			X<="00000000100000000000";RW<='1';	--MAR ← PC;
		elsif T="0100" AND q="1110" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0101" AND q="1110" then
			X<="00000000101000000000";RW<='1';	--MBRaux ← MBR, MAR ← PC;
		elsif T="0110" AND q="1110" then
			X<="00100010000000000000";RW<='1';	--MBR ← M[DIR], PC ← PC + 1;
		elsif T="0111" AND q="1110" then
			X<="00000000000000011101";RW<='1';	--ACC ← MBR, CCR ← FLAGS;
		elsif T="1000" AND q="1110" then
			X<="00000000010000000000";RW<='1';	--MAR ← SP;
		elsif T="1001" AND q="1110" then
			X<="00010000000000000000";RW<='1';	--MBR ← PCL;
		elsif T="1010" AND q="1110" then
			X<="00000000000001000000";RW<='0';	--M[DIR] ← MBR, SP ← SP - 1;
		elsif T="1011" AND q="1110" then
			X<="00001000010000000000";RW<='1';	--MAR ← SP, MBR ← PCH;
		elsif T="1100" AND q="1110" then
			X<="00000000000000000000";RW<='0';	--M[DIR] ← MBR, SP ← SP - 1;
		elsif T="1101" AND q="1110" then
			X<="00000000000001000000";RW<='1';	--MBR ← ACC;
		elsif T="1110" AND q="1110" then
			X<="01000000000000000000";RW<='1';	--PC ← MBRaux:MBR;
		elsif T="1111" AND q="1110" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
	
	
			--		*RTS 				 0Fh
		elsif T="0011" AND q="1111" then
			X<="00000000000010000000";RW<='1';	--SP ← SP + 1;
		elsif T="0100" AND q="1111" then
			X<="00000000010000000000";RW<='1';	--MAR ← SP; 
		elsif T="0101" AND q="1111" then
			X<="00100000000010000000";RW<='1';	--MBR ← M[DIR], SP ← SP + 1;
		elsif T="0110" AND q="1111" then
			X<="00000000001000000000";RW<='1';	--MBRaux ← MBR;
		elsif T="0111" AND q="1111" then
			X<="00000000010000000000";RW<='1';	--MAR ← SP; 
		elsif T="1000" AND q="1111" then
			X<="00100000000000000000";RW<='1';	--MBR ← M[DIR];
		elsif T="1001" AND q="1111" then
			X<="00000001000000000000";RW<='1';	--PC ← MBRaux:MBR;
		elsif T="1010" AND q="1111" then
			X<="00000000000000100000";RW<='1';	--T ← 0;
			
		end if;
	end process;
end architecture;
	