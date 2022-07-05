library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity MicroLogicDesign is
  port( clk, reset : in std_logic;
        w, x, y, z : in std_logic;
		  ld_inc_out : out std_logic;
		  condition_sel_out : out std_logic_vector(1 downto 0);
		  next_address_out : out std_logic_vector(1 downto 0); 
		  q_out : out std_logic_vector(6 downto 0);
		  control_data : out std_logic_vector(2 downto 0));
end MicroLogicDesign;

architecture rtl of MicroLogicDesign is
  signal address: std_logic_vector(1 downto 0);
  signal next_address: std_logic_vector(1 downto 0); 
  signal condition_sel: std_logic_vector(1 downto 0);
  signal cont_data : std_logic_vector(2 downto 0);
  signal ld_inc: std_logic;
  signal nw,nx,ny,nz : std_logic;
  signal q : std_logic_vector(6 downto 0);
  
  signal wxyz_sw : std_logic_vector(3 downto 0);
  signal wxyz_en, wxyz_en1 : std_logic;
  
  type ROM is array(0 to 3) of std_logic_vector(6 downto 0);
  constant rom_7x4: ROM := (
  "0000001",
  "0001010",
  "0110100",
  "1011111"
  );

begin  
  wxyz_en <= w or x or y or z; 
  wxyz_latch : process (clk)
  begin
   if clk'event and clk = '1' then
	  wxyz_en1 <= wxyz_en; -- (q<=d)
	  if (wxyz_en ='1' and wxyz_en1 = '0') then -- (d=‘1’ and q=’0’)
	    wxyz_sw <= w&x&y&z;
	  end if;
	end if;
  end process;

  nw <= not wxyz_sw(3) or wxyz_sw(2) or wxyz_sw(1) or wxyz_sw(0); 
  nx <= wxyz_sw(3) or not wxyz_sw(2) or wxyz_sw(1) or wxyz_sw(0); 
  ny <= wxyz_sw(3) or wxyz_sw(2) or not wxyz_sw(1) or wxyz_sw(0); 
  nz <= wxyz_sw(3) or wxyz_sw(2) or wxyz_sw(1) or not wxyz_sw(0); 
  
  reg : process (clk, reset)
  begin
    if reset = '1' then
	   address <= "00";
	 elsif clk'event and clk='1' then
	   if ld_inc ='1' then
		  address <= next_address;
		else
		  address <= address + 1;
		end if;
    end if;
  end process;
  
  con_mux: process(condition_sel, w, x, y, z)
	begin
	  case condition_sel is
	    when "00" => ld_inc <= w;
		 when "01" => ld_inc <= x;
		 when "10" => ld_inc <= y;
		 when others => ld_inc <= z;
		end case;
  end process;
		 
  q <= rom_7x4(to_integer(unsigned(address)));
	
  ld_inc_out <= ld_inc;
  condition_sel_out <= condition_sel;
  next_address_out <= next_address; 
  next_address <= q(6 downto 5);
  condition_sel <= q(4 downto 3);
  control_data <= q(2 downto 0);
  q_out <= q;
end rtl;
