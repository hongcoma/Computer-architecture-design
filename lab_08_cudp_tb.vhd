LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity lab_08_cudp_tb is
END lab_08_cudp_tb;

Architecture dataflow of lab_08_cudp_tb is

	signal reset : std_logic :='0';
   signal clk : std_logic :='0';  -- input
   signal dp_out : std_logic_vector(3 downto 0);  -- output
	
	constant T : time := 100 ns; 
	signal finished : std_logic := '0';

	begin
   lab_08_cudp_tb_unit : entity work.lab_08_cudp port map (reset=>reset, clk => clk, dp_out => dp_out);
	
	clk <= not clk after T/2 when finished /= '1' else '0'; 	
	reset	<= '1','0' after 50ns;

	stimulus : process begin
		finished <= '0';
	wait until (reset ='0');
	wait until (dp_out="1010");
	wait for T/2;
		finished <= '1';
	wait;
	end process stimulus;
end dataflow;
