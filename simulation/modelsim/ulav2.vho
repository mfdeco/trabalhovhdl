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

-- DATE "07/13/2023 21:18:54"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULAV2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Y : IN std_logic_vector(3 DOWNTO 0);
	f : IN std_logic_vector(2 DOWNTO 0);
	Res : BUFFER std_logic_vector(3 DOWNTO 0);
	zeros : BUFFER std_logic;
	overflow : BUFFER std_logic;
	carryout : BUFFER std_logic;
	sinal : BUFFER std_logic;
	X_dec7 : BUFFER std_logic_vector(6 DOWNTO 0);
	Y_dec7 : BUFFER std_logic_vector(6 DOWNTO 0);
	D_dec7 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END ULAV2;

-- Design Ports Information
-- Res[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Res[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zeros	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryout	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sinal	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X_dec7[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y_dec7[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_dec7[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_f : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Res : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_zeros : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_carryout : std_logic;
SIGNAL ww_sinal : std_logic;
SIGNAL ww_X_dec7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Y_dec7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_D_dec7 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Res[0]~output_o\ : std_logic;
SIGNAL \Res[1]~output_o\ : std_logic;
SIGNAL \Res[2]~output_o\ : std_logic;
SIGNAL \Res[3]~output_o\ : std_logic;
SIGNAL \zeros~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \carryout~output_o\ : std_logic;
SIGNAL \sinal~output_o\ : std_logic;
SIGNAL \X_dec7[0]~output_o\ : std_logic;
SIGNAL \X_dec7[1]~output_o\ : std_logic;
SIGNAL \X_dec7[2]~output_o\ : std_logic;
SIGNAL \X_dec7[3]~output_o\ : std_logic;
SIGNAL \X_dec7[4]~output_o\ : std_logic;
SIGNAL \X_dec7[5]~output_o\ : std_logic;
SIGNAL \X_dec7[6]~output_o\ : std_logic;
SIGNAL \Y_dec7[0]~output_o\ : std_logic;
SIGNAL \Y_dec7[1]~output_o\ : std_logic;
SIGNAL \Y_dec7[2]~output_o\ : std_logic;
SIGNAL \Y_dec7[3]~output_o\ : std_logic;
SIGNAL \Y_dec7[4]~output_o\ : std_logic;
SIGNAL \Y_dec7[5]~output_o\ : std_logic;
SIGNAL \Y_dec7[6]~output_o\ : std_logic;
SIGNAL \D_dec7[0]~output_o\ : std_logic;
SIGNAL \D_dec7[1]~output_o\ : std_logic;
SIGNAL \D_dec7[2]~output_o\ : std_logic;
SIGNAL \D_dec7[3]~output_o\ : std_logic;
SIGNAL \D_dec7[4]~output_o\ : std_logic;
SIGNAL \D_dec7[5]~output_o\ : std_logic;
SIGNAL \D_dec7[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \conta|q_temp[0]~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \conta|q_temp[1]~2_combout\ : std_logic;
SIGNAL \conta|q_temp[2]~1_combout\ : std_logic;
SIGNAL \conta|q_temp[3]~0_combout\ : std_logic;
SIGNAL \Y[3]~input_o\ : std_logic;
SIGNAL \Y[0]~input_o\ : std_logic;
SIGNAL \Y[1]~input_o\ : std_logic;
SIGNAL \cmag|magnitude[0]~0_combout\ : std_logic;
SIGNAL \Y[2]~input_o\ : std_logic;
SIGNAL \cmag|magnitude[0]~1_combout\ : std_logic;
SIGNAL \chave2|S[0]~16_combout\ : std_logic;
SIGNAL \f[2]~input_o\ : std_logic;
SIGNAL \f[1]~input_o\ : std_logic;
SIGNAL \f[0]~input_o\ : std_logic;
SIGNAL \control|C0~0_combout\ : std_logic;
SIGNAL \chave1|Y[0]~0_combout\ : std_logic;
SIGNAL \control|KX~combout\ : std_logic;
SIGNAL \chave2|S[0]~24_combout\ : std_logic;
SIGNAL \chave2|S[0]~15_combout\ : std_logic;
SIGNAL \chave2|S[0]~23_combout\ : std_logic;
SIGNAL \chave2|S[0]~14_combout\ : std_logic;
SIGNAL \chave2|S[0]~17_combout\ : std_logic;
SIGNAL \chave2|S[1]~25_combout\ : std_logic;
SIGNAL \cmag|magnitude[1]~2_combout\ : std_logic;
SIGNAL \cmag|magnitude[1]~3_combout\ : std_logic;
SIGNAL \chave1|Y[1]~1_combout\ : std_logic;
SIGNAL \somador|C1~0_combout\ : std_logic;
SIGNAL \chave2|S[1]~26_combout\ : std_logic;
SIGNAL \chave2|S[1]~18_combout\ : std_logic;
SIGNAL \somador|C2~0_combout\ : std_logic;
SIGNAL \chave1|Y[2]~2_combout\ : std_logic;
SIGNAL \chave2|S[2]~28_combout\ : std_logic;
SIGNAL \chave2|S[2]~27_combout\ : std_logic;
SIGNAL \chave2|S[2]~19_combout\ : std_logic;
SIGNAL \chave2|S[3]~21_combout\ : std_logic;
SIGNAL \chave2|S[3]~20_combout\ : std_logic;
SIGNAL \somador|Cn_1~0_combout\ : std_logic;
SIGNAL \chave1|Y[3]~3_combout\ : std_logic;
SIGNAL \chave2|S[3]~22_combout\ : std_logic;
SIGNAL \flag|zeros~0_combout\ : std_logic;
SIGNAL \flag|overflow~combout\ : std_logic;
SIGNAL \somador|Cn~0_combout\ : std_logic;
SIGNAL \saidaX|Mux6~0_combout\ : std_logic;
SIGNAL \saidaX|Mux5~0_combout\ : std_logic;
SIGNAL \saidaX|Mux4~0_combout\ : std_logic;
SIGNAL \saidaX|Mux3~0_combout\ : std_logic;
SIGNAL \saidaX|Mux2~0_combout\ : std_logic;
SIGNAL \saidaX|Mux1~0_combout\ : std_logic;
SIGNAL \saidaX|Mux0~0_combout\ : std_logic;
SIGNAL \saidaY|Mux6~0_combout\ : std_logic;
SIGNAL \saidaY|Mux5~0_combout\ : std_logic;
SIGNAL \saidaY|Mux4~0_combout\ : std_logic;
SIGNAL \saidaY|Mux3~0_combout\ : std_logic;
SIGNAL \saidaY|Mux2~0_combout\ : std_logic;
SIGNAL \saidaY|Mux1~0_combout\ : std_logic;
SIGNAL \saidaY|Mux0~0_combout\ : std_logic;
SIGNAL \saidaD|Mux6~0_combout\ : std_logic;
SIGNAL \saidaD|Mux5~0_combout\ : std_logic;
SIGNAL \saidaD|Mux4~0_combout\ : std_logic;
SIGNAL \saidaD|Mux3~0_combout\ : std_logic;
SIGNAL \saidaD|Mux2~0_combout\ : std_logic;
SIGNAL \saidaD|Mux1~0_combout\ : std_logic;
SIGNAL \saidaD|Mux0~0_combout\ : std_logic;
SIGNAL \somador|S\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \conta|q_temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cmag|magnitude\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \saidaD|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \saidaY|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \saidaX|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \flag|ALT_INV_zeros~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_Y <= Y;
ww_f <= f;
Res <= ww_Res;
zeros <= ww_zeros;
overflow <= ww_overflow;
carryout <= ww_carryout;
sinal <= ww_sinal;
X_dec7 <= ww_X_dec7;
Y_dec7 <= ww_Y_dec7;
D_dec7 <= ww_D_dec7;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\saidaD|ALT_INV_Mux6~0_combout\ <= NOT \saidaD|Mux6~0_combout\;
\saidaY|ALT_INV_Mux6~0_combout\ <= NOT \saidaY|Mux6~0_combout\;
\saidaX|ALT_INV_Mux6~0_combout\ <= NOT \saidaX|Mux6~0_combout\;
\flag|ALT_INV_zeros~0_combout\ <= NOT \flag|zeros~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\Res[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[0]~17_combout\,
	devoe => ww_devoe,
	o => \Res[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\Res[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[1]~18_combout\,
	devoe => ww_devoe,
	o => \Res[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\Res[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[2]~19_combout\,
	devoe => ww_devoe,
	o => \Res[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\Res[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \chave2|S[3]~22_combout\,
	devoe => ww_devoe,
	o => \Res[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
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

-- Location: IOOBUF_X107_Y73_N16
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

-- Location: IOOBUF_X94_Y73_N9
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

-- Location: IOOBUF_X94_Y73_N2
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

-- Location: IOOBUF_X69_Y73_N23
\X_dec7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\X_dec7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\X_dec7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\X_dec7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\X_dec7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\X_dec7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\X_dec7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaX|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \X_dec7[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\Y_dec7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\Y_dec7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\Y_dec7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\Y_dec7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\Y_dec7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\Y_dec7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\Y_dec7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaY|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \Y_dec7[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\D_dec7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\D_dec7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\D_dec7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\D_dec7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\D_dec7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\D_dec7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\D_dec7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saidaD|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \D_dec7[6]~output_o\);

-- Location: IOIBUF_X115_Y18_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X114_Y18_N12
\conta|q_temp[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta|q_temp[0]~3_combout\ = !\conta|q_temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conta|q_temp\(0),
	combout => \conta|q_temp[0]~3_combout\);

-- Location: IOIBUF_X115_Y15_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X114_Y18_N13
\conta|q_temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \conta|q_temp[0]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta|q_temp\(0));

-- Location: LCCOMB_X114_Y18_N10
\conta|q_temp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta|q_temp[1]~2_combout\ = \conta|q_temp\(1) $ (\conta|q_temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \conta|q_temp\(1),
	datad => \conta|q_temp\(0),
	combout => \conta|q_temp[1]~2_combout\);

-- Location: FF_X114_Y18_N11
\conta|q_temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \conta|q_temp[1]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta|q_temp\(1));

-- Location: LCCOMB_X114_Y18_N24
\conta|q_temp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta|q_temp[2]~1_combout\ = \conta|q_temp\(2) $ (((\conta|q_temp\(0) & \conta|q_temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(0),
	datac => \conta|q_temp\(2),
	datad => \conta|q_temp\(1),
	combout => \conta|q_temp[2]~1_combout\);

-- Location: FF_X114_Y18_N25
\conta|q_temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \conta|q_temp[2]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta|q_temp\(2));

-- Location: LCCOMB_X114_Y18_N30
\conta|q_temp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \conta|q_temp[3]~0_combout\ = \conta|q_temp\(3) $ (((\conta|q_temp\(0) & (\conta|q_temp\(2) & \conta|q_temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(0),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(3),
	datad => \conta|q_temp\(1),
	combout => \conta|q_temp[3]~0_combout\);

-- Location: FF_X114_Y18_N31
\conta|q_temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~input_o\,
	d => \conta|q_temp[3]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \conta|q_temp\(3));

-- Location: IOIBUF_X115_Y16_N8
\Y[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(3),
	o => \Y[3]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\Y[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(0),
	o => \Y[0]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\Y[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(1),
	o => \Y[1]~input_o\);

-- Location: LCCOMB_X114_Y18_N20
\cmag|magnitude[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[0]~0_combout\ = (\conta|q_temp\(1) & (((!\Y[0]~input_o\ & \conta|q_temp\(0))) # (!\Y[1]~input_o\))) # (!\conta|q_temp\(1) & (!\Y[0]~input_o\ & (!\Y[1]~input_o\ & \conta|q_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \conta|q_temp\(1),
	datac => \Y[1]~input_o\,
	datad => \conta|q_temp\(0),
	combout => \cmag|magnitude[0]~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\Y[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y(2),
	o => \Y[2]~input_o\);

-- Location: LCCOMB_X114_Y18_N26
\cmag|magnitude[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[0]~1_combout\ = (\conta|q_temp\(2) & ((\cmag|magnitude[0]~0_combout\) # (!\Y[2]~input_o\))) # (!\conta|q_temp\(2) & (\cmag|magnitude[0]~0_combout\ & !\Y[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \conta|q_temp\(2),
	datac => \cmag|magnitude[0]~0_combout\,
	datad => \Y[2]~input_o\,
	combout => \cmag|magnitude[0]~1_combout\);

-- Location: LCCOMB_X114_Y18_N28
\chave2|S[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~16_combout\ = (\conta|q_temp\(3) & ((\cmag|magnitude[0]~1_combout\) # (!\Y[3]~input_o\))) # (!\conta|q_temp\(3) & (!\Y[3]~input_o\ & \cmag|magnitude[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(3),
	datac => \Y[3]~input_o\,
	datad => \cmag|magnitude[0]~1_combout\,
	combout => \chave2|S[0]~16_combout\);

-- Location: IOIBUF_X115_Y15_N8
\f[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(2),
	o => \f[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\f[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(1),
	o => \f[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\f[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f(0),
	o => \f[0]~input_o\);

-- Location: LCCOMB_X114_Y21_N30
\control|C0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|C0~0_combout\ = (!\f[2]~input_o\ & ((\f[1]~input_o\) # (\f[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datac => \f[1]~input_o\,
	datad => \f[0]~input_o\,
	combout => \control|C0~0_combout\);

-- Location: LCCOMB_X114_Y21_N18
\chave1|Y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[0]~0_combout\ = (\f[1]~input_o\ & (((\f[2]~input_o\ & \Y[0]~input_o\)))) # (!\f[1]~input_o\ & (!\f[2]~input_o\ & (\f[0]~input_o\ $ (\Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \f[0]~input_o\,
	datac => \f[2]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \chave1|Y[0]~0_combout\);

-- Location: LCCOMB_X114_Y21_N4
\control|KX\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|KX~combout\ = (!\f[0]~input_o\ & (\f[2]~input_o\ $ (\f[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datac => \f[1]~input_o\,
	datad => \f[0]~input_o\,
	combout => \control|KX~combout\);

-- Location: LCCOMB_X114_Y21_N0
\somador|S[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(0) = \control|C0~0_combout\ $ (\chave1|Y[0]~0_combout\ $ (\control|KX~combout\ $ (\conta|q_temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|C0~0_combout\,
	datab => \chave1|Y[0]~0_combout\,
	datac => \control|KX~combout\,
	datad => \conta|q_temp\(0),
	combout => \somador|S\(0));

-- Location: LCCOMB_X113_Y21_N6
\chave2|S[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~24_combout\ = (\f[1]~input_o\ & ((\f[2]~input_o\ & (\chave2|S[0]~16_combout\)) # (!\f[2]~input_o\ & ((\somador|S\(0)))))) # (!\f[1]~input_o\ & (((\somador|S\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[0]~16_combout\,
	datab => \somador|S\(0),
	datac => \f[1]~input_o\,
	datad => \f[2]~input_o\,
	combout => \chave2|S[0]~24_combout\);

-- Location: LCCOMB_X113_Y21_N16
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

-- Location: LCCOMB_X114_Y21_N20
\chave2|S[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~23_combout\ = (\conta|q_temp\(0) & ((\Y[0]~input_o\) # ((\f[2]~input_o\ & \f[1]~input_o\)))) # (!\conta|q_temp\(0) & (\f[2]~input_o\ & (\f[1]~input_o\ & \Y[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \conta|q_temp\(0),
	datac => \f[1]~input_o\,
	datad => \Y[0]~input_o\,
	combout => \chave2|S[0]~23_combout\);

-- Location: LCCOMB_X114_Y21_N24
\chave2|S[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~14_combout\ = (!\f[0]~input_o\) # (!\f[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \f[2]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave2|S[0]~14_combout\);

-- Location: LCCOMB_X113_Y21_N30
\chave2|S[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[0]~17_combout\ = (\chave2|S[0]~24_combout\ & ((\chave2|S[0]~23_combout\) # (\chave2|S[0]~15_combout\ $ (\chave2|S[0]~14_combout\)))) # (!\chave2|S[0]~24_combout\ & (\chave2|S[0]~23_combout\ & (\chave2|S[0]~15_combout\ $ 
-- (!\chave2|S[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[0]~24_combout\,
	datab => \chave2|S[0]~15_combout\,
	datac => \chave2|S[0]~23_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[0]~17_combout\);

-- Location: LCCOMB_X114_Y21_N6
\chave2|S[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[1]~25_combout\ = (\Y[1]~input_o\ & (((\conta|q_temp\(1)) # (!\f[0]~input_o\)) # (!\f[2]~input_o\))) # (!\Y[1]~input_o\ & (\conta|q_temp\(1) & ((!\f[0]~input_o\) # (!\f[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \conta|q_temp\(1),
	datad => \f[0]~input_o\,
	combout => \chave2|S[1]~25_combout\);

-- Location: LCCOMB_X114_Y18_N22
\cmag|magnitude[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[1]~2_combout\ = (\conta|q_temp\(3) & ((\conta|q_temp\(2) $ (\Y[2]~input_o\)) # (!\Y[3]~input_o\))) # (!\conta|q_temp\(3) & ((\Y[3]~input_o\) # (\conta|q_temp\(2) $ (\Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(3),
	datab => \conta|q_temp\(2),
	datac => \Y[3]~input_o\,
	datad => \Y[2]~input_o\,
	combout => \cmag|magnitude[1]~2_combout\);

-- Location: LCCOMB_X114_Y18_N16
\cmag|magnitude[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude[1]~3_combout\ = (\Y[0]~input_o\ & ((\conta|q_temp\(1) $ (\Y[1]~input_o\)) # (!\conta|q_temp\(0)))) # (!\Y[0]~input_o\ & ((\conta|q_temp\(0)) # (\conta|q_temp\(1) $ (\Y[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \conta|q_temp\(1),
	datac => \Y[1]~input_o\,
	datad => \conta|q_temp\(0),
	combout => \cmag|magnitude[1]~3_combout\);

-- Location: LCCOMB_X114_Y21_N26
\chave1|Y[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[1]~1_combout\ = (\f[2]~input_o\ & (\Y[1]~input_o\ & (\f[1]~input_o\))) # (!\f[2]~input_o\ & (!\f[1]~input_o\ & (\Y[1]~input_o\ $ (\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \f[1]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave1|Y[1]~1_combout\);

-- Location: LCCOMB_X114_Y21_N28
\somador|C1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|C1~0_combout\ = (\control|C0~0_combout\ & ((\chave1|Y[0]~0_combout\) # (\control|KX~combout\ $ (\conta|q_temp\(0))))) # (!\control|C0~0_combout\ & (\chave1|Y[0]~0_combout\ & (\control|KX~combout\ $ (\conta|q_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|C0~0_combout\,
	datab => \chave1|Y[0]~0_combout\,
	datac => \control|KX~combout\,
	datad => \conta|q_temp\(0),
	combout => \somador|C1~0_combout\);

-- Location: LCCOMB_X114_Y21_N10
\somador|S[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(1) = \chave1|Y[1]~1_combout\ $ (\conta|q_temp\(1) $ (\control|KX~combout\ $ (\somador|C1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave1|Y[1]~1_combout\,
	datab => \conta|q_temp\(1),
	datac => \control|KX~combout\,
	datad => \somador|C1~0_combout\,
	combout => \somador|S\(1));

-- Location: LCCOMB_X113_Y21_N0
\chave2|S[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[1]~26_combout\ = (\chave2|S[0]~14_combout\ & (((\somador|S\(1))))) # (!\chave2|S[0]~14_combout\ & ((\cmag|magnitude[1]~2_combout\) # ((\cmag|magnitude[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmag|magnitude[1]~2_combout\,
	datab => \cmag|magnitude[1]~3_combout\,
	datac => \somador|S\(1),
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[1]~26_combout\);

-- Location: LCCOMB_X113_Y21_N26
\chave2|S[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[1]~18_combout\ = (\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & (\chave2|S[1]~25_combout\)) # (!\chave2|S[0]~14_combout\ & ((!\chave2|S[1]~26_combout\))))) # (!\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & 
-- ((\chave2|S[1]~26_combout\))) # (!\chave2|S[0]~14_combout\ & (\chave2|S[1]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[1]~25_combout\,
	datab => \chave2|S[0]~15_combout\,
	datac => \chave2|S[1]~26_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[1]~18_combout\);

-- Location: LCCOMB_X113_Y21_N4
\cmag|magnitude[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude\(1) = (\cmag|magnitude[1]~2_combout\) # (\cmag|magnitude[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmag|magnitude[1]~2_combout\,
	datad => \cmag|magnitude[1]~3_combout\,
	combout => \cmag|magnitude\(1));

-- Location: LCCOMB_X114_Y21_N12
\cmag|magnitude[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \cmag|magnitude\(2) = (\cmag|magnitude\(1) & ((\cmag|magnitude[0]~1_combout\ & (\Y[3]~input_o\ & !\conta|q_temp\(3))) # (!\cmag|magnitude[0]~1_combout\ & ((\Y[3]~input_o\) # (!\conta|q_temp\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cmag|magnitude[0]~1_combout\,
	datab => \Y[3]~input_o\,
	datac => \cmag|magnitude\(1),
	datad => \conta|q_temp\(3),
	combout => \cmag|magnitude\(2));

-- Location: LCCOMB_X114_Y21_N22
\somador|C2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|C2~0_combout\ = (\chave1|Y[1]~1_combout\ & ((\somador|C1~0_combout\) # (\conta|q_temp\(1) $ (\control|KX~combout\)))) # (!\chave1|Y[1]~1_combout\ & (\somador|C1~0_combout\ & (\conta|q_temp\(1) $ (\control|KX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave1|Y[1]~1_combout\,
	datab => \conta|q_temp\(1),
	datac => \control|KX~combout\,
	datad => \somador|C1~0_combout\,
	combout => \somador|C2~0_combout\);

-- Location: LCCOMB_X114_Y21_N16
\chave1|Y[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[2]~2_combout\ = (\f[1]~input_o\ & (\Y[2]~input_o\ & (\f[2]~input_o\))) # (!\f[1]~input_o\ & (!\f[2]~input_o\ & (\Y[2]~input_o\ $ (\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \Y[2]~input_o\,
	datac => \f[2]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave1|Y[2]~2_combout\);

-- Location: LCCOMB_X113_Y21_N8
\somador|S[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(2) = \control|KX~combout\ $ (\conta|q_temp\(2) $ (\somador|C2~0_combout\ $ (\chave1|Y[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|KX~combout\,
	datab => \conta|q_temp\(2),
	datac => \somador|C2~0_combout\,
	datad => \chave1|Y[2]~2_combout\,
	combout => \somador|S\(2));

-- Location: LCCOMB_X113_Y21_N12
\chave2|S[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[2]~28_combout\ = (\f[1]~input_o\ & ((\f[2]~input_o\ & (\cmag|magnitude\(2))) # (!\f[2]~input_o\ & ((!\somador|S\(2)))))) # (!\f[1]~input_o\ & (((!\somador|S\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \cmag|magnitude\(2),
	datac => \somador|S\(2),
	datad => \f[2]~input_o\,
	combout => \chave2|S[2]~28_combout\);

-- Location: LCCOMB_X113_Y21_N14
\chave2|S[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[2]~27_combout\ = (\conta|q_temp\(2) & ((\Y[2]~input_o\) # ((\f[1]~input_o\ & \f[2]~input_o\)))) # (!\conta|q_temp\(2) & (\f[1]~input_o\ & (\Y[2]~input_o\ & \f[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \conta|q_temp\(2),
	datac => \Y[2]~input_o\,
	datad => \f[2]~input_o\,
	combout => \chave2|S[2]~27_combout\);

-- Location: LCCOMB_X113_Y21_N2
\chave2|S[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[2]~19_combout\ = (\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & ((\chave2|S[2]~27_combout\))) # (!\chave2|S[0]~14_combout\ & (\chave2|S[2]~28_combout\)))) # (!\chave2|S[0]~15_combout\ & ((\chave2|S[0]~14_combout\ & 
-- (!\chave2|S[2]~28_combout\)) # (!\chave2|S[0]~14_combout\ & ((\chave2|S[2]~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[2]~28_combout\,
	datab => \chave2|S[0]~15_combout\,
	datac => \chave2|S[2]~27_combout\,
	datad => \chave2|S[0]~14_combout\,
	combout => \chave2|S[2]~19_combout\);

-- Location: LCCOMB_X114_Y21_N2
\chave2|S[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[3]~21_combout\ = (\f[1]~input_o\ & (!\f[0]~input_o\ & ((\conta|q_temp\(3)) # (\Y[3]~input_o\)))) # (!\f[1]~input_o\ & (\conta|q_temp\(3) & (\Y[3]~input_o\ & \f[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[1]~input_o\,
	datab => \conta|q_temp\(3),
	datac => \Y[3]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave2|S[3]~21_combout\);

-- Location: LCCOMB_X114_Y21_N14
\chave2|S[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[3]~20_combout\ = ((!\f[1]~input_o\ & !\f[0]~input_o\)) # (!\f[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datac => \f[1]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave2|S[3]~20_combout\);

-- Location: LCCOMB_X113_Y21_N20
\somador|Cn_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|Cn_1~0_combout\ = (\somador|C2~0_combout\ & ((\chave1|Y[2]~2_combout\) # (\control|KX~combout\ $ (\conta|q_temp\(2))))) # (!\somador|C2~0_combout\ & (\chave1|Y[2]~2_combout\ & (\control|KX~combout\ $ (\conta|q_temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|KX~combout\,
	datab => \conta|q_temp\(2),
	datac => \somador|C2~0_combout\,
	datad => \chave1|Y[2]~2_combout\,
	combout => \somador|Cn_1~0_combout\);

-- Location: LCCOMB_X114_Y21_N8
\chave1|Y[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave1|Y[3]~3_combout\ = (\f[2]~input_o\ & (\Y[3]~input_o\ & (\f[1]~input_o\))) # (!\f[2]~input_o\ & (!\f[1]~input_o\ & (\Y[3]~input_o\ $ (\f[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f[2]~input_o\,
	datab => \Y[3]~input_o\,
	datac => \f[1]~input_o\,
	datad => \f[0]~input_o\,
	combout => \chave1|Y[3]~3_combout\);

-- Location: LCCOMB_X113_Y21_N22
\somador|S[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|S\(3) = \control|KX~combout\ $ (\somador|Cn_1~0_combout\ $ (\chave1|Y[3]~3_combout\ $ (\conta|q_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|KX~combout\,
	datab => \somador|Cn_1~0_combout\,
	datac => \chave1|Y[3]~3_combout\,
	datad => \conta|q_temp\(3),
	combout => \somador|S\(3));

-- Location: LCCOMB_X113_Y21_N28
\chave2|S[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \chave2|S[3]~22_combout\ = (\chave2|S[3]~21_combout\ & ((\f[2]~input_o\) # ((\chave2|S[3]~20_combout\ & \somador|S\(3))))) # (!\chave2|S[3]~21_combout\ & (\chave2|S[3]~20_combout\ & (\somador|S\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~21_combout\,
	datab => \chave2|S[3]~20_combout\,
	datac => \somador|S\(3),
	datad => \f[2]~input_o\,
	combout => \chave2|S[3]~22_combout\);

-- Location: LCCOMB_X113_Y21_N18
\flag|zeros~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag|zeros~0_combout\ = (\somador|S\(3)) # ((\somador|S\(1)) # ((\somador|S\(0)) # (\somador|S\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \somador|S\(3),
	datab => \somador|S\(1),
	datac => \somador|S\(0),
	datad => \somador|S\(2),
	combout => \flag|zeros~0_combout\);

-- Location: LCCOMB_X113_Y21_N10
\flag|overflow\ : cycloneive_lcell_comb
-- Equation(s):
-- \flag|overflow~combout\ = (\somador|Cn_1~0_combout\ & (!\chave1|Y[3]~3_combout\ & (\control|KX~combout\ $ (!\conta|q_temp\(3))))) # (!\somador|Cn_1~0_combout\ & (\chave1|Y[3]~3_combout\ & (\control|KX~combout\ $ (\conta|q_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|KX~combout\,
	datab => \somador|Cn_1~0_combout\,
	datac => \chave1|Y[3]~3_combout\,
	datad => \conta|q_temp\(3),
	combout => \flag|overflow~combout\);

-- Location: LCCOMB_X113_Y21_N24
\somador|Cn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \somador|Cn~0_combout\ = (\somador|Cn_1~0_combout\ & ((\chave1|Y[3]~3_combout\) # (\control|KX~combout\ $ (\conta|q_temp\(3))))) # (!\somador|Cn_1~0_combout\ & (\chave1|Y[3]~3_combout\ & (\control|KX~combout\ $ (\conta|q_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|KX~combout\,
	datab => \somador|Cn_1~0_combout\,
	datac => \chave1|Y[3]~3_combout\,
	datad => \conta|q_temp\(3),
	combout => \somador|Cn~0_combout\);

-- Location: LCCOMB_X114_Y20_N24
\saidaX|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux6~0_combout\ = (\conta|q_temp\(0) & ((\conta|q_temp\(3)) # (\conta|q_temp\(1) $ (\conta|q_temp\(2))))) # (!\conta|q_temp\(0) & ((\conta|q_temp\(1)) # (\conta|q_temp\(2) $ (\conta|q_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y20_N2
\saidaX|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux5~0_combout\ = (\conta|q_temp\(1) & (!\conta|q_temp\(3) & ((\conta|q_temp\(0)) # (!\conta|q_temp\(2))))) # (!\conta|q_temp\(1) & (\conta|q_temp\(0) & (\conta|q_temp\(2) $ (!\conta|q_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y20_N0
\saidaX|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux4~0_combout\ = (\conta|q_temp\(1) & (((\conta|q_temp\(0) & !\conta|q_temp\(3))))) # (!\conta|q_temp\(1) & ((\conta|q_temp\(2) & ((!\conta|q_temp\(3)))) # (!\conta|q_temp\(2) & (\conta|q_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y20_N18
\saidaX|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux3~0_combout\ = (\conta|q_temp\(1) & ((\conta|q_temp\(2) & (\conta|q_temp\(0))) # (!\conta|q_temp\(2) & (!\conta|q_temp\(0) & \conta|q_temp\(3))))) # (!\conta|q_temp\(1) & (!\conta|q_temp\(3) & (\conta|q_temp\(2) $ (\conta|q_temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y20_N4
\saidaX|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux2~0_combout\ = (\conta|q_temp\(2) & (\conta|q_temp\(3) & ((\conta|q_temp\(1)) # (!\conta|q_temp\(0))))) # (!\conta|q_temp\(2) & (\conta|q_temp\(1) & (!\conta|q_temp\(0) & !\conta|q_temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y20_N22
\saidaX|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux1~0_combout\ = (\conta|q_temp\(1) & ((\conta|q_temp\(0) & ((\conta|q_temp\(3)))) # (!\conta|q_temp\(0) & (\conta|q_temp\(2))))) # (!\conta|q_temp\(1) & (\conta|q_temp\(2) & (\conta|q_temp\(0) $ (\conta|q_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y20_N16
\saidaX|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaX|Mux0~0_combout\ = (\conta|q_temp\(2) & (!\conta|q_temp\(1) & (\conta|q_temp\(0) $ (!\conta|q_temp\(3))))) # (!\conta|q_temp\(2) & (\conta|q_temp\(0) & (\conta|q_temp\(1) $ (!\conta|q_temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \conta|q_temp\(1),
	datab => \conta|q_temp\(2),
	datac => \conta|q_temp\(0),
	datad => \conta|q_temp\(3),
	combout => \saidaX|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y22_N12
\saidaY|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux6~0_combout\ = (\Y[0]~input_o\ & ((\Y[3]~input_o\) # (\Y[1]~input_o\ $ (\Y[2]~input_o\)))) # (!\Y[0]~input_o\ & ((\Y[1]~input_o\) # (\Y[2]~input_o\ $ (\Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y22_N2
\saidaY|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux5~0_combout\ = (\Y[0]~input_o\ & (\Y[3]~input_o\ $ (((\Y[1]~input_o\) # (!\Y[2]~input_o\))))) # (!\Y[0]~input_o\ & (\Y[1]~input_o\ & (!\Y[2]~input_o\ & !\Y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y22_N16
\saidaY|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux4~0_combout\ = (\Y[1]~input_o\ & (\Y[0]~input_o\ & ((!\Y[3]~input_o\)))) # (!\Y[1]~input_o\ & ((\Y[2]~input_o\ & ((!\Y[3]~input_o\))) # (!\Y[2]~input_o\ & (\Y[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y22_N22
\saidaY|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux3~0_combout\ = (\Y[1]~input_o\ & ((\Y[0]~input_o\ & (\Y[2]~input_o\)) # (!\Y[0]~input_o\ & (!\Y[2]~input_o\ & \Y[3]~input_o\)))) # (!\Y[1]~input_o\ & (!\Y[3]~input_o\ & (\Y[0]~input_o\ $ (\Y[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y22_N28
\saidaY|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux2~0_combout\ = (\Y[2]~input_o\ & (\Y[3]~input_o\ & ((\Y[1]~input_o\) # (!\Y[0]~input_o\)))) # (!\Y[2]~input_o\ & (!\Y[0]~input_o\ & (\Y[1]~input_o\ & !\Y[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y22_N26
\saidaY|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux1~0_combout\ = (\Y[1]~input_o\ & ((\Y[0]~input_o\ & ((\Y[3]~input_o\))) # (!\Y[0]~input_o\ & (\Y[2]~input_o\)))) # (!\Y[1]~input_o\ & (\Y[2]~input_o\ & (\Y[0]~input_o\ $ (\Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\saidaY|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaY|Mux0~0_combout\ = (\Y[2]~input_o\ & (!\Y[1]~input_o\ & (\Y[0]~input_o\ $ (!\Y[3]~input_o\)))) # (!\Y[2]~input_o\ & (\Y[0]~input_o\ & (\Y[1]~input_o\ $ (!\Y[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y[0]~input_o\,
	datab => \Y[1]~input_o\,
	datac => \Y[2]~input_o\,
	datad => \Y[3]~input_o\,
	combout => \saidaY|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y20_N14
\saidaD|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux6~0_combout\ = (\chave2|S[0]~17_combout\ & ((\chave2|S[3]~22_combout\) # (\chave2|S[1]~18_combout\ $ (\chave2|S[2]~19_combout\)))) # (!\chave2|S[0]~17_combout\ & ((\chave2|S[1]~18_combout\) # (\chave2|S[3]~22_combout\ $ 
-- (\chave2|S[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y20_N28
\saidaD|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux5~0_combout\ = (\chave2|S[1]~18_combout\ & (!\chave2|S[3]~22_combout\ & ((\chave2|S[0]~17_combout\) # (!\chave2|S[2]~19_combout\)))) # (!\chave2|S[1]~18_combout\ & (\chave2|S[0]~17_combout\ & (\chave2|S[3]~22_combout\ $ 
-- (!\chave2|S[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y20_N30
\saidaD|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux4~0_combout\ = (\chave2|S[1]~18_combout\ & (!\chave2|S[3]~22_combout\ & ((\chave2|S[0]~17_combout\)))) # (!\chave2|S[1]~18_combout\ & ((\chave2|S[2]~19_combout\ & (!\chave2|S[3]~22_combout\)) # (!\chave2|S[2]~19_combout\ & 
-- ((\chave2|S[0]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y20_N8
\saidaD|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux3~0_combout\ = (\chave2|S[1]~18_combout\ & ((\chave2|S[2]~19_combout\ & ((\chave2|S[0]~17_combout\))) # (!\chave2|S[2]~19_combout\ & (\chave2|S[3]~22_combout\ & !\chave2|S[0]~17_combout\)))) # (!\chave2|S[1]~18_combout\ & 
-- (!\chave2|S[3]~22_combout\ & (\chave2|S[2]~19_combout\ $ (\chave2|S[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y20_N26
\saidaD|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux2~0_combout\ = (\chave2|S[3]~22_combout\ & (\chave2|S[2]~19_combout\ & ((\chave2|S[1]~18_combout\) # (!\chave2|S[0]~17_combout\)))) # (!\chave2|S[3]~22_combout\ & (\chave2|S[1]~18_combout\ & (!\chave2|S[2]~19_combout\ & 
-- !\chave2|S[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y20_N12
\saidaD|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux1~0_combout\ = (\chave2|S[3]~22_combout\ & ((\chave2|S[0]~17_combout\ & (\chave2|S[1]~18_combout\)) # (!\chave2|S[0]~17_combout\ & ((\chave2|S[2]~19_combout\))))) # (!\chave2|S[3]~22_combout\ & (\chave2|S[2]~19_combout\ & 
-- (\chave2|S[1]~18_combout\ $ (\chave2|S[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y20_N10
\saidaD|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saidaD|Mux0~0_combout\ = (\chave2|S[3]~22_combout\ & (\chave2|S[0]~17_combout\ & (\chave2|S[1]~18_combout\ $ (\chave2|S[2]~19_combout\)))) # (!\chave2|S[3]~22_combout\ & (!\chave2|S[1]~18_combout\ & (\chave2|S[2]~19_combout\ $ 
-- (\chave2|S[0]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chave2|S[3]~22_combout\,
	datab => \chave2|S[1]~18_combout\,
	datac => \chave2|S[2]~19_combout\,
	datad => \chave2|S[0]~17_combout\,
	combout => \saidaD|Mux0~0_combout\);

ww_Res(0) <= \Res[0]~output_o\;

ww_Res(1) <= \Res[1]~output_o\;

ww_Res(2) <= \Res[2]~output_o\;

ww_Res(3) <= \Res[3]~output_o\;

ww_zeros <= \zeros~output_o\;

ww_overflow <= \overflow~output_o\;

ww_carryout <= \carryout~output_o\;

ww_sinal <= \sinal~output_o\;

ww_X_dec7(0) <= \X_dec7[0]~output_o\;

ww_X_dec7(1) <= \X_dec7[1]~output_o\;

ww_X_dec7(2) <= \X_dec7[2]~output_o\;

ww_X_dec7(3) <= \X_dec7[3]~output_o\;

ww_X_dec7(4) <= \X_dec7[4]~output_o\;

ww_X_dec7(5) <= \X_dec7[5]~output_o\;

ww_X_dec7(6) <= \X_dec7[6]~output_o\;

ww_Y_dec7(0) <= \Y_dec7[0]~output_o\;

ww_Y_dec7(1) <= \Y_dec7[1]~output_o\;

ww_Y_dec7(2) <= \Y_dec7[2]~output_o\;

ww_Y_dec7(3) <= \Y_dec7[3]~output_o\;

ww_Y_dec7(4) <= \Y_dec7[4]~output_o\;

ww_Y_dec7(5) <= \Y_dec7[5]~output_o\;

ww_Y_dec7(6) <= \Y_dec7[6]~output_o\;

ww_D_dec7(0) <= \D_dec7[0]~output_o\;

ww_D_dec7(1) <= \D_dec7[1]~output_o\;

ww_D_dec7(2) <= \D_dec7[2]~output_o\;

ww_D_dec7(3) <= \D_dec7[3]~output_o\;

ww_D_dec7(4) <= \D_dec7[4]~output_o\;

ww_D_dec7(5) <= \D_dec7[5]~output_o\;

ww_D_dec7(6) <= \D_dec7[6]~output_o\;
END structure;


