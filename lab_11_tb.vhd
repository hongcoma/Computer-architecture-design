LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity lab_11_tb is
END lab_11_tb;

Architecture dataflow of lab_11_tb is
	signal reset   : STD_LOGIC :='0';
	signal Clock  : STD_LOGIC :='0';
	signal enter : std_LOGIC :='0';
	signal Input: std_logic_vector(7 downto 0) := "00000110"; --6
	signal Output: std_logic_vector(7 downto 0);
	signal Halt: std_logic :='0';
	constant T : time := 100 ns; 
	signal finished : std_logic := '0';	

	
	begin
   lab_11_tb_unit : 
	entity work.lab_11 port map (reset => reset, Clock => Clock, enter => enter ,Input => Input, Output => Output, Halt => Halt);
 
	clock <= not clock after T/2 when finished /= '1' else '0'; 	
	Reset <= '1', '0' after 50ns;
	enter <= '0', '1' after 1500ns, '0' after 2000ns; 
	stimulus : process begin
		finished <= '0';
	wait until (Reset ='0');
	
	wait until (Halt ='1');
	wait for 2*T;
		finished <= '1';
	wait;
	end process stimulus;
end dataflow;
