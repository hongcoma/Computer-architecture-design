library ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY one_counter IS
	port (clock : in std_logic;
			reset : in std_logic;
			load : in std_logic;
			input : in std_logic_vector(7 downto 0);
			start : in std_logic;			
			done : buffer std_logic;
			output : buffer std_logic_vector(3 downto 0);
			state : buffer std_logic_vector(1 downto 0);
			A : buffer std_logic_vector(7 downto 0)
			);
END one_counter;

ARCHITECTURE Behavior Of one_counter is
	

Begin
	Process (reset, clock)
	begin
		if reset = '1' then
			A <= (others => '0'); 
			output <= (others => '0');
			state <= "00";
			done <= '0';
		elsif (clock'event and clock = '1') then
			state <= state + '1';
			case(state) is
				when "00" => if load = '0' then
						state <= "00";
					else
						A<=input;
					end if;
				
				when "01" => if start = '0' then
						state <= "01";
					end if;
				
				when "10" => if done = '0' then
					state <= "10";
					if (A = "00000000") then
						done <= '1';
						state <="11";
					else
						if A(0)='1' then
							output <= output + 1;
						end if;
						A(0) <= A(1);
						A(1) <= A(2);
						A(2) <= A(3);
						A(3) <= A(4);
						A(4) <= A(5);
						A(5) <= A(6);
						A(6) <= A(7);
						A(7) <= '0';
					end if;
				end if;
				when others => if done= '1' then
					state <= "11";
					end if;
			end case;
		end if;
	end process;
end behavior;
			
			
			