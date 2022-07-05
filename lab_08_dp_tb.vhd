LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity lab_08_dp_tb is
END lab_08_dp_tb;

Architecture dataflow of lab_08_dp_tb is
	signal load   : STD_LOGIC :='0';
	signal clear  : STD_LOGIC :='0';
	signal out_sel: std_logic :='0';
   signal clk : std_logic :='0';  -- input
   signal iNot10 : std_logic :='0'; -- output
   signal dp_out : std_logic_vector(3 downto 0);  -- output
	
	constant T : time := 100 ns; 
	signal finished : std_logic := '0';

	begin
   lab_08_dp_tb_unit : entity work.lab_08_dp port map (load => load, clear => clear, out_sel => out_sel, clk => clk, iNot10 => iNot10, dp_out => dp_out);
 
	clk <= not clk after T/2 when finished /= '1' else '0'; 	
	load <= '1';
	clear	<= '1','0' after 50ns;
	out_sel <= '1';
	stimulus : process begin
		finished <= '0';
	wait until (clear ='0');
	
	wait until (iNot10='0');
	wait for T/2;
		finished <= '1';
	wait;
	end process stimulus;
end dataflow;
