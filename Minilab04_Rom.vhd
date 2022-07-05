library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Minilab04_Rom is
  port (clk : in std_logic;
        input : in std_logic_vector(2 downto 0);
        output: out std_logic );
end Minilab04_Rom;

architecture sample of Minilab04_Rom is
	component rom_lab04
		PORT
			(
				address		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
				clock		: IN STD_LOGIC  := '1';
				q		: OUT STD_LOGIC
			);
	end component;
begin
		rom_lab04_inst : rom_lab04 PORT MAP (
			address	 => input,
			clock	 => clk,
			q	 => output
		);
end sample;
