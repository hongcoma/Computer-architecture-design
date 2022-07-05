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

-- DATE "05/12/2022 15:17:59"

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

ENTITY 	lab_08_combine IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	clear : IN std_logic;
	out_sel : IN std_logic;
	iNOT10 : BUFFER std_logic;
	dp_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab_08_combine;

-- Design Ports Information
-- iNOT10	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sel	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_08_combine IS
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
SIGNAL ww_load : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_out_sel : std_logic;
SIGNAL ww_iNOT10 : std_logic;
SIGNAL ww_dp_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_out[0]~output_o\ : std_logic;
SIGNAL \dp_out[1]~output_o\ : std_logic;
SIGNAL \dp_out[2]~output_o\ : std_logic;
SIGNAL \dp_out[3]~output_o\ : std_logic;
SIGNAL \iNOT10~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \data[3]~0_combout\ : std_logic;
SIGNAL \data[1]~3_combout\ : std_logic;
SIGNAL \data[1]~feeder_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \data[3]~2_combout\ : std_logic;
SIGNAL \data[2]~4_combout\ : std_logic;
SIGNAL \data[2]~feeder_combout\ : std_logic;
SIGNAL \data[3]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \data[0]~5_combout\ : std_logic;
SIGNAL \data[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \dp_out[0]$latch~combout\ : std_logic;
SIGNAL \out_sel~input_o\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \dp_out[0]_79~combout\ : std_logic;
SIGNAL \dp_out[1]$latch~combout\ : std_logic;
SIGNAL \dp_out[2]$latch~combout\ : std_logic;
SIGNAL \dp_out[3]$latch~combout\ : std_logic;
SIGNAL data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_data[3]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_load <= load;
ww_clear <= clear;
ww_out_sel <= out_sel;
iNOT10 <= ww_iNOT10;
dp_out <= ww_dp_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~0_combout\);
\ALT_INV_data[3]~2_combout\ <= NOT \data[3]~2_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X20_Y31_N9
\dp_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[0]$latch~combout\,
	oe => \dp_out[0]_79~combout\,
	devoe => ww_devoe,
	o => \dp_out[0]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\dp_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[1]$latch~combout\,
	oe => \dp_out[0]_79~combout\,
	devoe => ww_devoe,
	o => \dp_out[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\dp_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[2]$latch~combout\,
	oe => \dp_out[0]_79~combout\,
	devoe => ww_devoe,
	o => \dp_out[2]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\dp_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[3]$latch~combout\,
	oe => \dp_out[0]_79~combout\,
	devoe => ww_devoe,
	o => \dp_out[3]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\iNOT10~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \iNOT10~output_o\);

-- Location: IOIBUF_X14_Y31_N8
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X10_Y31_N1
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X15_Y30_N28
\data[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~0_combout\ = (!\load~input_o\) # (!data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datad => \load~input_o\,
	combout => \data[3]~0_combout\);

-- Location: LCCOMB_X15_Y30_N22
\data[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[1]~3_combout\ = data(1) $ (((\load~input_o\ & data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datac => data(1),
	datad => data(0),
	combout => \data[1]~3_combout\);

-- Location: LCCOMB_X15_Y30_N30
\data[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[1]~feeder_combout\ = \data[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[1]~3_combout\,
	combout => \data[1]~feeder_combout\);

-- Location: IOIBUF_X12_Y31_N8
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: LCCOMB_X15_Y30_N8
\data[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~2_combout\ = (\clear~input_o\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clear~input_o\,
	datad => \Equal0~0_combout\,
	combout => \data[3]~2_combout\);

-- Location: FF_X15_Y30_N31
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data[1]~feeder_combout\,
	clrn => \ALT_INV_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X15_Y30_N24
\data[2]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[2]~4_combout\ = data(2) $ (((data(0) & (\load~input_o\ & data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datab => \load~input_o\,
	datac => data(1),
	datad => data(2),
	combout => \data[2]~4_combout\);

-- Location: LCCOMB_X15_Y30_N20
\data[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[2]~feeder_combout\ = \data[2]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[2]~4_combout\,
	combout => \data[2]~feeder_combout\);

-- Location: FF_X15_Y30_N21
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data[2]~feeder_combout\,
	clrn => \ALT_INV_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X15_Y30_N4
\data[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~1_combout\ = data(3) $ (((!\data[3]~0_combout\ & (data(2) & data(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~0_combout\,
	datab => data(2),
	datac => data(1),
	datad => data(3),
	combout => \data[3]~1_combout\);

-- Location: FF_X15_Y30_N29
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \data[3]~1_combout\,
	clrn => \ALT_INV_data[3]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X15_Y30_N6
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!data(0) & (data(3) & (data(1) & !data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datab => data(3),
	datac => data(1),
	datad => data(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y30_N2
\data[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[0]~5_combout\ = data(0) $ (((\load~input_o\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datac => \load~input_o\,
	datad => \Equal0~0_combout\,
	combout => \data[0]~5_combout\);

-- Location: LCCOMB_X15_Y30_N12
\data[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[0]~feeder_combout\ = \data[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data[0]~5_combout\,
	combout => \data[0]~feeder_combout\);

-- Location: FF_X15_Y30_N13
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \data[0]~feeder_combout\,
	clrn => \ALT_INV_data[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: CLKCTRL_G13
\Equal0~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y30_N28
\dp_out[0]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[0]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\dp_out[0]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((data(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_out[0]$latch~combout\,
	datac => data(0),
	datad => \Equal0~0clkctrl_outclk\,
	combout => \dp_out[0]$latch~combout\);

-- Location: IOIBUF_X12_Y31_N1
\out_sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_sel,
	o => \out_sel~input_o\);

-- Location: LCCOMB_X15_Y30_N26
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\clk~input_o\ & \out_sel~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk~input_o\,
	datad => \out_sel~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X15_Y30_N10
\dp_out[0]_79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[0]_79~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\dp_out[0]_79~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp_out[0]_79~combout\,
	datac => \Equal0~0clkctrl_outclk\,
	datad => \process_0~0_combout\,
	combout => \dp_out[0]_79~combout\);

-- Location: LCCOMB_X15_Y30_N14
\dp_out[1]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\dp_out[1]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((data(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_out[1]$latch~combout\,
	datac => data(1),
	datad => \Equal0~0clkctrl_outclk\,
	combout => \dp_out[1]$latch~combout\);

-- Location: LCCOMB_X15_Y30_N18
\dp_out[2]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[2]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\dp_out[2]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_out[2]$latch~combout\,
	datac => \Equal0~0clkctrl_outclk\,
	datad => data(2),
	combout => \dp_out[2]$latch~combout\);

-- Location: LCCOMB_X15_Y30_N16
\dp_out[3]$latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\dp_out[3]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((data(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp_out[3]$latch~combout\,
	datac => \Equal0~0clkctrl_outclk\,
	datad => data(3),
	combout => \dp_out[3]$latch~combout\);

ww_iNOT10 <= \iNOT10~output_o\;

ww_dp_out(0) <= \dp_out[0]~output_o\;

ww_dp_out(1) <= \dp_out[1]~output_o\;

ww_dp_out(2) <= \dp_out[2]~output_o\;

ww_dp_out(3) <= \dp_out[3]~output_o\;
END structure;


