LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY data_processor1 IS
 PORT (	input : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		alu_sel: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		data_chk: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		output: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		ac_load, clock, mar_load, ram_load, input_sel : IN STD_LOGIC;
		view_ram: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
 	 	mar_in: IN STD_LOGIC_VECTOR (2 DOWNTO 0) );
		
END data_processor1;

ARCHITECTURE sample OF data_processor1 IS
		signal data_in : STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal op1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal op2 : STD_LOGIC_VECTOR (3 DOWNTO 0);
		signal muxToac : STD_LOGIC_VECTOR(3 DOWNTO 0);
		signal MAR : STD_LOGIC_VECTOR (2 DOWNTO 0);
		signal AC : STD_LOGIC_VECTOR (3 DOWNTO 0);
		
		component asynch_ram
			port (
				data_in: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				address: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				wr: IN STD_LOGIC;
				data_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
		end component;

		component simple_alu
			port (
				op1: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				op2: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
				sel: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				alu_out: OUT STD_LOGIC_VECTOR (3 DOWNTO 0) );
		end component;	
		
BEGIN
	
	RAM : asynch_ram	
		port map (data_in => data_in, address => MAR, wr => ram_load, data_out => op2 );

	ALU : simple_alu
		port map (op1 => op1, op2 => op2, sel => alu_sel, alu_out => data_in);
	
	
	muxtoAC <= data_in when input_sel='0' else input;
	
	process(clock)
	BEGIN
	IF (clock' event AND clock='1') THEN
		IF mar_load='1' THEN
			MAR<=MAR_in;
		END IF;
	END IF;
	
	IF (clock' event AND clock='1') THEN
		IF ac_load='1' THEN
			op1<=muxToac;
			output<=muxToac;
		END IF;
	END IF;
	data_chk<=data_in;
	
	view_ram<=op2;
	END process;
	
END sample;


