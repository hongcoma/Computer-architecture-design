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

-- DATE "06/02/2022 22:49:49"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab_11 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	enter : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0);
	halt : OUT std_logic
	);
END lab_11;

-- Design Ports Information
-- output[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- halt	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enter	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_11 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enter : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_halt : std_logic;
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \halt~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \PC[0]~5_combout\ : std_logic;
SIGNAL \IR[0]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \enter~input_o\ : std_logic;
SIGNAL \state.s_decode2~feeder_combout\ : std_logic;
SIGNAL \state.s_decode2~q\ : std_logic;
SIGNAL \state.s_decode3~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \state.s_input~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state.s_dec~q\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state.s_add~q\ : std_logic;
SIGNAL \A[0]~1_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_cout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \input[4]~input_o\ : std_logic;
SIGNAL \input[5]~input_o\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \input[6]~input_o\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \input[7]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state.s_jpos~q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \PC[0]~6\ : std_logic;
SIGNAL \PC[1]~7_combout\ : std_logic;
SIGNAL \PC[1]~8\ : std_logic;
SIGNAL \PC[2]~9_combout\ : std_logic;
SIGNAL \PC[2]~10\ : std_logic;
SIGNAL \PC[3]~11_combout\ : std_logic;
SIGNAL \PC[3]~12\ : std_logic;
SIGNAL \PC[4]~13_combout\ : std_logic;
SIGNAL \IR[4]~feeder_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \memory_address[0]~0_combout\ : std_logic;
SIGNAL \IR[3]~feeder_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \IR[2]~feeder_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state.s_load~q\ : std_logic;
SIGNAL \state.s_store2~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.s_output~q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \state.s_start~q\ : std_logic;
SIGNAL \state.s_start2~0_combout\ : std_logic;
SIGNAL \state.s_start2~q\ : std_logic;
SIGNAL \state.s_start3~feeder_combout\ : std_logic;
SIGNAL \state.s_start3~q\ : std_logic;
SIGNAL \state.s_fetch~feeder_combout\ : std_logic;
SIGNAL \state.s_fetch~q\ : std_logic;
SIGNAL \state.s_decode~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state.s_store~q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \MemWr~q\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \En~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \state.s_halt~0_combout\ : std_logic;
SIGNAL \state.s_halt~q\ : std_logic;
SIGNAL \halt~0_combout\ : std_logic;
SIGNAL \halt~reg0_q\ : std_logic;
SIGNAL memory_address : std_logic_vector(4 DOWNTO 0);
SIGNAL PC : std_logic_vector(4 DOWNTO 0);
SIGNAL IR : std_logic_vector(7 DOWNTO 0);
SIGNAL A : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_enter <= enter;
ww_input <= input;
output <= ww_output;
halt <= ww_halt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & A(7) & A(6) & A(5) & A(4) & A(3) & A(2) & A(1) & A(0));

\memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (memory_address(4) & memory_address(3) & memory_address(2) & memory_address(1) & memory_address(0));

\memory|sram|ram_block|auto_generated|q_a\(0) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|sram|ram_block|auto_generated|q_a\(1) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|sram|ram_block|auto_generated|q_a\(2) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|sram|ram_block|auto_generated|q_a\(3) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|sram|ram_block|auto_generated|q_a\(4) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|sram|ram_block|auto_generated|q_a\(5) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|sram|ram_block|auto_generated|q_a\(6) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|sram|ram_block|auto_generated|q_a\(7) <= \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X33_Y27_N9
\output[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(0),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X33_Y27_N2
\output[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(1),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\output[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(2),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\output[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(3),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\output[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(4),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\output[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(5),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\output[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(6),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\output[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => A(7),
	oe => \En~q\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\halt~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \halt~reg0_q\,
	devoe => ww_devoe,
	o => \halt~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X32_Y28_N14
\PC[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[0]~5_combout\ = PC(0) $ (VCC)
-- \PC[0]~6\ = CARRY(PC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => PC(0),
	datad => VCC,
	combout => \PC[0]~5_combout\,
	cout => \PC[0]~6\);

-- Location: LCCOMB_X31_Y28_N14
\IR[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[0]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \IR[0]~feeder_combout\);

-- Location: IOIBUF_X16_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X31_Y28_N15
\IR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[0]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(0));

-- Location: IOIBUF_X33_Y16_N1
\input[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\enter~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enter,
	o => \enter~input_o\);

-- Location: LCCOMB_X31_Y28_N12
\state.s_decode2~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_decode2~feeder_combout\ = \state.s_decode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_decode~q\,
	combout => \state.s_decode2~feeder_combout\);

-- Location: FF_X31_Y28_N13
\state.s_decode2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_decode2~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode2~q\);

-- Location: FF_X30_Y28_N19
\state.s_decode3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_decode2~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode3~q\);

-- Location: LCCOMB_X27_Y28_N24
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!IR(6) & (IR(7) & (!IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X27_Y28_N16
\Selector7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((!\enter~input_o\ & \state.s_input~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enter~input_o\,
	datac => \state.s_input~q\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X27_Y28_N17
\state.s_input\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector7~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_input~q\);

-- Location: LCCOMB_X27_Y28_N4
\state~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~22_combout\ = (IR(6) & (!IR(7) & (IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \state~22_combout\);

-- Location: FF_X27_Y28_N5
\state.s_dec\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_dec~q\);

-- Location: LCCOMB_X29_Y28_N26
\state~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~21_combout\ = (!IR(7) & (!IR(5) & (IR(6) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(7),
	datab => IR(5),
	datac => IR(6),
	datad => \state.s_decode3~q\,
	combout => \state~21_combout\);

-- Location: FF_X29_Y28_N27
\state.s_add\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_add~q\);

-- Location: LCCOMB_X27_Y28_N22
\A[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[0]~1_combout\ = (\state.s_input~q\) # ((!\state.s_load~q\ & (!\state.s_dec~q\ & !\state.s_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \state.s_input~q\,
	datac => \state.s_dec~q\,
	datad => \state.s_add~q\,
	combout => \A[0]~1_combout\);

-- Location: LCCOMB_X27_Y28_N28
\A[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = \state.s_load~q\ $ (\state.s_input~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datad => \state.s_input~q\,
	combout => \A[0]~0_combout\);

-- Location: LCCOMB_X29_Y28_N6
\Add1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(1),
	combout => \Add1~5_combout\);

-- Location: LCCOMB_X29_Y28_N16
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X30_Y28_N10
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_cout\ = CARRY(!\state.s_add~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datad => VCC,
	cout => \Add1~2_cout\);

-- Location: LCCOMB_X30_Y28_N12
\Add1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (\Add1~0_combout\ & ((A(0) & (!\Add1~2_cout\)) # (!A(0) & ((\Add1~2_cout\) # (GND))))) # (!\Add1~0_combout\ & ((A(0) & (\Add1~2_cout\ & VCC)) # (!A(0) & (!\Add1~2_cout\))))
-- \Add1~4\ = CARRY((\Add1~0_combout\ & ((!\Add1~2_cout\) # (!A(0)))) # (!\Add1~0_combout\ & (!A(0) & !\Add1~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => A(0),
	datad => VCC,
	cin => \Add1~2_cout\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X30_Y28_N14
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = ((A(1) $ (\Add1~5_combout\ $ (\Add1~4\)))) # (GND)
-- \Add1~7\ = CARRY((A(1) & ((!\Add1~4\) # (!\Add1~5_combout\))) # (!A(1) & (!\Add1~5_combout\ & !\Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(1),
	datab => \Add1~5_combout\,
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X29_Y28_N24
\Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\A[0]~0_combout\ & ((\memory|sram|ram_block|auto_generated|q_a\(1)) # ((\A[0]~1_combout\)))) # (!\A[0]~0_combout\ & (((\Add1~6_combout\ & !\A[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|sram|ram_block|auto_generated|q_a\(1),
	datab => \A[0]~0_combout\,
	datac => \Add1~6_combout\,
	datad => \A[0]~1_combout\,
	combout => \Selector20~0_combout\);

-- Location: LCCOMB_X29_Y28_N8
\Selector20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = (\A[0]~1_combout\ & ((\Selector20~0_combout\ & (\input[1]~input_o\)) # (!\Selector20~0_combout\ & ((A(1)))))) # (!\A[0]~1_combout\ & (((\Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \A[0]~1_combout\,
	datac => A(1),
	datad => \Selector20~0_combout\,
	combout => \Selector20~1_combout\);

-- Location: FF_X29_Y28_N9
\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector20~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

-- Location: IOIBUF_X31_Y31_N8
\input[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X29_Y28_N14
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X30_Y28_N16
\Add1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (\Add1~8_combout\ & ((A(2) & (!\Add1~7\)) # (!A(2) & ((\Add1~7\) # (GND))))) # (!\Add1~8_combout\ & ((A(2) & (\Add1~7\ & VCC)) # (!A(2) & (!\Add1~7\))))
-- \Add1~10\ = CARRY((\Add1~8_combout\ & ((!\Add1~7\) # (!A(2)))) # (!\Add1~8_combout\ & (!A(2) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => A(2),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X31_Y28_N20
\Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\A[0]~0_combout\ & (\A[0]~1_combout\)) # (!\A[0]~0_combout\ & ((\A[0]~1_combout\ & ((A(2)))) # (!\A[0]~1_combout\ & (\Add1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~0_combout\,
	datab => \A[0]~1_combout\,
	datac => \Add1~9_combout\,
	datad => A(2),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X31_Y28_N10
\Selector19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\A[0]~0_combout\ & ((\Selector19~0_combout\ & ((\input[2]~input_o\))) # (!\Selector19~0_combout\ & (\memory|sram|ram_block|auto_generated|q_a\(2))))) # (!\A[0]~0_combout\ & (((\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|sram|ram_block|auto_generated|q_a\(2),
	datab => \input[2]~input_o\,
	datac => \A[0]~0_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: FF_X31_Y28_N11
\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector19~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

-- Location: IOIBUF_X33_Y25_N1
\input[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X29_Y28_N0
\Add1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \Add1~11_combout\);

-- Location: LCCOMB_X30_Y28_N18
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\Add1~11_combout\ $ (A(3) $ (\Add1~10\)))) # (GND)
-- \Add1~13\ = CARRY((\Add1~11_combout\ & (A(3) & !\Add1~10\)) # (!\Add1~11_combout\ & ((A(3)) # (!\Add1~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~11_combout\,
	datab => A(3),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X30_Y28_N0
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\A[0]~0_combout\ & ((\A[0]~1_combout\) # ((\memory|sram|ram_block|auto_generated|q_a\(3))))) # (!\A[0]~0_combout\ & (!\A[0]~1_combout\ & ((\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~0_combout\,
	datab => \A[0]~1_combout\,
	datac => \memory|sram|ram_block|auto_generated|q_a\(3),
	datad => \Add1~12_combout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X30_Y28_N4
\Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\A[0]~1_combout\ & ((\Selector18~0_combout\ & (\input[3]~input_o\)) # (!\Selector18~0_combout\ & ((A(3)))))) # (!\A[0]~1_combout\ & (((\Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => \input[3]~input_o\,
	datac => A(3),
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: FF_X30_Y28_N5
\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector18~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

-- Location: IOIBUF_X24_Y31_N8
\input[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(4),
	o => \input[4]~input_o\);

-- Location: IOIBUF_X33_Y25_N8
\input[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(5),
	o => \input[5]~input_o\);

-- Location: LCCOMB_X29_Y28_N18
\Add1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \Add1~17_combout\);

-- Location: LCCOMB_X29_Y28_N22
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datac => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X30_Y28_N20
\Add1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (A(4) & ((\Add1~14_combout\ & (!\Add1~13\)) # (!\Add1~14_combout\ & (\Add1~13\ & VCC)))) # (!A(4) & ((\Add1~14_combout\ & ((\Add1~13\) # (GND))) # (!\Add1~14_combout\ & (!\Add1~13\))))
-- \Add1~16\ = CARRY((A(4) & (\Add1~14_combout\ & !\Add1~13\)) # (!A(4) & ((\Add1~14_combout\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(4),
	datab => \Add1~14_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X30_Y28_N22
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = ((A(5) $ (\Add1~17_combout\ $ (\Add1~16\)))) # (GND)
-- \Add1~19\ = CARRY((A(5) & ((!\Add1~16\) # (!\Add1~17_combout\))) # (!A(5) & (!\Add1~17_combout\ & !\Add1~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(5),
	datab => \Add1~17_combout\,
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X30_Y28_N28
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\A[0]~1_combout\ & (\A[0]~0_combout\)) # (!\A[0]~1_combout\ & ((\A[0]~0_combout\ & ((\memory|sram|ram_block|auto_generated|q_a\(5)))) # (!\A[0]~0_combout\ & (\Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => \A[0]~0_combout\,
	datac => \Add1~18_combout\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(5),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X30_Y28_N30
\Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (\A[0]~1_combout\ & ((\Selector16~0_combout\ & (\input[5]~input_o\)) # (!\Selector16~0_combout\ & ((A(5)))))) # (!\A[0]~1_combout\ & (((\Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => \input[5]~input_o\,
	datac => A(5),
	datad => \Selector16~0_combout\,
	combout => \Selector16~1_combout\);

-- Location: FF_X30_Y28_N31
\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector16~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

-- Location: IOIBUF_X33_Y24_N1
\input[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(6),
	o => \input[6]~input_o\);

-- Location: LCCOMB_X29_Y28_N12
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datad => \memory|sram|ram_block|auto_generated|q_a\(6),
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X30_Y28_N24
\Add1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (\Add1~20_combout\ & ((A(6) & (!\Add1~19\)) # (!A(6) & ((\Add1~19\) # (GND))))) # (!\Add1~20_combout\ & ((A(6) & (\Add1~19\ & VCC)) # (!A(6) & (!\Add1~19\))))
-- \Add1~22\ = CARRY((\Add1~20_combout\ & ((!\Add1~19\) # (!A(6)))) # (!\Add1~20_combout\ & (!A(6) & !\Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datab => A(6),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X29_Y28_N10
\Selector15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\A[0]~1_combout\ & ((\A[0]~0_combout\) # ((A(6))))) # (!\A[0]~1_combout\ & (!\A[0]~0_combout\ & ((\Add1~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => \A[0]~0_combout\,
	datac => A(6),
	datad => \Add1~21_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X29_Y28_N28
\Selector15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\A[0]~0_combout\ & ((\Selector15~0_combout\ & (\input[6]~input_o\)) # (!\Selector15~0_combout\ & ((\memory|sram|ram_block|auto_generated|q_a\(6)))))) # (!\A[0]~0_combout\ & (((\Selector15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[6]~input_o\,
	datab => \A[0]~0_combout\,
	datac => \memory|sram|ram_block|auto_generated|q_a\(6),
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X29_Y28_N29
\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector15~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

-- Location: LCCOMB_X29_Y28_N4
\Add1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = \state.s_add~q\ $ (\memory|sram|ram_block|auto_generated|q_a\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_add~q\,
	datac => \memory|sram|ram_block|auto_generated|q_a\(7),
	combout => \Add1~23_combout\);

-- Location: LCCOMB_X30_Y28_N26
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = A(7) $ (\Add1~22\ $ (\Add1~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => A(7),
	datad => \Add1~23_combout\,
	cin => \Add1~22\,
	combout => \Add1~24_combout\);

-- Location: IOIBUF_X31_Y31_N1
\input[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(7),
	o => \input[7]~input_o\);

-- Location: LCCOMB_X30_Y28_N6
\Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\A[0]~1_combout\ & ((\A[0]~0_combout\ & ((\input[7]~input_o\))) # (!\A[0]~0_combout\ & (A(7))))) # (!\A[0]~1_combout\ & (!\A[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => \A[0]~0_combout\,
	datac => A(7),
	datad => \input[7]~input_o\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X30_Y28_N8
\Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\A[0]~1_combout\ & (((\Selector14~0_combout\)))) # (!\A[0]~1_combout\ & ((\Selector14~0_combout\ & ((\Add1~24_combout\))) # (!\Selector14~0_combout\ & (\memory|sram|ram_block|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => \memory|sram|ram_block|auto_generated|q_a\(7),
	datac => \Add1~24_combout\,
	datad => \Selector14~0_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X30_Y28_N9
\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector14~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

-- Location: M9K_X28_Y28_N0
\memory|sram|ram_block|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000040000000000000000000000000000000000000000000000000003FC00FF002FC003F00174001F002FC003F00180001F0033000BF000FC00600007C00BF000FC0080",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "program_EC3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_dq:memory|altram:sram|altsyncram:ram_block|altsyncram_28a1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MemWr~q\,
	portare => VCC,
	clk0 => \clock~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y28_N20
\Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\A[0]~1_combout\ & ((A(4)) # ((\A[0]~0_combout\)))) # (!\A[0]~1_combout\ & (((\Add1~15_combout\ & !\A[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~1_combout\,
	datab => A(4),
	datac => \Add1~15_combout\,
	datad => \A[0]~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X29_Y28_N2
\Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\A[0]~0_combout\ & ((\Selector17~0_combout\ & (\input[4]~input_o\)) # (!\Selector17~0_combout\ & ((\memory|sram|ram_block|auto_generated|q_a\(4)))))) # (!\A[0]~0_combout\ & (((\Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[4]~input_o\,
	datab => \A[0]~0_combout\,
	datac => \memory|sram|ram_block|auto_generated|q_a\(4),
	datad => \Selector17~0_combout\,
	combout => \Selector17~1_combout\);

-- Location: FF_X29_Y28_N3
\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector17~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

-- Location: FF_X29_Y28_N15
\IR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(5),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(5));

-- Location: LCCOMB_X27_Y28_N0
\state~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~24_combout\ = (IR(6) & (IR(7) & (!IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \state~24_combout\);

-- Location: FF_X27_Y28_N1
\state.s_jpos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_jpos~q\);

-- Location: LCCOMB_X32_Y28_N10
\WideOr6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\state.s_jpos~q\) # (\state.s_fetch~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_jpos~q\,
	datad => \state.s_fetch~q\,
	combout => \WideOr6~0_combout\);

-- Location: FF_X32_Y28_N15
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[0]~5_combout\,
	asdata => IR(0),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jpos~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X32_Y28_N16
\PC[1]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[1]~7_combout\ = (PC(1) & (!\PC[0]~6\)) # (!PC(1) & ((\PC[0]~6\) # (GND)))
-- \PC[1]~8\ = CARRY((!\PC[0]~6\) # (!PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(1),
	datad => VCC,
	cin => \PC[0]~6\,
	combout => \PC[1]~7_combout\,
	cout => \PC[1]~8\);

-- Location: FF_X32_Y28_N17
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[1]~7_combout\,
	asdata => IR(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jpos~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X32_Y28_N18
\PC[2]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[2]~9_combout\ = (PC(2) & (\PC[1]~8\ $ (GND))) # (!PC(2) & (!\PC[1]~8\ & VCC))
-- \PC[2]~10\ = CARRY((PC(2) & !\PC[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(2),
	datad => VCC,
	cin => \PC[1]~8\,
	combout => \PC[2]~9_combout\,
	cout => \PC[2]~10\);

-- Location: FF_X32_Y28_N19
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[2]~9_combout\,
	asdata => IR(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jpos~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X32_Y28_N20
\PC[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[3]~11_combout\ = (PC(3) & (!\PC[2]~10\)) # (!PC(3) & ((\PC[2]~10\) # (GND)))
-- \PC[3]~12\ = CARRY((!\PC[2]~10\) # (!PC(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => PC(3),
	datad => VCC,
	cin => \PC[2]~10\,
	combout => \PC[3]~11_combout\,
	cout => \PC[3]~12\);

-- Location: FF_X32_Y28_N21
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[3]~11_combout\,
	asdata => IR(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jpos~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X32_Y28_N22
\PC[4]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PC[4]~13_combout\ = PC(4) $ (!\PC[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	cin => \PC[3]~12\,
	combout => \PC[4]~13_combout\);

-- Location: LCCOMB_X29_Y28_N30
\IR[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[4]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|sram|ram_block|auto_generated|q_a\(4),
	combout => \IR[4]~feeder_combout\);

-- Location: FF_X29_Y28_N31
\IR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[4]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(4));

-- Location: FF_X32_Y28_N23
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \PC[4]~13_combout\,
	asdata => IR(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \state.s_jpos~q\,
	ena => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X32_Y28_N12
\Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.s_decode~q\ & ((IR(4)))) # (!\state.s_decode~q\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_decode~q\,
	datac => PC(4),
	datad => IR(4),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X31_Y28_N2
\memory_address[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \memory_address[0]~0_combout\ = (!\reset~input_o\ & ((\state.s_decode~q\) # (!\state.s_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_start~q\,
	datac => \reset~input_o\,
	datad => \state.s_decode~q\,
	combout => \memory_address[0]~0_combout\);

-- Location: FF_X32_Y28_N13
\memory_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(4));

-- Location: LCCOMB_X31_Y28_N26
\IR[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[3]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(3),
	combout => \IR[3]~feeder_combout\);

-- Location: FF_X31_Y28_N27
\IR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[3]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(3));

-- Location: LCCOMB_X32_Y28_N26
\Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.s_decode~q\ & (IR(3))) # (!\state.s_decode~q\ & ((PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(3),
	datac => \state.s_decode~q\,
	datad => PC(3),
	combout => \Selector2~0_combout\);

-- Location: FF_X32_Y28_N27
\memory_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(3));

-- Location: LCCOMB_X31_Y28_N0
\IR[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \IR[2]~feeder_combout\ = \memory|sram|ram_block|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|sram|ram_block|auto_generated|q_a\(2),
	combout => \IR[2]~feeder_combout\);

-- Location: FF_X31_Y28_N1
\IR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \IR[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(2));

-- Location: LCCOMB_X32_Y28_N24
\Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.s_decode~q\ & (IR(2))) # (!\state.s_decode~q\ & ((PC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(2),
	datac => \state.s_decode~q\,
	datad => PC(2),
	combout => \Selector3~0_combout\);

-- Location: FF_X32_Y28_N25
\memory_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(2));

-- Location: FF_X29_Y28_N17
\IR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(1));

-- Location: LCCOMB_X32_Y28_N2
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.s_decode~q\ & (IR(1))) # (!\state.s_decode~q\ & ((PC(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_decode~q\,
	datac => IR(1),
	datad => PC(1),
	combout => \Selector4~0_combout\);

-- Location: FF_X32_Y28_N3
\memory_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(1));

-- Location: FF_X29_Y28_N13
\IR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(7));

-- Location: LCCOMB_X27_Y28_N10
\state~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~20_combout\ = (!IR(6) & (!IR(7) & (!IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \state~20_combout\);

-- Location: FF_X27_Y28_N11
\state.s_load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_load~q\);

-- Location: FF_X27_Y28_N29
\state.s_store2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_store~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store2~q\);

-- Location: LCCOMB_X27_Y28_N8
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.s_load~q\) # ((\state.s_store2~q\) # ((\state.s_dec~q\) # (\state.s_add~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_load~q\,
	datab => \state.s_store2~q\,
	datac => \state.s_dec~q\,
	datad => \state.s_add~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X27_Y28_N12
\state~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~23_combout\ = (!IR(6) & (IR(7) & (IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \state~23_combout\);

-- Location: FF_X27_Y28_N13
\state.s_output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_output~q\);

-- Location: LCCOMB_X27_Y28_N20
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\state.s_output~q\) # ((\state.s_jpos~q\) # ((\state.s_input~q\ & \enter~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_output~q\,
	datab => \state.s_input~q\,
	datac => \enter~input_o\,
	datad => \state.s_jpos~q\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X27_Y28_N6
\Selector6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (!\Selector6~0_combout\ & !\Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector6~0_combout\,
	datad => \Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X27_Y28_N7
\state.s_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector6~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start~q\);

-- Location: LCCOMB_X31_Y28_N18
\state.s_start2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_start2~0_combout\ = !\state.s_start~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_start~q\,
	combout => \state.s_start2~0_combout\);

-- Location: FF_X31_Y28_N19
\state.s_start2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start2~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start2~q\);

-- Location: LCCOMB_X31_Y28_N24
\state.s_start3~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_start3~feeder_combout\ = \state.s_start2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start2~q\,
	combout => \state.s_start3~feeder_combout\);

-- Location: FF_X31_Y28_N25
\state.s_start3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_start3~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_start3~q\);

-- Location: LCCOMB_X31_Y28_N22
\state.s_fetch~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_fetch~feeder_combout\ = \state.s_start3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.s_start3~q\,
	combout => \state.s_fetch~feeder_combout\);

-- Location: FF_X31_Y28_N23
\state.s_fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_fetch~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_fetch~q\);

-- Location: FF_X31_Y28_N17
\state.s_decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \state.s_fetch~q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_decode~q\);

-- Location: LCCOMB_X32_Y28_N8
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.s_decode~q\ & (IR(0))) # (!\state.s_decode~q\ & ((PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_decode~q\,
	datab => IR(0),
	datac => PC(0),
	combout => \Selector5~0_combout\);

-- Location: FF_X32_Y28_N9
\memory_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \memory_address[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => memory_address(0));

-- Location: FF_X29_Y28_N1
\IR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \memory|sram|ram_block|auto_generated|q_a\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \state.s_fetch~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => IR(6));

-- Location: LCCOMB_X27_Y28_N14
\state~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state~25_combout\ = (!IR(6) & (!IR(7) & (IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \state~25_combout\);

-- Location: FF_X27_Y28_N15
\state.s_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_store~q\);

-- Location: LCCOMB_X27_Y28_N2
\Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\state.s_store~q\) # ((\MemWr~q\ & !\state.s_store2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.s_store~q\,
	datac => \MemWr~q\,
	datad => \state.s_store2~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X27_Y28_N3
MemWr : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector22~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemWr~q\);

-- Location: IOIBUF_X33_Y16_N8
\input[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X30_Y28_N2
\Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\A[0]~0_combout\ & (((\A[0]~1_combout\)))) # (!\A[0]~0_combout\ & ((\A[0]~1_combout\ & (A(0))) # (!\A[0]~1_combout\ & ((\Add1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~0_combout\,
	datab => A(0),
	datac => \A[0]~1_combout\,
	datad => \Add1~3_combout\,
	combout => \Selector21~0_combout\);

-- Location: LCCOMB_X31_Y28_N28
\Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = (\A[0]~0_combout\ & ((\Selector21~0_combout\ & ((\input[0]~input_o\))) # (!\Selector21~0_combout\ & (\memory|sram|ram_block|auto_generated|q_a\(0))))) # (!\A[0]~0_combout\ & (((\Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|sram|ram_block|auto_generated|q_a\(0),
	datab => \input[0]~input_o\,
	datac => \A[0]~0_combout\,
	datad => \Selector21~0_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X31_Y28_N29
\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector21~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

-- Location: LCCOMB_X27_Y28_N30
\Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.s_output~q\) # ((\En~q\ & \state.s_start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.s_output~q\,
	datac => \En~q\,
	datad => \state.s_start~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X27_Y28_N31
En : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \En~q\);

-- Location: LCCOMB_X27_Y28_N18
\Selector8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (IR(6) & (IR(7) & (IR(5) & \state.s_decode3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => IR(6),
	datab => IR(7),
	datac => IR(5),
	datad => \state.s_decode3~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X27_Y28_N26
\state.s_halt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.s_halt~0_combout\ = (\state.s_halt~q\) # (\Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.s_halt~q\,
	datad => \Selector8~0_combout\,
	combout => \state.s_halt~0_combout\);

-- Location: FF_X27_Y28_N27
\state.s_halt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \state.s_halt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.s_halt~q\);

-- Location: LCCOMB_X26_Y28_N0
\halt~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \halt~0_combout\ = (\halt~reg0_q\) # (\state.s_halt~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \halt~reg0_q\,
	datad => \state.s_halt~q\,
	combout => \halt~0_combout\);

-- Location: FF_X26_Y28_N1
\halt~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \halt~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \halt~reg0_q\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_halt <= \halt~output_o\;
END structure;


