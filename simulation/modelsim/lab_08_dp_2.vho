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

-- DATE "05/14/2022 04:33:42"

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

ENTITY 	lab_08_dp_2 IS
    PORT (
	clk : IN std_logic;
	load : IN std_logic;
	clear : IN std_logic;
	out_sel : IN std_logic;
	iNOT10 : BUFFER std_logic;
	dp_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab_08_dp_2;

-- Design Ports Information
-- iNOT10	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_sel	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab_08_dp_2 IS
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
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp_out[0]~output_o\ : std_logic;
SIGNAL \dp_out[1]~output_o\ : std_logic;
SIGNAL \dp_out[2]~output_o\ : std_logic;
SIGNAL \dp_out[3]~output_o\ : std_logic;
SIGNAL \iNOT10~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \out_sel~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \data[1]~5_combout\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[2]~1_combout\ : std_logic;
SIGNAL \data[3]~3_combout\ : std_logic;
SIGNAL \data[3]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \state.S0~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \data[3]~0_combout\ : std_logic;
SIGNAL \data[0]~2_combout\ : std_logic;
SIGNAL \state.S4~0_combout\ : std_logic;
SIGNAL \state.S4~q\ : std_logic;
SIGNAL \dp_out[3]~4_combout\ : std_logic;
SIGNAL \dp_out[3]~5_combout\ : std_logic;
SIGNAL \dp_out[0]~reg0_q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \dp_out[0]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[0]~en_q\ : std_logic;
SIGNAL \dp_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[1]~reg0_q\ : std_logic;
SIGNAL \dp_out[1]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[1]~en_q\ : std_logic;
SIGNAL \dp_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[2]~reg0_q\ : std_logic;
SIGNAL \dp_out[2]~enfeeder_combout\ : std_logic;
SIGNAL \dp_out[2]~en_q\ : std_logic;
SIGNAL \dp_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \dp_out[3]~reg0_q\ : std_logic;
SIGNAL \dp_out[3]~en_q\ : std_logic;
SIGNAL \iNOT10S~0_combout\ : std_logic;
SIGNAL \iNOT10S~q\ : std_logic;
SIGNAL data : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_iNOT10S~q\ : std_logic;

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

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;
\ALT_INV_iNOT10S~q\ <= NOT \iNOT10S~q\;

-- Location: IOOBUF_X14_Y0_N9
\dp_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[0]~reg0_q\,
	oe => \dp_out[0]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\dp_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[1]~reg0_q\,
	oe => \dp_out[1]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[1]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\dp_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[2]~reg0_q\,
	oe => \dp_out[2]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\dp_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dp_out[3]~reg0_q\,
	oe => \dp_out[3]~en_q\,
	devoe => ww_devoe,
	o => \dp_out[3]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\iNOT10~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_iNOT10S~q\,
	devoe => ww_devoe,
	o => \iNOT10~output_o\);

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

-- Location: IOIBUF_X33_Y12_N8
\out_sel~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_out_sel,
	o => \out_sel~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\load~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X14_Y12_N6
\data[1]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[1]~5_combout\ = data(1) $ (((data(0) & !\data[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datac => data(1),
	datad => \data[3]~0_combout\,
	combout => \data[1]~5_combout\);

-- Location: IOIBUF_X16_Y0_N22
\clear~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G19
\clear~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: FF_X14_Y12_N7
\data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[1]~5_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(1));

-- Location: LCCOMB_X15_Y12_N12
\data[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[2]~1_combout\ = data(2) $ (((data(0) & (data(1) & !\data[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datab => data(1),
	datac => data(2),
	datad => \data[3]~0_combout\,
	combout => \data[2]~1_combout\);

-- Location: FF_X15_Y12_N13
\data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[2]~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(2));

-- Location: LCCOMB_X15_Y12_N20
\data[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~3_combout\ = (data(0) & (data(1) & (!\data[3]~0_combout\ & data(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(0),
	datab => data(1),
	datac => \data[3]~0_combout\,
	datad => data(2),
	combout => \data[3]~3_combout\);

-- Location: LCCOMB_X15_Y12_N28
\data[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~4_combout\ = data(3) $ (\data[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(3),
	datad => \data[3]~3_combout\,
	combout => \data[3]~4_combout\);

-- Location: FF_X15_Y12_N29
\data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[3]~4_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(3));

-- Location: LCCOMB_X14_Y12_N12
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ((data(2)) # ((data(0)) # (!data(3)))) # (!data(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => data(1),
	datab => data(2),
	datac => data(0),
	datad => data(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y12_N16
\Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\state.S2~q\ & !\state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datad => \state.S3~q\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X15_Y12_N18
\Selector6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector4~0_combout\ & (\Selector6~0_combout\ & ((\state.S0~q\) # (!\load~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \state.S0~q\,
	datac => \load~input_o\,
	datad => \Selector6~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X15_Y12_N19
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X14_Y12_N28
\Selector7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.S2~q\ & !\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S2~q\,
	datad => \Equal0~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X14_Y12_N29
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X14_Y12_N2
\Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\load~input_o\ & ((\state.S1~q\ & (!\out_sel~input_o\)) # (!\state.S1~q\ & ((!\state.S0~q\))))) # (!\load~input_o\ & (((\state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \load~input_o\,
	datac => \state.S1~q\,
	datad => \state.S0~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X14_Y12_N18
\Selector5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (!\state.S3~q\ & ((\state.S2~q\ & (\Equal0~0_combout\)) # (!\state.S2~q\ & ((\Selector5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \state.S3~q\,
	datac => \Selector5~0_combout\,
	datad => \state.S2~q\,
	combout => \Selector5~1_combout\);

-- Location: FF_X14_Y12_N19
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~1_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X15_Y12_N26
\Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\out_sel~input_o\ & (\load~input_o\ & \state.S1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datac => \load~input_o\,
	datad => \state.S1~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X15_Y12_N24
\state.S0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.S0~0_combout\ = (\state.S0~q\) # ((\Selector4~0_combout\ $ (\load~input_o\)) # (!\Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \load~input_o\,
	datac => \state.S0~q\,
	datad => \Selector6~0_combout\,
	combout => \state.S0~0_combout\);

-- Location: FF_X15_Y12_N25
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S0~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X15_Y12_N22
\data[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[3]~0_combout\ = ((\state.S1~q\ & (!\out_sel~input_o\)) # (!\state.S1~q\ & ((\state.S0~q\)))) # (!\load~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \state.S0~q\,
	datac => \load~input_o\,
	datad => \state.S1~q\,
	combout => \data[3]~0_combout\);

-- Location: LCCOMB_X15_Y12_N30
\data[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \data[0]~2_combout\ = \data[3]~0_combout\ $ (!data(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[3]~0_combout\,
	datac => data(0),
	combout => \data[0]~2_combout\);

-- Location: FF_X15_Y12_N31
\data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data[0]~2_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data(0));

-- Location: LCCOMB_X14_Y12_N26
\state.S4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \state.S4~0_combout\ = (\state.S4~q\) # (\state.S3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S4~q\,
	datad => \state.S3~q\,
	combout => \state.S4~0_combout\);

-- Location: FF_X14_Y12_N27
\state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.S4~0_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S4~q\);

-- Location: LCCOMB_X14_Y12_N20
\dp_out[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~4_combout\ = (\out_sel~input_o\ & ((\state.S4~q\) # ((\load~input_o\ & \state.S1~q\)))) # (!\out_sel~input_o\ & (((\state.S1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \load~input_o\,
	datac => \state.S4~q\,
	datad => \state.S1~q\,
	combout => \dp_out[3]~4_combout\);

-- Location: LCCOMB_X14_Y12_N14
\dp_out[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~5_combout\ = (!\clear~input_o\ & ((\state.S3~q\) # (\dp_out[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \state.S3~q\,
	datad => \dp_out[3]~4_combout\,
	combout => \dp_out[3]~5_combout\);

-- Location: FF_X14_Y12_N15
\dp_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => data(0),
	sload => VCC,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[0]~reg0_q\);

-- Location: LCCOMB_X14_Y12_N0
\Selector10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\state.S4~q\ & (((\out_sel~input_o\ & \load~input_o\)) # (!\state.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \out_sel~input_o\,
	datab => \load~input_o\,
	datac => \state.S1~q\,
	datad => \state.S4~q\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X14_Y12_N8
\dp_out[0]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[0]~enfeeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \dp_out[0]~enfeeder_combout\);

-- Location: FF_X14_Y12_N9
\dp_out[0]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[0]~enfeeder_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[0]~en_q\);

-- Location: LCCOMB_X14_Y12_N30
\dp_out[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[1]~reg0feeder_combout\ = data(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(1),
	combout => \dp_out[1]~reg0feeder_combout\);

-- Location: FF_X14_Y12_N31
\dp_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[1]~reg0feeder_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[1]~reg0_q\);

-- Location: LCCOMB_X14_Y12_N24
\dp_out[1]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[1]~enfeeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \dp_out[1]~enfeeder_combout\);

-- Location: FF_X14_Y12_N25
\dp_out[1]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[1]~enfeeder_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[1]~en_q\);

-- Location: LCCOMB_X14_Y12_N10
\dp_out[2]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[2]~reg0feeder_combout\ = data(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => data(2),
	combout => \dp_out[2]~reg0feeder_combout\);

-- Location: FF_X14_Y12_N11
\dp_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[2]~reg0feeder_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[2]~reg0_q\);

-- Location: LCCOMB_X14_Y12_N16
\dp_out[2]~enfeeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[2]~enfeeder_combout\ = \Selector10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector10~0_combout\,
	combout => \dp_out[2]~enfeeder_combout\);

-- Location: FF_X14_Y12_N17
\dp_out[2]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[2]~enfeeder_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[2]~en_q\);

-- Location: LCCOMB_X14_Y12_N22
\dp_out[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp_out[3]~reg0feeder_combout\ = data(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => data(3),
	combout => \dp_out[3]~reg0feeder_combout\);

-- Location: FF_X14_Y12_N23
\dp_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dp_out[3]~reg0feeder_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[3]~reg0_q\);

-- Location: FF_X14_Y12_N1
\dp_out[3]~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \dp_out[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp_out[3]~en_q\);

-- Location: LCCOMB_X14_Y12_N4
\iNOT10S~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \iNOT10S~0_combout\ = (\clear~input_o\ & (((\iNOT10S~q\)))) # (!\clear~input_o\ & ((\state.S2~q\ & ((!\Equal0~0_combout\))) # (!\state.S2~q\ & (\iNOT10S~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datab => \state.S2~q\,
	datac => \iNOT10S~q\,
	datad => \Equal0~0_combout\,
	combout => \iNOT10S~0_combout\);

-- Location: FF_X14_Y12_N5
iNOT10S : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \iNOT10S~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \iNOT10S~q\);

ww_iNOT10 <= \iNOT10~output_o\;

ww_dp_out(0) <= \dp_out[0]~output_o\;

ww_dp_out(1) <= \dp_out[1]~output_o\;

ww_dp_out(2) <= \dp_out[2]~output_o\;

ww_dp_out(3) <= \dp_out[3]~output_o\;
END structure;


