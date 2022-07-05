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

-- DATE "05/15/2022 22:48:47"

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

ENTITY 	lab_08_cudp IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	dp_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab_08_cudp;

-- Design Ports Information
-- dp_out[0]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[1]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_08_cudp IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dp_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_out[0]~output_o\ : std_logic;
SIGNAL \dp_out[1]~output_o\ : std_logic;
SIGNAL \dp_out[2]~output_o\ : std_logic;
SIGNAL \dp_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|lab08_state.S0~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \CU|lab08_state.S0~q\ : std_logic;
SIGNAL \DP|data[1]~1_combout\ : std_logic;
SIGNAL \CU|clear~0_combout\ : std_logic;
SIGNAL \CU|clear~q\ : std_logic;
SIGNAL \DP|data[2]~2_combout\ : std_logic;
SIGNAL \DP|data[3]~3_combout\ : std_logic;
SIGNAL \DP|data[3]~4_combout\ : std_logic;
SIGNAL \CU|Selector0~0_combout\ : std_logic;
SIGNAL \CU|Selector0~1_combout\ : std_logic;
SIGNAL \CU|lab08_state.S1~q\ : std_logic;
SIGNAL \CU|Selector2~0_combout\ : std_logic;
SIGNAL \CU|load~q\ : std_logic;
SIGNAL \DP|data[0]~0_combout\ : std_logic;
SIGNAL \DP|data\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CU|ALT_INV_clear~q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
dp_out <= ww_dp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\CU|ALT_INV_clear~q\ <= NOT \CU|clear~q\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;

-- Location: IOOBUF_X24_Y0_N2
\dp_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(0),
	oe => \CU|load~q\,
	devoe => ww_devoe,
	o => \dp_out[0]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\dp_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(1),
	oe => \CU|load~q\,
	devoe => ww_devoe,
	o => \dp_out[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\dp_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(2),
	oe => \CU|load~q\,
	devoe => ww_devoe,
	o => \dp_out[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\dp_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DP|data\(3),
	oe => \CU|load~q\,
	devoe => ww_devoe,
	o => \dp_out[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y2_N14
\CU|lab08_state.S0~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|lab08_state.S0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \CU|lab08_state.S0~feeder_combout\);

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

-- Location: FF_X25_Y2_N15
\CU|lab08_state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|lab08_state.S0~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|lab08_state.S0~q\);

-- Location: LCCOMB_X26_Y2_N4
\DP|data[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[1]~1_combout\ = \DP|data\(1) $ (((\CU|load~q\ & \DP|data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datac => \DP|data\(1),
	datad => \DP|data\(0),
	combout => \DP|data[1]~1_combout\);

-- Location: LCCOMB_X26_Y2_N30
\CU|clear~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|clear~0_combout\ = !\CU|lab08_state.S0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CU|lab08_state.S0~q\,
	combout => \CU|clear~0_combout\);

-- Location: FF_X26_Y2_N31
\CU|clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|clear~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|clear~q\);

-- Location: FF_X26_Y2_N5
\DP|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[1]~1_combout\,
	clrn => \CU|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(1));

-- Location: LCCOMB_X26_Y2_N22
\DP|data[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[2]~2_combout\ = \DP|data\(2) $ (((\CU|load~q\ & (\DP|data\(1) & \DP|data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datab => \DP|data\(1),
	datac => \DP|data\(2),
	datad => \DP|data\(0),
	combout => \DP|data[2]~2_combout\);

-- Location: FF_X26_Y2_N23
\DP|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[2]~2_combout\,
	clrn => \CU|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(2));

-- Location: LCCOMB_X26_Y2_N18
\DP|data[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[3]~3_combout\ = (\CU|load~q\ & (\DP|data\(0) & (\DP|data\(2) & \DP|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datab => \DP|data\(0),
	datac => \DP|data\(2),
	datad => \DP|data\(1),
	combout => \DP|data[3]~3_combout\);

-- Location: LCCOMB_X26_Y2_N20
\DP|data[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[3]~4_combout\ = \DP|data\(3) $ (\DP|data[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DP|data\(3),
	datad => \DP|data[3]~3_combout\,
	combout => \DP|data[3]~4_combout\);

-- Location: FF_X26_Y2_N21
\DP|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[3]~4_combout\,
	clrn => \CU|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(3));

-- Location: LCCOMB_X26_Y2_N24
\CU|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Selector0~0_combout\ = (\DP|data\(2)) # ((\DP|data\(0)) # ((!\DP|data\(3)) # (!\DP|data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DP|data\(2),
	datab => \DP|data\(0),
	datac => \DP|data\(1),
	datad => \DP|data\(3),
	combout => \CU|Selector0~0_combout\);

-- Location: LCCOMB_X25_Y2_N24
\CU|Selector0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Selector0~1_combout\ = ((\CU|lab08_state.S1~q\ & \CU|Selector0~0_combout\)) # (!\CU|lab08_state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CU|lab08_state.S0~q\,
	datac => \CU|lab08_state.S1~q\,
	datad => \CU|Selector0~0_combout\,
	combout => \CU|Selector0~1_combout\);

-- Location: FF_X25_Y2_N25
\CU|lab08_state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|lab08_state.S1~q\);

-- Location: LCCOMB_X26_Y2_N26
\CU|Selector2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \CU|Selector2~0_combout\ = (\CU|lab08_state.S0~q\ & (\CU|lab08_state.S1~q\ & ((\CU|Selector0~0_combout\)))) # (!\CU|lab08_state.S0~q\ & ((\CU|load~q\) # ((\CU|lab08_state.S1~q\ & \CU|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|lab08_state.S0~q\,
	datab => \CU|lab08_state.S1~q\,
	datac => \CU|load~q\,
	datad => \CU|Selector0~0_combout\,
	combout => \CU|Selector2~0_combout\);

-- Location: FF_X26_Y2_N27
\CU|load\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \CU|Selector2~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CU|load~q\);

-- Location: LCCOMB_X26_Y2_N28
\DP|data[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DP|data[0]~0_combout\ = \CU|load~q\ $ (\DP|data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CU|load~q\,
	datac => \DP|data\(0),
	combout => \DP|data[0]~0_combout\);

-- Location: FF_X26_Y2_N29
\DP|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \DP|data[0]~0_combout\,
	clrn => \CU|ALT_INV_clear~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DP|data\(0));

ww_dp_out(0) <= \dp_out[0]~output_o\;

ww_dp_out(1) <= \dp_out[1]~output_o\;

ww_dp_out(2) <= \dp_out[2]~output_o\;

ww_dp_out(3) <= \dp_out[3]~output_o\;
END structure;


