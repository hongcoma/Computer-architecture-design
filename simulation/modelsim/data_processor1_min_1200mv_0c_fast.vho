-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/28/2022 21:11:25"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	data_processor1 IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	alu_sel : IN std_logic_vector(2 DOWNTO 0);
	data_chk : OUT std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(3 DOWNTO 0);
	ac_load : IN std_logic;
	clock : IN std_logic;
	mar_load : IN std_logic;
	ram_load : IN std_logic;
	input_sel : IN std_logic;
	view_ram : OUT std_logic_vector(3 DOWNTO 0);
	mar_in : IN std_logic_vector(2 DOWNTO 0)
	);
END data_processor1;

-- Design Ports Information
-- data_chk[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[1]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_chk[3]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- view_ram[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- view_ram[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- view_ram[2]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- view_ram[3]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_load	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sel[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_in[0]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_load	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_in[1]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mar_in[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_sel	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ac_load	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF data_processor1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_alu_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_data_chk : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ac_load : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_mar_load : std_logic;
SIGNAL ww_ram_load : std_logic;
SIGNAL ww_input_sel : std_logic;
SIGNAL ww_view_ram : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_mar_in : std_logic_vector(2 DOWNTO 0);
SIGNAL \rtl~3clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~2clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~5clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~4clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~7clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rtl~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \view_ram[0]~output_o\ : std_logic;
SIGNAL \view_ram[1]~output_o\ : std_logic;
SIGNAL \view_ram[2]~output_o\ : std_logic;
SIGNAL \view_ram[3]~output_o\ : std_logic;
SIGNAL \data_chk[0]~output_o\ : std_logic;
SIGNAL \data_chk[1]~output_o\ : std_logic;
SIGNAL \data_chk[2]~output_o\ : std_logic;
SIGNAL \data_chk[3]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \mar_in[2]~input_o\ : std_logic;
SIGNAL \mar_load~input_o\ : std_logic;
SIGNAL \alu_sel[1]~input_o\ : std_logic;
SIGNAL \alu_sel[0]~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input_sel~input_o\ : std_logic;
SIGNAL \muxToac[0]~0_combout\ : std_logic;
SIGNAL \op1[0]~feeder_combout\ : std_logic;
SIGNAL \ac_load~input_o\ : std_logic;
SIGNAL \ram_load~input_o\ : std_logic;
SIGNAL \mar_in[1]~input_o\ : std_logic;
SIGNAL \mar_in[0]~input_o\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \rtl~3clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~12_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \rtl~2clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~0_combout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \rtl~1clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~4_combout\ : std_logic;
SIGNAL \RAM|ram_block~34_combout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \rtl~0clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~8_combout\ : std_logic;
SIGNAL \RAM|ram_block~35_combout\ : std_logic;
SIGNAL \RAM|data_out[0]~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~3_combout\ : std_logic;
SIGNAL \alu_sel[2]~input_o\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \ALU|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|Add0~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2_cout\ : std_logic;
SIGNAL \ALU|Add0~3_combout\ : std_logic;
SIGNAL \ALU|Mux3~4_combout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \rtl~7clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~28_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \rtl~4clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~20_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \rtl~5clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~24_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \rtl~6clkctrl_outclk\ : std_logic;
SIGNAL \RAM|ram_block~16_combout\ : std_logic;
SIGNAL \RAM|ram_block~32_combout\ : std_logic;
SIGNAL \RAM|ram_block~33_combout\ : std_logic;
SIGNAL \RAM|ram_block~48_combout\ : std_logic;
SIGNAL \RAM|ram_block~21_combout\ : std_logic;
SIGNAL \RAM|ram_block~29_combout\ : std_logic;
SIGNAL \RAM|ram_block~17_combout\ : std_logic;
SIGNAL \RAM|ram_block~25_combout\ : std_logic;
SIGNAL \RAM|ram_block~36_combout\ : std_logic;
SIGNAL \RAM|ram_block~37_combout\ : std_logic;
SIGNAL \RAM|data_out[1]~1_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \muxToac[1]~1_combout\ : std_logic;
SIGNAL \ALU|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|Add0~5_combout\ : std_logic;
SIGNAL \ALU|Add0~4\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Mux2~2_combout\ : std_logic;
SIGNAL \RAM|ram_block~13_combout\ : std_logic;
SIGNAL \RAM|ram_block~9_combout\ : std_logic;
SIGNAL \RAM|ram_block~1_combout\ : std_logic;
SIGNAL \RAM|ram_block~5_combout\ : std_logic;
SIGNAL \RAM|ram_block~38_combout\ : std_logic;
SIGNAL \RAM|ram_block~39_combout\ : std_logic;
SIGNAL \RAM|ram_block~49_combout\ : std_logic;
SIGNAL \RAM|ram_block~14_combout\ : std_logic;
SIGNAL \RAM|ram_block~10_combout\ : std_logic;
SIGNAL \RAM|ram_block~6_combout\ : std_logic;
SIGNAL \RAM|ram_block~2_combout\ : std_logic;
SIGNAL \RAM|ram_block~42_combout\ : std_logic;
SIGNAL \RAM|ram_block~43_combout\ : std_logic;
SIGNAL \RAM|data_out[2]~2_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \muxToac[2]~2_combout\ : std_logic;
SIGNAL \ALU|Mux1~1_combout\ : std_logic;
SIGNAL \ALU|Mux1~0_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9_combout\ : std_logic;
SIGNAL \ALU|Mux1~2_combout\ : std_logic;
SIGNAL \RAM|ram_block~22_combout\ : std_logic;
SIGNAL \RAM|ram_block~26_combout\ : std_logic;
SIGNAL \RAM|ram_block~18_combout\ : std_logic;
SIGNAL \RAM|ram_block~40_combout\ : std_logic;
SIGNAL \RAM|ram_block~30_combout\ : std_logic;
SIGNAL \RAM|ram_block~41_combout\ : std_logic;
SIGNAL \RAM|ram_block~50_combout\ : std_logic;
SIGNAL \RAM|ram_block~31_combout\ : std_logic;
SIGNAL \RAM|ram_block~23_combout\ : std_logic;
SIGNAL \RAM|ram_block~19_combout\ : std_logic;
SIGNAL \RAM|ram_block~27_combout\ : std_logic;
SIGNAL \RAM|ram_block~44_combout\ : std_logic;
SIGNAL \RAM|ram_block~45_combout\ : std_logic;
SIGNAL \RAM|data_out[3]~3_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \muxToac[3]~3_combout\ : std_logic;
SIGNAL \ALU|Mux0~1_combout\ : std_logic;
SIGNAL \ALU|Mux0~0_combout\ : std_logic;
SIGNAL \ALU|Mux0~2_combout\ : std_logic;
SIGNAL \ALU|Add0~11_combout\ : std_logic;
SIGNAL \ALU|Add0~10\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Mux0~3_combout\ : std_logic;
SIGNAL \RAM|ram_block~15_combout\ : std_logic;
SIGNAL \RAM|ram_block~11_combout\ : std_logic;
SIGNAL \RAM|ram_block~7_combout\ : std_logic;
SIGNAL \RAM|ram_block~3_combout\ : std_logic;
SIGNAL \RAM|ram_block~46_combout\ : std_logic;
SIGNAL \RAM|ram_block~47_combout\ : std_logic;
SIGNAL \RAM|ram_block~51_combout\ : std_logic;
SIGNAL \output[0]~reg0_q\ : std_logic;
SIGNAL \output[1]~reg0_q\ : std_logic;
SIGNAL \output[2]~reg0_q\ : std_logic;
SIGNAL \output[3]~reg0_q\ : std_logic;
SIGNAL op1 : std_logic_vector(3 DOWNTO 0);
SIGNAL MAR : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_ram_load~input_o\ : std_logic;

BEGIN

ww_input <= input;
ww_alu_sel <= alu_sel;
data_chk <= ww_data_chk;
output <= ww_output;
ww_ac_load <= ac_load;
ww_clock <= clock;
ww_mar_load <= mar_load;
ww_ram_load <= ram_load;
ww_input_sel <= input_sel;
view_ram <= ww_view_ram;
ww_mar_in <= mar_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rtl~3clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~3_combout\);

\rtl~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~0_combout\);

\rtl~2clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~2_combout\);

\rtl~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~1_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\rtl~5clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~5_combout\);

\rtl~4clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~4_combout\);

\rtl~7clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~7_combout\);

\rtl~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rtl~6_combout\);
\ALT_INV_ram_load~input_o\ <= NOT \ram_load~input_o\;

-- Location: IOOBUF_X5_Y0_N16
\view_ram[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block~48_combout\,
	oe => \ALT_INV_ram_load~input_o\,
	devoe => ww_devoe,
	o => \view_ram[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\view_ram[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block~49_combout\,
	oe => \ALT_INV_ram_load~input_o\,
	devoe => ww_devoe,
	o => \view_ram[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\view_ram[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block~50_combout\,
	oe => \ALT_INV_ram_load~input_o\,
	devoe => ww_devoe,
	o => \view_ram[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\view_ram[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram_block~51_combout\,
	oe => \ALT_INV_ram_load~input_o\,
	devoe => ww_devoe,
	o => \view_ram[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data_chk[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \data_chk[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\data_chk[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[1]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\data_chk[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux1~2_combout\,
	devoe => ww_devoe,
	o => \data_chk[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\data_chk[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU|Mux0~3_combout\,
	devoe => ww_devoe,
	o => \data_chk[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output[3]~reg0_q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\mar_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_in(2),
	o => \mar_in[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\mar_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_load,
	o => \mar_load~input_o\);

-- Location: FF_X9_Y7_N5
\MAR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \mar_in[2]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(2));

-- Location: IOIBUF_X0_Y9_N8
\alu_sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(1),
	o => \alu_sel[1]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\alu_sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(0),
	o => \alu_sel[0]~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X7_Y24_N1
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\input_sel~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_sel,
	o => \input_sel~input_o\);

-- Location: LCCOMB_X8_Y8_N28
\muxToac[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxToac[0]~0_combout\ = (\input_sel~input_o\ & (\input[0]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datac => \input_sel~input_o\,
	datad => \ALU|Mux3~4_combout\,
	combout => \muxToac[0]~0_combout\);

-- Location: LCCOMB_X8_Y8_N8
\op1[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \op1[0]~feeder_combout\ = \muxToac[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \muxToac[0]~0_combout\,
	combout => \op1[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y5_N15
\ac_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ac_load,
	o => \ac_load~input_o\);

-- Location: FF_X8_Y8_N9
\op1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \op1[0]~feeder_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(0));

-- Location: IOIBUF_X0_Y7_N1
\ram_load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_load,
	o => \ram_load~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\mar_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_in(1),
	o => \mar_in[1]~input_o\);

-- Location: FF_X8_Y7_N11
\MAR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \mar_in[1]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(1));

-- Location: IOIBUF_X0_Y18_N22
\mar_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mar_in(0),
	o => \mar_in[0]~input_o\);

-- Location: FF_X8_Y7_N23
\MAR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \mar_in[0]~input_o\,
	sload => VCC,
	ena => \mar_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MAR(0));

-- Location: LCCOMB_X9_Y7_N18
\rtl~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (MAR(0) & (!MAR(2) & (\ram_load~input_o\ & MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(2),
	datac => \ram_load~input_o\,
	datad => MAR(1),
	combout => \rtl~3_combout\);

-- Location: CLKCTRL_G8
\rtl~3clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~3clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~3clkctrl_outclk\);

-- Location: LCCOMB_X8_Y9_N2
\RAM|ram_block~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~12_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\RAM|ram_block~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~12_combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RAM|ram_block~12_combout\);

-- Location: LCCOMB_X9_Y7_N28
\rtl~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\ram_load~input_o\ & (!MAR(0) & (!MAR(2) & !MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => MAR(0),
	datac => MAR(2),
	datad => MAR(1),
	combout => \rtl~2_combout\);

-- Location: CLKCTRL_G4
\rtl~2clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~2clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~2clkctrl_outclk\);

-- Location: LCCOMB_X8_Y7_N4
\RAM|ram_block~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~0_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RAM|ram_block~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~0_combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \rtl~2clkctrl_outclk\,
	combout => \RAM|ram_block~0_combout\);

-- Location: LCCOMB_X9_Y7_N12
\rtl~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (MAR(0) & (!MAR(2) & (\ram_load~input_o\ & !MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(2),
	datac => \ram_load~input_o\,
	datad => MAR(1),
	combout => \rtl~1_combout\);

-- Location: CLKCTRL_G6
\rtl~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~1clkctrl_outclk\);

-- Location: LCCOMB_X8_Y7_N30
\RAM|ram_block~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~4_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\RAM|ram_block~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~4_combout\,
	datac => \ALU|Mux3~4_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \RAM|ram_block~4_combout\);

-- Location: LCCOMB_X8_Y7_N8
\RAM|ram_block~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~34_combout\ = (MAR(0) & (((\RAM|ram_block~4_combout\) # (MAR(1))))) # (!MAR(0) & (\RAM|ram_block~0_combout\ & ((!MAR(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => \RAM|ram_block~0_combout\,
	datac => \RAM|ram_block~4_combout\,
	datad => MAR(1),
	combout => \RAM|ram_block~34_combout\);

-- Location: LCCOMB_X9_Y7_N24
\rtl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!MAR(0) & (!MAR(2) & (\ram_load~input_o\ & MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(2),
	datac => \ram_load~input_o\,
	datad => MAR(1),
	combout => \rtl~0_combout\);

-- Location: CLKCTRL_G7
\rtl~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~0clkctrl_outclk\);

-- Location: LCCOMB_X8_Y9_N28
\RAM|ram_block~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~8_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM|ram_block~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux3~4_combout\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \RAM|ram_block~8_combout\,
	combout => \RAM|ram_block~8_combout\);

-- Location: LCCOMB_X8_Y7_N28
\RAM|ram_block~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~35_combout\ = (MAR(1) & ((\RAM|ram_block~34_combout\ & (\RAM|ram_block~12_combout\)) # (!\RAM|ram_block~34_combout\ & ((\RAM|ram_block~8_combout\))))) # (!MAR(1) & (((\RAM|ram_block~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block~12_combout\,
	datac => \RAM|ram_block~34_combout\,
	datad => \RAM|ram_block~8_combout\,
	combout => \RAM|ram_block~35_combout\);

-- Location: LCCOMB_X8_Y7_N16
\RAM|data_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|data_out[0]~0_combout\ = (\ram_load~input_o\) # ((MAR(2) & (\RAM|ram_block~33_combout\)) # (!MAR(2) & ((\RAM|ram_block~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => MAR(2),
	datac => \RAM|ram_block~33_combout\,
	datad => \RAM|ram_block~35_combout\,
	combout => \RAM|data_out[0]~0_combout\);

-- Location: LCCOMB_X8_Y8_N22
\ALU|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~3_combout\ = (\alu_sel[1]~input_o\ & (op1(0) $ (((\alu_sel[0]~input_o\) # (\RAM|data_out[0]~0_combout\))))) # (!\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\ & ((op1(0)) # (\RAM|data_out[0]~0_combout\))) # (!\alu_sel[0]~input_o\ & (op1(0) & 
-- \RAM|data_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => op1(0),
	datad => \RAM|data_out[0]~0_combout\,
	combout => \ALU|Mux3~3_combout\);

-- Location: IOIBUF_X5_Y24_N8
\alu_sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sel(2),
	o => \alu_sel[2]~input_o\);

-- Location: LCCOMB_X6_Y8_N12
\ALU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (\alu_sel[1]~input_o\) # (\alu_sel[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel[1]~input_o\,
	datad => \alu_sel[2]~input_o\,
	combout => \ALU|Mux3~0_combout\);

-- Location: LCCOMB_X7_Y9_N8
\ALU|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = (\alu_sel[2]~input_o\) # ((!\alu_sel[1]~input_o\ & \alu_sel[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[2]~input_o\,
	datac => \alu_sel[1]~input_o\,
	datad => \alu_sel[0]~input_o\,
	combout => \ALU|Mux3~1_combout\);

-- Location: LCCOMB_X8_Y7_N6
\ALU|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~2_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\)))) # (!\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & (\RAM|data_out[0]~0_combout\)) # (!\ALU|Mux3~1_combout\ & ((op1(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \RAM|data_out[0]~0_combout\,
	datac => \ALU|Mux3~1_combout\,
	datad => op1(0),
	combout => \ALU|Mux3~2_combout\);

-- Location: LCCOMB_X8_Y7_N12
\ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~0_combout\ = \alu_sel[0]~input_o\ $ (\RAM|data_out[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \alu_sel[0]~input_o\,
	datad => \RAM|data_out[0]~0_combout\,
	combout => \ALU|Add0~0_combout\);

-- Location: LCCOMB_X7_Y7_N14
\ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_cout\ = CARRY(\alu_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[0]~input_o\,
	datad => VCC,
	cout => \ALU|Add0~2_cout\);

-- Location: LCCOMB_X7_Y7_N16
\ALU|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~3_combout\ = (op1(0) & ((\ALU|Add0~0_combout\ & (\ALU|Add0~2_cout\ & VCC)) # (!\ALU|Add0~0_combout\ & (!\ALU|Add0~2_cout\)))) # (!op1(0) & ((\ALU|Add0~0_combout\ & (!\ALU|Add0~2_cout\)) # (!\ALU|Add0~0_combout\ & ((\ALU|Add0~2_cout\) # (GND)))))
-- \ALU|Add0~4\ = CARRY((op1(0) & (!\ALU|Add0~0_combout\ & !\ALU|Add0~2_cout\)) # (!op1(0) & ((!\ALU|Add0~2_cout\) # (!\ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => op1(0),
	datab => \ALU|Add0~0_combout\,
	datad => VCC,
	cin => \ALU|Add0~2_cout\,
	combout => \ALU|Add0~3_combout\,
	cout => \ALU|Add0~4\);

-- Location: LCCOMB_X8_Y8_N24
\ALU|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux3~4_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux3~2_combout\ & (\ALU|Mux3~3_combout\)) # (!\ALU|Mux3~2_combout\ & ((\ALU|Add0~3_combout\))))) # (!\ALU|Mux3~0_combout\ & (((\ALU|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~3_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => \ALU|Mux3~2_combout\,
	datad => \ALU|Add0~3_combout\,
	combout => \ALU|Mux3~4_combout\);

-- Location: LCCOMB_X9_Y7_N2
\rtl~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (MAR(0) & (MAR(2) & (\ram_load~input_o\ & MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(2),
	datac => \ram_load~input_o\,
	datad => MAR(1),
	combout => \rtl~7_combout\);

-- Location: CLKCTRL_G9
\rtl~7clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~7clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~7clkctrl_outclk\);

-- Location: LCCOMB_X8_Y8_N30
\RAM|ram_block~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~28_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\ALU|Mux3~4_combout\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RAM|ram_block~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~28_combout\,
	datab => \ALU|Mux3~4_combout\,
	datac => \rtl~7clkctrl_outclk\,
	combout => \RAM|ram_block~28_combout\);

-- Location: LCCOMB_X9_Y7_N0
\rtl~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\ram_load~input_o\ & (MAR(0) & (MAR(2) & !MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => MAR(0),
	datac => MAR(2),
	datad => MAR(1),
	combout => \rtl~4_combout\);

-- Location: CLKCTRL_G3
\rtl~4clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~4clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~4clkctrl_outclk\);

-- Location: LCCOMB_X8_Y8_N26
\RAM|ram_block~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~20_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\rtl~4clkctrl_outclk\) & ((\RAM|ram_block~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~4_combout\,
	datac => \RAM|ram_block~20_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \RAM|ram_block~20_combout\);

-- Location: LCCOMB_X9_Y7_N20
\rtl~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (!MAR(0) & (MAR(2) & (\ram_load~input_o\ & MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(2),
	datac => \ram_load~input_o\,
	datad => MAR(1),
	combout => \rtl~5_combout\);

-- Location: CLKCTRL_G0
\rtl~5clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~5clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~5clkctrl_outclk\);

-- Location: LCCOMB_X8_Y8_N4
\RAM|ram_block~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~24_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\rtl~5clkctrl_outclk\) & ((\RAM|ram_block~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~4_combout\,
	datac => \RAM|ram_block~24_combout\,
	datad => \rtl~5clkctrl_outclk\,
	combout => \RAM|ram_block~24_combout\);

-- Location: LCCOMB_X9_Y7_N8
\rtl~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (!MAR(0) & (MAR(2) & (\ram_load~input_o\ & !MAR(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => MAR(2),
	datac => \ram_load~input_o\,
	datad => MAR(1),
	combout => \rtl~6_combout\);

-- Location: CLKCTRL_G1
\rtl~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rtl~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rtl~6clkctrl_outclk\);

-- Location: LCCOMB_X9_Y8_N12
\RAM|ram_block~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~16_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & (\ALU|Mux3~4_combout\)) # (!GLOBAL(\rtl~6clkctrl_outclk\) & ((\RAM|ram_block~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~4_combout\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \RAM|ram_block~16_combout\,
	combout => \RAM|ram_block~16_combout\);

-- Location: LCCOMB_X8_Y7_N24
\RAM|ram_block~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~32_combout\ = (MAR(0) & (((MAR(1))))) # (!MAR(0) & ((MAR(1) & (\RAM|ram_block~24_combout\)) # (!MAR(1) & ((\RAM|ram_block~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => \RAM|ram_block~24_combout\,
	datac => \RAM|ram_block~16_combout\,
	datad => MAR(1),
	combout => \RAM|ram_block~32_combout\);

-- Location: LCCOMB_X8_Y7_N26
\RAM|ram_block~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~33_combout\ = (MAR(0) & ((\RAM|ram_block~32_combout\ & (\RAM|ram_block~28_combout\)) # (!\RAM|ram_block~32_combout\ & ((\RAM|ram_block~20_combout\))))) # (!MAR(0) & (((\RAM|ram_block~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~28_combout\,
	datab => MAR(0),
	datac => \RAM|ram_block~20_combout\,
	datad => \RAM|ram_block~32_combout\,
	combout => \RAM|ram_block~33_combout\);

-- Location: LCCOMB_X8_Y6_N4
\RAM|ram_block~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~48_combout\ = (MAR(2) & (\RAM|ram_block~33_combout\)) # (!MAR(2) & ((\RAM|ram_block~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datac => \RAM|ram_block~33_combout\,
	datad => \RAM|ram_block~35_combout\,
	combout => \RAM|ram_block~48_combout\);

-- Location: LCCOMB_X8_Y6_N30
\RAM|ram_block~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~21_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\RAM|ram_block~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~21_combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \rtl~4clkctrl_outclk\,
	combout => \RAM|ram_block~21_combout\);

-- Location: LCCOMB_X8_Y6_N0
\RAM|ram_block~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~29_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RAM|ram_block~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~29_combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \RAM|ram_block~29_combout\);

-- Location: LCCOMB_X10_Y7_N28
\RAM|ram_block~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~17_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\RAM|ram_block~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~17_combout\,
	datac => \rtl~6clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block~17_combout\);

-- Location: LCCOMB_X8_Y5_N16
\RAM|ram_block~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~25_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RAM|ram_block~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~25_combout\,
	datac => \rtl~5clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block~25_combout\);

-- Location: LCCOMB_X9_Y7_N16
\RAM|ram_block~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~36_combout\ = (MAR(1) & (((\RAM|ram_block~25_combout\) # (MAR(0))))) # (!MAR(1) & (\RAM|ram_block~17_combout\ & ((!MAR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block~17_combout\,
	datac => \RAM|ram_block~25_combout\,
	datad => MAR(0),
	combout => \RAM|ram_block~36_combout\);

-- Location: LCCOMB_X9_Y7_N14
\RAM|ram_block~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~37_combout\ = (MAR(0) & ((\RAM|ram_block~36_combout\ & ((\RAM|ram_block~29_combout\))) # (!\RAM|ram_block~36_combout\ & (\RAM|ram_block~21_combout\)))) # (!MAR(0) & (((\RAM|ram_block~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~21_combout\,
	datab => MAR(0),
	datac => \RAM|ram_block~29_combout\,
	datad => \RAM|ram_block~36_combout\,
	combout => \RAM|ram_block~37_combout\);

-- Location: LCCOMB_X7_Y7_N24
\RAM|data_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|data_out[1]~1_combout\ = (\ram_load~input_o\) # ((MAR(2) & (\RAM|ram_block~37_combout\)) # (!MAR(2) & ((\RAM|ram_block~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => MAR(2),
	datac => \RAM|ram_block~37_combout\,
	datad => \RAM|ram_block~39_combout\,
	combout => \RAM|data_out[1]~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X7_Y7_N26
\muxToac[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxToac[1]~1_combout\ = (\input_sel~input_o\ & (\input[1]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_sel~input_o\,
	datab => \input[1]~input_o\,
	datad => \ALU|Mux2~2_combout\,
	combout => \muxToac[1]~1_combout\);

-- Location: FF_X7_Y7_N7
\op1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \muxToac[1]~1_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(1));

-- Location: LCCOMB_X8_Y8_N10
\ALU|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~1_combout\ = (\alu_sel[1]~input_o\ & (op1(1) $ (((\alu_sel[0]~input_o\) # (\RAM|data_out[1]~1_combout\))))) # (!\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\ & ((op1(1)) # (\RAM|data_out[1]~1_combout\))) # (!\alu_sel[0]~input_o\ & (op1(1) & 
-- \RAM|data_out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => op1(1),
	datad => \RAM|data_out[1]~1_combout\,
	combout => \ALU|Mux2~1_combout\);

-- Location: LCCOMB_X7_Y7_N6
\ALU|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~5_combout\ = \alu_sel[0]~input_o\ $ (\RAM|data_out[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[0]~input_o\,
	datad => \RAM|data_out[1]~1_combout\,
	combout => \ALU|Add0~5_combout\);

-- Location: LCCOMB_X7_Y7_N18
\ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = ((\ALU|Add0~5_combout\ $ (op1(1) $ (!\ALU|Add0~4\)))) # (GND)
-- \ALU|Add0~7\ = CARRY((\ALU|Add0~5_combout\ & ((op1(1)) # (!\ALU|Add0~4\))) # (!\ALU|Add0~5_combout\ & (op1(1) & !\ALU|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~5_combout\,
	datab => op1(1),
	datad => VCC,
	cin => \ALU|Add0~4\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X7_Y7_N12
\ALU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\) # ((\ALU|Add0~6_combout\)))) # (!\ALU|Mux3~0_combout\ & (!\ALU|Mux3~1_combout\ & (op1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => op1(1),
	datad => \ALU|Add0~6_combout\,
	combout => \ALU|Mux2~0_combout\);

-- Location: LCCOMB_X7_Y7_N10
\ALU|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux2~2_combout\ = (\ALU|Mux3~1_combout\ & ((\ALU|Mux2~0_combout\ & ((\ALU|Mux2~1_combout\))) # (!\ALU|Mux2~0_combout\ & (\RAM|data_out[1]~1_combout\)))) # (!\ALU|Mux3~1_combout\ & (((\ALU|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|data_out[1]~1_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => \ALU|Mux2~1_combout\,
	datad => \ALU|Mux2~0_combout\,
	combout => \ALU|Mux2~2_combout\);

-- Location: LCCOMB_X9_Y7_N26
\RAM|ram_block~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~13_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\rtl~3clkctrl_outclk\) & ((\RAM|ram_block~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux2~2_combout\,
	datac => \RAM|ram_block~13_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RAM|ram_block~13_combout\);

-- Location: LCCOMB_X10_Y7_N10
\RAM|ram_block~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~9_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM|ram_block~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux2~2_combout\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \RAM|ram_block~9_combout\,
	combout => \RAM|ram_block~9_combout\);

-- Location: LCCOMB_X9_Y7_N10
\RAM|ram_block~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~1_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\ALU|Mux2~2_combout\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RAM|ram_block~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~1_combout\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \ALU|Mux2~2_combout\,
	combout => \RAM|ram_block~1_combout\);

-- Location: LCCOMB_X9_Y7_N30
\RAM|ram_block~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~5_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & (\ALU|Mux2~2_combout\)) # (!GLOBAL(\rtl~1clkctrl_outclk\) & ((\RAM|ram_block~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1clkctrl_outclk\,
	datab => \ALU|Mux2~2_combout\,
	datac => \RAM|ram_block~5_combout\,
	combout => \RAM|ram_block~5_combout\);

-- Location: LCCOMB_X9_Y7_N6
\RAM|ram_block~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~38_combout\ = (MAR(1) & (((MAR(0))))) # (!MAR(1) & ((MAR(0) & ((\RAM|ram_block~5_combout\))) # (!MAR(0) & (\RAM|ram_block~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~1_combout\,
	datab => MAR(1),
	datac => \RAM|ram_block~5_combout\,
	datad => MAR(0),
	combout => \RAM|ram_block~38_combout\);

-- Location: LCCOMB_X9_Y7_N22
\RAM|ram_block~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~39_combout\ = (MAR(1) & ((\RAM|ram_block~38_combout\ & (\RAM|ram_block~13_combout\)) # (!\RAM|ram_block~38_combout\ & ((\RAM|ram_block~9_combout\))))) # (!MAR(1) & (((\RAM|ram_block~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~13_combout\,
	datab => MAR(1),
	datac => \RAM|ram_block~9_combout\,
	datad => \RAM|ram_block~38_combout\,
	combout => \RAM|ram_block~39_combout\);

-- Location: LCCOMB_X9_Y7_N4
\RAM|ram_block~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~49_combout\ = (MAR(2) & ((\RAM|ram_block~37_combout\))) # (!MAR(2) & (\RAM|ram_block~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~39_combout\,
	datab => \RAM|ram_block~37_combout\,
	datac => MAR(2),
	combout => \RAM|ram_block~49_combout\);

-- Location: LCCOMB_X7_Y7_N30
\RAM|ram_block~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~14_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\RAM|ram_block~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~14_combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RAM|ram_block~14_combout\);

-- Location: LCCOMB_X6_Y7_N20
\RAM|ram_block~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~10_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\ALU|Mux1~2_combout\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM|ram_block~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux1~2_combout\,
	datac => \rtl~0clkctrl_outclk\,
	datad => \RAM|ram_block~10_combout\,
	combout => \RAM|ram_block~10_combout\);

-- Location: LCCOMB_X8_Y7_N2
\RAM|ram_block~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~6_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\RAM|ram_block~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~6_combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \RAM|ram_block~6_combout\);

-- Location: LCCOMB_X8_Y7_N10
\RAM|ram_block~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~2_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RAM|ram_block~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~2_combout\,
	datab => \rtl~2clkctrl_outclk\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block~2_combout\);

-- Location: LCCOMB_X8_Y7_N20
\RAM|ram_block~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~42_combout\ = (MAR(1) & (((MAR(0))))) # (!MAR(1) & ((MAR(0) & (\RAM|ram_block~6_combout\)) # (!MAR(0) & ((\RAM|ram_block~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block~6_combout\,
	datac => MAR(0),
	datad => \RAM|ram_block~2_combout\,
	combout => \RAM|ram_block~42_combout\);

-- Location: LCCOMB_X8_Y7_N0
\RAM|ram_block~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~43_combout\ = (MAR(1) & ((\RAM|ram_block~42_combout\ & (\RAM|ram_block~14_combout\)) # (!\RAM|ram_block~42_combout\ & ((\RAM|ram_block~10_combout\))))) # (!MAR(1) & (((\RAM|ram_block~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block~14_combout\,
	datac => \RAM|ram_block~10_combout\,
	datad => \RAM|ram_block~42_combout\,
	combout => \RAM|ram_block~43_combout\);

-- Location: LCCOMB_X7_Y7_N4
\RAM|data_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|data_out[2]~2_combout\ = (\ram_load~input_o\) # ((MAR(2) & ((\RAM|ram_block~41_combout\))) # (!MAR(2) & (\RAM|ram_block~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_load~input_o\,
	datab => MAR(2),
	datac => \RAM|ram_block~43_combout\,
	datad => \RAM|ram_block~41_combout\,
	combout => \RAM|data_out[2]~2_combout\);

-- Location: IOIBUF_X0_Y11_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X7_Y7_N8
\muxToac[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxToac[2]~2_combout\ = (\input_sel~input_o\ & (\input[2]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_sel~input_o\,
	datac => \input[2]~input_o\,
	datad => \ALU|Mux1~2_combout\,
	combout => \muxToac[2]~2_combout\);

-- Location: FF_X7_Y7_N3
\op1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \muxToac[2]~2_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(2));

-- Location: LCCOMB_X7_Y7_N28
\ALU|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~1_combout\ = (\alu_sel[1]~input_o\ & (op1(2) $ (((\alu_sel[0]~input_o\) # (\RAM|data_out[2]~2_combout\))))) # (!\alu_sel[1]~input_o\ & ((\alu_sel[0]~input_o\ & ((\RAM|data_out[2]~2_combout\) # (op1(2)))) # (!\alu_sel[0]~input_o\ & 
-- (\RAM|data_out[2]~2_combout\ & op1(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[1]~input_o\,
	datab => \alu_sel[0]~input_o\,
	datac => \RAM|data_out[2]~2_combout\,
	datad => op1(2),
	combout => \ALU|Mux1~1_combout\);

-- Location: LCCOMB_X6_Y7_N12
\ALU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~0_combout\ = (\ALU|Mux3~0_combout\ & (((\ALU|Mux3~1_combout\)))) # (!\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & (\RAM|data_out[2]~2_combout\)) # (!\ALU|Mux3~1_combout\ & ((op1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|data_out[2]~2_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => \ALU|Mux3~1_combout\,
	datad => op1(2),
	combout => \ALU|Mux1~0_combout\);

-- Location: LCCOMB_X7_Y7_N2
\ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = \alu_sel[0]~input_o\ $ (\RAM|data_out[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sel[0]~input_o\,
	datad => \RAM|data_out[2]~2_combout\,
	combout => \ALU|Add0~8_combout\);

-- Location: LCCOMB_X7_Y7_N20
\ALU|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~9_combout\ = (op1(2) & ((\ALU|Add0~8_combout\ & (\ALU|Add0~7\ & VCC)) # (!\ALU|Add0~8_combout\ & (!\ALU|Add0~7\)))) # (!op1(2) & ((\ALU|Add0~8_combout\ & (!\ALU|Add0~7\)) # (!\ALU|Add0~8_combout\ & ((\ALU|Add0~7\) # (GND)))))
-- \ALU|Add0~10\ = CARRY((op1(2) & (!\ALU|Add0~8_combout\ & !\ALU|Add0~7\)) # (!op1(2) & ((!\ALU|Add0~7\) # (!\ALU|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => op1(2),
	datab => \ALU|Add0~8_combout\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~9_combout\,
	cout => \ALU|Add0~10\);

-- Location: LCCOMB_X7_Y7_N0
\ALU|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux1~2_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux1~0_combout\ & (\ALU|Mux1~1_combout\)) # (!\ALU|Mux1~0_combout\ & ((\ALU|Add0~9_combout\))))) # (!\ALU|Mux3~0_combout\ & (((\ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux1~1_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => \ALU|Mux1~0_combout\,
	datad => \ALU|Add0~9_combout\,
	combout => \ALU|Mux1~2_combout\);

-- Location: LCCOMB_X7_Y6_N24
\RAM|ram_block~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~22_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\RAM|ram_block~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~22_combout\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block~22_combout\);

-- Location: LCCOMB_X8_Y8_N12
\RAM|ram_block~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~26_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RAM|ram_block~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5clkctrl_outclk\,
	datac => \RAM|ram_block~26_combout\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block~26_combout\);

-- Location: LCCOMB_X8_Y7_N22
\RAM|ram_block~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~18_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\RAM|ram_block~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6clkctrl_outclk\,
	datab => \RAM|ram_block~18_combout\,
	datad => \ALU|Mux1~2_combout\,
	combout => \RAM|ram_block~18_combout\);

-- Location: LCCOMB_X8_Y7_N14
\RAM|ram_block~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~40_combout\ = (MAR(1) & ((\RAM|ram_block~26_combout\) # ((MAR(0))))) # (!MAR(1) & (((!MAR(0) & \RAM|ram_block~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(1),
	datab => \RAM|ram_block~26_combout\,
	datac => MAR(0),
	datad => \RAM|ram_block~18_combout\,
	combout => \RAM|ram_block~40_combout\);

-- Location: LCCOMB_X7_Y6_N26
\RAM|ram_block~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~30_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\ALU|Mux1~2_combout\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RAM|ram_block~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~30_combout\,
	datac => \ALU|Mux1~2_combout\,
	datad => \rtl~7clkctrl_outclk\,
	combout => \RAM|ram_block~30_combout\);

-- Location: LCCOMB_X8_Y7_N18
\RAM|ram_block~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~41_combout\ = (MAR(0) & ((\RAM|ram_block~40_combout\ & ((\RAM|ram_block~30_combout\))) # (!\RAM|ram_block~40_combout\ & (\RAM|ram_block~22_combout\)))) # (!MAR(0) & (((\RAM|ram_block~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => \RAM|ram_block~22_combout\,
	datac => \RAM|ram_block~40_combout\,
	datad => \RAM|ram_block~30_combout\,
	combout => \RAM|ram_block~41_combout\);

-- Location: LCCOMB_X7_Y8_N20
\RAM|ram_block~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~50_combout\ = (MAR(2) & (\RAM|ram_block~41_combout\)) # (!MAR(2) & ((\RAM|ram_block~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~41_combout\,
	datab => MAR(2),
	datac => \RAM|ram_block~43_combout\,
	combout => \RAM|ram_block~50_combout\);

-- Location: LCCOMB_X5_Y8_N28
\RAM|ram_block~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~31_combout\ = (GLOBAL(\rtl~7clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~7clkctrl_outclk\) & (\RAM|ram_block~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~31_combout\,
	datac => \rtl~7clkctrl_outclk\,
	datad => \ALU|Mux0~3_combout\,
	combout => \RAM|ram_block~31_combout\);

-- Location: LCCOMB_X6_Y8_N26
\RAM|ram_block~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~23_combout\ = (GLOBAL(\rtl~4clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~4clkctrl_outclk\) & (\RAM|ram_block~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~23_combout\,
	datac => \rtl~4clkctrl_outclk\,
	datad => \ALU|Mux0~3_combout\,
	combout => \RAM|ram_block~23_combout\);

-- Location: LCCOMB_X5_Y7_N26
\RAM|ram_block~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~19_combout\ = (GLOBAL(\rtl~6clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~6clkctrl_outclk\) & (\RAM|ram_block~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~19_combout\,
	datac => \ALU|Mux0~3_combout\,
	datad => \rtl~6clkctrl_outclk\,
	combout => \RAM|ram_block~19_combout\);

-- Location: LCCOMB_X6_Y8_N4
\RAM|ram_block~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~27_combout\ = (GLOBAL(\rtl~5clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~5clkctrl_outclk\) & (\RAM|ram_block~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5clkctrl_outclk\,
	datac => \RAM|ram_block~27_combout\,
	datad => \ALU|Mux0~3_combout\,
	combout => \RAM|ram_block~27_combout\);

-- Location: LCCOMB_X6_Y7_N2
\RAM|ram_block~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~44_combout\ = (MAR(0) & (((MAR(1))))) # (!MAR(0) & ((MAR(1) & ((\RAM|ram_block~27_combout\))) # (!MAR(1) & (\RAM|ram_block~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~19_combout\,
	datab => MAR(0),
	datac => MAR(1),
	datad => \RAM|ram_block~27_combout\,
	combout => \RAM|ram_block~44_combout\);

-- Location: LCCOMB_X6_Y7_N28
\RAM|ram_block~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~45_combout\ = (MAR(0) & ((\RAM|ram_block~44_combout\ & (\RAM|ram_block~31_combout\)) # (!\RAM|ram_block~44_combout\ & ((\RAM|ram_block~23_combout\))))) # (!MAR(0) & (((\RAM|ram_block~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~31_combout\,
	datab => MAR(0),
	datac => \RAM|ram_block~23_combout\,
	datad => \RAM|ram_block~44_combout\,
	combout => \RAM|ram_block~45_combout\);

-- Location: LCCOMB_X6_Y7_N14
\RAM|data_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|data_out[3]~3_combout\ = (\ram_load~input_o\) # ((MAR(2) & ((\RAM|ram_block~45_combout\))) # (!MAR(2) & (\RAM|ram_block~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datab => \ram_load~input_o\,
	datac => \RAM|ram_block~47_combout\,
	datad => \RAM|ram_block~45_combout\,
	combout => \RAM|data_out[3]~3_combout\);

-- Location: IOIBUF_X7_Y24_N8
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X6_Y7_N22
\muxToac[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \muxToac[3]~3_combout\ = (\input_sel~input_o\ & (\input[3]~input_o\)) # (!\input_sel~input_o\ & ((\ALU|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_sel~input_o\,
	datac => \input[3]~input_o\,
	datad => \ALU|Mux0~3_combout\,
	combout => \muxToac[3]~3_combout\);

-- Location: FF_X6_Y7_N7
\op1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \muxToac[3]~3_combout\,
	sload => VCC,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => op1(3));

-- Location: LCCOMB_X6_Y7_N6
\ALU|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~1_combout\ = (\ALU|Mux3~0_combout\) # ((\ALU|Mux3~1_combout\ & (\RAM|data_out[3]~3_combout\)) # (!\ALU|Mux3~1_combout\ & ((op1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux3~0_combout\,
	datab => \RAM|data_out[3]~3_combout\,
	datac => op1(3),
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux0~1_combout\);

-- Location: LCCOMB_X6_Y7_N4
\ALU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~0_combout\ = (op1(3) & (\alu_sel[1]~input_o\ $ (((\alu_sel[0]~input_o\) # (\RAM|data_out[3]~3_combout\))))) # (!op1(3) & ((\alu_sel[0]~input_o\ & ((\RAM|data_out[3]~3_combout\) # (\alu_sel[1]~input_o\))) # (!\alu_sel[0]~input_o\ & 
-- (\RAM|data_out[3]~3_combout\ & \alu_sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sel[0]~input_o\,
	datab => \RAM|data_out[3]~3_combout\,
	datac => op1(3),
	datad => \alu_sel[1]~input_o\,
	combout => \ALU|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y7_N30
\ALU|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~2_combout\ = (\ALU|Mux3~0_combout\ & ((\ALU|Mux3~1_combout\ & ((\ALU|Mux0~0_combout\))) # (!\ALU|Mux3~1_combout\ & (\ALU|Mux0~1_combout\)))) # (!\ALU|Mux3~0_combout\ & (\ALU|Mux0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~1_combout\,
	datab => \ALU|Mux0~0_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux0~2_combout\);

-- Location: LCCOMB_X6_Y7_N24
\ALU|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~11_combout\ = \RAM|data_out[3]~3_combout\ $ (\alu_sel[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|data_out[3]~3_combout\,
	datac => \alu_sel[0]~input_o\,
	combout => \ALU|Add0~11_combout\);

-- Location: LCCOMB_X7_Y7_N22
\ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = op1(3) $ (\ALU|Add0~11_combout\ $ (!\ALU|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => op1(3),
	datab => \ALU|Add0~11_combout\,
	cin => \ALU|Add0~10\,
	combout => \ALU|Add0~12_combout\);

-- Location: LCCOMB_X6_Y7_N0
\ALU|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU|Mux0~3_combout\ = (\ALU|Mux0~2_combout\ & ((\ALU|Mux3~1_combout\) # ((\ALU|Add0~12_combout\) # (!\ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux0~2_combout\,
	datab => \ALU|Mux3~1_combout\,
	datac => \ALU|Mux3~0_combout\,
	datad => \ALU|Add0~12_combout\,
	combout => \ALU|Mux0~3_combout\);

-- Location: LCCOMB_X6_Y7_N26
\RAM|ram_block~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~15_combout\ = (GLOBAL(\rtl~3clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~3clkctrl_outclk\) & (\RAM|ram_block~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~15_combout\,
	datac => \ALU|Mux0~3_combout\,
	datad => \rtl~3clkctrl_outclk\,
	combout => \RAM|ram_block~15_combout\);

-- Location: LCCOMB_X6_Y7_N18
\RAM|ram_block~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~11_combout\ = (GLOBAL(\rtl~0clkctrl_outclk\) & (\ALU|Mux0~3_combout\)) # (!GLOBAL(\rtl~0clkctrl_outclk\) & ((\RAM|ram_block~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0clkctrl_outclk\,
	datac => \ALU|Mux0~3_combout\,
	datad => \RAM|ram_block~11_combout\,
	combout => \RAM|ram_block~11_combout\);

-- Location: LCCOMB_X6_Y7_N16
\RAM|ram_block~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~7_combout\ = (GLOBAL(\rtl~1clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~1clkctrl_outclk\) & (\RAM|ram_block~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ram_block~7_combout\,
	datac => \ALU|Mux0~3_combout\,
	datad => \rtl~1clkctrl_outclk\,
	combout => \RAM|ram_block~7_combout\);

-- Location: LCCOMB_X6_Y8_N30
\RAM|ram_block~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~3_combout\ = (GLOBAL(\rtl~2clkctrl_outclk\) & ((\ALU|Mux0~3_combout\))) # (!GLOBAL(\rtl~2clkctrl_outclk\) & (\RAM|ram_block~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~3_combout\,
	datac => \rtl~2clkctrl_outclk\,
	datad => \ALU|Mux0~3_combout\,
	combout => \RAM|ram_block~3_combout\);

-- Location: LCCOMB_X6_Y7_N10
\RAM|ram_block~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~46_combout\ = (MAR(0) & ((\RAM|ram_block~7_combout\) # ((MAR(1))))) # (!MAR(0) & (((!MAR(1) & \RAM|ram_block~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(0),
	datab => \RAM|ram_block~7_combout\,
	datac => MAR(1),
	datad => \RAM|ram_block~3_combout\,
	combout => \RAM|ram_block~46_combout\);

-- Location: LCCOMB_X6_Y7_N8
\RAM|ram_block~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~47_combout\ = (MAR(1) & ((\RAM|ram_block~46_combout\ & (\RAM|ram_block~15_combout\)) # (!\RAM|ram_block~46_combout\ & ((\RAM|ram_block~11_combout\))))) # (!MAR(1) & (((\RAM|ram_block~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ram_block~15_combout\,
	datab => \RAM|ram_block~11_combout\,
	datac => MAR(1),
	datad => \RAM|ram_block~46_combout\,
	combout => \RAM|ram_block~47_combout\);

-- Location: LCCOMB_X5_Y7_N24
\RAM|ram_block~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \RAM|ram_block~51_combout\ = (MAR(2) & ((\RAM|ram_block~45_combout\))) # (!MAR(2) & (\RAM|ram_block~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MAR(2),
	datac => \RAM|ram_block~47_combout\,
	datad => \RAM|ram_block~45_combout\,
	combout => \RAM|ram_block~51_combout\);

-- Location: FF_X8_Y8_N29
\output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \muxToac[0]~0_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[0]~reg0_q\);

-- Location: FF_X7_Y7_N27
\output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \muxToac[1]~1_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[1]~reg0_q\);

-- Location: FF_X7_Y7_N9
\output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \muxToac[2]~2_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[2]~reg0_q\);

-- Location: FF_X6_Y7_N23
\output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \muxToac[3]~3_combout\,
	ena => \ac_load~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output[3]~reg0_q\);

ww_data_chk(0) <= \data_chk[0]~output_o\;

ww_data_chk(1) <= \data_chk[1]~output_o\;

ww_data_chk(2) <= \data_chk[2]~output_o\;

ww_data_chk(3) <= \data_chk[3]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_view_ram(0) <= \view_ram[0]~output_o\;

ww_view_ram(1) <= \view_ram[1]~output_o\;

ww_view_ram(2) <= \view_ram[2]~output_o\;

ww_view_ram(3) <= \view_ram[3]~output_o\;
END structure;


