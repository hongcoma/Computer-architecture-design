LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

Entity lab_08_cu is
	port(
			clk    : in STD_LOGIC ;
			load, clear, out_sel    : out STD_LOGIC ;
			reset : in std_logic;
			iNOT10 	: in std_logic
			);
END lab_08_cu;

Architecture dataflow of lab_08_cu is

	TYPE State IS (S0, S1, S2);
	SIGNAL lab08_state : State;
begin	
	process(reset, clk) is
		begin
			if reset = '1' THEN
				lab08_state <= S0;
			elsif (clk'EVENT AND clk = '1') THEN
				CASE lab08_state is
					WHEN S0 =>
						clear <= '1';
						lab08_state <= S1;
					WHEN S1 =>
						if iNot10 = '1' then
							clear <= '0';
							load <= '1';
							out_sel <= '1';
							lab08_state <= S1;
						else
							clear <= '0';
							load <= '0';
							out_sel <= '0';
							lab08_state <= S2;
						end if;
					WHEN S2 => 
							clear <= '0';
							load <= '0';
							out_sel <= '0';
							lab08_state <= S2;
				end CASE;
			end if;
		end process;			
end dataflow;
