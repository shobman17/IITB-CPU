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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/23/2022 18:31:37"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	prog_reg IS
    PORT (
	A1 : IN std_logic_vector(2 DOWNTO 0);
	A2 : IN std_logic_vector(2 DOWNTO 0);
	A3 : IN std_logic_vector(2 DOWNTO 0);
	D1 : BUFFER std_logic_vector(15 DOWNTO 0);
	D2 : BUFFER std_logic_vector(15 DOWNTO 0);
	D3 : IN std_logic_vector(15 DOWNTO 0);
	clk : IN std_logic;
	w_enable : IN std_logic
	);
END prog_reg;

-- Design Ports Information
-- D1[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[2]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[3]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[4]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[5]	=>  Location: PIN_21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[6]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[7]	=>  Location: PIN_96,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[8]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[9]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[10]	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[11]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[12]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[13]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[14]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1[15]	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[2]	=>  Location: PIN_15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[3]	=>  Location: PIN_17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[4]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[5]	=>  Location: PIN_93,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[6]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[7]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[8]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[9]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[10]	=>  Location: PIN_102,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[11]	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[12]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[13]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[14]	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2[15]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1[2]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[1]	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2[2]	=>  Location: PIN_97,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[0]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_enable	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3[2]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3[1]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[1]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[2]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[3]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[5]	=>  Location: PIN_118,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[6]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[7]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[8]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[9]	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[10]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[11]	=>  Location: PIN_14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[12]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[13]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[14]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3[15]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF prog_reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_D1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_D3 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_w_enable : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D1[0]~output_o\ : std_logic;
SIGNAL \D1[1]~output_o\ : std_logic;
SIGNAL \D1[2]~output_o\ : std_logic;
SIGNAL \D1[3]~output_o\ : std_logic;
SIGNAL \D1[4]~output_o\ : std_logic;
SIGNAL \D1[5]~output_o\ : std_logic;
SIGNAL \D1[6]~output_o\ : std_logic;
SIGNAL \D1[7]~output_o\ : std_logic;
SIGNAL \D1[8]~output_o\ : std_logic;
SIGNAL \D1[9]~output_o\ : std_logic;
SIGNAL \D1[10]~output_o\ : std_logic;
SIGNAL \D1[11]~output_o\ : std_logic;
SIGNAL \D1[12]~output_o\ : std_logic;
SIGNAL \D1[13]~output_o\ : std_logic;
SIGNAL \D1[14]~output_o\ : std_logic;
SIGNAL \D1[15]~output_o\ : std_logic;
SIGNAL \D2[0]~output_o\ : std_logic;
SIGNAL \D2[1]~output_o\ : std_logic;
SIGNAL \D2[2]~output_o\ : std_logic;
SIGNAL \D2[3]~output_o\ : std_logic;
SIGNAL \D2[4]~output_o\ : std_logic;
SIGNAL \D2[5]~output_o\ : std_logic;
SIGNAL \D2[6]~output_o\ : std_logic;
SIGNAL \D2[7]~output_o\ : std_logic;
SIGNAL \D2[8]~output_o\ : std_logic;
SIGNAL \D2[9]~output_o\ : std_logic;
SIGNAL \D2[10]~output_o\ : std_logic;
SIGNAL \D2[11]~output_o\ : std_logic;
SIGNAL \D2[12]~output_o\ : std_logic;
SIGNAL \D2[13]~output_o\ : std_logic;
SIGNAL \D2[14]~output_o\ : std_logic;
SIGNAL \D2[15]~output_o\ : std_logic;
SIGNAL \A1[1]~input_o\ : std_logic;
SIGNAL \A1[0]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D3[0]~input_o\ : std_logic;
SIGNAL \A3[2]~input_o\ : std_logic;
SIGNAL \A3[0]~input_o\ : std_logic;
SIGNAL \w_enable~input_o\ : std_logic;
SIGNAL \A3[1]~input_o\ : std_logic;
SIGNAL \e1~combout\ : std_logic;
SIGNAL \e0~combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \e2~combout\ : std_logic;
SIGNAL \e3~combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \A1[2]~input_o\ : std_logic;
SIGNAL \e4~combout\ : std_logic;
SIGNAL \e6~combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \e5~combout\ : std_logic;
SIGNAL \e7~combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \D3[1]~input_o\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \D3[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \D3[3]~input_o\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \D3[4]~input_o\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \D3[5]~input_o\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \D3[6]~input_o\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \D3[7]~input_o\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \D3[8]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \D3[9]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \D3[10]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \D3[11]~input_o\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \D3[12]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \D3[13]~input_o\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \D3[14]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \D3[15]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \A2[2]~input_o\ : std_logic;
SIGNAL \A2[0]~input_o\ : std_logic;
SIGNAL \A2[1]~input_o\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux29~2_combout\ : std_logic;
SIGNAL \Mux29~3_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux24~1_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \reg5|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg6|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg4|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg7|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg2|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg1|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg0|storage\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \reg3|storage\ : std_logic_vector(15 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_A1 <= A1;
ww_A2 <= A2;
ww_A3 <= A3;
D1 <= ww_D1;
D2 <= ww_D2;
ww_D3 <= D3;
ww_clk <= clk;
ww_w_enable <= w_enable;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y24_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X40_Y0_N2
\D1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~4_combout\,
	devoe => ww_devoe,
	o => \D1[0]~output_o\);

-- Location: IOOBUF_X60_Y13_N16
\D1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~4_combout\,
	devoe => ww_devoe,
	o => \D1[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\D1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~4_combout\,
	devoe => ww_devoe,
	o => \D1[2]~output_o\);

-- Location: IOOBUF_X14_Y21_N2
\D1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~4_combout\,
	devoe => ww_devoe,
	o => \D1[3]~output_o\);

-- Location: IOOBUF_X60_Y14_N23
\D1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~4_combout\,
	devoe => ww_devoe,
	o => \D1[4]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\D1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~4_combout\,
	devoe => ww_devoe,
	o => \D1[5]~output_o\);

-- Location: IOOBUF_X60_Y22_N16
\D1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~4_combout\,
	devoe => ww_devoe,
	o => \D1[6]~output_o\);

-- Location: IOOBUF_X60_Y22_N24
\D1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~4_combout\,
	devoe => ww_devoe,
	o => \D1[7]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\D1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \D1[8]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\D1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~4_combout\,
	devoe => ww_devoe,
	o => \D1[9]~output_o\);

-- Location: IOOBUF_X60_Y23_N16
\D1[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~4_combout\,
	devoe => ww_devoe,
	o => \D1[10]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\D1[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~4_combout\,
	devoe => ww_devoe,
	o => \D1[11]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\D1[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~4_combout\,
	devoe => ww_devoe,
	o => \D1[12]~output_o\);

-- Location: IOOBUF_X25_Y28_N23
\D1[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~4_combout\,
	devoe => ww_devoe,
	o => \D1[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\D1[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~4_combout\,
	devoe => ww_devoe,
	o => \D1[14]~output_o\);

-- Location: IOOBUF_X25_Y27_N23
\D1[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~4_combout\,
	devoe => ww_devoe,
	o => \D1[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\D2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~4_combout\,
	devoe => ww_devoe,
	o => \D2[0]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\D2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~4_combout\,
	devoe => ww_devoe,
	o => \D2[1]~output_o\);

-- Location: IOOBUF_X0_Y19_N23
\D2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~4_combout\,
	devoe => ww_devoe,
	o => \D2[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\D2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~4_combout\,
	devoe => ww_devoe,
	o => \D2[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\D2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \D2[4]~output_o\);

-- Location: IOOBUF_X60_Y15_N16
\D2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \D2[5]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\D2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \D2[6]~output_o\);

-- Location: IOOBUF_X58_Y36_N9
\D2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~4_combout\,
	devoe => ww_devoe,
	o => \D2[7]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\D2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~4_combout\,
	devoe => ww_devoe,
	o => \D2[8]~output_o\);

-- Location: IOOBUF_X60_Y14_N16
\D2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~4_combout\,
	devoe => ww_devoe,
	o => \D2[9]~output_o\);

-- Location: IOOBUF_X60_Y23_N2
\D2[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~4_combout\,
	devoe => ww_devoe,
	o => \D2[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\D2[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~4_combout\,
	devoe => ww_devoe,
	o => \D2[11]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\D2[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~4_combout\,
	devoe => ww_devoe,
	o => \D2[12]~output_o\);

-- Location: IOOBUF_X36_Y0_N30
\D2[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~4_combout\,
	devoe => ww_devoe,
	o => \D2[13]~output_o\);

-- Location: IOOBUF_X25_Y29_N16
\D2[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~4_combout\,
	devoe => ww_devoe,
	o => \D2[14]~output_o\);

-- Location: IOOBUF_X60_Y23_N23
\D2[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~4_combout\,
	devoe => ww_devoe,
	o => \D2[15]~output_o\);

-- Location: IOIBUF_X24_Y0_N8
\A1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(1),
	o => \A1[1]~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\A1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(0),
	o => \A1[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X60_Y15_N22
\D3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(0),
	o => \D3[0]~input_o\);

-- Location: IOIBUF_X12_Y21_N1
\A3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3(2),
	o => \A3[2]~input_o\);

-- Location: IOIBUF_X19_Y0_N22
\A3[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3(0),
	o => \A3[0]~input_o\);

-- Location: IOIBUF_X16_Y21_N15
\w_enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w_enable,
	o => \w_enable~input_o\);

-- Location: IOIBUF_X58_Y36_N1
\A3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3(1),
	o => \A3[1]~input_o\);

-- Location: LCCOMB_X26_Y20_N6
e1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e1~combout\ = (!\A3[2]~input_o\ & (\A3[0]~input_o\ & (\w_enable~input_o\ & !\A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e1~combout\);

-- Location: FF_X34_Y19_N9
\reg1|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(0));

-- Location: LCCOMB_X26_Y20_N24
e0 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e0~combout\ = (!\A3[2]~input_o\ & (!\A3[0]~input_o\ & (\w_enable~input_o\ & !\A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e0~combout\);

-- Location: FF_X34_Y19_N3
\reg0|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(0));

-- Location: LCCOMB_X34_Y19_N8
\Mux15~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(0))) # (!\A1[0]~input_o\ & ((\reg0|storage\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(0),
	datad => \reg0|storage\(0),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X26_Y20_N20
e2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e2~combout\ = (!\A3[2]~input_o\ & (!\A3[0]~input_o\ & (\w_enable~input_o\ & \A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e2~combout\);

-- Location: FF_X35_Y19_N25
\reg2|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(0));

-- Location: LCCOMB_X26_Y20_N18
e3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e3~combout\ = (!\A3[2]~input_o\ & (\A3[0]~input_o\ & (\w_enable~input_o\ & \A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e3~combout\);

-- Location: FF_X35_Y19_N3
\reg3|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(0));

-- Location: LCCOMB_X35_Y19_N24
\Mux15~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\Mux15~2_combout\ & (((\reg3|storage\(0))) # (!\A1[1]~input_o\))) # (!\Mux15~2_combout\ & (\A1[1]~input_o\ & (\reg2|storage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(0),
	datad => \reg3|storage\(0),
	combout => \Mux15~3_combout\);

-- Location: IOIBUF_X25_Y27_N15
\A1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1(2),
	o => \A1[2]~input_o\);

-- Location: LCCOMB_X26_Y20_N8
e4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e4~combout\ = (\A3[2]~input_o\ & (!\A3[0]~input_o\ & (\w_enable~input_o\ & !\A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e4~combout\);

-- Location: FF_X33_Y18_N11
\reg4|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(0));

-- Location: LCCOMB_X26_Y20_N30
e6 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e6~combout\ = (\A3[2]~input_o\ & (!\A3[0]~input_o\ & (\w_enable~input_o\ & \A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e6~combout\);

-- Location: FF_X33_Y18_N25
\reg6|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(0));

-- Location: LCCOMB_X33_Y18_N24
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\A1[1]~input_o\ & (((\reg6|storage\(0)) # (\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & (\reg4|storage\(0) & ((!\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \reg4|storage\(0),
	datac => \reg6|storage\(0),
	datad => \A1[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X26_Y20_N4
e5 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e5~combout\ = (\A3[2]~input_o\ & (\A3[0]~input_o\ & (\w_enable~input_o\ & !\A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e5~combout\);

-- Location: FF_X34_Y18_N1
\reg5|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(0));

-- Location: LCCOMB_X26_Y20_N26
e7 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \e7~combout\ = (\A3[2]~input_o\ & (\A3[0]~input_o\ & (\w_enable~input_o\ & \A3[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3[2]~input_o\,
	datab => \A3[0]~input_o\,
	datac => \w_enable~input_o\,
	datad => \A3[1]~input_o\,
	combout => \e7~combout\);

-- Location: FF_X34_Y18_N11
\reg7|storage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[0]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(0));

-- Location: LCCOMB_X34_Y18_N0
\Mux15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & (((\reg7|storage\(0))) # (!\A1[0]~input_o\))) # (!\Mux15~0_combout\ & (\A1[0]~input_o\ & (\reg5|storage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(0),
	datad => \reg7|storage\(0),
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X34_Y18_N20
\Mux15~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\A1[2]~input_o\ & ((\Mux15~1_combout\))) # (!\A1[2]~input_o\ & (\Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \A1[2]~input_o\,
	datac => \Mux15~1_combout\,
	combout => \Mux15~4_combout\);

-- Location: IOIBUF_X60_Y23_N8
\D3[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(1),
	o => \D3[1]~input_o\);

-- Location: FF_X33_Y18_N15
\reg4|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(1));

-- Location: FF_X33_Y18_N5
\reg6|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(1));

-- Location: LCCOMB_X33_Y18_N4
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(1)))) # (!\A1[1]~input_o\ & (\reg4|storage\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(1),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(1),
	datad => \A1[1]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: FF_X34_Y18_N7
\reg5|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(1));

-- Location: FF_X34_Y18_N17
\reg7|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(1));

-- Location: LCCOMB_X34_Y18_N6
\Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\reg7|storage\(1))) # (!\A1[0]~input_o\))) # (!\Mux14~0_combout\ & (\A1[0]~input_o\ & (\reg5|storage\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(1),
	datad => \reg7|storage\(1),
	combout => \Mux14~1_combout\);

-- Location: FF_X34_Y19_N5
\reg1|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(1));

-- Location: FF_X34_Y19_N7
\reg0|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(1));

-- Location: LCCOMB_X34_Y19_N4
\Mux14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(1))) # (!\A1[0]~input_o\ & ((\reg0|storage\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(1),
	datad => \reg0|storage\(1),
	combout => \Mux14~2_combout\);

-- Location: FF_X35_Y19_N15
\reg3|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(1));

-- Location: FF_X35_Y19_N21
\reg2|storage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[1]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(1));

-- Location: LCCOMB_X35_Y19_N20
\Mux14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux14~2_combout\ & ((\reg3|storage\(1)) # ((!\A1[1]~input_o\)))) # (!\Mux14~2_combout\ & (((\reg2|storage\(1) & \A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \reg3|storage\(1),
	datac => \reg2|storage\(1),
	datad => \A1[1]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X34_Y18_N26
\Mux14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\A1[2]~input_o\ & (\Mux14~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \A1[2]~input_o\,
	datad => \Mux14~3_combout\,
	combout => \Mux14~4_combout\);

-- Location: IOIBUF_X25_Y29_N22
\D3[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(2),
	o => \D3[2]~input_o\);

-- Location: FF_X34_Y18_N15
\reg7|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(2));

-- Location: FF_X33_Y18_N9
\reg6|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(2));

-- Location: FF_X33_Y18_N3
\reg4|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(2));

-- Location: LCCOMB_X33_Y18_N8
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\A1[0]~input_o\ & (\A1[1]~input_o\)) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & (\reg6|storage\(2))) # (!\A1[1]~input_o\ & ((\reg4|storage\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \A1[1]~input_o\,
	datac => \reg6|storage\(2),
	datad => \reg4|storage\(2),
	combout => \Mux13~0_combout\);

-- Location: FF_X34_Y18_N13
\reg5|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(2));

-- Location: LCCOMB_X34_Y18_N12
\Mux13~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\reg7|storage\(2)) # ((!\A1[0]~input_o\)))) # (!\Mux13~0_combout\ & (((\reg5|storage\(2) & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(2),
	datab => \Mux13~0_combout\,
	datac => \reg5|storage\(2),
	datad => \A1[0]~input_o\,
	combout => \Mux13~1_combout\);

-- Location: FF_X34_Y19_N17
\reg1|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(2));

-- Location: FF_X34_Y19_N11
\reg0|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(2));

-- Location: LCCOMB_X34_Y19_N16
\Mux13~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(2))) # (!\A1[0]~input_o\ & ((\reg0|storage\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(2),
	datad => \reg0|storage\(2),
	combout => \Mux13~2_combout\);

-- Location: FF_X35_Y19_N9
\reg2|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(2));

-- Location: FF_X35_Y19_N19
\reg3|storage[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[2]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(2));

-- Location: LCCOMB_X35_Y19_N8
\Mux13~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (((\reg3|storage\(2))) # (!\A1[1]~input_o\))) # (!\Mux13~2_combout\ & (\A1[1]~input_o\ & (\reg2|storage\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(2),
	datad => \reg3|storage\(2),
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X34_Y18_N8
\Mux13~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\A1[2]~input_o\ & (\Mux13~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~1_combout\,
	datab => \A1[2]~input_o\,
	datad => \Mux13~3_combout\,
	combout => \Mux13~4_combout\);

-- Location: IOIBUF_X38_Y36_N15
\D3[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(3),
	o => \D3[3]~input_o\);

-- Location: FF_X33_Y18_N23
\reg4|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(3));

-- Location: FF_X33_Y18_N13
\reg6|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(3));

-- Location: LCCOMB_X33_Y18_N12
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(3)))) # (!\A1[1]~input_o\ & (\reg4|storage\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(3),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(3),
	datad => \A1[1]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: FF_X34_Y18_N19
\reg5|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(3));

-- Location: FF_X34_Y18_N29
\reg7|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(3));

-- Location: LCCOMB_X34_Y18_N18
\Mux12~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\reg7|storage\(3))) # (!\A1[0]~input_o\))) # (!\Mux12~0_combout\ & (\A1[0]~input_o\ & (\reg5|storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(3),
	datad => \reg7|storage\(3),
	combout => \Mux12~1_combout\);

-- Location: FF_X35_Y19_N31
\reg3|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(3));

-- Location: FF_X35_Y19_N5
\reg2|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(3));

-- Location: FF_X34_Y19_N29
\reg1|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(3));

-- Location: FF_X34_Y19_N31
\reg0|storage[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[3]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(3));

-- Location: LCCOMB_X34_Y19_N28
\Mux12~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(3))) # (!\A1[0]~input_o\ & ((\reg0|storage\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(3),
	datad => \reg0|storage\(3),
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X35_Y19_N4
\Mux12~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\A1[1]~input_o\ & ((\Mux12~2_combout\ & (\reg3|storage\(3))) # (!\Mux12~2_combout\ & ((\reg2|storage\(3)))))) # (!\A1[1]~input_o\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(3),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(3),
	datad => \Mux12~2_combout\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X34_Y18_N30
\Mux12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\A1[2]~input_o\ & (\Mux12~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux12~1_combout\,
	datad => \Mux12~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: IOIBUF_X40_Y36_N29
\D3[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(4),
	o => \D3[4]~input_o\);

-- Location: FF_X35_Y19_N27
\reg3|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(4));

-- Location: FF_X35_Y19_N1
\reg2|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(4));

-- Location: FF_X34_Y19_N27
\reg0|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(4));

-- Location: FF_X34_Y19_N1
\reg1|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(4));

-- Location: LCCOMB_X34_Y19_N0
\Mux11~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\A1[0]~input_o\ & (((\reg1|storage\(4)) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\reg0|storage\(4) & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|storage\(4),
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(4),
	datad => \A1[1]~input_o\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X35_Y19_N0
\Mux11~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\A1[1]~input_o\ & ((\Mux11~2_combout\ & (\reg3|storage\(4))) # (!\Mux11~2_combout\ & ((\reg2|storage\(4)))))) # (!\A1[1]~input_o\ & (((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(4),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(4),
	datad => \Mux11~2_combout\,
	combout => \Mux11~3_combout\);

-- Location: FF_X32_Y19_N11
\reg7|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(4));

-- Location: FF_X32_Y19_N25
\reg5|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(4));

-- Location: FF_X33_Y18_N27
\reg4|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(4));

-- Location: FF_X33_Y18_N1
\reg6|storage[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[4]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(4));

-- Location: LCCOMB_X33_Y18_N0
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\A1[1]~input_o\ & (((\reg6|storage\(4)) # (\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & (\reg4|storage\(4) & ((!\A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(4),
	datab => \A1[1]~input_o\,
	datac => \reg6|storage\(4),
	datad => \A1[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X32_Y19_N24
\Mux11~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (\A1[0]~input_o\ & ((\Mux11~0_combout\ & (\reg7|storage\(4))) # (!\Mux11~0_combout\ & ((\reg5|storage\(4)))))) # (!\A1[0]~input_o\ & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(4),
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(4),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X35_Y19_N12
\Mux11~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\A1[2]~input_o\ & ((\Mux11~1_combout\))) # (!\A1[2]~input_o\ & (\Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \A1[2]~input_o\,
	datac => \Mux11~1_combout\,
	combout => \Mux11~4_combout\);

-- Location: IOIBUF_X28_Y36_N1
\D3[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(5),
	o => \D3[5]~input_o\);

-- Location: FF_X34_Y19_N13
\reg1|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(5));

-- Location: FF_X34_Y19_N23
\reg0|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(5));

-- Location: LCCOMB_X34_Y19_N12
\Mux10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(5))) # (!\A1[0]~input_o\ & ((\reg0|storage\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(5),
	datad => \reg0|storage\(5),
	combout => \Mux10~2_combout\);

-- Location: FF_X35_Y19_N17
\reg3|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(5));

-- Location: FF_X35_Y19_N23
\reg2|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(5));

-- Location: LCCOMB_X35_Y19_N22
\Mux10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux10~2_combout\ & ((\reg3|storage\(5)) # ((!\A1[1]~input_o\)))) # (!\Mux10~2_combout\ & (((\reg2|storage\(5) & \A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \reg3|storage\(5),
	datac => \reg2|storage\(5),
	datad => \A1[1]~input_o\,
	combout => \Mux10~3_combout\);

-- Location: FF_X32_Y19_N23
\reg7|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(5));

-- Location: FF_X32_Y19_N13
\reg5|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(5));

-- Location: FF_X33_Y18_N7
\reg4|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(5));

-- Location: FF_X33_Y18_N21
\reg6|storage[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[5]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(5));

-- Location: LCCOMB_X33_Y18_N20
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(5)))) # (!\A1[1]~input_o\ & (\reg4|storage\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(5),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(5),
	datad => \A1[1]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X32_Y19_N12
\Mux10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (\A1[0]~input_o\ & ((\Mux10~0_combout\ & (\reg7|storage\(5))) # (!\Mux10~0_combout\ & ((\reg5|storage\(5)))))) # (!\A1[0]~input_o\ & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(5),
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(5),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X35_Y19_N10
\Mux10~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\A1[2]~input_o\ & ((\Mux10~1_combout\))) # (!\A1[2]~input_o\ & (\Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux10~3_combout\,
	datad => \Mux10~1_combout\,
	combout => \Mux10~4_combout\);

-- Location: IOIBUF_X21_Y0_N22
\D3[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(6),
	o => \D3[6]~input_o\);

-- Location: FF_X32_Y19_N27
\reg7|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(6));

-- Location: FF_X33_Y18_N17
\reg6|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(6));

-- Location: FF_X33_Y18_N19
\reg4|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(6));

-- Location: LCCOMB_X33_Y18_N16
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\reg6|storage\(6))))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\reg4|storage\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(6),
	datad => \reg4|storage\(6),
	combout => \Mux9~0_combout\);

-- Location: FF_X32_Y19_N9
\reg5|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(6));

-- Location: LCCOMB_X32_Y19_N8
\Mux9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & ((\reg7|storage\(6)) # ((!\A1[0]~input_o\)))) # (!\Mux9~0_combout\ & (((\reg5|storage\(6) & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(6),
	datab => \Mux9~0_combout\,
	datac => \reg5|storage\(6),
	datad => \A1[0]~input_o\,
	combout => \Mux9~1_combout\);

-- Location: FF_X33_Y19_N27
\reg3|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(6));

-- Location: FF_X33_Y19_N17
\reg2|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(6));

-- Location: FF_X34_Y19_N25
\reg1|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(6));

-- Location: FF_X34_Y19_N19
\reg0|storage[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[6]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(6));

-- Location: LCCOMB_X34_Y19_N24
\Mux9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(6))) # (!\A1[0]~input_o\ & ((\reg0|storage\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(6),
	datad => \reg0|storage\(6),
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X33_Y19_N16
\Mux9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\A1[1]~input_o\ & ((\Mux9~2_combout\ & (\reg3|storage\(6))) # (!\Mux9~2_combout\ & ((\reg2|storage\(6)))))) # (!\A1[1]~input_o\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(6),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(6),
	datad => \Mux9~2_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X33_Y19_N20
\Mux9~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\A1[2]~input_o\ & (\Mux9~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~1_combout\,
	datab => \A1[2]~input_o\,
	datad => \Mux9~3_combout\,
	combout => \Mux9~4_combout\);

-- Location: IOIBUF_X14_Y0_N8
\D3[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(7),
	o => \D3[7]~input_o\);

-- Location: FF_X34_Y19_N15
\reg0|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(7));

-- Location: FF_X34_Y19_N21
\reg1|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(7));

-- Location: LCCOMB_X34_Y19_N20
\Mux8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\A1[1]~input_o\ & (((\A1[0]~input_o\)))) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & ((\reg1|storage\(7)))) # (!\A1[0]~input_o\ & (\reg0|storage\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \reg0|storage\(7),
	datac => \reg1|storage\(7),
	datad => \A1[0]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: FF_X33_Y19_N23
\reg2|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(7));

-- Location: FF_X33_Y19_N1
\reg3|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(7));

-- Location: LCCOMB_X33_Y19_N22
\Mux8~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & (((\reg3|storage\(7))) # (!\A1[1]~input_o\))) # (!\Mux8~2_combout\ & (\A1[1]~input_o\ & (\reg2|storage\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(7),
	datad => \reg3|storage\(7),
	combout => \Mux8~3_combout\);

-- Location: FF_X33_Y18_N31
\reg4|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(7));

-- Location: FF_X33_Y18_N29
\reg6|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(7));

-- Location: LCCOMB_X33_Y18_N28
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(7)))) # (!\A1[1]~input_o\ & (\reg4|storage\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(7),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(7),
	datad => \A1[1]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: FF_X32_Y19_N15
\reg7|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(7));

-- Location: FF_X32_Y19_N21
\reg5|storage[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[7]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(7));

-- Location: LCCOMB_X32_Y19_N20
\Mux8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & ((\reg7|storage\(7)) # ((!\A1[0]~input_o\)))) # (!\Mux8~0_combout\ & (((\reg5|storage\(7) & \A1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~0_combout\,
	datab => \reg7|storage\(7),
	datac => \reg5|storage\(7),
	datad => \A1[0]~input_o\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X33_Y19_N18
\Mux8~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\A1[2]~input_o\ & ((\Mux8~1_combout\))) # (!\A1[2]~input_o\ & (\Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~1_combout\,
	combout => \Mux8~4_combout\);

-- Location: IOIBUF_X24_Y0_N29
\D3[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(8),
	o => \D3[8]~input_o\);

-- Location: FF_X31_Y20_N9
\reg6|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(8));

-- Location: FF_X31_Y20_N11
\reg4|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(8));

-- Location: LCCOMB_X31_Y20_N8
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\reg6|storage\(8))))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\reg4|storage\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(8),
	datad => \reg4|storage\(8),
	combout => \Mux7~0_combout\);

-- Location: FF_X32_Y19_N17
\reg5|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(8));

-- Location: FF_X32_Y19_N3
\reg7|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(8));

-- Location: LCCOMB_X32_Y19_N16
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\reg7|storage\(8))) # (!\A1[0]~input_o\))) # (!\Mux7~0_combout\ & (\A1[0]~input_o\ & (\reg5|storage\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(8),
	datad => \reg7|storage\(8),
	combout => \Mux7~1_combout\);

-- Location: FF_X33_Y19_N15
\reg3|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(8));

-- Location: FF_X33_Y19_N13
\reg2|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(8));

-- Location: FF_X27_Y20_N1
\reg1|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(8));

-- Location: FF_X27_Y20_N19
\reg0|storage[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[8]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(8));

-- Location: LCCOMB_X27_Y20_N0
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(8))) # (!\A1[0]~input_o\ & ((\reg0|storage\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(8),
	datad => \reg0|storage\(8),
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X33_Y19_N12
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\A1[1]~input_o\ & ((\Mux7~2_combout\ & (\reg3|storage\(8))) # (!\Mux7~2_combout\ & ((\reg2|storage\(8)))))) # (!\A1[1]~input_o\ & (((\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \reg3|storage\(8),
	datac => \reg2|storage\(8),
	datad => \Mux7~2_combout\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X33_Y19_N8
\Mux7~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\A1[2]~input_o\ & (\Mux7~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \A1[2]~input_o\,
	datac => \Mux7~3_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X25_Y28_N15
\D3[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(9),
	o => \D3[9]~input_o\);

-- Location: FF_X32_Y19_N31
\reg7|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(9));

-- Location: FF_X32_Y19_N29
\reg5|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(9));

-- Location: FF_X31_Y20_N13
\reg6|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(9));

-- Location: FF_X31_Y20_N7
\reg4|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(9));

-- Location: LCCOMB_X31_Y20_N12
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\reg6|storage\(9))))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\reg4|storage\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(9),
	datad => \reg4|storage\(9),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X32_Y19_N28
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\A1[0]~input_o\ & ((\Mux6~0_combout\ & (\reg7|storage\(9))) # (!\Mux6~0_combout\ & ((\reg5|storage\(9)))))) # (!\A1[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(9),
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(9),
	datad => \Mux6~0_combout\,
	combout => \Mux6~1_combout\);

-- Location: FF_X27_Y20_N31
\reg0|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(9));

-- Location: FF_X27_Y20_N29
\reg1|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(9));

-- Location: LCCOMB_X27_Y20_N28
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\A1[0]~input_o\ & (((\reg1|storage\(9)) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\reg0|storage\(9) & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|storage\(9),
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(9),
	datad => \A1[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: FF_X33_Y19_N11
\reg2|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(9));

-- Location: FF_X33_Y19_N29
\reg3|storage[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[9]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(9));

-- Location: LCCOMB_X33_Y19_N10
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux6~2_combout\ & (((\reg3|storage\(9))) # (!\A1[1]~input_o\))) # (!\Mux6~2_combout\ & (\A1[1]~input_o\ & (\reg2|storage\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(9),
	datad => \reg3|storage\(9),
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X33_Y19_N6
\Mux6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\A1[2]~input_o\ & (\Mux6~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A1[2]~input_o\,
	datac => \Mux6~1_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~4_combout\);

-- Location: IOIBUF_X19_Y21_N22
\D3[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(10),
	o => \D3[10]~input_o\);

-- Location: FF_X30_Y20_N19
\reg7|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(10));

-- Location: FF_X30_Y20_N25
\reg5|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(10));

-- Location: FF_X31_Y20_N27
\reg4|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(10));

-- Location: FF_X31_Y20_N25
\reg6|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(10));

-- Location: LCCOMB_X31_Y20_N24
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(10)))) # (!\A1[1]~input_o\ & (\reg4|storage\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(10),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(10),
	datad => \A1[1]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X30_Y20_N24
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\A1[0]~input_o\ & ((\Mux5~0_combout\ & (\reg7|storage\(10))) # (!\Mux5~0_combout\ & ((\reg5|storage\(10)))))) # (!\A1[0]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \reg7|storage\(10),
	datac => \reg5|storage\(10),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X28_Y20_N11
\reg3|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(10));

-- Location: FF_X28_Y20_N17
\reg2|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(10));

-- Location: FF_X27_Y20_N25
\reg1|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(10));

-- Location: FF_X27_Y20_N3
\reg0|storage[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[10]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(10));

-- Location: LCCOMB_X27_Y20_N24
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(10))) # (!\A1[0]~input_o\ & ((\reg0|storage\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(10),
	datad => \reg0|storage\(10),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X28_Y20_N16
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\A1[1]~input_o\ & ((\Mux5~2_combout\ & (\reg3|storage\(10))) # (!\Mux5~2_combout\ & ((\reg2|storage\(10)))))) # (!\A1[1]~input_o\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(10),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(10),
	datad => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X30_Y20_N20
\Mux5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\A1[2]~input_o\ & (\Mux5~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datab => \Mux5~1_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~4_combout\);

-- Location: IOIBUF_X25_Y26_N22
\D3[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(11),
	o => \D3[11]~input_o\);

-- Location: FF_X28_Y20_N15
\reg3|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(11));

-- Location: FF_X28_Y20_N13
\reg2|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(11));

-- Location: FF_X27_Y20_N21
\reg1|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(11));

-- Location: FF_X27_Y20_N15
\reg0|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(11));

-- Location: LCCOMB_X27_Y20_N20
\Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(11))) # (!\A1[0]~input_o\ & ((\reg0|storage\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(11),
	datad => \reg0|storage\(11),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X28_Y20_N12
\Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\A1[1]~input_o\ & ((\Mux4~2_combout\ & (\reg3|storage\(11))) # (!\Mux4~2_combout\ & ((\reg2|storage\(11)))))) # (!\A1[1]~input_o\ & (((\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(11),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(11),
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: FF_X31_Y20_N15
\reg4|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(11));

-- Location: FF_X31_Y20_N29
\reg6|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(11));

-- Location: LCCOMB_X31_Y20_N28
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(11)))) # (!\A1[1]~input_o\ & (\reg4|storage\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \reg4|storage\(11),
	datac => \reg6|storage\(11),
	datad => \A1[1]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: FF_X32_Y19_N1
\reg5|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(11));

-- Location: FF_X32_Y19_N19
\reg7|storage[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[11]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(11));

-- Location: LCCOMB_X32_Y19_N0
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\reg7|storage\(11))) # (!\A1[0]~input_o\))) # (!\Mux4~0_combout\ & (\A1[0]~input_o\ & (\reg5|storage\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(11),
	datad => \reg7|storage\(11),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X28_Y20_N0
\Mux4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\A1[2]~input_o\ & ((\Mux4~1_combout\))) # (!\A1[2]~input_o\ & (\Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux4~1_combout\,
	combout => \Mux4~4_combout\);

-- Location: IOIBUF_X14_Y21_N29
\D3[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(12),
	o => \D3[12]~input_o\);

-- Location: FF_X31_Y20_N1
\reg6|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(12));

-- Location: FF_X31_Y20_N19
\reg4|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(12));

-- Location: LCCOMB_X31_Y20_N0
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\reg6|storage\(12))))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\reg4|storage\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(12),
	datad => \reg4|storage\(12),
	combout => \Mux3~0_combout\);

-- Location: FF_X30_Y20_N23
\reg5|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(12));

-- Location: FF_X30_Y20_N17
\reg7|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(12));

-- Location: LCCOMB_X30_Y20_N22
\Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\A1[0]~input_o\ & ((\Mux3~0_combout\ & ((\reg7|storage\(12)))) # (!\Mux3~0_combout\ & (\reg5|storage\(12))))) # (!\A1[0]~input_o\ & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[0]~input_o\,
	datab => \Mux3~0_combout\,
	datac => \reg5|storage\(12),
	datad => \reg7|storage\(12),
	combout => \Mux3~1_combout\);

-- Location: FF_X27_Y20_N27
\reg0|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(12));

-- Location: FF_X27_Y20_N17
\reg1|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(12));

-- Location: LCCOMB_X27_Y20_N16
\Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\A1[0]~input_o\ & (((\reg1|storage\(12)) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\reg0|storage\(12) & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|storage\(12),
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(12),
	datad => \A1[1]~input_o\,
	combout => \Mux3~2_combout\);

-- Location: FF_X28_Y20_N3
\reg2|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(12));

-- Location: FF_X28_Y20_N21
\reg3|storage[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[12]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(12));

-- Location: LCCOMB_X28_Y20_N2
\Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux3~2_combout\ & (((\reg3|storage\(12))) # (!\A1[1]~input_o\))) # (!\Mux3~2_combout\ & (\A1[1]~input_o\ & (\reg2|storage\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(12),
	datad => \reg3|storage\(12),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X30_Y20_N26
\Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\A1[2]~input_o\ & (\Mux3~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \Mux3~3_combout\,
	datad => \A1[2]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: IOIBUF_X12_Y21_N29
\D3[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(13),
	o => \D3[13]~input_o\);

-- Location: FF_X27_Y20_N13
\reg1|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(13));

-- Location: FF_X27_Y20_N7
\reg0|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(13));

-- Location: LCCOMB_X27_Y20_N12
\Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(13))) # (!\A1[0]~input_o\ & ((\reg0|storage\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(13),
	datad => \reg0|storage\(13),
	combout => \Mux2~2_combout\);

-- Location: FF_X28_Y20_N31
\reg2|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(13));

-- Location: FF_X28_Y20_N25
\reg3|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(13));

-- Location: LCCOMB_X28_Y20_N30
\Mux2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~2_combout\ & (((\reg3|storage\(13))) # (!\A1[1]~input_o\))) # (!\Mux2~2_combout\ & (\A1[1]~input_o\ & (\reg2|storage\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(13),
	datad => \reg3|storage\(13),
	combout => \Mux2~3_combout\);

-- Location: FF_X30_Y20_N7
\reg7|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(13));

-- Location: FF_X30_Y20_N5
\reg5|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(13));

-- Location: FF_X31_Y20_N23
\reg4|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(13));

-- Location: FF_X31_Y20_N5
\reg6|storage[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[13]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(13));

-- Location: LCCOMB_X31_Y20_N4
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(13)))) # (!\A1[1]~input_o\ & (\reg4|storage\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(13),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(13),
	datad => \A1[1]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X30_Y20_N4
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\A1[0]~input_o\ & ((\Mux2~0_combout\ & (\reg7|storage\(13))) # (!\Mux2~0_combout\ & ((\reg5|storage\(13)))))) # (!\A1[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(13),
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(13),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X28_Y20_N18
\Mux2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\A1[2]~input_o\ & ((\Mux2~1_combout\))) # (!\A1[2]~input_o\ & (\Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux2~3_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux2~1_combout\,
	combout => \Mux2~4_combout\);

-- Location: IOIBUF_X19_Y21_N29
\D3[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(14),
	o => \D3[14]~input_o\);

-- Location: FF_X30_Y20_N11
\reg7|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(14));

-- Location: FF_X30_Y20_N9
\reg5|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(14));

-- Location: FF_X31_Y20_N17
\reg6|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(14));

-- Location: FF_X31_Y20_N3
\reg4|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(14));

-- Location: LCCOMB_X31_Y20_N16
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\A1[1]~input_o\ & ((\A1[0]~input_o\) # ((\reg6|storage\(14))))) # (!\A1[1]~input_o\ & (!\A1[0]~input_o\ & ((\reg4|storage\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(14),
	datad => \reg4|storage\(14),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\A1[0]~input_o\ & ((\Mux1~0_combout\ & (\reg7|storage\(14))) # (!\Mux1~0_combout\ & ((\reg5|storage\(14)))))) # (!\A1[0]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg7|storage\(14),
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(14),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X28_Y20_N23
\reg3|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(14));

-- Location: FF_X28_Y20_N5
\reg2|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(14));

-- Location: FF_X27_Y20_N9
\reg1|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(14));

-- Location: FF_X27_Y20_N11
\reg0|storage[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[14]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(14));

-- Location: LCCOMB_X27_Y20_N8
\Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\A1[1]~input_o\ & (\A1[0]~input_o\)) # (!\A1[1]~input_o\ & ((\A1[0]~input_o\ & (\reg1|storage\(14))) # (!\A1[0]~input_o\ & ((\reg0|storage\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[1]~input_o\,
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(14),
	datad => \reg0|storage\(14),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X28_Y20_N4
\Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\A1[1]~input_o\ & ((\Mux1~2_combout\ & (\reg3|storage\(14))) # (!\Mux1~2_combout\ & ((\reg2|storage\(14)))))) # (!\A1[1]~input_o\ & (((\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(14),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(14),
	datad => \Mux1~2_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\A1[2]~input_o\ & (\Mux1~1_combout\)) # (!\A1[2]~input_o\ & ((\Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~1_combout\,
	datac => \A1[2]~input_o\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~4_combout\);

-- Location: IOIBUF_X28_Y36_N8
\D3[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3(15),
	o => \D3[15]~input_o\);

-- Location: FF_X26_Y20_N11
\reg3|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|storage\(15));

-- Location: FF_X26_Y20_N17
\reg2|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|storage\(15));

-- Location: FF_X27_Y20_N23
\reg0|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|storage\(15));

-- Location: FF_X27_Y20_N5
\reg1|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|storage\(15));

-- Location: LCCOMB_X27_Y20_N4
\Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\A1[0]~input_o\ & (((\reg1|storage\(15)) # (\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & (\reg0|storage\(15) & ((!\A1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg0|storage\(15),
	datab => \A1[0]~input_o\,
	datac => \reg1|storage\(15),
	datad => \A1[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X26_Y20_N16
\Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\A1[1]~input_o\ & ((\Mux0~2_combout\ & (\reg3|storage\(15))) # (!\Mux0~2_combout\ & ((\reg2|storage\(15)))))) # (!\A1[1]~input_o\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg3|storage\(15),
	datab => \A1[1]~input_o\,
	datac => \reg2|storage\(15),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: FF_X31_Y20_N31
\reg4|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg4|storage\(15));

-- Location: FF_X31_Y20_N21
\reg6|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg6|storage\(15));

-- Location: LCCOMB_X31_Y20_N20
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\A1[0]~input_o\ & (((\A1[1]~input_o\)))) # (!\A1[0]~input_o\ & ((\A1[1]~input_o\ & ((\reg6|storage\(15)))) # (!\A1[1]~input_o\ & (\reg4|storage\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg4|storage\(15),
	datab => \A1[0]~input_o\,
	datac => \reg6|storage\(15),
	datad => \A1[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: FF_X30_Y20_N29
\reg5|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg5|storage\(15));

-- Location: FF_X30_Y20_N31
\reg7|storage[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D3[15]~input_o\,
	sload => VCC,
	ena => \e7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg7|storage\(15));

-- Location: LCCOMB_X30_Y20_N28
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & (((\reg7|storage\(15))) # (!\A1[0]~input_o\))) # (!\Mux0~0_combout\ & (\A1[0]~input_o\ & (\reg5|storage\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \A1[0]~input_o\,
	datac => \reg5|storage\(15),
	datad => \reg7|storage\(15),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X30_Y20_N0
\Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\A1[2]~input_o\ & ((\Mux0~1_combout\))) # (!\A1[2]~input_o\ & (\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1[2]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~4_combout\);

-- Location: IOIBUF_X60_Y22_N8
\A2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(2),
	o => \A2[2]~input_o\);

-- Location: IOIBUF_X14_Y21_N22
\A2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(0),
	o => \A2[0]~input_o\);

-- Location: IOIBUF_X25_Y26_N15
\A2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2(1),
	o => \A2[1]~input_o\);

-- Location: LCCOMB_X34_Y19_N2
\Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(0)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(0) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(0),
	datac => \reg0|storage\(0),
	datad => \A2[1]~input_o\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X35_Y19_N2
\Mux31~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\Mux31~2_combout\ & (((\reg3|storage\(0))) # (!\A2[1]~input_o\))) # (!\Mux31~2_combout\ & (\A2[1]~input_o\ & ((\reg2|storage\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux31~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(0),
	datad => \reg2|storage\(0),
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X33_Y18_N10
\Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\A2[1]~input_o\ & ((\A2[0]~input_o\) # ((\reg6|storage\(0))))) # (!\A2[1]~input_o\ & (!\A2[0]~input_o\ & (\reg4|storage\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \reg4|storage\(0),
	datad => \reg6|storage\(0),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X34_Y18_N10
\Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\A2[0]~input_o\ & ((\Mux31~0_combout\ & ((\reg7|storage\(0)))) # (!\Mux31~0_combout\ & (\reg5|storage\(0))))) # (!\A2[0]~input_o\ & (((\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg5|storage\(0),
	datac => \reg7|storage\(0),
	datad => \Mux31~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X34_Y18_N24
\Mux31~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\A2[2]~input_o\ & ((\Mux31~1_combout\))) # (!\A2[2]~input_o\ & (\Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2[2]~input_o\,
	datac => \Mux31~3_combout\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X34_Y19_N6
\Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(1)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(1) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(1),
	datac => \reg0|storage\(1),
	datad => \A2[1]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X35_Y19_N14
\Mux30~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~2_combout\ & (((\reg3|storage\(1))) # (!\A2[1]~input_o\))) # (!\Mux30~2_combout\ & (\A2[1]~input_o\ & ((\reg2|storage\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(1),
	datad => \reg2|storage\(1),
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X33_Y18_N14
\Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\A2[1]~input_o\ & ((\reg6|storage\(1)) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\reg4|storage\(1) & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \reg6|storage\(1),
	datac => \reg4|storage\(1),
	datad => \A2[0]~input_o\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X34_Y18_N16
\Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mux30~0_combout\ & (((\reg7|storage\(1)) # (!\A2[0]~input_o\)))) # (!\Mux30~0_combout\ & (\reg5|storage\(1) & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|storage\(1),
	datab => \Mux30~0_combout\,
	datac => \reg7|storage\(1),
	datad => \A2[0]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X34_Y18_N2
\Mux30~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\A2[2]~input_o\ & ((\Mux30~1_combout\))) # (!\A2[2]~input_o\ & (\Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux30~3_combout\,
	datac => \Mux30~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X34_Y19_N10
\Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(2))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(2),
	datad => \reg1|storage\(2),
	combout => \Mux29~2_combout\);

-- Location: LCCOMB_X35_Y19_N18
\Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~3_combout\ = (\Mux29~2_combout\ & (((\reg3|storage\(2)) # (!\A2[1]~input_o\)))) # (!\Mux29~2_combout\ & (\reg2|storage\(2) & ((\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~2_combout\,
	datab => \reg2|storage\(2),
	datac => \reg3|storage\(2),
	datad => \A2[1]~input_o\,
	combout => \Mux29~3_combout\);

-- Location: LCCOMB_X33_Y18_N2
\Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\A2[1]~input_o\ & ((\reg6|storage\(2)) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\reg4|storage\(2) & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \reg6|storage\(2),
	datac => \reg4|storage\(2),
	datad => \A2[0]~input_o\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X34_Y18_N14
\Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (\A2[0]~input_o\ & ((\Mux29~0_combout\ & (\reg7|storage\(2))) # (!\Mux29~0_combout\ & ((\reg5|storage\(2)))))) # (!\A2[0]~input_o\ & (\Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Mux29~0_combout\,
	datac => \reg7|storage\(2),
	datad => \reg5|storage\(2),
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X34_Y18_N4
\Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\A2[2]~input_o\ & ((\Mux29~1_combout\))) # (!\A2[2]~input_o\ & (\Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux29~3_combout\,
	datac => \Mux29~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X33_Y18_N22
\Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\A2[1]~input_o\ & ((\A2[0]~input_o\) # ((\reg6|storage\(3))))) # (!\A2[1]~input_o\ & (!\A2[0]~input_o\ & (\reg4|storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \reg4|storage\(3),
	datad => \reg6|storage\(3),
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X34_Y18_N28
\Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (\A2[0]~input_o\ & ((\Mux28~0_combout\ & (\reg7|storage\(3))) # (!\Mux28~0_combout\ & ((\reg5|storage\(3)))))) # (!\A2[0]~input_o\ & (\Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Mux28~0_combout\,
	datac => \reg7|storage\(3),
	datad => \reg5|storage\(3),
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X34_Y19_N30
\Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(3))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(3),
	datad => \reg1|storage\(3),
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X35_Y19_N30
\Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\A2[1]~input_o\ & ((\Mux28~2_combout\ & ((\reg3|storage\(3)))) # (!\Mux28~2_combout\ & (\reg2|storage\(3))))) # (!\A2[1]~input_o\ & (((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \reg2|storage\(3),
	datac => \reg3|storage\(3),
	datad => \Mux28~2_combout\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X34_Y18_N22
\Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (\A2[2]~input_o\ & (\Mux28~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datac => \Mux28~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X33_Y18_N26
\Mux27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\A2[1]~input_o\ & ((\A2[0]~input_o\) # ((\reg6|storage\(4))))) # (!\A2[1]~input_o\ & (!\A2[0]~input_o\ & (\reg4|storage\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \reg4|storage\(4),
	datad => \reg6|storage\(4),
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X32_Y19_N10
\Mux27~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\A2[0]~input_o\ & ((\Mux27~0_combout\ & ((\reg7|storage\(4)))) # (!\Mux27~0_combout\ & (\reg5|storage\(4))))) # (!\A2[0]~input_o\ & (((\Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg5|storage\(4),
	datac => \reg7|storage\(4),
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X34_Y19_N26
\Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(4))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(4),
	datad => \reg1|storage\(4),
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X35_Y19_N26
\Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\ & (((\reg3|storage\(4))) # (!\A2[1]~input_o\))) # (!\Mux27~2_combout\ & (\A2[1]~input_o\ & ((\reg2|storage\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(4),
	datad => \reg2|storage\(4),
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X35_Y19_N28
\Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\A2[2]~input_o\ & (\Mux27~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux27~1_combout\,
	datac => \Mux27~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X33_Y18_N6
\Mux26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\A2[1]~input_o\ & ((\A2[0]~input_o\) # ((\reg6|storage\(5))))) # (!\A2[1]~input_o\ & (!\A2[0]~input_o\ & (\reg4|storage\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \reg4|storage\(5),
	datad => \reg6|storage\(5),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X32_Y19_N22
\Mux26~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\A2[0]~input_o\ & ((\Mux26~0_combout\ & (\reg7|storage\(5))) # (!\Mux26~0_combout\ & ((\reg5|storage\(5)))))) # (!\A2[0]~input_o\ & (\Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Mux26~0_combout\,
	datac => \reg7|storage\(5),
	datad => \reg5|storage\(5),
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X34_Y19_N22
\Mux26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(5))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(5),
	datad => \reg1|storage\(5),
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X35_Y19_N16
\Mux26~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\A2[1]~input_o\ & ((\Mux26~2_combout\ & ((\reg3|storage\(5)))) # (!\Mux26~2_combout\ & (\reg2|storage\(5))))) # (!\A2[1]~input_o\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|storage\(5),
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(5),
	datad => \Mux26~2_combout\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X35_Y19_N6
\Mux26~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\A2[2]~input_o\ & (\Mux26~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux26~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X34_Y19_N18
\Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(6))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(6),
	datad => \reg1|storage\(6),
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X33_Y19_N26
\Mux25~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\A2[1]~input_o\ & ((\Mux25~2_combout\ & ((\reg3|storage\(6)))) # (!\Mux25~2_combout\ & (\reg2|storage\(6))))) # (!\A2[1]~input_o\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|storage\(6),
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(6),
	datad => \Mux25~2_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X33_Y18_N18
\Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\A2[1]~input_o\ & ((\A2[0]~input_o\) # ((\reg6|storage\(6))))) # (!\A2[1]~input_o\ & (!\A2[0]~input_o\ & (\reg4|storage\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \reg4|storage\(6),
	datad => \reg6|storage\(6),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X32_Y19_N26
\Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\A2[0]~input_o\ & ((\Mux25~0_combout\ & ((\reg7|storage\(6)))) # (!\Mux25~0_combout\ & (\reg5|storage\(6))))) # (!\A2[0]~input_o\ & (((\Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg5|storage\(6),
	datac => \reg7|storage\(6),
	datad => \Mux25~0_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X33_Y19_N24
\Mux25~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\A2[2]~input_o\ & ((\Mux25~1_combout\))) # (!\A2[2]~input_o\ & (\Mux25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux25~3_combout\,
	datac => \Mux25~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X33_Y18_N30
\Mux24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = (\A2[1]~input_o\ & ((\A2[0]~input_o\) # ((\reg6|storage\(7))))) # (!\A2[1]~input_o\ & (!\A2[0]~input_o\ & (\reg4|storage\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \A2[0]~input_o\,
	datac => \reg4|storage\(7),
	datad => \reg6|storage\(7),
	combout => \Mux24~0_combout\);

-- Location: LCCOMB_X32_Y19_N14
\Mux24~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~1_combout\ = (\Mux24~0_combout\ & (((\reg7|storage\(7)) # (!\A2[0]~input_o\)))) # (!\Mux24~0_combout\ & (\reg5|storage\(7) & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~0_combout\,
	datab => \reg5|storage\(7),
	datac => \reg7|storage\(7),
	datad => \A2[0]~input_o\,
	combout => \Mux24~1_combout\);

-- Location: LCCOMB_X34_Y19_N14
\Mux24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(7))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(7),
	datad => \reg1|storage\(7),
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X33_Y19_N0
\Mux24~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\A2[1]~input_o\ & ((\Mux24~2_combout\ & ((\reg3|storage\(7)))) # (!\Mux24~2_combout\ & (\reg2|storage\(7))))) # (!\A2[1]~input_o\ & (((\Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|storage\(7),
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(7),
	datad => \Mux24~2_combout\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X33_Y19_N2
\Mux24~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (\A2[2]~input_o\ & (\Mux24~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~1_combout\,
	datab => \Mux24~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X27_Y20_N18
\Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(8)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(8) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(8),
	datac => \reg0|storage\(8),
	datad => \A2[1]~input_o\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X33_Y19_N14
\Mux23~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\A2[1]~input_o\ & ((\Mux23~2_combout\ & ((\reg3|storage\(8)))) # (!\Mux23~2_combout\ & (\reg2|storage\(8))))) # (!\A2[1]~input_o\ & (((\Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|storage\(8),
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(8),
	datad => \Mux23~2_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X31_Y20_N10
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\A2[1]~input_o\ & ((\reg6|storage\(8)) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\reg4|storage\(8) & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \reg6|storage\(8),
	datac => \reg4|storage\(8),
	datad => \A2[0]~input_o\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X32_Y19_N2
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\A2[0]~input_o\ & ((\Mux23~0_combout\ & (\reg7|storage\(8))) # (!\Mux23~0_combout\ & ((\reg5|storage\(8)))))) # (!\A2[0]~input_o\ & (\Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Mux23~0_combout\,
	datac => \reg7|storage\(8),
	datad => \reg5|storage\(8),
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X33_Y19_N4
\Mux23~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\A2[2]~input_o\ & ((\Mux23~1_combout\))) # (!\A2[2]~input_o\ & (\Mux23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \A2[2]~input_o\,
	datad => \Mux23~1_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X31_Y20_N6
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\reg6|storage\(9)))) # (!\A2[1]~input_o\ & (\reg4|storage\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg4|storage\(9),
	datad => \reg6|storage\(9),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X32_Y19_N30
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\ & (((\reg7|storage\(9)) # (!\A2[0]~input_o\)))) # (!\Mux22~0_combout\ & (\reg5|storage\(9) & ((\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \reg5|storage\(9),
	datac => \reg7|storage\(9),
	datad => \A2[0]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X27_Y20_N30
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(9)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(9) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(9),
	datac => \reg0|storage\(9),
	datad => \A2[1]~input_o\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X33_Y19_N28
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\reg3|storage\(9))) # (!\A2[1]~input_o\))) # (!\Mux22~2_combout\ & (\A2[1]~input_o\ & ((\reg2|storage\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => \A2[1]~input_o\,
	datac => \reg3|storage\(9),
	datad => \reg2|storage\(9),
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X33_Y19_N30
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\A2[2]~input_o\ & (\Mux22~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux22~1_combout\,
	datac => \Mux22~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X31_Y20_N26
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\reg6|storage\(10)))) # (!\A2[1]~input_o\ & (\reg4|storage\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg4|storage\(10),
	datad => \reg6|storage\(10),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X30_Y20_N18
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\reg7|storage\(10))) # (!\A2[0]~input_o\))) # (!\Mux21~0_combout\ & (\A2[0]~input_o\ & ((\reg5|storage\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \A2[0]~input_o\,
	datac => \reg7|storage\(10),
	datad => \reg5|storage\(10),
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X27_Y20_N2
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(10)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(10) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(10),
	datac => \reg0|storage\(10),
	datad => \A2[1]~input_o\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X28_Y20_N10
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & (((\reg3|storage\(10)) # (!\A2[1]~input_o\)))) # (!\Mux21~2_combout\ & (\reg2|storage\(10) & ((\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~2_combout\,
	datab => \reg2|storage\(10),
	datac => \reg3|storage\(10),
	datad => \A2[1]~input_o\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X30_Y20_N2
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\A2[2]~input_o\ & (\Mux21~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[2]~input_o\,
	datab => \Mux21~1_combout\,
	datad => \Mux21~3_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X31_Y20_N14
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\reg6|storage\(11)))) # (!\A2[1]~input_o\ & (\reg4|storage\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg4|storage\(11),
	datad => \reg6|storage\(11),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X32_Y19_N18
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\A2[0]~input_o\ & ((\Mux20~0_combout\ & (\reg7|storage\(11))) # (!\Mux20~0_combout\ & ((\reg5|storage\(11)))))) # (!\A2[0]~input_o\ & (\Mux20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \Mux20~0_combout\,
	datac => \reg7|storage\(11),
	datad => \reg5|storage\(11),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X27_Y20_N14
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(11)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(11) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(11),
	datac => \reg0|storage\(11),
	datad => \A2[1]~input_o\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Mux20~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\A2[1]~input_o\ & ((\Mux20~2_combout\ & (\reg3|storage\(11))) # (!\Mux20~2_combout\ & ((\reg2|storage\(11)))))) # (!\A2[1]~input_o\ & (\Mux20~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \Mux20~2_combout\,
	datac => \reg3|storage\(11),
	datad => \reg2|storage\(11),
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X28_Y20_N26
\Mux20~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\A2[2]~input_o\ & (\Mux20~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux20~1_combout\,
	datac => \Mux20~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X31_Y20_N18
\Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\reg6|storage\(12)))) # (!\A2[1]~input_o\ & (\reg4|storage\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg4|storage\(12),
	datad => \reg6|storage\(12),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X30_Y20_N16
\Mux19~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\A2[0]~input_o\ & ((\Mux19~0_combout\ & ((\reg7|storage\(12)))) # (!\Mux19~0_combout\ & (\reg5|storage\(12))))) # (!\A2[0]~input_o\ & (((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg5|storage\(12),
	datab => \A2[0]~input_o\,
	datac => \reg7|storage\(12),
	datad => \Mux19~0_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X27_Y20_N26
\Mux19~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(12)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(12) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(12),
	datac => \reg0|storage\(12),
	datad => \A2[1]~input_o\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X28_Y20_N20
\Mux19~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\ & (((\reg3|storage\(12)) # (!\A2[1]~input_o\)))) # (!\Mux19~2_combout\ & (\reg2|storage\(12) & ((\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \reg2|storage\(12),
	datac => \reg3|storage\(12),
	datad => \A2[1]~input_o\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X28_Y20_N28
\Mux19~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\A2[2]~input_o\ & (\Mux19~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux19~1_combout\,
	datac => \Mux19~3_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X27_Y20_N6
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\A2[0]~input_o\ & ((\A2[1]~input_o\) # ((\reg1|storage\(13))))) # (!\A2[0]~input_o\ & (!\A2[1]~input_o\ & (\reg0|storage\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg0|storage\(13),
	datad => \reg1|storage\(13),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X28_Y20_N24
\Mux18~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux18~2_combout\ & (((\reg3|storage\(13)) # (!\A2[1]~input_o\)))) # (!\Mux18~2_combout\ & (\reg2|storage\(13) & ((\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg2|storage\(13),
	datab => \Mux18~2_combout\,
	datac => \reg3|storage\(13),
	datad => \A2[1]~input_o\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X31_Y20_N22
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\A2[1]~input_o\ & ((\reg6|storage\(13)) # ((\A2[0]~input_o\)))) # (!\A2[1]~input_o\ & (((\reg4|storage\(13) & !\A2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \reg6|storage\(13),
	datac => \reg4|storage\(13),
	datad => \A2[0]~input_o\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X30_Y20_N6
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\A2[0]~input_o\ & ((\Mux18~0_combout\ & ((\reg7|storage\(13)))) # (!\Mux18~0_combout\ & (\reg5|storage\(13))))) # (!\A2[0]~input_o\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg5|storage\(13),
	datac => \reg7|storage\(13),
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X28_Y20_N6
\Mux18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\A2[2]~input_o\ & ((\Mux18~1_combout\))) # (!\A2[2]~input_o\ & (\Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux18~3_combout\,
	datac => \Mux18~1_combout\,
	datad => \A2[2]~input_o\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X27_Y20_N10
\Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(14)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(14) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(14),
	datac => \reg0|storage\(14),
	datad => \A2[1]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X28_Y20_N22
\Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\Mux17~2_combout\ & (((\reg3|storage\(14)) # (!\A2[1]~input_o\)))) # (!\Mux17~2_combout\ & (\reg2|storage\(14) & ((\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \reg2|storage\(14),
	datac => \reg3|storage\(14),
	datad => \A2[1]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X31_Y20_N2
\Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\reg6|storage\(14)))) # (!\A2[1]~input_o\ & (\reg4|storage\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg4|storage\(14),
	datad => \reg6|storage\(14),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X30_Y20_N10
\Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\A2[0]~input_o\ & ((\Mux17~0_combout\ & ((\reg7|storage\(14)))) # (!\Mux17~0_combout\ & (\reg5|storage\(14))))) # (!\A2[0]~input_o\ & (((\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg5|storage\(14),
	datac => \reg7|storage\(14),
	datad => \Mux17~0_combout\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X30_Y20_N12
\Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\A2[2]~input_o\ & ((\Mux17~1_combout\))) # (!\A2[2]~input_o\ & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datac => \A2[2]~input_o\,
	datad => \Mux17~1_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X31_Y20_N30
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\A2[0]~input_o\ & (\A2[1]~input_o\)) # (!\A2[0]~input_o\ & ((\A2[1]~input_o\ & ((\reg6|storage\(15)))) # (!\A2[1]~input_o\ & (\reg4|storage\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \A2[1]~input_o\,
	datac => \reg4|storage\(15),
	datad => \reg6|storage\(15),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X30_Y20_N30
\Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mux16~0_combout\ & (((\reg7|storage\(15))) # (!\A2[0]~input_o\))) # (!\Mux16~0_combout\ & (\A2[0]~input_o\ & ((\reg5|storage\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \A2[0]~input_o\,
	datac => \reg7|storage\(15),
	datad => \reg5|storage\(15),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X27_Y20_N22
\Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\A2[0]~input_o\ & ((\reg1|storage\(15)) # ((\A2[1]~input_o\)))) # (!\A2[0]~input_o\ & (((\reg0|storage\(15) & !\A2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[0]~input_o\,
	datab => \reg1|storage\(15),
	datac => \reg0|storage\(15),
	datad => \A2[1]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X26_Y20_N10
\Mux16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\A2[1]~input_o\ & ((\Mux16~2_combout\ & ((\reg3|storage\(15)))) # (!\Mux16~2_combout\ & (\reg2|storage\(15))))) # (!\A2[1]~input_o\ & (((\Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[1]~input_o\,
	datab => \reg2|storage\(15),
	datac => \reg3|storage\(15),
	datad => \Mux16~2_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X30_Y20_N14
\Mux16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\A2[2]~input_o\ & (\Mux16~1_combout\)) # (!\A2[2]~input_o\ & ((\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2[2]~input_o\,
	datac => \Mux16~1_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_D1(0) <= \D1[0]~output_o\;

ww_D1(1) <= \D1[1]~output_o\;

ww_D1(2) <= \D1[2]~output_o\;

ww_D1(3) <= \D1[3]~output_o\;

ww_D1(4) <= \D1[4]~output_o\;

ww_D1(5) <= \D1[5]~output_o\;

ww_D1(6) <= \D1[6]~output_o\;

ww_D1(7) <= \D1[7]~output_o\;

ww_D1(8) <= \D1[8]~output_o\;

ww_D1(9) <= \D1[9]~output_o\;

ww_D1(10) <= \D1[10]~output_o\;

ww_D1(11) <= \D1[11]~output_o\;

ww_D1(12) <= \D1[12]~output_o\;

ww_D1(13) <= \D1[13]~output_o\;

ww_D1(14) <= \D1[14]~output_o\;

ww_D1(15) <= \D1[15]~output_o\;

ww_D2(0) <= \D2[0]~output_o\;

ww_D2(1) <= \D2[1]~output_o\;

ww_D2(2) <= \D2[2]~output_o\;

ww_D2(3) <= \D2[3]~output_o\;

ww_D2(4) <= \D2[4]~output_o\;

ww_D2(5) <= \D2[5]~output_o\;

ww_D2(6) <= \D2[6]~output_o\;

ww_D2(7) <= \D2[7]~output_o\;

ww_D2(8) <= \D2[8]~output_o\;

ww_D2(9) <= \D2[9]~output_o\;

ww_D2(10) <= \D2[10]~output_o\;

ww_D2(11) <= \D2[11]~output_o\;

ww_D2(12) <= \D2[12]~output_o\;

ww_D2(13) <= \D2[13]~output_o\;

ww_D2(14) <= \D2[14]~output_o\;

ww_D2(15) <= \D2[15]~output_o\;
END structure;


