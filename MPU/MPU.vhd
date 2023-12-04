--TOP
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MPU is 
	port(CLK,ARST: in std_logic;
			DIRECCIONES: out std_logic_vector(9 downto 0);
			RW: out std_logic;
			DATOS: inout std_logic_vector(7 downto 0));
end MPU;
		
architecture estructural of MPU is

	component ALU
		port(ALU_IN_ACC,ALU_IN_MBR: in std_logic_vector(7 downto 0);
				S: in std_logic_vector(2 downto 0);
				ALU_OUT_Z: out std_logic;
				ALU_OUT_C: out std_logic;
				ALU_OUT: out std_logic_vector(7 downto 0));
	end component;

	component ACC
		port(ACC_IN_ALU: in std_logic_vector(7 downto 0);
				CE,ARST,SRST,CLK: in std_logic;
				ACC_OUT: out std_logic_vector(7 downto 0));
	end component;
		
	component CCR
		port(CCR_IN_Z: in std_logic;
				CCR_IN_C: in std_logic;
				CE,ARST,SRST,CLK: in std_logic;
				CCR_OUT_C,CCR_OUT_Z: out std_logic);
	end component;

	component MBRAUX
		port(MBRAUX_IN_MBR: in std_logic_vector(7 downto 0);
				CE,ARST,SRST,CLK: in std_logic;
				MBRAUX_OUT: out std_logic_vector(1 downto 0));
	end component;

	component IR
		port(IR_IN_MBR: in std_logic_vector(7 downto 0);
				CE,ARST,SRST,CLK: in std_logic;
				IR_OUT: out std_logic_vector(7 downto 0));
	end component;
	
	component SP
		port(SP_IN_MBR: in std_logic_vector(7 downto 0);
				ARST,CLK,SRST,DEC_SP,INC_SP,LOAD_SP: in std_logic;
				SP_OUT: out std_logic_vector(7 downto 0));
	end component;
	
	component CONTADOR
		port(CLK,CE,ARST,SRST: in std_logic;
				CONT_OUT: out std_logic_vector(7 downto 0));
	end component;

	component PC
		port(PCH_IN: in std_logic_vector(1 downto 0);
				PCL_IN: in std_logic_vector(7 downto 0);
				CLK,ARST,SRST,INC_PC,LOAD_PC: in std_logic;
				PC_OUT: out std_logic_vector(9 downto 0));
	end component;
	
	component MUX2
		port(MUX2_IN_SP,MUX2_IN_PC: in std_logic_vector(9 downto 0);
				S: in std_logic;
				MUX2_OUT: out std_logic_vector(9 downto 0));
	end component;
	
	component MUX1
		port(MUX1_IN_MUX2,MUX1_IN_MBR: in std_logic_vector(9 downto 0);
				S: in std_logic;
				MUX1_OUT: out std_logic_vector(9 downto 0));
	end component;
	
	component MUX3
		port(MUX3_IN_PCL,MUX3_IN_DATOS,MUX3_IN_ACC: in std_logic_vector(7 downto 0);
				MUX3_IN_PCH,S: in std_logic_vector(1 downto 0);
				MUX3_OUT: out std_logic_vector(7 downto 0));
	end component;
	
	component MBR
		port(MBR_IN_MUX3: in std_logic_vector(7 downto 0);
				CLK,CE,ARST,SRST: in std_logic;
				MBR_OUT: out std_logic_vector(7 downto 0));
	end component;
	
	component MAR
		port(MAR_IN_MUX1: in std_logic_vector(9 downto 0);
				CE,ARST,SRST: in std_logic;
				MAR_OUT: out std_logic_vector(9 downto 0));
	end component;
	
	component BUFFER_TRI
		port(BUF_IN_MBR: in std_logic_vector(7 downto 0);
				BUF_RW: in std_logic;
				BUF_OUT: out std_logic_vector(7 downto 0));
	end component;
	
	component OR_2
		port(OR2_IN: in std_logic_vector(1 downto 0);
				OR2_OUT: out std_logic);
	end component;
	
	component OR_3
		port(OR3_IN: in std_logic_vector(2 downto 0);
				OR3_OUT: out std_logic);
	end component;
	
	component OR_4
		port(OR4_IN: in std_logic_vector(3 downto 0);
				OR4_OUT: out std_logic);
	end component;
	
	component UC
		port(UC_IN_IR: in std_logic_vector(3 downto 0);
				UC_IN_CONT: in std_logic_vector(3 downto 0);
				UC_IN_FLAGC: in std_logic;
				UC_IN_FLAGZ: in std_logic;
				UC_OUT: out std_logic_vector(0 to 19);
				UC_OUT_RW: out std_logic);
	end component;
	
--señales
signal SAL_ACC: std_logic_vector(7 downto 0);
signal SAL_MBR: std_logic_vector(7 downto 0);
signal X: std_logic_vector(19 downto 0);
signal SELEC_ALU: std_logic_vector(2 downto 0);
signal Z: std_logic;
signal C: std_logic;
signal SAL_ALU: std_logic_vector(7 downto 0);
signal SAL_CCR_C: std_logic;
signal SAL_CCR_Z: std_logic;
signal SAL_MBRAUX: std_logic_vector(1 downto 0);
signal SAL_IR: std_logic_vector(7 downto 0);
signal SAL_SP: std_logic_vector(9 downto 0);
signal SAL_PC: std_logic_vector(9 downto 0);
signal PCL_MUX3: std_logic_vector(7 downto 0);
signal PCH_MUX3: std_logic_vector(1 downto 0);
signal SAL_MUX3: std_logic_vector(7 downto 0);
signal SAL_MUX2: std_logic_vector(9 downto 0);
signal SAL_MUX1: std_logic_vector(9 downto 0);
signal MBRS: std_logic_vector(9 downto 0);
signal SAL_CONT: std_logic_vector(7 downto 0);
signal SAL_OR2_MUX1: std_logic;
signal SAL_OR3_MAR: std_logic;
signal SAL_OR4_MBR: std_logic;
signal SAL_OR2_MUX3_1: std_logic;
signal SAL_OR2_MUX3_0: std_logic;
signal nose1: std_logic_vector(7 downto 0);
signal nose2: std_logic;
begin
	
	PCL_MUX3 <= SAL_PC(7 DOWNTO 0);
	PCH_MUX3 <= SAL_PC(9 DOWNTO 8);
	SELEC_ALU<=X(15)&X(16)&X(17);
	SELEC_MUX3<=SAL_OR2_MUX3_1&SAL_OR2_MUX3_0;
	MBRS<=SAL_MBRAUX&SAL_MBR;
	

	
	U0: ALU PORT MAP(ALU_IN_ACC=>SAL_ACC, MBR_IN=>SAL_MBR,S=>SELEC_ALU,ALU_OUT_Z=>Z,ALU_OUT_C=>C,ALU_OUT=>SAL_ALU);
	
	U1: ACC PORT MAP(ACC_IN_ALU=>SAL_ALU,CE=>X(1),ARST=>ARST,SRST=>SRST,CLK=>CLK,ACC_OUT=>SAL_ACC);
	
	U2: CCR PORT MAP(CCR_IN_Z=>Z,CCR_IN_C=>C,CE=>X(1),ARST=>ARST,SRST=>SRST,CLK=>CLK,CCR_OUT_C=>SAL_CCR_C,CCR_OUT_Z=>SAL_CCR_Z);
	
	U3: MBRAUX PORT MAP(MBRAUX_IN_MBR=>SAL_MBR,CE=>X(1),ARST=>ARST,SRST=>SRST,CLK=>CLK,MBRAUX_OUT=>SAL_MBRAUX);
	
	U4: IR PORT MAP(IR_IN_MBR=>SAL_MBR,CE=>X(1),ARST=>ARST,SRST=>SRST,CLK=>CLK,IR_OUT=>SAL_IR);
	
	U5: SP PORT MAP(SP_IN_MBR=>SAL_MBR,ARST=>ARST,CLK=>CLK,SRST=>SRST,DEC_SP=>X(1),INC_SP=>X(1),LOAD_SP=>X(1),SP_OUT=>SAL_SP);
	
	U6: PC PORT MAP(PCH_IN=>SAL_MBRAUX,PCL_IN=>SAL_MBR,CLK=>CLK,ARST=>ARST,SRST=>SRST,INC_PC=>X(1),LOAD_PC=>X(1),PC_OUT=>SAL_PC);
	
	U7: MUX3 PORT MAP(MUX3_IN_PCL=>PCL_MUX3,MUX3_IN_PCH=>PCH_MUX3,MUX3_IN_DATOS=>DATOS,MUX3_IN_ACC=>SAL_ACC,S=>SELEC_MUX3,MUX3_OUT=>SAL_MUX3);
	
	U8: MUX2 PORT MAP(MUX2_IN_SP=>SAL_SP,MUX2_IN_PC=>SAL_PC,S=>X(1),MUX2_OUT=>SAL_MUX2);

	U9: MBR PORT MAP(MBR_IN_MUX3=>nose1,SAL_MUX3,CLK=>CLK,CE=>SAL_OR4_MBR,ARST=>ARST,SRST=>SRST);

	U10: MUX1 PORT MAP(MUX1_IN_MUX2=>SAL_MUX2,MUX1_IN_MBR=>MBRS,S=>SAL_OR2_MUX1,MUX1_OUT=>SAL_MUX1);

	U11: BUFFER_TRI PORT MAP(BUF_IN_MBR=>SAL_MBR,BUF_RW=>X(1),BUF_OUT=>DATOS);

	U12: MAR PORT MAP(MAR_IN_MUX1=>SAL_MUX1,CE=>SAL_OR3_MAR,ARST=>ARST,SRST=>SRST,MAR_OUT=>DIRECCIONES);

	U13: CONTADOR PORT MAP(CLK=>CLK,CE=>nose2,ARST=>ARST,SRST=>X(1),CONT_OUT=>SAL_CONT);

	U14: UC PORT MAP(UC_IN_IR=>SAL_IR,UC_IN_CONT=>SAL_CONT,UC_IN_FLAGC=>SAL_CCR_C,UC_IN_FLAGZ=>SAL_CCR_Z,UC_OUT=>X);

	U15: OR_2 PORT MAP(OR2_IN=>X(9)&X(8),OR2_OUT=>SAL_OR2_MUX1);

	U16: OR_3 PORT MAP(OR3_IN=>X(9)&X(8)&X(7),OR2_OUT=>SAL_OR3_MAR);

	U17: OR_4 PORT MAP(OR4_IN=>X(4)&X(3)&X(2)&X(1),OR4_OUT=>SAL_OR4_MBR);

	U18: OR_2 PORT MAP(OR2_IN=>X(4)&X(3),OR2_OUT=>SAL_OR2_MUX3_1);

	U19: OR_2 PORT MAP(OR2_IN=>X(4)&X(2),OR2_OUT=>SAL_OR2_MUX3_2);

end estructural;