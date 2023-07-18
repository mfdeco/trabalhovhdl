-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "07/05/2023 17:15:03"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULAV2 IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	f : IN std_logic_vector(2 DOWNTO 0);
	D : BUFFER std_logic_vector(3 DOWNTO 0);
	zeros : BUFFER std_logic;
	overflow : BUFFER std_logic;
	carryout : BUFFER std_logic;
	sinal : BUFFER std_logic
	);
END ULAV2;

-- Design Ports Information
-- D[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zeros	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryout	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ULAV2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_zeros : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_carryout : std_logic;
SIGNAL ww_sinal : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[2]~output_o\ : std_logic;
SIGNAL \D[3]~output_o\ : std_logic;
SIGNAL \zeros~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \carryout~output_o\ : std_logic;
SIGNAL \sinal~output_o\ : std_logic;
SIGNAL \f[1]~input_o\ : std_logic;
SIGNAL \f[2]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \f[0]~input_o\ : std_logic;
SIGNAL \control|C0~0_combout\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \chave1|Y[0]~0_combout\ : std_logic;
SIGNAL \control|KX~combout\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \cmag|magnitude[0]~0_combout\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \cmag|magnitude[0]~1_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \chave2|S[0]~16_combout\ : std_logic;
SIGNAL \chave2|S[0]~24_combout\ : std_logic;
SIGNAL \chave2|S[0]~23_combout\ : std_logic;
SIGNAL \chave2|S[0]~15_combout\ : std_logic;
SIGNAL \chave2|S[0]~14_combout\ : std_logic;
SIGNAL \chave2|S[0]~17_combout\ : std_logic;
SIGNAL \chave2|S[1]~25_combout\ : std_logic;
SIGNAL \cmag|magnitude[1]~2_combout\ : std_logic;
SIGNAL \chave1|Y[1]~1_combout\ : std_logic;
SIGNAL \somador|C1~0_combout\ : std_logic;
SIGNAL \cmag|magnitude[1]~3_combout\ : std_logic;
SIGNAL \chave2|S[1]~26_combout\ : std_logic;
SIGNAL \chave2|S[1]~18_combout\ : std_logic;
SIGNAL \somador|C2~0_combout\ : std_logic;
SIGNAL \chave1|Y[2]~2_combout\ : std_logic;
SIGNAL \chave2|S[2]~28_combout\ : std_logic;
SIGNAL \chave2|S[2]~27_combout\ : std_logic;
SIGNAL \chave2|S[2]~19_combout\ : std_logic;
SIGNAL \chave2|S[3]~21_combout\ : std_logic;
SIGNAL \chave1|Y[3]~3_combout\ : std_logic;
SIGNAL \somador|Cn_1~0_combout\ : std_logic;
SIGNAL \chave2|S[3]~20_combout\ : std_logic;
SIGNAL \chave2|S[3]~22_combout\ : std_logic;
SIGNAL \flag|zeros~0_combout\ : std_logic;
SIGNAL \flag|overflow~combout\ : std_logic;
SIGNAL \somador|Cn~0_combout\ : std_logic;
SIGNAL \somador|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmag|magnitude\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flag|ALT_INV_zeros~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_f <= f;
D <= ww_D;
zeros <= ww_zeros;
overflow <= ww_overflow;
carryout <= ww_carryout;
sinal <= ww_sinal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\flag|ALT_INV_zeros~0_combout\ <= NOT \flag|zeros~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\D[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[0]~17_combout\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\D[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[1]~18_combout\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\D[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[2]~19_combout\,
	devoe => ww_devoe,
	o => \D[2]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\D[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[3]~22_combout\,
	devoe => ww_devoe,
	o => \D[3]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\zeros~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag|ALT_INV_zeros~0_combout\,
	devoe => ww_devoe,
	o => \zeros~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \flag|overflow~combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\carryout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \somador|Cn~0_combout\,
	devoe => ww_devoe,
	o => \carryout~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\sinal~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \somador|S\(3),
	devoe => ww_devoe,
	o => \sinal~output_o\);

-- Location: IOIBUF_X16_Y24_N8
\f[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(1),
	o => \f[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\f[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(2),
	o => \f[2]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\X[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\f[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(0),
	o => \f[0]~input_o\);

-- Location: LCCOMB_X19_Y20_N20
\control|C0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|C0~0_combout\ = (!\f[2]~input_o\ & ((\f[0]~input_o\) # (\f[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f[0]~input_o\,
	datac => \f[2]~input_o\,
	datad => \f[1]~input_o\,
	combout => \control|C0~0_combout\);

-- Location: IOIBUF_X18_Y24_N15
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: LCCOMB_X19_Y20_N8
\chave1|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[0]~0_combout\ = (\f[1]~input_o\ & (\Y[0]~input_o\ & (\f[2]~input_o\))) # (!\f[1]~input_o\ & (!\f[2]~input_o\ & (\Y[0]~input_o\ $ (\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \f[2]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave1|Y[0]~0_combout\);

-- Location: LCCOMB_X19_Y20_N26
\control|KX\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|KX~combout\ = (!\f[0]~input_o\ & (\f[2]~input_o\ $ (\f[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f[0]~input_o\,
	datac => \f[2]~input_o\,
	datad => \f[1]~input_o\,
	combout => \control|KX~combout\);

-- Location: LCCOMB_X19_Y20_N14
\somador|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(0) = \X[0]~input_o\ $ (\control|C0~0_combout\ $ (\chave1|Y[0]~0_combout\ $ (\control|KX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \control|C0~0_combout\,
	datac => \chave1|Y[0]~0_combout\,
	datad => \control|KX~combout\,
	combout => \somador|S\(0));

-- Location: IOIBUF_X28_Y24_N1
\X[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: IOIBUF_X18_Y24_N22
\X[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X19_Y20_N16
\cmag|magnitude[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[0]~0_combout\ = (\X[1]~input_o\ & (((\X[0]~input_o\ & !\Y[0]~input_o\)) # (!\Y[1]~input_o\))) # (!\X[1]~input_o\ & (\X[0]~input_o\ & (!\Y[0]~input_o\ & !\Y[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \cmag|magnitude[0]~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\X[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: LCCOMB_X24_Y20_N24
\cmag|magnitude[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[0]~1_combout\ = (\Y[2]~input_o\ & (\cmag|magnitude[0]~0_combout\ & \X[2]~input_o\)) # (!\Y[2]~input_o\ & ((\cmag|magnitude[0]~0_combout\) # (\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \cmag|magnitude[0]~0_combout\,
	datac => \X[2]~input_o\,
	combout => \cmag|magnitude[0]~1_combout\);

-- Location: IOIBUF_X28_Y24_N15
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: LCCOMB_X24_Y20_N2
\chave2|S[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~16_combout\ = (\X[3]~input_o\ & ((\cmag|magnitude[0]~1_combout\) # (!\Y[3]~input_o\))) # (!\X[3]~input_o\ & (\cmag|magnitude[0]~1_combout\ & !\Y[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \cmag|magnitude[0]~1_combout\,
	datad => \Y[3]~input_o\,
	combout => \chave2|S[0]~16_combout\);

-- Location: LCCOMB_X19_Y20_N10
\chave2|S[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~24_combout\ = (\f[1]~input_o\ & ((\f[2]~input_o\ & ((\chave2|S[0]~16_combout\))) # (!\f[2]~input_o\ & (\somador|S\(0))))) # (!\f[1]~input_o\ & (((\somador|S\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \f[2]~input_o\,
	datac => \somador|S\(0),
	datad => \chave2|S[0]~16_combout\,
	combout => \chave2|S[0]~24_combout\);

-- Location: LCCOMB_X19_Y20_N24
\chave2|S[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~23_combout\ = (\X[0]~input_o\ & ((\Y[0]~input_o\) # ((\f[2]~input_o\ & \f[1]~input_o\)))) # (!\X[0]~input_o\ & (\Y[0]~input_o\ & (\f[2]~input_o\ & \f[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \f[2]~input_o\,
	datad => \f[1]~input_o\,
	combout => \chave2|S[0]~23_combout\);

-- Location: LCCOMB_X23_Y20_N26
\chave2|S[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~15_combout\ = (\f[1]~input_o\ & \f[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[1]~input_o\,
	datad => \f[2]~input_o\,
	combout => \chave2|S[0]~15_combout\);

-- Location: LCCOMB_X23_Y20_N24
\chave2|S[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~14_combout\ = (!\f[2]~input_o\) # (!\f[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f[0]~input_o\,
	datad => \f[2]~input_o\,
	combout => \chave2|S[0]~14_combout\);

-- Location: LCCOMB_X19_Y20_N18
\chave2|S[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~17_combout\ = (\chave2|S[0]~24_combout\ & ((\chave2|S[0]~23_combout\) # (\chave2|S[0]~15_combout\ $ (\chave2|S[0]~14_combout\)))) # (!\chave2|S[0]~24_combout\ & (\chave2|S[0]~23_combout\ & (\chave2|S[0]~15_combout\ $ 
-- (!\chave2|S[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[0]~24_combout\,
	datab => \chave2|S[0]~23_combout\,
	datac => \chave2|S[0]~15_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[0]~17_combout\);

-- Location: LCCOMB_X19_Y20_N28
\chave2|S[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[1]~25_combout\ = (\X[1]~input_o\ & (((\Y[1]~input_o\) # (!\f[2]~input_o\)) # (!\f[0]~input_o\))) # (!\X[1]~input_o\ & (\Y[1]~input_o\ & ((!\f[2]~input_o\) # (!\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[0]~input_o\,
	datab => \f[2]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \chave2|S[1]~25_combout\);

-- Location: LCCOMB_X23_Y20_N4
\cmag|magnitude[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[1]~2_combout\ = (\Y[2]~input_o\ & ((\Y[3]~input_o\ $ (\X[3]~input_o\)) # (!\X[2]~input_o\))) # (!\Y[2]~input_o\ & ((\X[2]~input_o\) # (\Y[3]~input_o\ $ (\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[2]~input_o\,
	datab => \X[2]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \X[3]~input_o\,
	combout => \cmag|magnitude[1]~2_combout\);

-- Location: LCCOMB_X19_Y20_N30
\chave1|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[1]~1_combout\ = (\f[1]~input_o\ & (((\f[2]~input_o\ & \Y[1]~input_o\)))) # (!\f[1]~input_o\ & (!\f[2]~input_o\ & (\f[0]~input_o\ $ (\Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \f[0]~input_o\,
	datac => \f[2]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \chave1|Y[1]~1_combout\);

-- Location: LCCOMB_X19_Y20_N0
\somador|C1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|C1~0_combout\ = (\control|C0~0_combout\ & ((\chave1|Y[0]~0_combout\) # (\X[0]~input_o\ $ (\control|KX~combout\)))) # (!\control|C0~0_combout\ & (\chave1|Y[0]~0_combout\ & (\X[0]~input_o\ $ (\control|KX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \control|C0~0_combout\,
	datac => \chave1|Y[0]~0_combout\,
	datad => \control|KX~combout\,
	combout => \somador|C1~0_combout\);

-- Location: LCCOMB_X19_Y20_N2
\somador|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(1) = \chave1|Y[1]~1_combout\ $ (\somador|C1~0_combout\ $ (\X[1]~input_o\ $ (\control|KX~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave1|Y[1]~1_combout\,
	datab => \somador|C1~0_combout\,
	datac => \X[1]~input_o\,
	datad => \control|KX~combout\,
	combout => \somador|S\(1));

-- Location: LCCOMB_X19_Y20_N4
\cmag|magnitude[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[1]~3_combout\ = (\X[0]~input_o\ & ((\X[1]~input_o\ $ (\Y[1]~input_o\)) # (!\Y[0]~input_o\))) # (!\X[0]~input_o\ & ((\Y[0]~input_o\) # (\X[1]~input_o\ $ (\Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \Y[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \Y[1]~input_o\,
	combout => \cmag|magnitude[1]~3_combout\);

-- Location: LCCOMB_X19_Y20_N22
\chave2|S[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[1]~26_combout\ = (\chave2|S[0]~14_combout\ & (((\somador|S\(1))))) # (!\chave2|S[0]~14_combout\ & ((\cmag|magnitude[1]~2_combout\) # ((\cmag|magnitude[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmag|magnitude[1]~2_combout\,
	datab => \somador|S\(1),
	datac => \cmag|magnitude[1]~3_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[1]~26_combout\);

-- Location: LCCOMB_X19_Y20_N12
\chave2|S[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[1]~18_combout\ = (\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & (\chave2|S[1]~25_combout\)) # (!\chave2|S[0]~14_combout\ & ((!\chave2|S[1]~26_combout\))))) # (!\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & 
-- ((\chave2|S[1]~26_combout\))) # (!\chave2|S[0]~14_combout\ & (\chave2|S[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[0]~15_combout\,
	datab => \chave2|S[1]~25_combout\,
	datac => \chave2|S[1]~26_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[1]~18_combout\);

-- Location: LCCOMB_X19_Y20_N6
\somador|C2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|C2~0_combout\ = (\chave1|Y[1]~1_combout\ & ((\somador|C1~0_combout\) # (\X[1]~input_o\ $ (\control|KX~combout\)))) # (!\chave1|Y[1]~1_combout\ & (\somador|C1~0_combout\ & (\X[1]~input_o\ $ (\control|KX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave1|Y[1]~1_combout\,
	datab => \somador|C1~0_combout\,
	datac => \X[1]~input_o\,
	datad => \control|KX~combout\,
	combout => \somador|C2~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\chave1|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[2]~2_combout\ = (\f[2]~input_o\ & (\f[1]~input_o\ & (\Y[2]~input_o\))) # (!\f[2]~input_o\ & (!\f[1]~input_o\ & (\Y[2]~input_o\ $ (\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \f[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave1|Y[2]~2_combout\);

-- Location: LCCOMB_X23_Y20_N0
\somador|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(2) = \somador|C2~0_combout\ $ (\X[2]~input_o\ $ (\control|KX~combout\ $ (\chave1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|C2~0_combout\,
	datab => \X[2]~input_o\,
	datac => \control|KX~combout\,
	datad => \chave1|Y[2]~2_combout\,
	combout => \somador|S\(2));

-- Location: LCCOMB_X22_Y20_N24
\cmag|magnitude[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude\(1) = (\cmag|magnitude[1]~3_combout\) # (\cmag|magnitude[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmag|magnitude[1]~3_combout\,
	datad => \cmag|magnitude[1]~2_combout\,
	combout => \cmag|magnitude\(1));

-- Location: LCCOMB_X24_Y20_N4
\cmag|magnitude[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude\(2) = (\cmag|magnitude\(1) & ((\X[3]~input_o\ & (!\cmag|magnitude[0]~1_combout\ & \Y[3]~input_o\)) # (!\X[3]~input_o\ & ((\Y[3]~input_o\) # (!\cmag|magnitude[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \cmag|magnitude[0]~1_combout\,
	datac => \cmag|magnitude\(1),
	datad => \Y[3]~input_o\,
	combout => \cmag|magnitude\(2));

-- Location: LCCOMB_X23_Y20_N12
\chave2|S[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[2]~28_combout\ = (\f[2]~input_o\ & ((\f[1]~input_o\ & ((\cmag|magnitude\(2)))) # (!\f[1]~input_o\ & (!\somador|S\(2))))) # (!\f[2]~input_o\ & (!\somador|S\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \somador|S\(2),
	datac => \f[1]~input_o\,
	datad => \cmag|magnitude\(2),
	combout => \chave2|S[2]~28_combout\);

-- Location: LCCOMB_X23_Y20_N18
\chave2|S[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[2]~27_combout\ = (\Y[2]~input_o\ & ((\X[2]~input_o\) # ((\f[2]~input_o\ & \f[1]~input_o\)))) # (!\Y[2]~input_o\ & (\f[2]~input_o\ & (\f[1]~input_o\ & \X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \f[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \X[2]~input_o\,
	combout => \chave2|S[2]~27_combout\);

-- Location: LCCOMB_X23_Y20_N2
\chave2|S[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[2]~19_combout\ = (\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & ((\chave2|S[2]~27_combout\))) # (!\chave2|S[0]~14_combout\ & (\chave2|S[2]~28_combout\)))) # (!\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & 
-- (!\chave2|S[2]~28_combout\)) # (!\chave2|S[0]~14_combout\ & ((\chave2|S[2]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[2]~28_combout\,
	datab => \chave2|S[2]~27_combout\,
	datac => \chave2|S[0]~15_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[2]~19_combout\);

-- Location: LCCOMB_X23_Y20_N20
\chave2|S[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[3]~21_combout\ = (\f[1]~input_o\ & (!\f[0]~input_o\ & ((\X[3]~input_o\) # (\Y[3]~input_o\)))) # (!\f[1]~input_o\ & (\X[3]~input_o\ & (\Y[3]~input_o\ & \f[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \f[1]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave2|S[3]~21_combout\);

-- Location: LCCOMB_X23_Y20_N22
\chave1|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[3]~3_combout\ = (\f[2]~input_o\ & (\f[1]~input_o\ & (\Y[3]~input_o\))) # (!\f[2]~input_o\ & (!\f[1]~input_o\ & (\Y[3]~input_o\ $ (\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \f[1]~input_o\,
	datac => \Y[3]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave1|Y[3]~3_combout\);

-- Location: LCCOMB_X23_Y20_N16
\somador|Cn_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|Cn_1~0_combout\ = (\somador|C2~0_combout\ & ((\chave1|Y[2]~2_combout\) # (\X[2]~input_o\ $ (\control|KX~combout\)))) # (!\somador|C2~0_combout\ & (\chave1|Y[2]~2_combout\ & (\X[2]~input_o\ $ (\control|KX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|C2~0_combout\,
	datab => \X[2]~input_o\,
	datac => \control|KX~combout\,
	datad => \chave1|Y[2]~2_combout\,
	combout => \somador|Cn_1~0_combout\);

-- Location: LCCOMB_X23_Y20_N10
\somador|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(3) = \X[3]~input_o\ $ (\control|KX~combout\ $ (\chave1|Y[3]~3_combout\ $ (\somador|Cn_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \control|KX~combout\,
	datac => \chave1|Y[3]~3_combout\,
	datad => \somador|Cn_1~0_combout\,
	combout => \somador|S\(3));

-- Location: LCCOMB_X23_Y20_N28
\chave2|S[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[3]~20_combout\ = ((!\f[0]~input_o\ & !\f[1]~input_o\)) # (!\f[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \f[0]~input_o\,
	datac => \f[1]~input_o\,
	datad => \f[2]~input_o\,
	combout => \chave2|S[3]~20_combout\);

-- Location: LCCOMB_X23_Y20_N30
\chave2|S[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[3]~22_combout\ = (\f[2]~input_o\ & ((\chave2|S[3]~21_combout\) # ((\somador|S\(3) & \chave2|S[3]~20_combout\)))) # (!\f[2]~input_o\ & (((\somador|S\(3) & \chave2|S[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \chave2|S[3]~21_combout\,
	datac => \somador|S\(3),
	datad => \chave2|S[3]~20_combout\,
	combout => \chave2|S[3]~22_combout\);

-- Location: LCCOMB_X22_Y21_N16
\flag|zeros~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag|zeros~0_combout\ = (\somador|S\(1)) # ((\somador|S\(3)) # ((\somador|S\(0)) # (\somador|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|S\(1),
	datab => \somador|S\(3),
	datac => \somador|S\(0),
	datad => \somador|S\(2),
	combout => \flag|zeros~0_combout\);

-- Location: LCCOMB_X23_Y20_N14
\flag|overflow\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag|overflow~combout\ = (\chave1|Y[3]~3_combout\ & (!\somador|Cn_1~0_combout\ & (\X[3]~input_o\ $ (\control|KX~combout\)))) # (!\chave1|Y[3]~3_combout\ & (\somador|Cn_1~0_combout\ & (\X[3]~input_o\ $ (!\control|KX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \control|KX~combout\,
	datac => \chave1|Y[3]~3_combout\,
	datad => \somador|Cn_1~0_combout\,
	combout => \flag|overflow~combout\);

-- Location: LCCOMB_X23_Y20_N8
\somador|Cn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|Cn~0_combout\ = (\chave1|Y[3]~3_combout\ & ((\somador|Cn_1~0_combout\) # (\X[3]~input_o\ $ (\control|KX~combout\)))) # (!\chave1|Y[3]~3_combout\ & (\somador|Cn_1~0_combout\ & (\X[3]~input_o\ $ (\control|KX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[3]~input_o\,
	datab => \control|KX~combout\,
	datac => \chave1|Y[3]~3_combout\,
	datad => \somador|Cn_1~0_combout\,
	combout => \somador|Cn~0_combout\);

ww_D(0) <= \D[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(2) <= \D[2]~output_o\;

ww_D(3) <= \D[3]~output_o\;

ww_zeros <= \zeros~output_o\;

ww_overflow <= \overflow~output_o\;

ww_carryout <= \carryout~output_o\;

ww_sinal <= \sinal~output_o\;
END structure;


