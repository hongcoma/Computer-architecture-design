LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
ENTITY mux2to1 IS
	PORT (	w0: IN 	STD_LOGIC;
		w1: IN 	STD_LOGIC;
		s : IN 	STD_LOGIC;
		f: OUT 	STD_LOGIC ) ;
END mux2to1 ;
ARCHITECTURE Behavior OF mux2to1 IS	
BEGIN
	f <= w0 when s='0' else
		  w1 when s='1' else
		'Z';
END Behavior ;
