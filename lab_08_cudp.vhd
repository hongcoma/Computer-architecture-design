LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY lab_08_cudp IS
port(
			clk    : IN STD_LOGIC ;
			reset : in std_logic;
			dp_out	: out std_logic_vector(3 downto 0)
			);
END lab_08_cudp;

ARCHITECTURE src OF lab_08_cudp IS

		signal load: STD_LOGIC ;
		signal clear : STD_LOGIC ;
		signal out_sel : std_logic ;
		signal iNOT10 : std_logic;
		component lab_08_cu
			port(
			clk    : IN STD_LOGIC ;
			load    : out STD_LOGIC ;
			clear    : out STD_LOGIC ;
			reset : in std_logic;
			out_sel	: out std_logic ;
			iNOT10 	: in std_logic			
			);
		end component;

		component lab_08_dp
			port(
			clk    : IN STD_LOGIC ;
			load    : IN STD_LOGIC ;
			clear    : IN STD_LOGIC ;
			out_sel	: IN std_logic ;
			iNOT10 	: out std_logic;
			dp_out	: out std_logic_vector(3 downto 0)
			);
		end component;	
		
BEGIN
	
	CU : lab_08_cu
		port map (clk => clk, load => load, clear => clear, out_sel => out_sel, iNOT10 => iNOT10, reset => reset);

	DP : lab_08_dp
		port map (clk => clk, load => load, clear => clear, out_sel => out_sel, iNOT10 => iNOT10, dp_out => dp_out);
	
END src;


