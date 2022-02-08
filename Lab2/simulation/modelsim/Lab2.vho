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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/08/2022 15:43:40"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	DE2_115 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	GPIO : INOUT std_logic_vector(35 DOWNTO 0);
	LCD_ON : OUT std_logic;
	LCD_BLON : OUT std_logic;
	LCD_EN : OUT std_logic;
	LCD_RS : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_DATA : INOUT std_logic_vector(7 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_ADDR : OUT std_logic_vector(19 DOWNTO 0);
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic
	);
END DE2_115;

-- Design Ports Information
-- LCD_ON	=>  Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_BLON	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_UB_N	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_LB_N	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_WE_N	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_CE_N	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_OE_N	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[13]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[0]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[2]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[3]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[4]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[5]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[6]	=>  Location: PIN_AH6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[7]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[8]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[9]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[10]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[11]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[12]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[14]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[15]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DE2_115 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LCD_ON : std_logic;
SIGNAL ww_LCD_BLON : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[2]~30_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[3]~32_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[4]~34_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[6]~38_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[7]~40_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[10]~46_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[11]~48_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[12]~50_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[14]~54_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[16]~58_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[20]~66_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[22]~70_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[23]~72_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~28_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~34_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~46_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~50_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~46\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[15]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[7]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[9]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[15]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[16]~49_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~26_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~28_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~31\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~32_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[3]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[5]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[6]~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~24_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~26_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~28_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~46\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[15]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~46\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[15]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~58_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~60_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~66_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~69_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~72_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~73_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~74_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~76_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~81_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[0]~57_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector4~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|to_increment~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_valid_int~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_valid_int~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_0|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_1|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_2|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_3|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o[8]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|to_increment~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[10]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[8]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[2]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[7]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_start[0]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[0]~input_o\ : std_logic;
SIGNAL \LCD_DATA[1]~input_o\ : std_logic;
SIGNAL \LCD_DATA[2]~input_o\ : std_logic;
SIGNAL \LCD_DATA[3]~input_o\ : std_logic;
SIGNAL \LCD_DATA[4]~input_o\ : std_logic;
SIGNAL \LCD_DATA[5]~input_o\ : std_logic;
SIGNAL \LCD_DATA[6]~input_o\ : std_logic;
SIGNAL \LCD_DATA[7]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[23]~output_o\ : std_logic;
SIGNAL \GPIO[24]~output_o\ : std_logic;
SIGNAL \GPIO[25]~output_o\ : std_logic;
SIGNAL \GPIO[26]~output_o\ : std_logic;
SIGNAL \GPIO[27]~output_o\ : std_logic;
SIGNAL \GPIO[28]~output_o\ : std_logic;
SIGNAL \GPIO[29]~output_o\ : std_logic;
SIGNAL \GPIO[30]~output_o\ : std_logic;
SIGNAL \GPIO[31]~output_o\ : std_logic;
SIGNAL \GPIO[32]~output_o\ : std_logic;
SIGNAL \GPIO[33]~output_o\ : std_logic;
SIGNAL \GPIO[34]~output_o\ : std_logic;
SIGNAL \GPIO[35]~output_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \LCD_ON~output_o\ : std_logic;
SIGNAL \LCD_BLON~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[13]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[14]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[15]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[16]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[17]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[18]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[19]~output_o\ : std_logic;
SIGNAL \SRAM_UB_N~output_o\ : std_logic;
SIGNAL \SRAM_LB_N~output_o\ : std_logic;
SIGNAL \SRAM_WE_N~output_o\ : std_logic;
SIGNAL \SRAM_CE_N~output_o\ : std_logic;
SIGNAL \SRAM_OE_N~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[1]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[1]~20\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[2]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[2]~22\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[3]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[3]~24\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[4]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[4]~26\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[5]~28\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[6]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[6]~30\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[7]~32\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[8]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[8]~34\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[9]~36\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[10]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[10]~38\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[11]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[11]~40\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[12]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[12]~42\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[13]~44\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[14]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[13]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[14]~46\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[15]~48\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[16]~50\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[17]~51_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[17]~52\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[18]~53_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[18]~54\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont[19]~55_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Reset_Delay|oRESET~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ : std_logic;
SIGNAL \Inst_top_level|reset_h~0_combout\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk_prev~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|sda_int~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[0]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[0]~9\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[1]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[1]~11\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[2]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[2]~13\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[3]~15\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[4]~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[4]~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[5]~19\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[6]~21\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|counter[7]~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[0]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[7]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.read2~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~16_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~16_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[1]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~16_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~31_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~33_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~35_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~37_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~41_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~45_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~46\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~47_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~43_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector4~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state.pwm60~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state.pwm120~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector2~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state.pause~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector2~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector2~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state.test~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector15~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|run_counter~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|read_SRAM~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~1\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~3\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~5\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~7\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~9\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~11\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~13\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~15\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~19\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~21\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~23\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~25\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~27\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~29\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~31\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~33\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~34_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~35\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~37\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~39\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~41\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~42_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~43\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~45\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~46_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~47\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~48_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~44_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~49\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~50_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~40_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~36_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~38_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~30_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~32_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Add1~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal1~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|clk_en_1~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|read_SRAM~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|read_SRAM~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_valid_int~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_valid_int~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_valid_int~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_rw_int~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|SRAM_rw_int~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.init~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.write1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.write1~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.read1~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.write2~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector19~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector19~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.read1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.read1~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector18~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector18~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|busy_h~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[7]~26\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[8]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[1]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[2]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[4]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[5]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Selector1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|next_state.init~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_start~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_select~q\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[14]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector22~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sampled~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|speed_sel~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux9~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|speed_sel~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[2]~31\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[3]~33\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[4]~35\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[5]~36_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[5]~37\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[6]~39\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[7]~41\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[8]~42_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[8]~43\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[9]~44_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[9]~45\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[10]~47\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[11]~49\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[12]~51\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[13]~52_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[13]~53\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[14]~55\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[15]~56_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[15]~57\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[16]~59\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[17]~60_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[17]~61\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[18]~62_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[18]~63\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[19]~64_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[19]~65\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[20]~67\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[21]~68_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[21]~69\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[22]~71\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[23]~73\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[24]~74_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[0]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[0]~11\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[2]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[2]~19\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[3]~21\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[4]~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[4]~23\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[5]~25\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[6]~26_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[6]~27\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[7]~28_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal2~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[3]~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|Equal2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux7~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[24]~75\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[25]~76_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[25]~77\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[26]~78_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[3]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[26]~79\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[27]~80_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[27]~81\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[28]~82_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt[5]~24_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[28]~83\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[29]~84_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt[6]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[29]~85\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[30]~86_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|address_out~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Mux0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[14]~1_combout\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[13]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~4_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[13]~2_combout\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[11]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~6_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[11]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~1_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~3_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~5_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~7_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~9_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~11_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~13_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|LessThan0~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_PWM|pwm~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end[2]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|q0~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|q1~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.start~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.start~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.start~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Selector33~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~82_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end[6]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~1_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~3_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~5_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~7_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~9_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~11_cout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|count[27]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~80_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~79_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~78_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~77_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~83_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~15\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~75_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~19\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~21\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~23\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~24_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~71_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~25\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~26_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~70_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~27\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~29\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~30_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~68_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~31\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~32_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~67_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~33\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~35\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~36_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~65_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~37\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~38_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~64_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~39\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~40_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~63_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~41\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~42_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~62_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~43\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~44_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~61_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~45\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~47\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~48_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~59_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~49\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~51\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~52_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~57_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~53\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~54_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Add0~56_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Selector33~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Selector33~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|ena~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~24_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~30_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.ready~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.repeat~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.repeat~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Selector31~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~_emulated_q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel~26_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel~24_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_end~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_start[2]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~27_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_start~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel~29_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~28\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[6]~30_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|byte_start~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel~25_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~13_combout\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[9]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~8_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[9]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[10]~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_2|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~9_combout\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[12]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~5_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[12]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_3|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~7_combout\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[3]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~13_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[3]~11_combout\ : std_logic;
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[0]~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~10_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[0]~8_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[2]~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_0|Mux6~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[5]~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~15_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[5]~13_combout\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[6]~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~16_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[6]~14_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[7]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_1|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux7~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[1]~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[8]~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_2|Mux5~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~1_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[15]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_3|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux5~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux6~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[1]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~11_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[1]~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_0|Mux4~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out[4]~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_system_controller|data_o~14_combout\ : std_logic;
SIGNAL \Inst_top_level|data_muxed[4]~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_1|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux4~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[2]~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux5~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[3]~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_1|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_0|Mux3~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~7_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux4~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[30]~87\ : std_logic;
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int[31]~88_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~17_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~22_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~23_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~21_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux3~20_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~18_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~19_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~15_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~13_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux2~14_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~10_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~11_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[6]~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~8_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux1~9_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux0~2_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux0~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux0~4_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[0]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[1]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[2]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[3]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[3]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[4]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[5]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[6]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[7]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[8]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[9]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[9]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[10]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[10]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[11]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[11]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[12]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[12]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[13]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[14]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in[15]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out[15]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.one~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.zero~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector1~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|en~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~5_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Mux8~6_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[3]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[4]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[5]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[6]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[7]~feeder_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector16~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector16~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_we_n~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector17~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|Selector17~1_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_oe_n~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_PWM|counter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|count\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|byteSel\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|speed_sel\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|data_o\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|clk_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|byte_start\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|byte_end\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|address_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|address_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_system_controller|ROM_cnt\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_io_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_SRAM_Controller|cont_io_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_Address_Counter|increment_value\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_Address_Counter|address_int\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_Reset_Delay|Cont\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~q\ : std_logic;
SIGNAL \Inst_top_level|ALT_INV_reset_h~0_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_byteSel\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\ : std_logic;
SIGNAL \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|ALT_INV_sda_int~q\ : std_logic;
SIGNAL \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LCD_ON <= ww_LCD_ON;
LCD_BLON <= ww_LCD_BLON;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
LCD_RW <= ww_LCD_RW;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_WE_N <= ww_SRAM_WE_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Inst_top_level|Mux0~0_combout\ & \Inst_top_level|Mux1~0_combout\ & \Inst_top_level|Mux2~0_combout\ & \Inst_top_level|Mux3~0_combout\ & 
\Inst_top_level|Mux4~0_combout\ & \Inst_top_level|Mux5~0_combout\ & \Inst_top_level|Mux6~0_combout\ & \Inst_top_level|Mux7~0_combout\);

\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(0) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(1) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(2) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(3) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(4) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(5) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(6) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(7) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(8) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(9) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(10) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(11) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(12) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(13) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(14) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(15) <= \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\);

\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Inst_top_level|Inst_LCD_User_Logic|Mux9~0_combout\);
\Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~q\ <= NOT \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\;
\Inst_top_level|ALT_INV_reset_h~0_combout\ <= NOT \Inst_top_level|reset_h~0_combout\;
\Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\ <= NOT \Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\;
\Inst_top_level|Inst_LCD_User_Logic|ALT_INV_byteSel\(4) <= NOT \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4);
\Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\ <= NOT \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\;
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|ALT_INV_sda_int~q\ <= NOT \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|sda_int~q\;
\Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\ <= NOT \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\;

-- Location: FF_X20_Y13_N31
\Inst_top_level|Inst_system_controller|address_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~4_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(4));

-- Location: FF_X26_Y14_N1
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~16_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(0));

-- Location: FF_X26_Y14_N3
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~19_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1));

-- Location: FF_X26_Y14_N5
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~21_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2));

-- Location: FF_X26_Y14_N7
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~23_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3));

-- Location: FF_X26_Y14_N9
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~25_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4));

-- Location: FF_X26_Y14_N11
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~27_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5));

-- Location: FF_X26_Y14_N13
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~29_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6));

-- Location: FF_X26_Y14_N15
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~31_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7));

-- Location: FF_X26_Y14_N17
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~33_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8));

-- Location: FF_X26_Y14_N19
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~35_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9));

-- Location: FF_X26_Y14_N21
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~37_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10));

-- Location: FF_X26_Y14_N23
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~39_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11));

-- Location: FF_X26_Y14_N25
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~41_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12));

-- Location: FF_X26_Y14_N27
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~43_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13));

-- Location: FF_X26_Y14_N29
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~45_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14));

-- Location: FF_X26_Y14_N31
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[15]~47_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(15));

-- Location: FF_X26_Y9_N13
\Inst_top_level|Inst_Reset_Delay|Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[16]~49_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(16));

-- Location: FF_X26_Y10_N27
\Inst_top_level|Inst_Reset_Delay|Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[7]~31_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(7));

-- Location: FF_X26_Y10_N31
\Inst_top_level|Inst_Reset_Delay|Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[9]~35_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(9));

-- Location: FF_X26_Y9_N11
\Inst_top_level|Inst_Reset_Delay|Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[15]~47_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(15));

-- Location: FF_X20_Y11_N13
\Inst_top_level|Inst_Address_Counter|address_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(23));

-- Location: FF_X20_Y11_N11
\Inst_top_level|Inst_Address_Counter|address_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(22));

-- Location: FF_X20_Y11_N7
\Inst_top_level|Inst_Address_Counter|address_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(20));

-- Location: FF_X20_Y12_N31
\Inst_top_level|Inst_Address_Counter|address_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(16));

-- Location: FF_X20_Y12_N27
\Inst_top_level|Inst_Address_Counter|address_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(14));

-- Location: FF_X20_Y12_N23
\Inst_top_level|Inst_Address_Counter|address_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(12));

-- Location: FF_X20_Y12_N21
\Inst_top_level|Inst_Address_Counter|address_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(11));

-- Location: FF_X20_Y12_N19
\Inst_top_level|Inst_Address_Counter|address_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(10));

-- Location: FF_X20_Y12_N13
\Inst_top_level|Inst_Address_Counter|address_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(7));

-- Location: FF_X20_Y12_N11
\Inst_top_level|Inst_Address_Counter|address_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(6));

-- Location: FF_X20_Y12_N7
\Inst_top_level|Inst_Address_Counter|address_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(4));

-- Location: FF_X20_Y12_N5
\Inst_top_level|Inst_Address_Counter|address_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(3));

-- Location: FF_X20_Y12_N3
\Inst_top_level|Inst_Address_Counter|address_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(2));

-- Location: LCCOMB_X20_Y12_N2
\Inst_top_level|Inst_Address_Counter|address_int[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[2]~30_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(2) & (\Inst_top_level|Inst_Address_Counter|increment_value\(10) $ (VCC))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(2) & 
-- (\Inst_top_level|Inst_Address_Counter|increment_value\(10) & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[2]~31\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(2) & \Inst_top_level|Inst_Address_Counter|increment_value\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(2),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(10),
	datad => VCC,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[2]~30_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[2]~31\);

-- Location: LCCOMB_X20_Y12_N4
\Inst_top_level|Inst_Address_Counter|address_int[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[3]~32_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(3) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11) & (\Inst_top_level|Inst_Address_Counter|address_int[2]~31\ & VCC)) # 
-- (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & (!\Inst_top_level|Inst_Address_Counter|address_int[2]~31\)))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(3) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[2]~31\)) # (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & ((\Inst_top_level|Inst_Address_Counter|address_int[2]~31\) # (GND)))))
-- \Inst_top_level|Inst_Address_Counter|address_int[3]~33\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(3) & (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & !\Inst_top_level|Inst_Address_Counter|address_int[2]~31\)) # 
-- (!\Inst_top_level|Inst_Address_Counter|address_int\(3) & ((!\Inst_top_level|Inst_Address_Counter|address_int[2]~31\) # (!\Inst_top_level|Inst_Address_Counter|increment_value\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(3),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[2]~31\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[3]~32_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[3]~33\);

-- Location: LCCOMB_X20_Y12_N6
\Inst_top_level|Inst_Address_Counter|address_int[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[4]~34_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(4) & (\Inst_top_level|Inst_Address_Counter|address_int[3]~33\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(4) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[3]~33\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[4]~35\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(4) & !\Inst_top_level|Inst_Address_Counter|address_int[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[3]~33\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[4]~34_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[4]~35\);

-- Location: LCCOMB_X20_Y12_N10
\Inst_top_level|Inst_Address_Counter|address_int[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[6]~38_combout\ = ((\Inst_top_level|Inst_Address_Counter|address_int\(6) $ (\Inst_top_level|Inst_Address_Counter|increment_value\(10) $ (!\Inst_top_level|Inst_Address_Counter|address_int[5]~37\)))) # (GND)
-- \Inst_top_level|Inst_Address_Counter|address_int[6]~39\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(6) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(10)) # (!\Inst_top_level|Inst_Address_Counter|address_int[5]~37\))) # 
-- (!\Inst_top_level|Inst_Address_Counter|address_int\(6) & (\Inst_top_level|Inst_Address_Counter|increment_value\(10) & !\Inst_top_level|Inst_Address_Counter|address_int[5]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(6),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[5]~37\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[6]~38_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[6]~39\);

-- Location: LCCOMB_X20_Y12_N12
\Inst_top_level|Inst_Address_Counter|address_int[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[7]~40_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(7) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11) & (\Inst_top_level|Inst_Address_Counter|address_int[6]~39\ & VCC)) # 
-- (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & (!\Inst_top_level|Inst_Address_Counter|address_int[6]~39\)))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(7) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[6]~39\)) # (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & ((\Inst_top_level|Inst_Address_Counter|address_int[6]~39\) # (GND)))))
-- \Inst_top_level|Inst_Address_Counter|address_int[7]~41\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(7) & (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & !\Inst_top_level|Inst_Address_Counter|address_int[6]~39\)) # 
-- (!\Inst_top_level|Inst_Address_Counter|address_int\(7) & ((!\Inst_top_level|Inst_Address_Counter|address_int[6]~39\) # (!\Inst_top_level|Inst_Address_Counter|increment_value\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(7),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[6]~39\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[7]~40_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[7]~41\);

-- Location: LCCOMB_X20_Y12_N18
\Inst_top_level|Inst_Address_Counter|address_int[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[10]~46_combout\ = ((\Inst_top_level|Inst_Address_Counter|address_int\(10) $ (\Inst_top_level|Inst_Address_Counter|increment_value\(10) $ (!\Inst_top_level|Inst_Address_Counter|address_int[9]~45\)))) # (GND)
-- \Inst_top_level|Inst_Address_Counter|address_int[10]~47\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(10) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(10)) # (!\Inst_top_level|Inst_Address_Counter|address_int[9]~45\))) # 
-- (!\Inst_top_level|Inst_Address_Counter|address_int\(10) & (\Inst_top_level|Inst_Address_Counter|increment_value\(10) & !\Inst_top_level|Inst_Address_Counter|address_int[9]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(10),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[9]~45\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[10]~46_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[10]~47\);

-- Location: LCCOMB_X20_Y12_N20
\Inst_top_level|Inst_Address_Counter|address_int[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[11]~48_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(11) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11) & (\Inst_top_level|Inst_Address_Counter|address_int[10]~47\ & VCC)) # 
-- (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & (!\Inst_top_level|Inst_Address_Counter|address_int[10]~47\)))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(11) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[10]~47\)) # (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & ((\Inst_top_level|Inst_Address_Counter|address_int[10]~47\) # (GND)))))
-- \Inst_top_level|Inst_Address_Counter|address_int[11]~49\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(11) & (!\Inst_top_level|Inst_Address_Counter|increment_value\(11) & !\Inst_top_level|Inst_Address_Counter|address_int[10]~47\)) # 
-- (!\Inst_top_level|Inst_Address_Counter|address_int\(11) & ((!\Inst_top_level|Inst_Address_Counter|address_int[10]~47\) # (!\Inst_top_level|Inst_Address_Counter|increment_value\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(11),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[10]~47\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[11]~48_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[11]~49\);

-- Location: LCCOMB_X20_Y12_N22
\Inst_top_level|Inst_Address_Counter|address_int[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[12]~50_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(12) & (\Inst_top_level|Inst_Address_Counter|address_int[11]~49\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(12) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[11]~49\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[12]~51\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(12) & !\Inst_top_level|Inst_Address_Counter|address_int[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[11]~49\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[12]~50_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[12]~51\);

-- Location: LCCOMB_X20_Y12_N26
\Inst_top_level|Inst_Address_Counter|address_int[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[14]~54_combout\ = ((\Inst_top_level|Inst_Address_Counter|address_int\(14) $ (\Inst_top_level|Inst_Address_Counter|increment_value\(14) $ (!\Inst_top_level|Inst_Address_Counter|address_int[13]~53\)))) # 
-- (GND)
-- \Inst_top_level|Inst_Address_Counter|address_int[14]~55\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(14) & ((\Inst_top_level|Inst_Address_Counter|increment_value\(14)) # (!\Inst_top_level|Inst_Address_Counter|address_int[13]~53\))) # 
-- (!\Inst_top_level|Inst_Address_Counter|address_int\(14) & (\Inst_top_level|Inst_Address_Counter|increment_value\(14) & !\Inst_top_level|Inst_Address_Counter|address_int[13]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(14),
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[13]~53\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[14]~54_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[14]~55\);

-- Location: LCCOMB_X20_Y12_N30
\Inst_top_level|Inst_Address_Counter|address_int[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[16]~58_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(16) & (\Inst_top_level|Inst_Address_Counter|address_int[15]~57\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(16) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[15]~57\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[16]~59\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(16) & !\Inst_top_level|Inst_Address_Counter|address_int[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(16),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[15]~57\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[16]~58_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[16]~59\);

-- Location: LCCOMB_X20_Y11_N6
\Inst_top_level|Inst_Address_Counter|address_int[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[20]~66_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(20) & (\Inst_top_level|Inst_Address_Counter|address_int[19]~65\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(20) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[19]~65\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[20]~67\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(20) & !\Inst_top_level|Inst_Address_Counter|address_int[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(20),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[19]~65\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[20]~66_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[20]~67\);

-- Location: LCCOMB_X20_Y11_N10
\Inst_top_level|Inst_Address_Counter|address_int[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[22]~70_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(22) & (\Inst_top_level|Inst_Address_Counter|address_int[21]~69\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(22) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[21]~69\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[22]~71\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(22) & !\Inst_top_level|Inst_Address_Counter|address_int[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(22),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[21]~69\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[22]~70_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[22]~71\);

-- Location: LCCOMB_X20_Y11_N12
\Inst_top_level|Inst_Address_Counter|address_int[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[23]~72_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(23) & (!\Inst_top_level|Inst_Address_Counter|address_int[22]~71\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(23) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[22]~71\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[23]~73\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[22]~71\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(23),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[22]~71\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[23]~72_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[23]~73\);

-- Location: LCCOMB_X25_Y12_N8
\Inst_top_level|Inst_LCD_User_Logic|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(2) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~3\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(2) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~3\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~5\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~3\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~3\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~4_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~5\);

-- Location: LCCOMB_X25_Y12_N18
\Inst_top_level|Inst_LCD_User_Logic|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(7) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~13\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(7) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~13\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~15\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(7) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~13\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~14_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~15\);

-- Location: LCCOMB_X25_Y12_N22
\Inst_top_level|Inst_LCD_User_Logic|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~18_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(9) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~17\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(9) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~17\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~19\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(9) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~17\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~18_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~19\);

-- Location: LCCOMB_X25_Y12_N24
\Inst_top_level|Inst_LCD_User_Logic|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~20_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(10) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~19\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(10) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~19\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~21\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~19\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~19\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~20_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~21\);

-- Location: LCCOMB_X25_Y12_N26
\Inst_top_level|Inst_LCD_User_Logic|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~22_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(11) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~21\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(11) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~21\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~23\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(11) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~21\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~22_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~23\);

-- Location: LCCOMB_X25_Y11_N0
\Inst_top_level|Inst_LCD_User_Logic|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~28_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(14) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~27\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(14) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~27\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~29\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~27\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~27\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~28_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~29\);

-- Location: LCCOMB_X25_Y11_N6
\Inst_top_level|Inst_LCD_User_Logic|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~34_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(17) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~33\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(17) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~33\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~35\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(17) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(17),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~33\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~34_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~35\);

-- Location: LCCOMB_X25_Y11_N18
\Inst_top_level|Inst_LCD_User_Logic|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~46_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(23) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~45\ & VCC)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(23) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~45\))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~47\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|count\(23) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(23),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~45\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~46_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~47\);

-- Location: LCCOMB_X25_Y11_N22
\Inst_top_level|Inst_LCD_User_Logic|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~50_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(25) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~49\ & VCC)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(25) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~49\))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~51\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|count\(25) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(25),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~49\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~50_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~51\);

-- Location: LCCOMB_X26_Y14_N0
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~16_combout\ = \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(0) $ (VCC)
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\ = CARRY(\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~16_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\);

-- Location: LCCOMB_X26_Y14_N2
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~19_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[0]~17\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~19_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\);

-- Location: LCCOMB_X26_Y14_N4
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~21_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[1]~20\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~21_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\);

-- Location: LCCOMB_X26_Y14_N6
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~23_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[2]~22\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~23_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\);

-- Location: LCCOMB_X26_Y14_N8
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~25_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~24\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~25_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\);

-- Location: LCCOMB_X26_Y14_N10
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~27_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[4]~26\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~27_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\);

-- Location: LCCOMB_X26_Y14_N12
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~29_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[5]~28\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~29_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\);

-- Location: LCCOMB_X26_Y14_N14
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~31_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[6]~30\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~31_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\);

-- Location: LCCOMB_X26_Y14_N16
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~33_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[7]~32\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~33_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\);

-- Location: LCCOMB_X26_Y14_N18
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~35_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[8]~34\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~35_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\);

-- Location: LCCOMB_X26_Y14_N20
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~37_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[9]~36\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~37_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\);

-- Location: LCCOMB_X26_Y14_N22
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~39_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[10]~38\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~39_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\);

-- Location: LCCOMB_X26_Y14_N24
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~41_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[11]~40\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~41_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\);

-- Location: LCCOMB_X26_Y14_N26
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~43_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13) & (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[12]~42\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~43_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\);

-- Location: LCCOMB_X26_Y14_N28
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~45_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14) & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~46\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14) & !\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[13]~44\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~45_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~46\);

-- Location: LCCOMB_X26_Y14_N30
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[15]~47_combout\ = \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(15) $ (\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(15),
	cin => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[14]~46\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[15]~47_combout\);

-- Location: LCCOMB_X26_Y10_N26
\Inst_top_level|Inst_Reset_Delay|Cont[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[7]~31_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(7) & (\Inst_top_level|Inst_Reset_Delay|Cont[6]~30\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(7) & (!\Inst_top_level|Inst_Reset_Delay|Cont[6]~30\ & 
-- VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[7]~32\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(7) & !\Inst_top_level|Inst_Reset_Delay|Cont[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[6]~30\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[7]~31_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[7]~32\);

-- Location: LCCOMB_X26_Y10_N30
\Inst_top_level|Inst_Reset_Delay|Cont[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[9]~35_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(9) & (\Inst_top_level|Inst_Reset_Delay|Cont[8]~34\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(9) & (!\Inst_top_level|Inst_Reset_Delay|Cont[8]~34\ & 
-- VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[9]~36\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(9) & !\Inst_top_level|Inst_Reset_Delay|Cont[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[8]~34\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[9]~35_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[9]~36\);

-- Location: LCCOMB_X26_Y9_N10
\Inst_top_level|Inst_Reset_Delay|Cont[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[15]~47_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(15) & (\Inst_top_level|Inst_Reset_Delay|Cont[14]~46\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(15) & (!\Inst_top_level|Inst_Reset_Delay|Cont[14]~46\ 
-- & VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[15]~48\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(15) & !\Inst_top_level|Inst_Reset_Delay|Cont[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(15),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[14]~46\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[15]~47_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[15]~48\);

-- Location: LCCOMB_X26_Y9_N12
\Inst_top_level|Inst_Reset_Delay|Cont[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[16]~49_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(16) & (!\Inst_top_level|Inst_Reset_Delay|Cont[15]~48\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(16) & ((\Inst_top_level|Inst_Reset_Delay|Cont[15]~48\) # 
-- (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[16]~50\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[15]~48\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(16),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[15]~48\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[16]~49_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[16]~50\);

-- Location: LCCOMB_X27_Y10_N16
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~0_combout\ = \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(0) $ (VCC)
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\ = CARRY(\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~0_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\);

-- Location: LCCOMB_X27_Y10_N22
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~6_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\);

-- Location: LCCOMB_X27_Y10_N30
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~14_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\);

-- Location: LCCOMB_X27_Y9_N6
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~22_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~22_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\);

-- Location: LCCOMB_X27_Y9_N10
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~26_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~26_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\);

-- Location: LCCOMB_X27_Y9_N12
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~28_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~27\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~28_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\);

-- Location: LCCOMB_X27_Y9_N14
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~30_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~31\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~29\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~30_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~31\);

-- Location: LCCOMB_X27_Y9_N16
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~32_combout\ = \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(16) $ (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(16),
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~31\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~32_combout\);

-- Location: FF_X19_Y11_N13
\Inst_top_level|Inst_PWM|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[6]~20_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(6));

-- Location: FF_X19_Y11_N11
\Inst_top_level|Inst_PWM|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[5]~18_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(5));

-- Location: FF_X19_Y11_N7
\Inst_top_level|Inst_PWM|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[3]~14_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(3));

-- Location: LCCOMB_X19_Y11_N6
\Inst_top_level|Inst_PWM|counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[3]~14_combout\ = (\Inst_top_level|Inst_PWM|counter\(3) & (!\Inst_top_level|Inst_PWM|counter[2]~13\)) # (!\Inst_top_level|Inst_PWM|counter\(3) & ((\Inst_top_level|Inst_PWM|counter[2]~13\) # (GND)))
-- \Inst_top_level|Inst_PWM|counter[3]~15\ = CARRY((!\Inst_top_level|Inst_PWM|counter[2]~13\) # (!\Inst_top_level|Inst_PWM|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_PWM|counter\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|counter[2]~13\,
	combout => \Inst_top_level|Inst_PWM|counter[3]~14_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[3]~15\);

-- Location: LCCOMB_X19_Y11_N10
\Inst_top_level|Inst_PWM|counter[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[5]~18_combout\ = (\Inst_top_level|Inst_PWM|counter\(5) & (!\Inst_top_level|Inst_PWM|counter[4]~17\)) # (!\Inst_top_level|Inst_PWM|counter\(5) & ((\Inst_top_level|Inst_PWM|counter[4]~17\) # (GND)))
-- \Inst_top_level|Inst_PWM|counter[5]~19\ = CARRY((!\Inst_top_level|Inst_PWM|counter[4]~17\) # (!\Inst_top_level|Inst_PWM|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_PWM|counter\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|counter[4]~17\,
	combout => \Inst_top_level|Inst_PWM|counter[5]~18_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[5]~19\);

-- Location: LCCOMB_X19_Y11_N12
\Inst_top_level|Inst_PWM|counter[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[6]~20_combout\ = (\Inst_top_level|Inst_PWM|counter\(6) & (\Inst_top_level|Inst_PWM|counter[5]~19\ $ (GND))) # (!\Inst_top_level|Inst_PWM|counter\(6) & (!\Inst_top_level|Inst_PWM|counter[5]~19\ & VCC))
-- \Inst_top_level|Inst_PWM|counter[6]~21\ = CARRY((\Inst_top_level|Inst_PWM|counter\(6) & !\Inst_top_level|Inst_PWM|counter[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_PWM|counter\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|counter[5]~19\,
	combout => \Inst_top_level|Inst_PWM|counter[6]~20_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[6]~21\);

-- Location: LCCOMB_X10_Y13_N12
\Inst_top_level|Inst_system_controller|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~6_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(3) & (!\Inst_top_level|Inst_system_controller|Add1~5\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(3) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~5\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~7\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~5\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~5\,
	combout => \Inst_top_level|Inst_system_controller|Add1~6_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~7\);

-- Location: LCCOMB_X10_Y13_N22
\Inst_top_level|Inst_system_controller|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~16_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(8) & (\Inst_top_level|Inst_system_controller|Add1~15\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(8) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~15\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~17\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(8) & !\Inst_top_level|Inst_system_controller|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~15\,
	combout => \Inst_top_level|Inst_system_controller|Add1~16_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~17\);

-- Location: LCCOMB_X10_Y13_N26
\Inst_top_level|Inst_system_controller|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~20_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(10) & (\Inst_top_level|Inst_system_controller|Add1~19\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(10) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~19\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~21\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(10) & !\Inst_top_level|Inst_system_controller|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~19\,
	combout => \Inst_top_level|Inst_system_controller|Add1~20_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~21\);

-- Location: LCCOMB_X10_Y13_N30
\Inst_top_level|Inst_system_controller|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~24_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(12) & (\Inst_top_level|Inst_system_controller|Add1~23\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(12) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~23\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~25\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(12) & !\Inst_top_level|Inst_system_controller|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~23\,
	combout => \Inst_top_level|Inst_system_controller|Add1~24_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~25\);

-- Location: LCCOMB_X10_Y12_N0
\Inst_top_level|Inst_system_controller|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~26_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(13) & (!\Inst_top_level|Inst_system_controller|Add1~25\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(13) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~25\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~27\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~25\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~25\,
	combout => \Inst_top_level|Inst_system_controller|Add1~26_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~27\);

-- Location: LCCOMB_X10_Y12_N2
\Inst_top_level|Inst_system_controller|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~28_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(14) & (\Inst_top_level|Inst_system_controller|Add1~27\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(14) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~27\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~29\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(14) & !\Inst_top_level|Inst_system_controller|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~27\,
	combout => \Inst_top_level|Inst_system_controller|Add1~28_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~29\);

-- Location: FF_X45_Y16_N11
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~27_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5));

-- Location: FF_X45_Y16_N23
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~39_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11));

-- Location: FF_X45_Y16_N25
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~41_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12));

-- Location: FF_X45_Y16_N27
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~43_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13));

-- Location: FF_X45_Y16_N29
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~45_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14));

-- Location: FF_X45_Y16_N31
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[15]~47_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(15));

-- Location: FF_X25_Y15_N13
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~29_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6));

-- Location: FF_X25_Y15_N23
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~39_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11));

-- Location: FF_X25_Y15_N25
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~41_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12));

-- Location: FF_X25_Y15_N27
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~43_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13));

-- Location: FF_X25_Y15_N29
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~45_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14));

-- Location: FF_X25_Y15_N31
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[15]~47_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(15));

-- Location: FF_X19_Y9_N11
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~27_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5));

-- Location: FF_X19_Y9_N13
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~29_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6));

-- Location: LCCOMB_X45_Y16_N10
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~27_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~27_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\);

-- Location: LCCOMB_X45_Y16_N20
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~37_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~37_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\);

-- Location: LCCOMB_X45_Y16_N22
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~39_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~38\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~39_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\);

-- Location: LCCOMB_X45_Y16_N24
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~41_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[11]~40\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~41_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\);

-- Location: LCCOMB_X45_Y16_N26
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~43_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~42\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~43_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\);

-- Location: LCCOMB_X45_Y16_N28
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~45_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~46\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[13]~44\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~45_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~46\);

-- Location: LCCOMB_X45_Y16_N30
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[15]~47_combout\ = \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(15) $ (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(15),
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[14]~46\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[15]~47_combout\);

-- Location: LCCOMB_X25_Y15_N12
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~29_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~29_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\);

-- Location: LCCOMB_X25_Y15_N20
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~37_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~37_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\);

-- Location: LCCOMB_X25_Y15_N22
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~39_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~38\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~39_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\);

-- Location: LCCOMB_X25_Y15_N24
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~41_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[11]~40\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~41_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\);

-- Location: LCCOMB_X25_Y15_N26
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~43_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[12]~42\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~43_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\);

-- Location: LCCOMB_X25_Y15_N28
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~45_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~46\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[13]~44\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~45_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~46\);

-- Location: LCCOMB_X25_Y15_N30
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[15]~47_combout\ = \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(15) $ (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(15),
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[14]~46\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[15]~47_combout\);

-- Location: LCCOMB_X19_Y9_N10
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~27_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~27_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\);

-- Location: LCCOMB_X19_Y9_N12
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~29_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[5]~28\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~29_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\);

-- Location: LCCOMB_X21_Y10_N30
\Inst_top_level|Inst_LCD_User_Logic|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\);

-- Location: FF_X27_Y13_N11
\Inst_top_level|Inst_system_controller|byte_end[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_end~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_end\(3));

-- Location: FF_X27_Y13_N25
\Inst_top_level|Inst_system_controller|byte_end[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|byte_end~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_end\(4));

-- Location: LCCOMB_X25_Y13_N28
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~19_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\ $ (\Inst_top_level|Inst_system_controller|byte_end\(3))) # 
-- (!\Inst_top_level|Inst_system_controller|byte_end\(4)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\ & ((\Inst_top_level|Inst_system_controller|byte_end\(4)) # (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\ $ 
-- (\Inst_top_level|Inst_system_controller|byte_end\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\,
	datac => \Inst_top_level|Inst_system_controller|byte_end\(4),
	datad => \Inst_top_level|Inst_system_controller|byte_end\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~19_combout\);

-- Location: FF_X27_Y13_N21
\Inst_top_level|Inst_system_controller|byte_start[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_start[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_start\(0));

-- Location: FF_X26_Y12_N7
\Inst_top_level|Inst_LCD_User_Logic|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~58_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(25));

-- Location: FF_X25_Y11_N31
\Inst_top_level|Inst_LCD_User_Logic|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~60_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(23));

-- Location: LCCOMB_X26_Y12_N22
\Inst_top_level|Inst_LCD_User_Logic|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~1_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|count\(22) & (!\Inst_top_level|Inst_LCD_User_Logic|count\(21) & (!\Inst_top_level|Inst_LCD_User_Logic|count\(23) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(22),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(21),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(23),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(20),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~1_combout\);

-- Location: FF_X26_Y12_N13
\Inst_top_level|Inst_LCD_User_Logic|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~66_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(17));

-- Location: FF_X26_Y12_N11
\Inst_top_level|Inst_LCD_User_Logic|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~69_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(14));

-- Location: FF_X25_Y12_N13
\Inst_top_level|Inst_LCD_User_Logic|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Add0~72_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(11));

-- Location: FF_X27_Y12_N21
\Inst_top_level|Inst_LCD_User_Logic|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~73_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(10));

-- Location: FF_X27_Y12_N23
\Inst_top_level|Inst_LCD_User_Logic|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~74_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(9));

-- Location: LCCOMB_X27_Y12_N12
\Inst_top_level|Inst_LCD_User_Logic|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(9) & (\Inst_top_level|Inst_LCD_User_Logic|count\(10) & (\Inst_top_level|Inst_LCD_User_Logic|count\(8) & \Inst_top_level|Inst_LCD_User_Logic|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(9),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(10),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(8),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(11),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~5_combout\);

-- Location: FF_X27_Y12_N7
\Inst_top_level|Inst_LCD_User_Logic|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~76_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(7));

-- Location: FF_X27_Y12_N29
\Inst_top_level|Inst_LCD_User_Logic|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~81_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(2));

-- Location: LCCOMB_X27_Y14_N0
\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~0_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(0),
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(3),
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(2),
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(1),
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y14_N2
\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~1_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(5),
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(6),
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(7),
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(4),
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y14_N12
\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~2_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(9),
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(10),
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(8),
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(11),
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y14_N22
\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~3_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13))) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(15))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(14),
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(15),
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(13),
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr\(12),
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y14_N16
\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~2_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~1_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~3_combout\) # 
-- (\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~2_combout\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~3_combout\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\);

-- Location: FF_X26_Y10_N13
\Inst_top_level|Inst_Reset_Delay|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(0));

-- Location: LCCOMB_X26_Y10_N10
\Inst_top_level|Inst_Reset_Delay|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~3_combout\ = (!\Inst_top_level|Inst_Reset_Delay|Cont\(11) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(10) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(9) & !\Inst_top_level|Inst_Reset_Delay|Cont\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(11),
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(10),
	datac => \Inst_top_level|Inst_Reset_Delay|Cont\(9),
	datad => \Inst_top_level|Inst_Reset_Delay|Cont\(8),
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~3_combout\);

-- Location: FF_X27_Y9_N31
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(16));

-- Location: FF_X27_Y10_N11
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7));

-- Location: FF_X27_Y10_N23
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3));

-- Location: FF_X27_Y9_N7
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11));

-- Location: FF_X27_Y9_N11
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13));

-- Location: FF_X26_Y13_N11
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~7_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~_emulated_q\);

-- Location: LCCOMB_X27_Y13_N10
\Inst_top_level|Inst_system_controller|byte_end~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end~7_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_system_controller|next_state.init~q\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_end~7_combout\);

-- Location: FF_X27_Y13_N31
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~15_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~_emulated_q\);

-- Location: LCCOMB_X27_Y13_N4
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (\Inst_top_level|Inst_system_controller|byte_end\(3))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~_emulated_q\ $ (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|byte_end\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~_emulated_q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\);

-- Location: FF_X27_Y13_N27
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~19_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~_emulated_q\);

-- Location: LCCOMB_X27_Y13_N28
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (\Inst_top_level|Inst_system_controller|byte_end\(4))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~_emulated_q\ $ (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datab => \Inst_top_level|Inst_system_controller|byte_end\(4),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~_emulated_q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\);

-- Location: FF_X26_Y13_N13
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~21_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~_emulated_q\);

-- Location: LCCOMB_X20_Y13_N30
\Inst_top_level|Inst_system_controller|address_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~4_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(4)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(4),
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(4),
	combout => \Inst_top_level|Inst_system_controller|address_out~4_combout\);

-- Location: LCCOMB_X26_Y12_N6
\Inst_top_level|Inst_LCD_User_Logic|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~58_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & \Inst_top_level|Inst_LCD_User_Logic|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~50_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~58_combout\);

-- Location: LCCOMB_X25_Y11_N30
\Inst_top_level|Inst_LCD_User_Logic|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~60_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\) # (\Inst_top_level|Inst_LCD_User_Logic|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~46_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~60_combout\);

-- Location: LCCOMB_X26_Y12_N12
\Inst_top_level|Inst_LCD_User_Logic|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~66_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Add0~34_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~66_combout\);

-- Location: LCCOMB_X26_Y12_N10
\Inst_top_level|Inst_LCD_User_Logic|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~69_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~28_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~69_combout\);

-- Location: LCCOMB_X24_Y12_N26
\Inst_top_level|Inst_LCD_User_Logic|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~72_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~22_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~72_combout\);

-- Location: LCCOMB_X27_Y12_N20
\Inst_top_level|Inst_LCD_User_Logic|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~73_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~20_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~73_combout\);

-- Location: LCCOMB_X27_Y12_N22
\Inst_top_level|Inst_LCD_User_Logic|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~74_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~18_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~74_combout\);

-- Location: LCCOMB_X27_Y12_N6
\Inst_top_level|Inst_LCD_User_Logic|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~76_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~14_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~76_combout\);

-- Location: LCCOMB_X27_Y12_N28
\Inst_top_level|Inst_LCD_User_Logic|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~81_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~4_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~81_combout\);

-- Location: LCCOMB_X27_Y14_N6
\Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\ = (\KEY[0]~input_o\ $ (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_cntr[3]~18_combout\);

-- Location: LCCOMB_X26_Y10_N12
\Inst_top_level|Inst_Reset_Delay|Cont[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[0]~57_combout\ = ((\Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\ & \Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\,
	datac => \Inst_top_level|Inst_Reset_Delay|Cont\(0),
	datad => \Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[0]~57_combout\);

-- Location: LCCOMB_X27_Y9_N30
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~0_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~32_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~0_combout\);

-- Location: LCCOMB_X27_Y10_N10
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~3_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~14_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~3_combout\);

-- Location: LCCOMB_X18_Y12_N14
\Inst_top_level|Inst_system_controller|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector4~1_combout\ = (\Inst_top_level|Inst_system_controller|next_state.pwm60~q\ & ((\Inst_top_level|Inst_system_controller|next_state.pause~q\) # ((\Inst_top_level|Inst_system_controller|next_state.test~q\)))) # 
-- (!\Inst_top_level|Inst_system_controller|next_state.pwm60~q\ & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ & ((\Inst_top_level|Inst_system_controller|next_state.pause~q\) # (\Inst_top_level|Inst_system_controller|next_state.test~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector4~1_combout\);

-- Location: LCCOMB_X26_Y13_N10
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~7_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (\Inst_top_level|Inst_system_controller|speed_sel\(1))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & ((\Inst_top_level|Inst_system_controller|byte_end\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datab => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_system_controller|byte_end\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~7_combout\);

-- Location: LCCOMB_X27_Y13_N30
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~15_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & 
-- ((!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (\Inst_top_level|Inst_system_controller|byte_end\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datac => \Inst_top_level|Inst_system_controller|byte_end\(3),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~15_combout\);

-- Location: FF_X18_Y11_N21
\Inst_top_level|Inst_system_controller|to_increment\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|to_increment~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|to_increment~q\);

-- Location: LCCOMB_X18_Y12_N10
\Inst_top_level|Inst_system_controller|SRAM_valid_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|SRAM_valid_int~1_combout\ = (\Inst_top_level|Inst_system_controller|SRAM_valid_int~q\ & ((\Inst_top_level|Inst_system_controller|next_state.pwm1000~q\) # ((\Inst_top_level|Inst_system_controller|next_state.pwm60~q\) 
-- # (\Inst_top_level|Inst_system_controller|next_state.pwm120~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pwm120~q\,
	combout => \Inst_top_level|Inst_system_controller|SRAM_valid_int~1_combout\);

-- Location: LCCOMB_X18_Y12_N22
\Inst_top_level|Inst_system_controller|SRAM_valid_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|SRAM_valid_int~3_combout\ = ((\Inst_top_level|Inst_system_controller|next_state.pause~q\ & ((\Inst_top_level|Inst_system_controller|read_SRAM~q\) # (\Inst_top_level|Inst_system_controller|SRAM_valid_int~q\)))) # 
-- (!\Inst_top_level|Inst_system_controller|next_state.init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_system_controller|read_SRAM~q\,
	datac => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	combout => \Inst_top_level|Inst_system_controller|SRAM_valid_int~3_combout\);

-- Location: FF_X18_Y10_N9
\Inst_top_level|Inst_system_controller|data_o[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|data_o~7_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(10));

-- Location: FF_X18_Y10_N19
\Inst_top_level|Inst_system_controller|data_o[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~9_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(8));

-- Location: LCCOMB_X21_Y10_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y13_N12
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1_combout\ = \Inst_top_level|Inst_Address_Counter|address_int\(28) $ (((\Inst_top_level|Inst_Address_Counter|address_int\(31) & ((\Inst_top_level|Inst_Address_Counter|address_int\(30)) # 
-- (\Inst_top_level|Inst_Address_Counter|address_int\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(30),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(31),
	datac => \Inst_top_level|Inst_Address_Counter|address_int\(28),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(29),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1_combout\);

-- Location: FF_X14_Y10_N13
\Inst_top_level|Inst_system_controller|data_o[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~12_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(2));

-- Location: FF_X16_Y10_N13
\Inst_top_level|Inst_system_controller|data_o[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~17_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(7));

-- Location: LCCOMB_X24_Y13_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~6_combout\);

-- Location: LCCOMB_X17_Y10_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y12_N30
\Inst_top_level|Inst_LCD_User_Logic|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\);

-- Location: LCCOMB_X17_Y10_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~6_combout\);

-- Location: LCCOMB_X17_Y10_N12
\Inst_top_level|Inst_LCD_User_Logic|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & \Inst_top_level|Inst_LCD_User_Logic|Mux6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux6~6_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~7_combout\);

-- Location: LCCOMB_X14_Y10_N10
\Inst_top_level|Inst_HEX_to_ASCII_0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_0|Mux5~0_combout\ = (\Inst_top_level|data_muxed[0]~8_combout\ & (((\Inst_top_level|data_muxed[1]~9_combout\)))) # (!\Inst_top_level|data_muxed[0]~8_combout\ & ((\Inst_top_level|data_muxed[3]~11_combout\ & 
-- (!\Inst_top_level|data_muxed[1]~9_combout\ & \Inst_top_level|data_muxed[2]~10_combout\)) # (!\Inst_top_level|data_muxed[3]~11_combout\ & (\Inst_top_level|data_muxed[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[0]~8_combout\,
	datab => \Inst_top_level|data_muxed[3]~11_combout\,
	datac => \Inst_top_level|data_muxed[1]~9_combout\,
	datad => \Inst_top_level|data_muxed[2]~10_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y10_N6
\Inst_top_level|Inst_HEX_to_ASCII_1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_1|Mux5~0_combout\ = (\Inst_top_level|data_muxed[4]~12_combout\ & (\Inst_top_level|data_muxed[5]~13_combout\)) # (!\Inst_top_level|data_muxed[4]~12_combout\ & ((\Inst_top_level|data_muxed[5]~13_combout\ & 
-- ((!\Inst_top_level|data_muxed[7]~15_combout\))) # (!\Inst_top_level|data_muxed[5]~13_combout\ & (\Inst_top_level|data_muxed[6]~14_combout\ & \Inst_top_level|data_muxed[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[4]~12_combout\,
	datab => \Inst_top_level|data_muxed[5]~13_combout\,
	datac => \Inst_top_level|data_muxed[6]~14_combout\,
	datad => \Inst_top_level|data_muxed[7]~15_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y10_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_HEX_to_ASCII_0|Mux5~0_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_HEX_to_ASCII_1|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux5~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux5~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~8_combout\);

-- Location: LCCOMB_X19_Y10_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~8_combout\);

-- Location: LCCOMB_X19_Y10_N6
\Inst_top_level|Inst_HEX_to_ASCII_2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_2|Mux4~0_combout\ = (\Inst_top_level|data_muxed[10]~5_combout\ & (((\Inst_top_level|data_muxed[8]~7_combout\) # (\Inst_top_level|data_muxed[9]~6_combout\)) # (!\Inst_top_level|data_muxed[11]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[10]~5_combout\,
	datab => \Inst_top_level|data_muxed[11]~4_combout\,
	datac => \Inst_top_level|data_muxed[8]~7_combout\,
	datad => \Inst_top_level|data_muxed[9]~6_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y10_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~9_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux5~8_combout\) # ((\Inst_top_level|Inst_HEX_to_ASCII_2|Mux4~0_combout\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux4~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux5~8_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~9_combout\);

-- Location: LCCOMB_X19_Y10_N22
\Inst_top_level|Inst_HEX_to_ASCII_3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_3|Mux4~0_combout\ = (\Inst_top_level|data_muxed[14]~1_combout\ & ((\Inst_top_level|data_muxed[12]~3_combout\) # ((\Inst_top_level|data_muxed[13]~2_combout\) # (!\Inst_top_level|data_muxed[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[12]~3_combout\,
	datab => \Inst_top_level|data_muxed[13]~2_combout\,
	datac => \Inst_top_level|data_muxed[15]~0_combout\,
	datad => \Inst_top_level|data_muxed[14]~1_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y10_N12
\Inst_top_level|Inst_LCD_User_Logic|Mux5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~10_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_HEX_to_ASCII_3|Mux4~0_combout\) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux4~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~10_combout\);

-- Location: LCCOMB_X17_Y10_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~11_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~11_combout\);

-- Location: LCCOMB_X19_Y10_N30
\Inst_top_level|Inst_LCD_User_Logic|Mux5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux5~9_combout\) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux5~11_combout\) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux5~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux5~9_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux5~11_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~10_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~12_combout\);

-- Location: LCCOMB_X17_Y13_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~11_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~11_combout\);

-- Location: LCCOMB_X21_Y12_N16
\Inst_top_level|Inst_LCD_User_Logic|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~6_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~6_combout\);

-- Location: LCCOMB_X21_Y12_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & (((\Inst_top_level|Inst_LCD_User_Logic|Mux3~6_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~6_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~7_combout\);

-- Location: LCCOMB_X20_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~12_combout\ = ((!\Inst_top_level|Inst_system_controller|address_out\(5) & !\Inst_top_level|Inst_system_controller|address_out\(6))) # (!\Inst_top_level|Inst_system_controller|address_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_out\(7),
	datac => \Inst_top_level|Inst_system_controller|address_out\(5),
	datad => \Inst_top_level|Inst_system_controller|address_out\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~12_combout\);

-- Location: LCCOMB_X21_Y13_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~6_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~6_combout\);

-- Location: LCCOMB_X21_Y13_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux1~6_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux1~6_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~7_combout\);

-- Location: FF_X9_Y12_N11
\Inst_top_level|Inst_system_controller|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(14));

-- Location: FF_X9_Y12_N27
\Inst_top_level|Inst_system_controller|clk_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(13));

-- Location: FF_X9_Y12_N1
\Inst_top_level|Inst_system_controller|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(12));

-- Location: FF_X10_Y13_N27
\Inst_top_level|Inst_system_controller|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(10));

-- Location: LCCOMB_X9_Y12_N22
\Inst_top_level|Inst_system_controller|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~3_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(13) & (\Inst_top_level|Inst_system_controller|clk_cnt\(12) & (!\Inst_top_level|Inst_system_controller|clk_cnt\(11) & 
-- !\Inst_top_level|Inst_system_controller|clk_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(13),
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(12),
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(11),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(10),
	combout => \Inst_top_level|Inst_system_controller|Equal1~3_combout\);

-- Location: FF_X10_Y13_N23
\Inst_top_level|Inst_system_controller|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(8));

-- Location: LCCOMB_X10_Y13_N2
\Inst_top_level|Inst_system_controller|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~5_combout\ = (!\Inst_top_level|Inst_system_controller|clk_cnt\(8) & (\Inst_top_level|Inst_system_controller|clk_cnt\(6) & (!\Inst_top_level|Inst_system_controller|clk_cnt\(7) & 
-- !\Inst_top_level|Inst_system_controller|clk_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(8),
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(6),
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(7),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(9),
	combout => \Inst_top_level|Inst_system_controller|Equal1~5_combout\);

-- Location: FF_X10_Y13_N13
\Inst_top_level|Inst_system_controller|clk_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(3));

-- Location: LCCOMB_X17_Y11_N12
\Inst_top_level|Inst_system_controller|data_o[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o[8]~0_combout\ = (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o[8]~0_combout\);

-- Location: LCCOMB_X18_Y11_N20
\Inst_top_level|Inst_system_controller|to_increment~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|to_increment~0_combout\ = (\Inst_top_level|Inst_system_controller|data_o[8]~0_combout\ & (\Inst_top_level|Inst_SRAM_Controller|busy_h~q\ & ((\Inst_top_level|Inst_system_controller|SRAM_valid_int~q\) # 
-- (\Inst_top_level|Inst_system_controller|to_increment~q\)))) # (!\Inst_top_level|Inst_system_controller|data_o[8]~0_combout\ & (((\Inst_top_level|Inst_system_controller|to_increment~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|data_o[8]~0_combout\,
	datab => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datac => \Inst_top_level|Inst_system_controller|to_increment~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	combout => \Inst_top_level|Inst_system_controller|to_increment~0_combout\);

-- Location: FF_X27_Y11_N15
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~6_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1));

-- Location: FF_X17_Y11_N13
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[10]~8_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(10));

-- Location: LCCOMB_X17_Y11_N20
\Inst_top_level|Inst_system_controller|data_o~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~7_combout\ = (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(10) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(10),
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~7_combout\);

-- Location: FF_X17_Y11_N5
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[8]~10_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(8));

-- Location: LCCOMB_X18_Y10_N18
\Inst_top_level|Inst_system_controller|data_o~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~9_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(8) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(8),
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~9_combout\);

-- Location: FF_X17_Y11_N27
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[2]~13_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(2));

-- Location: LCCOMB_X14_Y10_N12
\Inst_top_level|Inst_system_controller|data_o~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~12_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(2) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(2),
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~12_combout\);

-- Location: FF_X17_Y11_N23
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[7]~18_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(7));

-- Location: LCCOMB_X16_Y10_N12
\Inst_top_level|Inst_system_controller|data_o~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~17_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(7),
	combout => \Inst_top_level|Inst_system_controller|data_o~17_combout\);

-- Location: LCCOMB_X9_Y12_N10
\Inst_top_level|Inst_system_controller|clk_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~8_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datac => \Inst_top_level|Inst_system_controller|Add1~28_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~8_combout\);

-- Location: LCCOMB_X9_Y12_N26
\Inst_top_level|Inst_system_controller|clk_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~9_combout\ = (\Inst_top_level|Inst_system_controller|Add1~26_combout\ & !\Inst_top_level|Inst_system_controller|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Add1~26_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~9_combout\);

-- Location: LCCOMB_X9_Y12_N0
\Inst_top_level|Inst_system_controller|clk_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~10_combout\ = (\Inst_top_level|Inst_system_controller|Add1~24_combout\ & !\Inst_top_level|Inst_system_controller|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Add1~24_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~10_combout\);

-- Location: LCCOMB_X27_Y11_N14
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~6_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~6_combout\);

-- Location: LCCOMB_X16_Y11_N0
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[10]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[10]~8_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[10]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \SRAM_DQ[10]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[10]~8_combout\);

-- Location: LCCOMB_X17_Y11_N4
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[8]~10_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[8]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[8]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[8]~10_combout\);

-- Location: LCCOMB_X17_Y11_N26
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[2]~13_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[2]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[2]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[2]~13_combout\);

-- Location: LCCOMB_X17_Y11_N22
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[7]~18_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[7]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[7]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[7]~18_combout\);

-- Location: LCCOMB_X46_Y16_N22
\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~3_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(15),
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(14),
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(13),
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(12),
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y15_N12
\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~3_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(15),
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(14),
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(13),
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(12),
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y9_N12
\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~1_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(6),
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7),
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(5),
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4),
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~19_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\ $ (((\Inst_top_level|Inst_system_controller|byte_end\(4)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|byte_end\(4),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~19_combout\);

-- Location: LCCOMB_X26_Y13_N12
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~21_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\ $ (((!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & \Inst_top_level|Inst_system_controller|byte_end\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datac => \Inst_top_level|Inst_system_controller|byte_end\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~21_combout\);

-- Location: LCCOMB_X21_Y12_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~16_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) $ (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) $ (((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~16_combout\);

-- Location: LCCOMB_X21_Y12_N6
\Inst_top_level|Inst_LCD_User_Logic|Mux2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~17_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux2~16_combout\) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux2~16_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~17_combout\);

-- Location: LCCOMB_X17_Y13_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~16_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~16_combout\);

-- Location: LCCOMB_X17_Y13_N30
\Inst_top_level|Inst_LCD_User_Logic|Mux4~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~17_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux4~16_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux4~16_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~17_combout\);

-- Location: LCCOMB_X27_Y13_N20
\Inst_top_level|Inst_system_controller|byte_start[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_start[0]~4_combout\ = !\Inst_top_level|Inst_system_controller|byte_end~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|byte_end~6_combout\,
	combout => \Inst_top_level|Inst_system_controller|byte_start[0]~4_combout\);

-- Location: LCCOMB_X27_Y13_N12
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\ = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & ((\Inst_top_level|Inst_system_controller|byte_end\(3)))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~13_combout\);

-- Location: LCCOMB_X27_Y13_N18
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\ = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & ((\Inst_top_level|Inst_system_controller|byte_end\(4)))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(4),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~17_combout\);

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOOBUF_X96_Y0_N23
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N23
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X94_Y0_N2
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X109_Y0_N2
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X87_Y0_N23
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X96_Y0_N2
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

-- Location: IOOBUF_X111_Y0_N9
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X91_Y0_N23
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X100_Y0_N23
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[23]~output_o\);

-- Location: IOOBUF_X91_Y0_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[24]~output_o\);

-- Location: IOOBUF_X89_Y0_N9
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[25]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[26]~output_o\);

-- Location: IOOBUF_X100_Y0_N16
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[27]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[28]~output_o\);

-- Location: IOOBUF_X89_Y0_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[29]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[30]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[31]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[32]~output_o\);

-- Location: IOOBUF_X113_Y0_N2
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[33]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[34]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[35]~output_o\);

-- Location: IOOBUF_X107_Y0_N2
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|ALT_INV_sda_int~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X109_Y0_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_PWM|pwm~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(0),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(1),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(2),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(3),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(4),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(5),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(6),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(7),
	oe => VCC,
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(0),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(1),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(2),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(3),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(4),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(5),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(6),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(7),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(8),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(9),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(10),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(11),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(12),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(13),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(14),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(15),
	oe => \Inst_top_level|Inst_SRAM_Controller|ALT_INV_cont_rw_reg~q\,
	devoe => ww_devoe,
	o => \SRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X0_Y58_N16
\LCD_ON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_ON~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\LCD_BLON~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LCD_BLON~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|en~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_LCD_User_Logic|Mux8~6_combout\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(0),
	devoe => ww_devoe,
	o => \SRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(1),
	devoe => ww_devoe,
	o => \SRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(2),
	devoe => ww_devoe,
	o => \SRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(3),
	devoe => ww_devoe,
	o => \SRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(4),
	devoe => ww_devoe,
	o => \SRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(5),
	devoe => ww_devoe,
	o => \SRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(6),
	devoe => ww_devoe,
	o => \SRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(7),
	devoe => ww_devoe,
	o => \SRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_ADDR[19]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\SRAM_UB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_UB_N~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\SRAM_LB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_LB_N~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_we_n~q\,
	devoe => ww_devoe,
	o => \SRAM_WE_N~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_CE_N~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_top_level|Inst_SRAM_Controller|sram_oe_n~q\,
	devoe => ww_devoe,
	o => \SRAM_OE_N~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X26_Y10_N14
\Inst_top_level|Inst_Reset_Delay|Cont[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[1]~19_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(0) & (\Inst_top_level|Inst_Reset_Delay|Cont\(1) $ (VCC))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(0) & (\Inst_top_level|Inst_Reset_Delay|Cont\(1) & VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[1]~20\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(0) & \Inst_top_level|Inst_Reset_Delay|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(0),
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(1),
	datad => VCC,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[1]~19_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[1]~20\);

-- Location: FF_X26_Y10_N15
\Inst_top_level|Inst_Reset_Delay|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[1]~19_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(1));

-- Location: LCCOMB_X26_Y10_N16
\Inst_top_level|Inst_Reset_Delay|Cont[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[2]~21_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(2) & (!\Inst_top_level|Inst_Reset_Delay|Cont[1]~20\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(2) & ((\Inst_top_level|Inst_Reset_Delay|Cont[1]~20\) # (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[2]~22\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[1]~20\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[1]~20\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[2]~21_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[2]~22\);

-- Location: FF_X26_Y10_N17
\Inst_top_level|Inst_Reset_Delay|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[2]~21_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(2));

-- Location: LCCOMB_X26_Y10_N18
\Inst_top_level|Inst_Reset_Delay|Cont[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[3]~23_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(3) & (\Inst_top_level|Inst_Reset_Delay|Cont[2]~22\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(3) & (!\Inst_top_level|Inst_Reset_Delay|Cont[2]~22\ & 
-- VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[3]~24\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(3) & !\Inst_top_level|Inst_Reset_Delay|Cont[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[2]~22\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[3]~23_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[3]~24\);

-- Location: FF_X26_Y10_N19
\Inst_top_level|Inst_Reset_Delay|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[3]~23_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(3));

-- Location: LCCOMB_X26_Y10_N20
\Inst_top_level|Inst_Reset_Delay|Cont[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[4]~25_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(4) & (!\Inst_top_level|Inst_Reset_Delay|Cont[3]~24\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(4) & ((\Inst_top_level|Inst_Reset_Delay|Cont[3]~24\) # (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[4]~26\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[3]~24\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[3]~24\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[4]~25_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[4]~26\);

-- Location: FF_X26_Y10_N21
\Inst_top_level|Inst_Reset_Delay|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[4]~25_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(4));

-- Location: LCCOMB_X26_Y10_N22
\Inst_top_level|Inst_Reset_Delay|Cont[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[5]~27_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(5) & (\Inst_top_level|Inst_Reset_Delay|Cont[4]~26\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(5) & (!\Inst_top_level|Inst_Reset_Delay|Cont[4]~26\ & 
-- VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[5]~28\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(5) & !\Inst_top_level|Inst_Reset_Delay|Cont[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[4]~26\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[5]~27_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[5]~28\);

-- Location: LCCOMB_X26_Y10_N24
\Inst_top_level|Inst_Reset_Delay|Cont[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[6]~29_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(6) & (!\Inst_top_level|Inst_Reset_Delay|Cont[5]~28\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(6) & ((\Inst_top_level|Inst_Reset_Delay|Cont[5]~28\) # (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[6]~30\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[5]~28\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[5]~28\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[6]~29_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[6]~30\);

-- Location: FF_X26_Y10_N25
\Inst_top_level|Inst_Reset_Delay|Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[6]~29_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(6));

-- Location: FF_X26_Y10_N23
\Inst_top_level|Inst_Reset_Delay|Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[5]~27_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(5));

-- Location: LCCOMB_X26_Y10_N0
\Inst_top_level|Inst_Reset_Delay|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~2_combout\ = (!\Inst_top_level|Inst_Reset_Delay|Cont\(7) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(6) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(5) & !\Inst_top_level|Inst_Reset_Delay|Cont\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(7),
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(6),
	datac => \Inst_top_level|Inst_Reset_Delay|Cont\(5),
	datad => \Inst_top_level|Inst_Reset_Delay|Cont\(4),
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y10_N28
\Inst_top_level|Inst_Reset_Delay|Cont[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[8]~33_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(8) & (!\Inst_top_level|Inst_Reset_Delay|Cont[7]~32\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(8) & ((\Inst_top_level|Inst_Reset_Delay|Cont[7]~32\) # (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[8]~34\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[7]~32\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[7]~32\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[8]~33_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[8]~34\);

-- Location: FF_X26_Y10_N29
\Inst_top_level|Inst_Reset_Delay|Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[8]~33_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(8));

-- Location: LCCOMB_X26_Y9_N0
\Inst_top_level|Inst_Reset_Delay|Cont[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[10]~37_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(10) & (!\Inst_top_level|Inst_Reset_Delay|Cont[9]~36\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(10) & ((\Inst_top_level|Inst_Reset_Delay|Cont[9]~36\) # 
-- (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[10]~38\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[9]~36\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[9]~36\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[10]~37_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[10]~38\);

-- Location: FF_X26_Y9_N1
\Inst_top_level|Inst_Reset_Delay|Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[10]~37_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(10));

-- Location: LCCOMB_X26_Y9_N2
\Inst_top_level|Inst_Reset_Delay|Cont[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[11]~39_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(11) & (\Inst_top_level|Inst_Reset_Delay|Cont[10]~38\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(11) & (!\Inst_top_level|Inst_Reset_Delay|Cont[10]~38\ 
-- & VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[11]~40\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(11) & !\Inst_top_level|Inst_Reset_Delay|Cont[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[10]~38\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[11]~39_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[11]~40\);

-- Location: FF_X26_Y9_N3
\Inst_top_level|Inst_Reset_Delay|Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[11]~39_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(11));

-- Location: LCCOMB_X26_Y9_N4
\Inst_top_level|Inst_Reset_Delay|Cont[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[12]~41_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(12) & (!\Inst_top_level|Inst_Reset_Delay|Cont[11]~40\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(12) & ((\Inst_top_level|Inst_Reset_Delay|Cont[11]~40\) # 
-- (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[12]~42\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[11]~40\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[11]~40\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[12]~41_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[12]~42\);

-- Location: FF_X26_Y9_N5
\Inst_top_level|Inst_Reset_Delay|Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[12]~41_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(12));

-- Location: LCCOMB_X26_Y9_N6
\Inst_top_level|Inst_Reset_Delay|Cont[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[13]~43_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(13) & (\Inst_top_level|Inst_Reset_Delay|Cont[12]~42\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(13) & (!\Inst_top_level|Inst_Reset_Delay|Cont[12]~42\ 
-- & VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[13]~44\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(13) & !\Inst_top_level|Inst_Reset_Delay|Cont[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[12]~42\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[13]~43_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[13]~44\);

-- Location: LCCOMB_X26_Y9_N8
\Inst_top_level|Inst_Reset_Delay|Cont[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[14]~45_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(14) & (!\Inst_top_level|Inst_Reset_Delay|Cont[13]~44\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(14) & ((\Inst_top_level|Inst_Reset_Delay|Cont[13]~44\) # 
-- (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[14]~46\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[13]~44\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[13]~44\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[14]~45_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[14]~46\);

-- Location: FF_X26_Y9_N9
\Inst_top_level|Inst_Reset_Delay|Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[14]~45_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(14));

-- Location: FF_X26_Y9_N7
\Inst_top_level|Inst_Reset_Delay|Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[13]~43_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(13));

-- Location: LCCOMB_X26_Y9_N26
\Inst_top_level|Inst_Reset_Delay|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~4_combout\ = (!\Inst_top_level|Inst_Reset_Delay|Cont\(15) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(14) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(12) & !\Inst_top_level|Inst_Reset_Delay|Cont\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(15),
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(14),
	datac => \Inst_top_level|Inst_Reset_Delay|Cont\(12),
	datad => \Inst_top_level|Inst_Reset_Delay|Cont\(13),
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y10_N6
\Inst_top_level|Inst_Reset_Delay|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~1_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(0) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(3) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(1) & !\Inst_top_level|Inst_Reset_Delay|Cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(0),
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(3),
	datac => \Inst_top_level|Inst_Reset_Delay|Cont\(1),
	datad => \Inst_top_level|Inst_Reset_Delay|Cont\(2),
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y10_N8
\Inst_top_level|Inst_Reset_Delay|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\ = (\Inst_top_level|Inst_Reset_Delay|Equal0~3_combout\ & (\Inst_top_level|Inst_Reset_Delay|Equal0~2_combout\ & (\Inst_top_level|Inst_Reset_Delay|Equal0~4_combout\ & 
-- \Inst_top_level|Inst_Reset_Delay|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Equal0~3_combout\,
	datab => \Inst_top_level|Inst_Reset_Delay|Equal0~2_combout\,
	datac => \Inst_top_level|Inst_Reset_Delay|Equal0~4_combout\,
	datad => \Inst_top_level|Inst_Reset_Delay|Equal0~1_combout\,
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y9_N14
\Inst_top_level|Inst_Reset_Delay|Cont[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[17]~51_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(17) & (\Inst_top_level|Inst_Reset_Delay|Cont[16]~50\ $ (GND))) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(17) & (!\Inst_top_level|Inst_Reset_Delay|Cont[16]~50\ 
-- & VCC))
-- \Inst_top_level|Inst_Reset_Delay|Cont[17]~52\ = CARRY((\Inst_top_level|Inst_Reset_Delay|Cont\(17) & !\Inst_top_level|Inst_Reset_Delay|Cont[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(17),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[16]~50\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[17]~51_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[17]~52\);

-- Location: FF_X26_Y9_N15
\Inst_top_level|Inst_Reset_Delay|Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[17]~51_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(17));

-- Location: LCCOMB_X26_Y9_N16
\Inst_top_level|Inst_Reset_Delay|Cont[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[18]~53_combout\ = (\Inst_top_level|Inst_Reset_Delay|Cont\(18) & (!\Inst_top_level|Inst_Reset_Delay|Cont[17]~52\)) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(18) & ((\Inst_top_level|Inst_Reset_Delay|Cont[17]~52\) # 
-- (GND)))
-- \Inst_top_level|Inst_Reset_Delay|Cont[18]~54\ = CARRY((!\Inst_top_level|Inst_Reset_Delay|Cont[17]~52\) # (!\Inst_top_level|Inst_Reset_Delay|Cont\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(18),
	datad => VCC,
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[17]~52\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[18]~53_combout\,
	cout => \Inst_top_level|Inst_Reset_Delay|Cont[18]~54\);

-- Location: FF_X26_Y9_N17
\Inst_top_level|Inst_Reset_Delay|Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[18]~53_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(18));

-- Location: LCCOMB_X26_Y9_N18
\Inst_top_level|Inst_Reset_Delay|Cont[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Cont[19]~55_combout\ = \Inst_top_level|Inst_Reset_Delay|Cont[18]~54\ $ (!\Inst_top_level|Inst_Reset_Delay|Cont\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_Reset_Delay|Cont\(19),
	cin => \Inst_top_level|Inst_Reset_Delay|Cont[18]~54\,
	combout => \Inst_top_level|Inst_Reset_Delay|Cont[19]~55_combout\);

-- Location: FF_X26_Y9_N19
\Inst_top_level|Inst_Reset_Delay|Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Reset_Delay|Cont[19]~55_combout\,
	ena => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|Cont\(19));

-- Location: LCCOMB_X26_Y9_N28
\Inst_top_level|Inst_Reset_Delay|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\ = (!\Inst_top_level|Inst_Reset_Delay|Cont\(16) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(19) & (!\Inst_top_level|Inst_Reset_Delay|Cont\(17) & !\Inst_top_level|Inst_Reset_Delay|Cont\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|Cont\(16),
	datab => \Inst_top_level|Inst_Reset_Delay|Cont\(19),
	datac => \Inst_top_level|Inst_Reset_Delay|Cont\(17),
	datad => \Inst_top_level|Inst_Reset_Delay|Cont\(18),
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y10_N2
\Inst_top_level|Inst_Reset_Delay|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\ = (!\Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\) # (!\Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_Reset_Delay|Equal0~5_combout\,
	datad => \Inst_top_level|Inst_Reset_Delay|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\);

-- Location: FF_X27_Y11_N29
\Inst_top_level|Inst_Reset_Delay|oRESET\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_Reset_Delay|Equal0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Reset_Delay|oRESET~q\);

-- Location: LCCOMB_X27_Y11_N0
\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~0_combout\ = \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\ $ (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|Equal0~4_combout\,
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~0_combout\);

-- Location: FF_X27_Y11_N1
\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\);

-- Location: LCCOMB_X27_Y11_N6
\Inst_top_level|reset_h~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|reset_h~0_combout\ = (\Inst_top_level|Inst_Reset_Delay|oRESET~q\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|reset_h~0_combout\);

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: LCCOMB_X27_Y11_N2
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\);

-- Location: FF_X27_Y11_N25
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4));

-- Location: LCCOMB_X28_Y11_N12
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~0_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0) & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\ $ (GND))) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\ & VCC))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\ = CARRY((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0) & !\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0),
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\,
	datad => VCC,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~0_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\);

-- Location: LCCOMB_X28_Y11_N14
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\)) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1) & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\) # (GND)))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\ = CARRY((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~1\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\);

-- Location: LCCOMB_X28_Y11_N16
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2) & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\ $ (GND))) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\ & VCC))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\ = CARRY((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2) & !\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~3\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\);

-- Location: LCCOMB_X28_Y11_N18
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\)) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3) & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\) # (GND)))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\ = CARRY((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~5\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\);

-- Location: LCCOMB_X27_Y11_N30
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1_combout\);

-- Location: FF_X27_Y11_N5
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3));

-- Location: LCCOMB_X28_Y11_N20
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4) & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\ $ (GND))) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\ & VCC))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\ = CARRY((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4) & !\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~7\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\);

-- Location: LCCOMB_X28_Y11_N22
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\)) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5) & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\) # (GND)))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\ = CARRY((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~9\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\);

-- Location: LCCOMB_X28_Y11_N24
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6) & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\ $ (GND))) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6) & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\ & VCC))
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~13\ = CARRY((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6) & !\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~11\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\,
	cout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~13\);

-- Location: LCCOMB_X28_Y11_N26
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\ = \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~13\ $ (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(7),
	cin => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~13\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\);

-- Location: LCCOMB_X28_Y11_N30
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\);

-- Location: FF_X27_Y11_N3
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(7));

-- Location: LCCOMB_X27_Y11_N8
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~4_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~4_combout\);

-- Location: FF_X27_Y11_N9
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~4_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5));

-- Location: LCCOMB_X27_Y11_N24
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6) & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(7) & 
-- (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4) & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6),
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(7),
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(4),
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(5),
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y11_N20
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~3_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~3_combout\);

-- Location: FF_X27_Y11_N21
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~3_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(6));

-- Location: LCCOMB_X28_Y11_N10
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\ & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\ & 
-- ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\);

-- Location: LCCOMB_X28_Y11_N28
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~1_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\ & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\) # 
-- ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\ & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~8_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~1_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~1_combout\);

-- Location: LCCOMB_X28_Y11_N2
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~1_combout\ & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\) # 
-- ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\ & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~1_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\);

-- Location: LCCOMB_X28_Y11_N8
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\ & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\) # 
-- ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\)))) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\ & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\ & 
-- ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\))) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\ & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~0_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~2_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\);

-- Location: LCCOMB_X28_Y11_N4
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~0_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\ & ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\))) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\ & (!\GPIO[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO[0]~input_o\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~0_combout\);

-- Location: FF_X28_Y11_N5
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~0_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|stretch~q\);

-- Location: LCCOMB_X27_Y11_N26
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~7_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~0_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~7_combout\);

-- Location: FF_X27_Y11_N27
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~7_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0));

-- Location: LCCOMB_X27_Y11_N16
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~5_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~5_combout\);

-- Location: FF_X27_Y11_N17
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~5_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2));

-- Location: LCCOMB_X27_Y11_N4
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1) & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0) & 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3) & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(1),
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(0),
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(3),
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count\(2),
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y11_N28
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~2_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\ & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~0_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~1_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y11_N0
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~0_combout\ = (((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\)) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\)) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~2_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~0_combout\);

-- Location: LCCOMB_X29_Y11_N8
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~1_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~2_combout\) # ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\ & 
-- (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~0_combout\ & !\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Equal0~2_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~0_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~1_combout\);

-- Location: LCCOMB_X28_Y11_N6
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~2_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\ & (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\ & 
-- (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\ & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~4_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~10_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~6_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~2_combout\);

-- Location: LCCOMB_X29_Y11_N26
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~3_combout\ = (\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\) # ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\ & 
-- ((\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~2_combout\))) # (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\ & (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~14_combout\,
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|Add0~12_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~2_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|count~2_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~3_combout\);

-- Location: LCCOMB_X29_Y11_N12
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~4_combout\ = (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~1_combout\ & ((!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\) # 
-- (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~1_combout\,
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~3_combout\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_0~3_combout\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~4_combout\);

-- Location: FF_X29_Y11_N13
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~4_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~q\);

-- Location: FF_X29_Y11_N7
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~q\,
	sload => VCC,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk_prev~q\);

-- Location: LCCOMB_X29_Y11_N6
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_1~0_combout\ = (!\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk_prev~q\ & \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk_prev~q\,
	datad => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|data_clk~q\,
	combout => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_1~0_combout\);

-- Location: FF_X28_Y11_N19
\Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|sda_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|sda_int~q\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_i2c_user_logic|Inst_i2c_master|sda_int~q\);

-- Location: LCCOMB_X19_Y11_N0
\Inst_top_level|Inst_PWM|counter[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[0]~8_combout\ = \Inst_top_level|Inst_PWM|counter\(0) $ (VCC)
-- \Inst_top_level|Inst_PWM|counter[0]~9\ = CARRY(\Inst_top_level|Inst_PWM|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_PWM|counter\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_PWM|counter[0]~8_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[0]~9\);

-- Location: FF_X19_Y11_N1
\Inst_top_level|Inst_PWM|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[0]~8_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(0));

-- Location: LCCOMB_X19_Y11_N2
\Inst_top_level|Inst_PWM|counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[1]~10_combout\ = (\Inst_top_level|Inst_PWM|counter\(1) & (!\Inst_top_level|Inst_PWM|counter[0]~9\)) # (!\Inst_top_level|Inst_PWM|counter\(1) & ((\Inst_top_level|Inst_PWM|counter[0]~9\) # (GND)))
-- \Inst_top_level|Inst_PWM|counter[1]~11\ = CARRY((!\Inst_top_level|Inst_PWM|counter[0]~9\) # (!\Inst_top_level|Inst_PWM|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_PWM|counter\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|counter[0]~9\,
	combout => \Inst_top_level|Inst_PWM|counter[1]~10_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[1]~11\);

-- Location: FF_X19_Y11_N3
\Inst_top_level|Inst_PWM|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[1]~10_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(1));

-- Location: LCCOMB_X19_Y11_N4
\Inst_top_level|Inst_PWM|counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[2]~12_combout\ = (\Inst_top_level|Inst_PWM|counter\(2) & (\Inst_top_level|Inst_PWM|counter[1]~11\ $ (GND))) # (!\Inst_top_level|Inst_PWM|counter\(2) & (!\Inst_top_level|Inst_PWM|counter[1]~11\ & VCC))
-- \Inst_top_level|Inst_PWM|counter[2]~13\ = CARRY((\Inst_top_level|Inst_PWM|counter\(2) & !\Inst_top_level|Inst_PWM|counter[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_PWM|counter\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|counter[1]~11\,
	combout => \Inst_top_level|Inst_PWM|counter[2]~12_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[2]~13\);

-- Location: FF_X19_Y11_N5
\Inst_top_level|Inst_PWM|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[2]~12_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(2));

-- Location: LCCOMB_X19_Y11_N8
\Inst_top_level|Inst_PWM|counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[4]~16_combout\ = (\Inst_top_level|Inst_PWM|counter\(4) & (\Inst_top_level|Inst_PWM|counter[3]~15\ $ (GND))) # (!\Inst_top_level|Inst_PWM|counter\(4) & (!\Inst_top_level|Inst_PWM|counter[3]~15\ & VCC))
-- \Inst_top_level|Inst_PWM|counter[4]~17\ = CARRY((\Inst_top_level|Inst_PWM|counter\(4) & !\Inst_top_level|Inst_PWM|counter[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_PWM|counter\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|counter[3]~15\,
	combout => \Inst_top_level|Inst_PWM|counter[4]~16_combout\,
	cout => \Inst_top_level|Inst_PWM|counter[4]~17\);

-- Location: FF_X19_Y11_N9
\Inst_top_level|Inst_PWM|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[4]~16_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(4));

-- Location: LCCOMB_X19_Y11_N14
\Inst_top_level|Inst_PWM|counter[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|counter[7]~22_combout\ = \Inst_top_level|Inst_PWM|counter\(7) $ (\Inst_top_level|Inst_PWM|counter[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_PWM|counter\(7),
	cin => \Inst_top_level|Inst_PWM|counter[6]~21\,
	combout => \Inst_top_level|Inst_PWM|counter[7]~22_combout\);

-- Location: FF_X19_Y11_N15
\Inst_top_level|Inst_PWM|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|counter[7]~22_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|counter\(7));

-- Location: LCCOMB_X18_Y11_N0
\Inst_top_level|Inst_system_controller|ROM_cnt[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[0]~9_combout\ = (\Inst_top_level|Inst_system_controller|to_increment~q\ & (\Inst_top_level|Inst_system_controller|ROM_cnt\(0) $ (VCC))) # (!\Inst_top_level|Inst_system_controller|to_increment~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(0) & VCC))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\ = CARRY((\Inst_top_level|Inst_system_controller|to_increment~q\ & \Inst_top_level|Inst_system_controller|ROM_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|to_increment~q\,
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~9_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\);

-- Location: LCCOMB_X18_Y11_N8
\Inst_top_level|Inst_system_controller|ROM_cnt[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[4]~19_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(4) & (\Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(4) & 
-- (!\Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\ & VCC))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\ = CARRY((\Inst_top_level|Inst_system_controller|ROM_cnt\(4) & !\Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[4]~19_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\);

-- Location: LCCOMB_X18_Y11_N10
\Inst_top_level|Inst_system_controller|ROM_cnt[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[5]~21_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(5) & (!\Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\)) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(5) & 
-- ((\Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\) # (GND)))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\ = CARRY((!\Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[4]~20\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[5]~21_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\);

-- Location: LCCOMB_X18_Y11_N12
\Inst_top_level|Inst_system_controller|ROM_cnt[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[6]~23_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(6) & (\Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(6) & 
-- (!\Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\ & VCC))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\ = CARRY((\Inst_top_level|Inst_system_controller|ROM_cnt\(6) & !\Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[5]~22\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[6]~23_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\);

-- Location: LCCOMB_X18_Y11_N14
\Inst_top_level|Inst_system_controller|ROM_cnt[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[7]~25_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(7) & (!\Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\)) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(7) & 
-- ((\Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\) # (GND)))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[7]~26\ = CARRY((!\Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[6]~24\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[7]~25_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[7]~26\);

-- Location: LCCOMB_X29_Y11_N18
\Inst_top_level|Inst_SRAM_Controller|next_state.read2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.read2~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~feeder_combout\);

-- Location: FF_X29_Y11_N19
\Inst_top_level|Inst_SRAM_Controller|next_state.read2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~feeder_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\);

-- Location: LCCOMB_X18_Y11_N26
\Inst_top_level|Inst_system_controller|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal0~0_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(3)) # ((\Inst_top_level|Inst_system_controller|ROM_cnt\(1)) # ((\Inst_top_level|Inst_system_controller|ROM_cnt\(2)) # 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(3),
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(1),
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(2),
	datad => \Inst_top_level|Inst_system_controller|ROM_cnt\(0),
	combout => \Inst_top_level|Inst_system_controller|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y11_N8
\Inst_top_level|Inst_system_controller|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal0~2_combout\ = ((\Inst_top_level|Inst_system_controller|Equal0~1_combout\) # (\Inst_top_level|Inst_system_controller|Equal0~0_combout\)) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(8),
	datab => \Inst_top_level|Inst_system_controller|Equal0~1_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_system_controller|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y15_N0
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~16_combout\ = \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(0) $ (VCC)
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\ = CARRY(\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~16_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X26_Y15_N4
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\ $ (!\KEY[2]~input_o\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\,
	datac => \KEY[2]~input_o\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\);

-- Location: FF_X25_Y15_N1
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~16_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(0));

-- Location: LCCOMB_X25_Y15_N2
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~19_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[0]~17\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~19_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\);

-- Location: FF_X25_Y15_N3
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~19_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1));

-- Location: LCCOMB_X25_Y15_N4
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~21_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[1]~20\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~21_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\);

-- Location: FF_X25_Y15_N5
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~21_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2));

-- Location: LCCOMB_X25_Y15_N6
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~23_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~22\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~23_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\);

-- Location: LCCOMB_X25_Y15_N8
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~25_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~24\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~25_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\);

-- Location: FF_X25_Y15_N9
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~25_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4));

-- Location: LCCOMB_X25_Y15_N10
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~27_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[4]~26\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~27_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~28\);

-- Location: LCCOMB_X25_Y15_N14
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~31_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[6]~30\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~31_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\);

-- Location: FF_X25_Y15_N15
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~31_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7));

-- Location: FF_X25_Y15_N11
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[5]~27_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5));

-- Location: LCCOMB_X26_Y15_N0
\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~1_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(6),
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(7),
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(5),
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(4),
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y15_N16
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~33_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8) & (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[7]~32\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~33_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\);

-- Location: FF_X25_Y15_N17
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~33_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8));

-- Location: LCCOMB_X25_Y15_N18
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~35_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9) & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[8]~34\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~35_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~36\);

-- Location: FF_X25_Y15_N19
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[9]~35_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9));

-- Location: FF_X25_Y15_N21
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[10]~37_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10));

-- Location: LCCOMB_X26_Y15_N26
\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~2_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(11),
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(10),
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(8),
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(9),
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~2_combout\);

-- Location: FF_X25_Y15_N7
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[3]~23_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr[2]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3));

-- Location: LCCOMB_X26_Y15_N2
\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~0_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1)) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3))) # (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(0),
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(2),
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(3),
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_cntr\(1),
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y15_N10
\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~3_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~1_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~2_combout\) # 
-- (\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~3_combout\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~2_combout\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y15_N28
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~0_combout\ = \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\ $ (!\Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~0_combout\);

-- Location: FF_X26_Y15_N29
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\);

-- Location: LCCOMB_X18_Y12_N4
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[0]~0_combout\ = !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_reg~q\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[0]~0_combout\);

-- Location: FF_X18_Y12_N5
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(0));

-- Location: FF_X18_Y12_N31
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(1));

-- Location: LCCOMB_X18_Y12_N28
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(0) & !\Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(0),
	datac => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_sync\(1),
	combout => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~0_combout\);

-- Location: FF_X18_Y12_N29
\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\);

-- Location: LCCOMB_X45_Y16_N0
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~16_combout\ = \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(0) $ (VCC)
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\ = CARRY(\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~16_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X46_Y16_N2
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\ = (\KEY[1]~input_o\ $ (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\);

-- Location: FF_X45_Y16_N1
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~16_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(0));

-- Location: LCCOMB_X45_Y16_N2
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~19_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[0]~17\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~19_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\);

-- Location: FF_X45_Y16_N3
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~19_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1));

-- Location: LCCOMB_X45_Y16_N4
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~21_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[1]~20\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~21_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\);

-- Location: FF_X45_Y16_N5
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~21_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2));

-- Location: LCCOMB_X45_Y16_N6
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~23_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[2]~22\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~23_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\);

-- Location: LCCOMB_X45_Y16_N8
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~25_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~24\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~25_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~26\);

-- Location: FF_X45_Y16_N9
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[4]~25_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4));

-- Location: LCCOMB_X45_Y16_N12
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~29_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[5]~28\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~29_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\);

-- Location: LCCOMB_X45_Y16_N14
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~31_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~30\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~31_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\);

-- Location: FF_X45_Y16_N15
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~31_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7));

-- Location: LCCOMB_X45_Y16_N16
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~33_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8) & (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[7]~32\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~33_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\);

-- Location: FF_X45_Y16_N17
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~33_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8));

-- Location: LCCOMB_X45_Y16_N18
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~35_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9) & (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[8]~34\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~35_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~36\);

-- Location: FF_X45_Y16_N19
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[9]~35_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9));

-- Location: FF_X45_Y16_N21
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[10]~37_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10));

-- Location: LCCOMB_X46_Y16_N28
\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~2_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(11),
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(10),
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(8),
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(9),
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~2_combout\);

-- Location: FF_X45_Y16_N13
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[6]~29_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6));

-- Location: LCCOMB_X46_Y16_N14
\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~1_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(5),
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(4),
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(7),
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(6),
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~1_combout\);

-- Location: FF_X45_Y16_N7
\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[3]~23_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr[12]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3));

-- Location: LCCOMB_X46_Y16_N0
\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~0_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1)) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(0),
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(2),
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(3),
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|btn_cntr\(1),
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y16_N24
\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~3_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~2_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~1_combout\) # 
-- (\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~3_combout\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~2_combout\,
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~1_combout\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y16_N26
\Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~0_combout\ = \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\ $ (!\Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~0_combout\);

-- Location: FF_X46_Y16_N27
\Inst_top_level|Inst_BTN_Debounce_pause|btn_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\);

-- Location: LCCOMB_X46_Y16_N10
\Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[0]~0_combout\ = !\Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_reg~q\,
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[0]~0_combout\);

-- Location: FF_X46_Y16_N11
\Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(0));

-- Location: LCCOMB_X46_Y16_N20
\Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[1]~feeder_combout\ = \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(0),
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[1]~feeder_combout\);

-- Location: FF_X46_Y16_N21
\Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(1));

-- Location: LCCOMB_X46_Y16_N12
\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(0) & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(0),
	datab => \Inst_top_level|Inst_BTN_Debounce_pause|btn_sync\(1),
	combout => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~0_combout\);

-- Location: FF_X46_Y16_N13
\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\);

-- Location: LCCOMB_X19_Y9_N0
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~16_combout\ = \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(0) $ (VCC)
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\ = CARRY(\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~16_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X20_Y9_N0
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\ = (\KEY[3]~input_o\ $ (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\,
	datac => \KEY[3]~input_o\,
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\);

-- Location: FF_X19_Y9_N1
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~16_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(0));

-- Location: LCCOMB_X19_Y9_N2
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~19_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[0]~17\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~19_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\);

-- Location: FF_X19_Y9_N3
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~19_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1));

-- Location: LCCOMB_X19_Y9_N4
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~21_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[1]~20\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~21_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\);

-- Location: FF_X19_Y9_N5
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~21_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2));

-- Location: LCCOMB_X19_Y9_N6
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~23_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[2]~22\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~23_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\);

-- Location: LCCOMB_X19_Y9_N8
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~25_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~24\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~25_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~26\);

-- Location: FF_X19_Y9_N9
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[4]~25_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(4));

-- Location: LCCOMB_X19_Y9_N14
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~31_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[6]~30\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~31_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\);

-- Location: FF_X19_Y9_N15
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~31_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(7));

-- Location: LCCOMB_X19_Y9_N16
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~33_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[7]~32\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~33_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\);

-- Location: FF_X19_Y9_N17
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~33_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8));

-- Location: LCCOMB_X19_Y9_N18
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~35_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[8]~34\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~35_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\);

-- Location: FF_X19_Y9_N19
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~35_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9));

-- Location: LCCOMB_X19_Y9_N20
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~37_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[9]~36\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~37_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\);

-- Location: FF_X19_Y9_N21
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~37_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10));

-- Location: LCCOMB_X19_Y9_N22
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~39_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[10]~38\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~39_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\);

-- Location: FF_X19_Y9_N23
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~39_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11));

-- Location: LCCOMB_X20_Y9_N2
\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~2_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(9),
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(11),
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(8),
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(10),
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~2_combout\);

-- Location: FF_X19_Y9_N7
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[3]~23_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3));

-- Location: LCCOMB_X20_Y9_N26
\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~0_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(0),
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(2),
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(3),
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(1),
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y9_N24
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~41_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[11]~40\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~41_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\);

-- Location: FF_X19_Y9_N25
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~41_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12));

-- Location: LCCOMB_X19_Y9_N26
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~43_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13) & (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13) & 
-- ((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\) # (GND)))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\ = CARRY((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[12]~42\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~43_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\);

-- Location: LCCOMB_X19_Y9_N28
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~45_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14) & (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\ $ (GND))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14) & 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\ & VCC))
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~46\ = CARRY((\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14) & !\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14),
	datad => VCC,
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~44\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~45_combout\,
	cout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~46\);

-- Location: FF_X19_Y9_N29
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~45_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14));

-- Location: LCCOMB_X19_Y9_N30
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~47_combout\ = \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(15) $ (\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(15),
	cin => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[14]~46\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~47_combout\);

-- Location: FF_X19_Y9_N31
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~47_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(15));

-- Location: FF_X19_Y9_N27
\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[13]~43_combout\,
	sclr => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13));

-- Location: LCCOMB_X20_Y9_N16
\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~3_combout\ = (((!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(15))) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(14),
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(15),
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(13),
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_cntr\(12),
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y9_N10
\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~1_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~2_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~0_combout\) # 
-- (\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~1_combout\,
	datab => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~2_combout\,
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~0_combout\,
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~3_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y9_N28
\Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~0_combout\ = \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\ $ (!\Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~0_combout\);

-- Location: FF_X20_Y9_N29
\Inst_top_level|Inst_BTN_Debounce_speed|btn_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\);

-- Location: LCCOMB_X16_Y12_N12
\Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[0]~0_combout\ = !\Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_reg~q\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[0]~0_combout\);

-- Location: FF_X16_Y12_N13
\Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(0));

-- Location: FF_X16_Y12_N7
\Inst_top_level|Inst_BTN_Debounce_speed|btn_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(1));

-- Location: LCCOMB_X16_Y12_N6
\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~0_combout\ = (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(1) & \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(1),
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_sync\(0),
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~0_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~feeder_combout\ = \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~0_combout\,
	combout => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~feeder_combout\);

-- Location: FF_X19_Y12_N13
\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\);

-- Location: LCCOMB_X19_Y12_N0
\Inst_top_level|Inst_system_controller|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector4~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & (\Inst_top_level|Inst_system_controller|next_state.pwm1000~q\)) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & 
-- (((!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ & \Inst_top_level|Inst_system_controller|next_state.pwm60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y12_N20
\Inst_top_level|Inst_system_controller|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector4~2_combout\ = (\Inst_top_level|Inst_system_controller|Selector4~0_combout\) # ((\Inst_top_level|Inst_system_controller|Selector4~1_combout\ & !\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Selector4~1_combout\,
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\,
	datad => \Inst_top_level|Inst_system_controller|Selector4~0_combout\,
	combout => \Inst_top_level|Inst_system_controller|Selector4~2_combout\);

-- Location: FF_X19_Y12_N21
\Inst_top_level|Inst_system_controller|next_state.pwm60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Selector4~2_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\);

-- Location: LCCOMB_X19_Y12_N26
\Inst_top_level|Inst_system_controller|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector5~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & (((\Inst_top_level|Inst_system_controller|next_state.pwm60~q\)))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ & (\Inst_top_level|Inst_system_controller|next_state.pwm120~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm120~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector5~0_combout\);

-- Location: FF_X19_Y12_N27
\Inst_top_level|Inst_system_controller|next_state.pwm120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Selector5~0_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|next_state.pwm120~q\);

-- Location: LCCOMB_X19_Y12_N14
\Inst_top_level|Inst_system_controller|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector6~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & (((\Inst_top_level|Inst_system_controller|next_state.pwm120~q\)))) # (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ & (\Inst_top_level|Inst_system_controller|next_state.pwm1000~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pwm120~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector6~0_combout\);

-- Location: FF_X19_Y12_N15
\Inst_top_level|Inst_system_controller|next_state.pwm1000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Selector6~0_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\);

-- Location: LCCOMB_X19_Y12_N2
\Inst_top_level|Inst_system_controller|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector2~1_combout\ = (!\Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\ & ((\Inst_top_level|Inst_system_controller|next_state.pwm120~q\) # ((\Inst_top_level|Inst_system_controller|next_state.pwm1000~q\) # 
-- (\Inst_top_level|Inst_system_controller|next_state.pwm60~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_speed|btn_pulse_r~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.pwm120~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector2~1_combout\);

-- Location: LCCOMB_X19_Y12_N4
\Inst_top_level|Inst_system_controller|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector3~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\ & (((\Inst_top_level|Inst_system_controller|next_state.test~q\)))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\ & 
-- (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ & (\Inst_top_level|Inst_system_controller|next_state.pause~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector3~0_combout\);

-- Location: FF_X19_Y12_N5
\Inst_top_level|Inst_system_controller|next_state.pause\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Selector3~0_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|next_state.pause~q\);

-- Location: LCCOMB_X19_Y12_N24
\Inst_top_level|Inst_system_controller|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector2~0_combout\ = (\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\ & (((\Inst_top_level|Inst_system_controller|next_state.pause~q\)))) # (!\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\ & 
-- (\Inst_top_level|Inst_system_controller|next_state.test~q\ & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	datac => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y12_N18
\Inst_top_level|Inst_system_controller|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector2~2_combout\ = (\Inst_top_level|Inst_system_controller|Selector2~0_combout\) # ((\Inst_top_level|Inst_system_controller|Selector2~1_combout\ & ((\Inst_top_level|Inst_system_controller|next_state.test~q\) # 
-- (\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datab => \Inst_top_level|Inst_system_controller|Selector2~1_combout\,
	datac => \Inst_top_level|Inst_system_controller|Selector2~0_combout\,
	datad => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector2~2_combout\);

-- Location: LCCOMB_X19_Y12_N28
\Inst_top_level|Inst_system_controller|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector2~3_combout\ = (\Inst_top_level|Inst_system_controller|Selector2~2_combout\) # ((!\Inst_top_level|Inst_system_controller|next_state.init~q\ & !\Inst_top_level|Inst_system_controller|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|Equal0~2_combout\,
	datad => \Inst_top_level|Inst_system_controller|Selector2~2_combout\,
	combout => \Inst_top_level|Inst_system_controller|Selector2~3_combout\);

-- Location: FF_X19_Y12_N29
\Inst_top_level|Inst_system_controller|next_state.test\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Selector2~3_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|next_state.test~q\);

-- Location: LCCOMB_X18_Y12_N20
\Inst_top_level|Inst_system_controller|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector15~0_combout\ = (\Inst_top_level|Inst_system_controller|next_state.test~q\) # ((\Inst_top_level|Inst_system_controller|run_counter~q\ & !\Inst_top_level|Inst_system_controller|next_state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datac => \Inst_top_level|Inst_system_controller|run_counter~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|Selector15~0_combout\);

-- Location: FF_X18_Y12_N21
\Inst_top_level|Inst_system_controller|run_counter\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Selector15~0_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|run_counter~q\);

-- Location: LCCOMB_X18_Y12_N0
\Inst_top_level|Inst_system_controller|read_SRAM~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|read_SRAM~0_combout\ = (\Inst_top_level|Inst_system_controller|next_state.pause~q\ & ((\Inst_top_level|Inst_SRAM_Controller|busy_h~q\))) # (!\Inst_top_level|Inst_system_controller|next_state.pause~q\ & 
-- (!\Inst_top_level|Inst_system_controller|next_state.test~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	combout => \Inst_top_level|Inst_system_controller|read_SRAM~0_combout\);

-- Location: LCCOMB_X10_Y13_N6
\Inst_top_level|Inst_system_controller|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~0_combout\ = \Inst_top_level|Inst_system_controller|clk_cnt\(0) $ (VCC)
-- \Inst_top_level|Inst_system_controller|Add1~1\ = CARRY(\Inst_top_level|Inst_system_controller|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_system_controller|Add1~0_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~1\);

-- Location: LCCOMB_X10_Y13_N8
\Inst_top_level|Inst_system_controller|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~2_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(1) & (!\Inst_top_level|Inst_system_controller|Add1~1\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(1) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~1\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~3\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~1\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~1\,
	combout => \Inst_top_level|Inst_system_controller|Add1~2_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~3\);

-- Location: FF_X10_Y13_N9
\Inst_top_level|Inst_system_controller|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(1));

-- Location: LCCOMB_X10_Y13_N10
\Inst_top_level|Inst_system_controller|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~4_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(2) & (\Inst_top_level|Inst_system_controller|Add1~3\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(2) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~3\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~5\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(2) & !\Inst_top_level|Inst_system_controller|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~3\,
	combout => \Inst_top_level|Inst_system_controller|Add1~4_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~5\);

-- Location: LCCOMB_X10_Y13_N14
\Inst_top_level|Inst_system_controller|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~8_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(4) & (\Inst_top_level|Inst_system_controller|Add1~7\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(4) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~7\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~9\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(4) & !\Inst_top_level|Inst_system_controller|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~7\,
	combout => \Inst_top_level|Inst_system_controller|Add1~8_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~9\);

-- Location: FF_X10_Y13_N15
\Inst_top_level|Inst_system_controller|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(4));

-- Location: LCCOMB_X10_Y13_N16
\Inst_top_level|Inst_system_controller|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~10_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(5) & (!\Inst_top_level|Inst_system_controller|Add1~9\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(5) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~9\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~11\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~9\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~9\,
	combout => \Inst_top_level|Inst_system_controller|Add1~10_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~11\);

-- Location: FF_X10_Y13_N17
\Inst_top_level|Inst_system_controller|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(5));

-- Location: LCCOMB_X10_Y13_N18
\Inst_top_level|Inst_system_controller|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~12_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(6) & (\Inst_top_level|Inst_system_controller|Add1~11\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(6) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~11\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~13\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(6) & !\Inst_top_level|Inst_system_controller|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~11\,
	combout => \Inst_top_level|Inst_system_controller|Add1~12_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~13\);

-- Location: FF_X10_Y13_N19
\Inst_top_level|Inst_system_controller|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(6));

-- Location: LCCOMB_X10_Y13_N20
\Inst_top_level|Inst_system_controller|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~14_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(7) & (!\Inst_top_level|Inst_system_controller|Add1~13\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(7) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~13\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~15\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~13\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(7),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~13\,
	combout => \Inst_top_level|Inst_system_controller|Add1~14_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~15\);

-- Location: LCCOMB_X10_Y13_N4
\Inst_top_level|Inst_system_controller|clk_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~11_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datad => \Inst_top_level|Inst_system_controller|Add1~14_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~11_combout\);

-- Location: FF_X10_Y13_N5
\Inst_top_level|Inst_system_controller|clk_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(7));

-- Location: LCCOMB_X10_Y13_N24
\Inst_top_level|Inst_system_controller|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~18_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(9) & (!\Inst_top_level|Inst_system_controller|Add1~17\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(9) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~17\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~19\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~17\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~17\,
	combout => \Inst_top_level|Inst_system_controller|Add1~18_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~19\);

-- Location: FF_X10_Y13_N25
\Inst_top_level|Inst_system_controller|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(9));

-- Location: LCCOMB_X10_Y13_N28
\Inst_top_level|Inst_system_controller|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~22_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(11) & (!\Inst_top_level|Inst_system_controller|Add1~21\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(11) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~21\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~23\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~21\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(11),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~21\,
	combout => \Inst_top_level|Inst_system_controller|Add1~22_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~23\);

-- Location: FF_X10_Y13_N29
\Inst_top_level|Inst_system_controller|clk_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(11));

-- Location: LCCOMB_X10_Y12_N4
\Inst_top_level|Inst_system_controller|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~30_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(15) & (!\Inst_top_level|Inst_system_controller|Add1~29\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(15) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~29\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~31\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~29\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(15),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~29\,
	combout => \Inst_top_level|Inst_system_controller|Add1~30_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~31\);

-- Location: LCCOMB_X10_Y12_N6
\Inst_top_level|Inst_system_controller|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~32_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(16) & (\Inst_top_level|Inst_system_controller|Add1~31\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(16) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~31\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~33\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(16) & !\Inst_top_level|Inst_system_controller|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(16),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~31\,
	combout => \Inst_top_level|Inst_system_controller|Add1~32_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~33\);

-- Location: LCCOMB_X10_Y12_N8
\Inst_top_level|Inst_system_controller|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~34_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(17) & (!\Inst_top_level|Inst_system_controller|Add1~33\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(17) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~33\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~35\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~33\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(17),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~33\,
	combout => \Inst_top_level|Inst_system_controller|Add1~34_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~35\);

-- Location: LCCOMB_X9_Y12_N18
\Inst_top_level|Inst_system_controller|clk_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~6_combout\ = (\Inst_top_level|Inst_system_controller|Add1~34_combout\ & !\Inst_top_level|Inst_system_controller|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Add1~34_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~6_combout\);

-- Location: FF_X9_Y12_N19
\Inst_top_level|Inst_system_controller|clk_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(17));

-- Location: LCCOMB_X10_Y12_N10
\Inst_top_level|Inst_system_controller|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~36_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(18) & (\Inst_top_level|Inst_system_controller|Add1~35\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(18) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~35\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~37\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(18) & !\Inst_top_level|Inst_system_controller|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(18),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~35\,
	combout => \Inst_top_level|Inst_system_controller|Add1~36_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~37\);

-- Location: LCCOMB_X10_Y12_N12
\Inst_top_level|Inst_system_controller|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~38_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(19) & (!\Inst_top_level|Inst_system_controller|Add1~37\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(19) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~37\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~39\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~37\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(19),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~37\,
	combout => \Inst_top_level|Inst_system_controller|Add1~38_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~39\);

-- Location: LCCOMB_X10_Y12_N14
\Inst_top_level|Inst_system_controller|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~40_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(20) & (\Inst_top_level|Inst_system_controller|Add1~39\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(20) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~39\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~41\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(20) & !\Inst_top_level|Inst_system_controller|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(20),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~39\,
	combout => \Inst_top_level|Inst_system_controller|Add1~40_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~41\);

-- Location: LCCOMB_X10_Y12_N16
\Inst_top_level|Inst_system_controller|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~42_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(21) & (!\Inst_top_level|Inst_system_controller|Add1~41\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(21) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~41\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~43\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~41\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(21),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~41\,
	combout => \Inst_top_level|Inst_system_controller|Add1~42_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~43\);

-- Location: LCCOMB_X9_Y12_N30
\Inst_top_level|Inst_system_controller|clk_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~3_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datad => \Inst_top_level|Inst_system_controller|Add1~42_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~3_combout\);

-- Location: FF_X9_Y12_N31
\Inst_top_level|Inst_system_controller|clk_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(21));

-- Location: LCCOMB_X10_Y12_N18
\Inst_top_level|Inst_system_controller|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~44_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(22) & (\Inst_top_level|Inst_system_controller|Add1~43\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(22) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~43\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~45\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(22) & !\Inst_top_level|Inst_system_controller|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(22),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~43\,
	combout => \Inst_top_level|Inst_system_controller|Add1~44_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~45\);

-- Location: LCCOMB_X10_Y12_N20
\Inst_top_level|Inst_system_controller|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~46_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(23) & (!\Inst_top_level|Inst_system_controller|Add1~45\)) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(23) & 
-- ((\Inst_top_level|Inst_system_controller|Add1~45\) # (GND)))
-- \Inst_top_level|Inst_system_controller|Add1~47\ = CARRY((!\Inst_top_level|Inst_system_controller|Add1~45\) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(23),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~45\,
	combout => \Inst_top_level|Inst_system_controller|Add1~46_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~47\);

-- Location: LCCOMB_X10_Y12_N28
\Inst_top_level|Inst_system_controller|clk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~1_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datad => \Inst_top_level|Inst_system_controller|Add1~46_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~1_combout\);

-- Location: FF_X10_Y12_N29
\Inst_top_level|Inst_system_controller|clk_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(23));

-- Location: LCCOMB_X10_Y12_N22
\Inst_top_level|Inst_system_controller|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~48_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(24) & (\Inst_top_level|Inst_system_controller|Add1~47\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|clk_cnt\(24) & 
-- (!\Inst_top_level|Inst_system_controller|Add1~47\ & VCC))
-- \Inst_top_level|Inst_system_controller|Add1~49\ = CARRY((\Inst_top_level|Inst_system_controller|clk_cnt\(24) & !\Inst_top_level|Inst_system_controller|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(24),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|Add1~47\,
	combout => \Inst_top_level|Inst_system_controller|Add1~48_combout\,
	cout => \Inst_top_level|Inst_system_controller|Add1~49\);

-- Location: FF_X10_Y12_N23
\Inst_top_level|Inst_system_controller|clk_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(24));

-- Location: LCCOMB_X10_Y12_N30
\Inst_top_level|Inst_system_controller|clk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~2_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datad => \Inst_top_level|Inst_system_controller|Add1~44_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~2_combout\);

-- Location: FF_X10_Y12_N31
\Inst_top_level|Inst_system_controller|clk_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(22));

-- Location: LCCOMB_X10_Y12_N24
\Inst_top_level|Inst_system_controller|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Add1~50_combout\ = \Inst_top_level|Inst_system_controller|clk_cnt\(25) $ (\Inst_top_level|Inst_system_controller|Add1~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(25),
	cin => \Inst_top_level|Inst_system_controller|Add1~49\,
	combout => \Inst_top_level|Inst_system_controller|Add1~50_combout\);

-- Location: LCCOMB_X10_Y12_N26
\Inst_top_level|Inst_system_controller|clk_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~0_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datad => \Inst_top_level|Inst_system_controller|Add1~50_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~0_combout\);

-- Location: FF_X10_Y12_N27
\Inst_top_level|Inst_system_controller|clk_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(25));

-- Location: LCCOMB_X9_Y12_N28
\Inst_top_level|Inst_system_controller|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~0_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(23) & (!\Inst_top_level|Inst_system_controller|clk_cnt\(24) & (\Inst_top_level|Inst_system_controller|clk_cnt\(22) & 
-- \Inst_top_level|Inst_system_controller|clk_cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(23),
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(24),
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(22),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(25),
	combout => \Inst_top_level|Inst_system_controller|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y12_N8
\Inst_top_level|Inst_system_controller|clk_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~4_combout\ = (\Inst_top_level|Inst_system_controller|Add1~40_combout\ & !\Inst_top_level|Inst_system_controller|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Add1~40_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~4_combout\);

-- Location: FF_X9_Y12_N9
\Inst_top_level|Inst_system_controller|clk_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(20));

-- Location: FF_X10_Y12_N11
\Inst_top_level|Inst_system_controller|clk_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(18));

-- Location: LCCOMB_X9_Y12_N2
\Inst_top_level|Inst_system_controller|clk_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~5_combout\ = (\Inst_top_level|Inst_system_controller|Add1~38_combout\ & !\Inst_top_level|Inst_system_controller|Equal1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|Add1~38_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~5_combout\);

-- Location: FF_X9_Y12_N3
\Inst_top_level|Inst_system_controller|clk_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(19));

-- Location: LCCOMB_X9_Y12_N4
\Inst_top_level|Inst_system_controller|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~1_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(21) & (\Inst_top_level|Inst_system_controller|clk_cnt\(20) & (!\Inst_top_level|Inst_system_controller|clk_cnt\(18) & 
-- \Inst_top_level|Inst_system_controller|clk_cnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(21),
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(20),
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(18),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(19),
	combout => \Inst_top_level|Inst_system_controller|Equal1~1_combout\);

-- Location: LCCOMB_X9_Y12_N16
\Inst_top_level|Inst_system_controller|clk_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|clk_cnt~7_combout\ = (!\Inst_top_level|Inst_system_controller|Equal1~8_combout\ & \Inst_top_level|Inst_system_controller|Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	datad => \Inst_top_level|Inst_system_controller|Add1~30_combout\,
	combout => \Inst_top_level|Inst_system_controller|clk_cnt~7_combout\);

-- Location: FF_X9_Y12_N17
\Inst_top_level|Inst_system_controller|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|clk_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(15));

-- Location: FF_X10_Y12_N7
\Inst_top_level|Inst_system_controller|clk_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(16));

-- Location: LCCOMB_X9_Y12_N12
\Inst_top_level|Inst_system_controller|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~2_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(14) & (\Inst_top_level|Inst_system_controller|clk_cnt\(15) & (\Inst_top_level|Inst_system_controller|clk_cnt\(17) & 
-- !\Inst_top_level|Inst_system_controller|clk_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(14),
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(15),
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(17),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(16),
	combout => \Inst_top_level|Inst_system_controller|Equal1~2_combout\);

-- Location: LCCOMB_X9_Y12_N20
\Inst_top_level|Inst_system_controller|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~4_combout\ = (\Inst_top_level|Inst_system_controller|Equal1~3_combout\ & (\Inst_top_level|Inst_system_controller|Equal1~0_combout\ & (\Inst_top_level|Inst_system_controller|Equal1~1_combout\ & 
-- \Inst_top_level|Inst_system_controller|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal1~3_combout\,
	datab => \Inst_top_level|Inst_system_controller|Equal1~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|Equal1~1_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~2_combout\,
	combout => \Inst_top_level|Inst_system_controller|Equal1~4_combout\);

-- Location: FF_X10_Y13_N7
\Inst_top_level|Inst_system_controller|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(0));

-- Location: LCCOMB_X9_Y13_N28
\Inst_top_level|Inst_system_controller|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~7_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(1) & \Inst_top_level|Inst_system_controller|clk_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(1),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(0),
	combout => \Inst_top_level|Inst_system_controller|Equal1~7_combout\);

-- Location: FF_X10_Y13_N11
\Inst_top_level|Inst_system_controller|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|Add1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_cnt\(2));

-- Location: LCCOMB_X10_Y13_N0
\Inst_top_level|Inst_system_controller|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~6_combout\ = (\Inst_top_level|Inst_system_controller|clk_cnt\(3) & (\Inst_top_level|Inst_system_controller|clk_cnt\(5) & (\Inst_top_level|Inst_system_controller|clk_cnt\(4) & 
-- \Inst_top_level|Inst_system_controller|clk_cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|clk_cnt\(3),
	datab => \Inst_top_level|Inst_system_controller|clk_cnt\(5),
	datac => \Inst_top_level|Inst_system_controller|clk_cnt\(4),
	datad => \Inst_top_level|Inst_system_controller|clk_cnt\(2),
	combout => \Inst_top_level|Inst_system_controller|Equal1~6_combout\);

-- Location: LCCOMB_X9_Y12_N6
\Inst_top_level|Inst_system_controller|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal1~8_combout\ = (\Inst_top_level|Inst_system_controller|Equal1~5_combout\ & (\Inst_top_level|Inst_system_controller|Equal1~4_combout\ & (\Inst_top_level|Inst_system_controller|Equal1~7_combout\ & 
-- \Inst_top_level|Inst_system_controller|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal1~5_combout\,
	datab => \Inst_top_level|Inst_system_controller|Equal1~4_combout\,
	datac => \Inst_top_level|Inst_system_controller|Equal1~7_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal1~6_combout\,
	combout => \Inst_top_level|Inst_system_controller|Equal1~8_combout\);

-- Location: FF_X10_Y12_N13
\Inst_top_level|Inst_system_controller|clk_en_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|Equal1~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|clk_en_1~q\);

-- Location: LCCOMB_X18_Y12_N6
\Inst_top_level|Inst_system_controller|address_cnt[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\ = (\Inst_top_level|Inst_system_controller|run_counter~q\ & (\Inst_top_level|Inst_system_controller|clk_en_1~q\ & !\Inst_top_level|Inst_SRAM_Controller|busy_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|run_counter~q\,
	datac => \Inst_top_level|Inst_system_controller|clk_en_1~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\);

-- Location: LCCOMB_X18_Y12_N18
\Inst_top_level|Inst_system_controller|read_SRAM~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|read_SRAM~1_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\) # ((\Inst_top_level|Inst_system_controller|read_SRAM~q\ & ((\Inst_top_level|reset_h~0_combout\) # 
-- (\Inst_top_level|Inst_system_controller|read_SRAM~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|reset_h~0_combout\,
	datab => \Inst_top_level|Inst_system_controller|read_SRAM~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|read_SRAM~q\,
	datad => \Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\,
	combout => \Inst_top_level|Inst_system_controller|read_SRAM~1_combout\);

-- Location: FF_X18_Y12_N19
\Inst_top_level|Inst_system_controller|read_SRAM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|read_SRAM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|read_SRAM~q\);

-- Location: LCCOMB_X18_Y12_N8
\Inst_top_level|Inst_system_controller|SRAM_valid_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|SRAM_valid_int~0_combout\ = (\Inst_top_level|Inst_system_controller|next_state.test~q\ & \Inst_top_level|Inst_system_controller|read_SRAM~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datad => \Inst_top_level|Inst_system_controller|read_SRAM~q\,
	combout => \Inst_top_level|Inst_system_controller|SRAM_valid_int~0_combout\);

-- Location: LCCOMB_X18_Y12_N24
\Inst_top_level|Inst_system_controller|SRAM_valid_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|SRAM_valid_int~2_combout\ = (\Inst_top_level|Inst_system_controller|SRAM_valid_int~1_combout\ & (((!\Inst_top_level|Inst_SRAM_Controller|busy_h~q\)) # (!\Inst_top_level|Inst_system_controller|run_counter~q\))) # 
-- (!\Inst_top_level|Inst_system_controller|SRAM_valid_int~1_combout\ & (\Inst_top_level|Inst_system_controller|SRAM_valid_int~0_combout\ & ((!\Inst_top_level|Inst_SRAM_Controller|busy_h~q\) # (!\Inst_top_level|Inst_system_controller|run_counter~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|SRAM_valid_int~1_combout\,
	datab => \Inst_top_level|Inst_system_controller|run_counter~q\,
	datac => \Inst_top_level|Inst_system_controller|SRAM_valid_int~0_combout\,
	datad => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	combout => \Inst_top_level|Inst_system_controller|SRAM_valid_int~2_combout\);

-- Location: LCCOMB_X18_Y12_N26
\Inst_top_level|Inst_system_controller|SRAM_valid_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|SRAM_valid_int~4_combout\ = (!\Inst_top_level|reset_h~0_combout\ & ((\Inst_top_level|Inst_system_controller|SRAM_valid_int~2_combout\) # ((\Inst_top_level|Inst_system_controller|SRAM_valid_int~3_combout\ & 
-- !\Inst_top_level|Inst_SRAM_Controller|busy_h~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|SRAM_valid_int~3_combout\,
	datab => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	datac => \Inst_top_level|reset_h~0_combout\,
	datad => \Inst_top_level|Inst_system_controller|SRAM_valid_int~2_combout\,
	combout => \Inst_top_level|Inst_system_controller|SRAM_valid_int~4_combout\);

-- Location: FF_X18_Y12_N27
\Inst_top_level|Inst_system_controller|SRAM_valid_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|SRAM_valid_int~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\);

-- Location: LCCOMB_X18_Y13_N4
\Inst_top_level|Inst_system_controller|SRAM_rw_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|SRAM_rw_int~feeder_combout\ = \Inst_top_level|Inst_system_controller|Selector1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_system_controller|Selector1~0_combout\,
	combout => \Inst_top_level|Inst_system_controller|SRAM_rw_int~feeder_combout\);

-- Location: FF_X18_Y13_N5
\Inst_top_level|Inst_system_controller|SRAM_rw_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|SRAM_rw_int~feeder_combout\,
	asdata => VCC,
	sload => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|SRAM_rw_int~q\);

-- Location: LCCOMB_X14_Y11_N24
\Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~feeder_combout\ = \Inst_top_level|Inst_system_controller|SRAM_rw_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_system_controller|SRAM_rw_int~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~feeder_combout\);

-- Location: LCCOMB_X21_Y13_N6
\Inst_top_level|Inst_SRAM_Controller|next_state.init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.init~feeder_combout\);

-- Location: FF_X21_Y13_N7
\Inst_top_level|Inst_SRAM_Controller|next_state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|next_state.init~feeder_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\);

-- Location: LCCOMB_X24_Y11_N18
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\ = (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & ((\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\) # 
-- (!\Inst_top_level|Inst_SRAM_Controller|next_state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\);

-- Location: FF_X14_Y11_N25
\Inst_top_level|Inst_SRAM_Controller|cont_rw_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\);

-- Location: LCCOMB_X20_Y13_N4
\Inst_top_level|Inst_SRAM_Controller|next_state.write1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.write1~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & !\Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~0_combout\);

-- Location: LCCOMB_X23_Y13_N26
\Inst_top_level|Inst_SRAM_Controller|next_state.write1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.write1~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|next_state.write1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~feeder_combout\);

-- Location: LCCOMB_X23_Y13_N12
\Inst_top_level|Inst_SRAM_Controller|next_state.read1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.read1~1_combout\ = (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & ((\Inst_top_level|Inst_system_controller|SRAM_valid_int~q\) # 
-- (!\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~1_combout\);

-- Location: FF_X23_Y13_N27
\Inst_top_level|Inst_SRAM_Controller|next_state.write1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\);

-- Location: LCCOMB_X29_Y11_N16
\Inst_top_level|Inst_SRAM_Controller|next_state.write2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.write2~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.write2~feeder_combout\);

-- Location: FF_X29_Y11_N17
\Inst_top_level|Inst_SRAM_Controller|next_state.write2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|next_state.write2~feeder_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\);

-- Location: LCCOMB_X24_Y11_N0
\Inst_top_level|Inst_SRAM_Controller|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector19~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\) # (((\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & !\Inst_top_level|Inst_system_controller|SRAM_valid_int~q\)) # 
-- (!\Inst_top_level|Inst_SRAM_Controller|next_state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datab => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector19~0_combout\);

-- Location: LCCOMB_X24_Y11_N16
\Inst_top_level|Inst_SRAM_Controller|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector19~1_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\) # (\Inst_top_level|Inst_SRAM_Controller|Selector19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|Selector19~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector19~1_combout\);

-- Location: FF_X24_Y11_N17
\Inst_top_level|Inst_SRAM_Controller|next_state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|Selector19~1_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\);

-- Location: LCCOMB_X20_Y13_N22
\Inst_top_level|Inst_SRAM_Controller|next_state.read1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.read1~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\Inst_top_level|Inst_SRAM_Controller|next_state.read1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|next_state.read1~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|next_state.read1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~feeder_combout\);

-- Location: FF_X23_Y13_N25
\Inst_top_level|Inst_SRAM_Controller|next_state.read1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\);

-- Location: LCCOMB_X21_Y13_N16
\Inst_top_level|Inst_SRAM_Controller|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector18~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|busy_h~q\ & ((\Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\) # ((\Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\) # 
-- (\Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector18~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\Inst_top_level|Inst_SRAM_Controller|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector18~1_combout\ = (\Inst_top_level|Inst_SRAM_Controller|Selector18~0_combout\) # (((\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\)) # 
-- (!\Inst_top_level|Inst_SRAM_Controller|next_state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|Selector18~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector18~1_combout\);

-- Location: FF_X21_Y13_N13
\Inst_top_level|Inst_SRAM_Controller|busy_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|Selector18~1_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\);

-- Location: LCCOMB_X18_Y11_N24
\Inst_top_level|Inst_system_controller|ROM_cnt[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\ = (\Inst_top_level|reset_h~0_combout\) # ((!\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((!\Inst_top_level|Inst_SRAM_Controller|busy_h~q\) # 
-- (!\Inst_top_level|Inst_system_controller|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal0~2_combout\,
	datab => \Inst_top_level|reset_h~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|busy_h~q\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\);

-- Location: FF_X18_Y11_N15
\Inst_top_level|Inst_system_controller|ROM_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[7]~25_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(7));

-- Location: LCCOMB_X18_Y11_N16
\Inst_top_level|Inst_system_controller|ROM_cnt[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[8]~27_combout\ = \Inst_top_level|Inst_system_controller|ROM_cnt[7]~26\ $ (!\Inst_top_level|Inst_system_controller|ROM_cnt\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_system_controller|ROM_cnt\(8),
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[7]~26\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[8]~27_combout\);

-- Location: FF_X18_Y11_N17
\Inst_top_level|Inst_system_controller|ROM_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[8]~27_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(8));

-- Location: LCCOMB_X18_Y11_N22
\Inst_top_level|Inst_system_controller|ROM_cnt[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\ = (\Inst_top_level|reset_h~0_combout\) # ((!\Inst_top_level|Inst_system_controller|Equal0~0_combout\ & (\Inst_top_level|Inst_system_controller|ROM_cnt\(8) & 
-- !\Inst_top_level|Inst_system_controller|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|Equal0~0_combout\,
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(8),
	datac => \Inst_top_level|reset_h~0_combout\,
	datad => \Inst_top_level|Inst_system_controller|Equal0~1_combout\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\);

-- Location: FF_X18_Y11_N1
\Inst_top_level|Inst_system_controller|ROM_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~9_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(0));

-- Location: LCCOMB_X18_Y11_N2
\Inst_top_level|Inst_system_controller|ROM_cnt[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[1]~13_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(1) & (!\Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\)) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(1) & 
-- ((\Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\) # (GND)))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\ = CARRY((!\Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~10\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[1]~13_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\);

-- Location: FF_X18_Y11_N3
\Inst_top_level|Inst_system_controller|ROM_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[1]~13_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(1));

-- Location: LCCOMB_X18_Y11_N4
\Inst_top_level|Inst_system_controller|ROM_cnt[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[2]~15_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(2) & (\Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(2) & 
-- (!\Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\ & VCC))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\ = CARRY((\Inst_top_level|Inst_system_controller|ROM_cnt\(2) & !\Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[1]~14\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[2]~15_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\);

-- Location: FF_X18_Y11_N5
\Inst_top_level|Inst_system_controller|ROM_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[2]~15_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(2));

-- Location: LCCOMB_X18_Y11_N6
\Inst_top_level|Inst_system_controller|ROM_cnt[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|ROM_cnt[3]~17_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(3) & (!\Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\)) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(3) & 
-- ((\Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\) # (GND)))
-- \Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\ = CARRY((!\Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\) # (!\Inst_top_level|Inst_system_controller|ROM_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|ROM_cnt[2]~16\,
	combout => \Inst_top_level|Inst_system_controller|ROM_cnt[3]~17_combout\,
	cout => \Inst_top_level|Inst_system_controller|ROM_cnt[3]~18\);

-- Location: FF_X18_Y11_N9
\Inst_top_level|Inst_system_controller|ROM_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[4]~19_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(4));

-- Location: FF_X18_Y11_N11
\Inst_top_level|Inst_system_controller|ROM_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[5]~21_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(5));

-- Location: LCCOMB_X18_Y11_N28
\Inst_top_level|Inst_system_controller|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal0~1_combout\ = (\Inst_top_level|Inst_system_controller|ROM_cnt\(6)) # ((\Inst_top_level|Inst_system_controller|ROM_cnt\(4)) # ((\Inst_top_level|Inst_system_controller|ROM_cnt\(7)) # 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(6),
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(4),
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(7),
	datad => \Inst_top_level|Inst_system_controller|ROM_cnt\(5),
	combout => \Inst_top_level|Inst_system_controller|Equal0~1_combout\);

-- Location: LCCOMB_X18_Y11_N18
\Inst_top_level|Inst_system_controller|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Selector1~0_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\) # ((!\Inst_top_level|Inst_system_controller|Equal0~1_combout\ & (!\Inst_top_level|Inst_system_controller|Equal0~0_combout\ & 
-- \Inst_top_level|Inst_system_controller|ROM_cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_system_controller|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_system_controller|Equal0~0_combout\,
	datad => \Inst_top_level|Inst_system_controller|ROM_cnt\(8),
	combout => \Inst_top_level|Inst_system_controller|Selector1~0_combout\);

-- Location: LCCOMB_X17_Y12_N0
\Inst_top_level|Inst_system_controller|next_state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|next_state~16_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_system_controller|Selector1~0_combout\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \Inst_top_level|Inst_system_controller|Selector1~0_combout\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|next_state~16_combout\);

-- Location: FF_X18_Y12_N13
\Inst_top_level|Inst_system_controller|next_state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|next_state~16_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|next_state.init~q\);

-- Location: LCCOMB_X18_Y12_N12
\Inst_top_level|Inst_system_controller|byte_start~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_start~2_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & !\Inst_top_level|Inst_system_controller|next_state.pause~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_start~2_combout\);

-- Location: FF_X18_Y10_N23
\Inst_top_level|Inst_system_controller|data_select\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|byte_start~2_combout\,
	sload => VCC,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_select~q\);

-- Location: IOIBUF_X7_Y0_N22
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: LCCOMB_X16_Y11_N6
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[14]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[14]~4_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[14]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \SRAM_DQ[14]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[14]~4_combout\);

-- Location: LCCOMB_X21_Y13_N8
\Inst_top_level|Inst_SRAM_Controller|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector22~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & (((\Inst_top_level|Inst_SRAM_Controller|sampled~q\) # (\Inst_top_level|Inst_system_controller|SRAM_rw_int~q\)))) # 
-- (!\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & (!\Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\ & (\Inst_top_level|Inst_SRAM_Controller|sampled~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|sampled~q\,
	datad => \Inst_top_level|Inst_system_controller|SRAM_rw_int~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector22~0_combout\);

-- Location: FF_X21_Y13_N9
\Inst_top_level|Inst_SRAM_Controller|sampled\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|Selector22~0_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sampled~q\);

-- Location: LCCOMB_X21_Y13_N10
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~3_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & (\Inst_top_level|Inst_system_controller|SRAM_rw_int~q\ & ((\Inst_top_level|Inst_SRAM_Controller|sampled~q\)))) # 
-- (!\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & (((\Inst_top_level|Inst_SRAM_Controller|next_state.init~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|SRAM_rw_int~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|sampled~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~3_combout\);

-- Location: LCCOMB_X17_Y11_N10
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\ = (\Inst_top_level|Inst_Reset_Delay|oRESET~q\) # ((!\Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~3_combout\) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~3_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\);

-- Location: FF_X17_Y11_N25
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[14]~4_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(14));

-- Location: LCCOMB_X17_Y11_N24
\Inst_top_level|Inst_system_controller|data_o~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~3_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(14) & 
-- !\Inst_top_level|Inst_Reset_Delay|oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(14),
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~3_combout\);

-- Location: LCCOMB_X17_Y11_N30
\Inst_top_level|Inst_system_controller|data_o[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\ = ((!\Inst_top_level|Inst_system_controller|Equal0~1_combout\ & (\Inst_top_level|Inst_system_controller|ROM_cnt\(8) & !\Inst_top_level|Inst_system_controller|Equal0~0_combout\))) # 
-- (!\Inst_top_level|Inst_system_controller|data_o[8]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|data_o[8]~0_combout\,
	datab => \Inst_top_level|Inst_system_controller|Equal0~1_combout\,
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(8),
	datad => \Inst_top_level|Inst_system_controller|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\);

-- Location: FF_X18_Y10_N25
\Inst_top_level|Inst_system_controller|data_o[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|data_o~3_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(14));

-- Location: LCCOMB_X19_Y12_N22
\Inst_top_level|Inst_system_controller|speed_sel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|speed_sel~0_combout\ = (\Inst_top_level|Inst_system_controller|next_state.pwm1000~q\) # (\Inst_top_level|Inst_system_controller|next_state.pwm120~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pwm120~q\,
	combout => \Inst_top_level|Inst_system_controller|speed_sel~0_combout\);

-- Location: FF_X19_Y12_N23
\Inst_top_level|Inst_system_controller|speed_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \Inst_top_level|Inst_system_controller|speed_sel~0_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|speed_sel\(1));

-- Location: LCCOMB_X19_Y13_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux9~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0)) # (\Inst_top_level|Inst_system_controller|speed_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux9~0_combout\);

-- Location: CLKCTRL_G1
\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\);

-- Location: LCCOMB_X19_Y12_N16
\Inst_top_level|Inst_system_controller|speed_sel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|speed_sel~1_combout\ = (\Inst_top_level|Inst_system_controller|next_state.pwm1000~q\) # (\Inst_top_level|Inst_system_controller|next_state.pwm60~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|next_state.pwm1000~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.pwm60~q\,
	combout => \Inst_top_level|Inst_system_controller|speed_sel~1_combout\);

-- Location: FF_X19_Y13_N23
\Inst_top_level|Inst_system_controller|speed_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|speed_sel~1_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|speed_sel\(0));

-- Location: LCCOMB_X19_Y12_N8
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\ = (!\Inst_top_level|Inst_system_controller|speed_sel\(0)) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Inst_top_level|Inst_Address_Counter|increment_value[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|increment_value\(14) = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\) & ((!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\) & (\Inst_top_level|Inst_Address_Counter|increment_value\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|increment_value\(14),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\,
	combout => \Inst_top_level|Inst_Address_Counter|increment_value\(14));

-- Location: LCCOMB_X19_Y12_N6
\Inst_top_level|Inst_Address_Counter|increment_value[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|increment_value\(11) = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\) & (\Inst_top_level|Inst_system_controller|speed_sel\(1))) # (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\) 
-- & ((\Inst_top_level|Inst_Address_Counter|increment_value\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_Address_Counter|increment_value\(11),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\,
	combout => \Inst_top_level|Inst_Address_Counter|increment_value\(11));

-- Location: LCCOMB_X20_Y12_N0
\Inst_top_level|Inst_Address_Counter|increment_value[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|increment_value\(10) = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\) & (!\Inst_top_level|Inst_system_controller|speed_sel\(1))) # (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\) 
-- & ((\Inst_top_level|Inst_Address_Counter|increment_value\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux9~0clkctrl_outclk\,
	datad => \Inst_top_level|Inst_Address_Counter|increment_value\(10),
	combout => \Inst_top_level|Inst_Address_Counter|increment_value\(10));

-- Location: LCCOMB_X20_Y12_N8
\Inst_top_level|Inst_Address_Counter|address_int[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[5]~36_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(5) & (!\Inst_top_level|Inst_Address_Counter|address_int[4]~35\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(5) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[4]~35\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[5]~37\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[4]~35\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[4]~35\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[5]~36_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[5]~37\);

-- Location: FF_X20_Y12_N9
\Inst_top_level|Inst_Address_Counter|address_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(5));

-- Location: LCCOMB_X20_Y12_N14
\Inst_top_level|Inst_Address_Counter|address_int[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[8]~42_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(8) & (\Inst_top_level|Inst_Address_Counter|address_int[7]~41\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(8) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[7]~41\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[8]~43\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(8) & !\Inst_top_level|Inst_Address_Counter|address_int[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[7]~41\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[8]~42_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[8]~43\);

-- Location: FF_X20_Y12_N15
\Inst_top_level|Inst_Address_Counter|address_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(8));

-- Location: LCCOMB_X20_Y12_N16
\Inst_top_level|Inst_Address_Counter|address_int[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[9]~44_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(9) & (!\Inst_top_level|Inst_Address_Counter|address_int[8]~43\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(9) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[8]~43\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[9]~45\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[8]~43\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[8]~43\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[9]~44_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[9]~45\);

-- Location: FF_X20_Y12_N17
\Inst_top_level|Inst_Address_Counter|address_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(9));

-- Location: LCCOMB_X20_Y12_N24
\Inst_top_level|Inst_Address_Counter|address_int[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[13]~52_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(13) & (!\Inst_top_level|Inst_Address_Counter|address_int[12]~51\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(13) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[12]~51\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[13]~53\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[12]~51\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[12]~51\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[13]~52_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[13]~53\);

-- Location: FF_X20_Y12_N25
\Inst_top_level|Inst_Address_Counter|address_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(13));

-- Location: LCCOMB_X20_Y12_N28
\Inst_top_level|Inst_Address_Counter|address_int[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[15]~56_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(15) & (!\Inst_top_level|Inst_Address_Counter|address_int[14]~55\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(15) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[14]~55\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[15]~57\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[14]~55\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(15),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[14]~55\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[15]~56_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[15]~57\);

-- Location: FF_X20_Y12_N29
\Inst_top_level|Inst_Address_Counter|address_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(15));

-- Location: LCCOMB_X20_Y11_N0
\Inst_top_level|Inst_Address_Counter|address_int[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[17]~60_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(17) & (!\Inst_top_level|Inst_Address_Counter|address_int[16]~59\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(17) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[16]~59\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[17]~61\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[16]~59\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(17),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[16]~59\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[17]~60_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[17]~61\);

-- Location: FF_X20_Y11_N1
\Inst_top_level|Inst_Address_Counter|address_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(17));

-- Location: LCCOMB_X20_Y11_N2
\Inst_top_level|Inst_Address_Counter|address_int[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[18]~62_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(18) & (\Inst_top_level|Inst_Address_Counter|address_int[17]~61\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(18) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[17]~61\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[18]~63\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(18) & !\Inst_top_level|Inst_Address_Counter|address_int[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(18),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[17]~61\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[18]~62_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[18]~63\);

-- Location: FF_X20_Y11_N3
\Inst_top_level|Inst_Address_Counter|address_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(18));

-- Location: LCCOMB_X20_Y11_N4
\Inst_top_level|Inst_Address_Counter|address_int[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[19]~64_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(19) & (!\Inst_top_level|Inst_Address_Counter|address_int[18]~63\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(19) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[18]~63\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[19]~65\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[18]~63\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(19),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[18]~63\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[19]~64_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[19]~65\);

-- Location: FF_X20_Y11_N5
\Inst_top_level|Inst_Address_Counter|address_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(19));

-- Location: LCCOMB_X20_Y11_N8
\Inst_top_level|Inst_Address_Counter|address_int[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[21]~68_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(21) & (!\Inst_top_level|Inst_Address_Counter|address_int[20]~67\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(21) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[20]~67\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[21]~69\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[20]~67\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(21),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[20]~67\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[21]~68_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[21]~69\);

-- Location: FF_X20_Y11_N9
\Inst_top_level|Inst_Address_Counter|address_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(21));

-- Location: LCCOMB_X20_Y11_N14
\Inst_top_level|Inst_Address_Counter|address_int[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[24]~74_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(24) & (\Inst_top_level|Inst_Address_Counter|address_int[23]~73\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(24) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[23]~73\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[24]~75\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(24) & !\Inst_top_level|Inst_Address_Counter|address_int[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(24),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[23]~73\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[24]~74_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[24]~75\);

-- Location: FF_X20_Y11_N15
\Inst_top_level|Inst_Address_Counter|address_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(24));

-- Location: LCCOMB_X17_Y12_N16
\Inst_top_level|Inst_system_controller|address_cnt[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[0]~10_combout\ = \Inst_top_level|Inst_system_controller|address_cnt\(0) $ (VCC)
-- \Inst_top_level|Inst_system_controller|address_cnt[0]~11\ = CARRY(\Inst_top_level|Inst_system_controller|address_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[0]~10_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[0]~11\);

-- Location: LCCOMB_X17_Y12_N18
\Inst_top_level|Inst_system_controller|address_cnt[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~16_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt\(1) & (!\Inst_top_level|Inst_system_controller|address_cnt[0]~11\)) # (!\Inst_top_level|Inst_system_controller|address_cnt\(1) & 
-- ((\Inst_top_level|Inst_system_controller|address_cnt[0]~11\) # (GND)))
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~17\ = CARRY((!\Inst_top_level|Inst_system_controller|address_cnt[0]~11\) # (!\Inst_top_level|Inst_system_controller|address_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|address_cnt[0]~11\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[1]~16_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[1]~17\);

-- Location: LCCOMB_X19_Y12_N10
\Inst_top_level|Inst_system_controller|byte_end~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end~5_combout\ = (\Inst_top_level|Inst_system_controller|next_state.pause~q\) # (\Inst_top_level|Inst_system_controller|next_state.test~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_end~5_combout\);

-- Location: LCCOMB_X18_Y12_N16
\Inst_top_level|Inst_system_controller|address_cnt[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~14_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (!\Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\ & ((\Inst_top_level|Inst_system_controller|byte_end~5_combout\) # 
-- (\Inst_top_level|Inst_system_controller|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_pwm|btn_pulse_r~q\,
	datac => \Inst_top_level|Inst_system_controller|byte_end~5_combout\,
	datad => \Inst_top_level|Inst_system_controller|Selector2~1_combout\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[1]~14_combout\);

-- Location: LCCOMB_X17_Y12_N10
\Inst_top_level|Inst_system_controller|address_cnt[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~15_combout\ = ((\Inst_top_level|Inst_system_controller|address_cnt[1]~14_combout\) # ((\Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\ & 
-- \Inst_top_level|Inst_system_controller|byte_end~5_combout\))) # (!\Inst_top_level|Inst_system_controller|Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_pause|btn_pulse_r~q\,
	datab => \Inst_top_level|Inst_system_controller|byte_end~5_combout\,
	datac => \Inst_top_level|Inst_system_controller|Selector1~0_combout\,
	datad => \Inst_top_level|Inst_system_controller|address_cnt[1]~14_combout\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[1]~15_combout\);

-- Location: LCCOMB_X17_Y12_N14
\Inst_top_level|Inst_system_controller|address_cnt[1]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\) # ((\Inst_top_level|Inst_Reset_Delay|oRESET~q\) # ((!\Inst_top_level|Inst_system_controller|address_cnt[1]~15_combout\) 
-- # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\,
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datad => \Inst_top_level|Inst_system_controller|address_cnt[1]~15_combout\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\);

-- Location: FF_X17_Y12_N19
\Inst_top_level|Inst_system_controller|address_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[1]~16_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(1));

-- Location: LCCOMB_X17_Y12_N20
\Inst_top_level|Inst_system_controller|address_cnt[2]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[2]~18_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt\(2) & (\Inst_top_level|Inst_system_controller|address_cnt[1]~17\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|address_cnt\(2) & 
-- (!\Inst_top_level|Inst_system_controller|address_cnt[1]~17\ & VCC))
-- \Inst_top_level|Inst_system_controller|address_cnt[2]~19\ = CARRY((\Inst_top_level|Inst_system_controller|address_cnt\(2) & !\Inst_top_level|Inst_system_controller|address_cnt[1]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|address_cnt[1]~17\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[2]~18_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[2]~19\);

-- Location: FF_X17_Y12_N21
\Inst_top_level|Inst_system_controller|address_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[2]~18_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(2));

-- Location: LCCOMB_X17_Y12_N22
\Inst_top_level|Inst_system_controller|address_cnt[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[3]~20_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt\(3) & (!\Inst_top_level|Inst_system_controller|address_cnt[2]~19\)) # (!\Inst_top_level|Inst_system_controller|address_cnt\(3) & 
-- ((\Inst_top_level|Inst_system_controller|address_cnt[2]~19\) # (GND)))
-- \Inst_top_level|Inst_system_controller|address_cnt[3]~21\ = CARRY((!\Inst_top_level|Inst_system_controller|address_cnt[2]~19\) # (!\Inst_top_level|Inst_system_controller|address_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_cnt\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|address_cnt[2]~19\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[3]~20_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[3]~21\);

-- Location: LCCOMB_X17_Y12_N24
\Inst_top_level|Inst_system_controller|address_cnt[4]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[4]~22_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt\(4) & (\Inst_top_level|Inst_system_controller|address_cnt[3]~21\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|address_cnt\(4) & 
-- (!\Inst_top_level|Inst_system_controller|address_cnt[3]~21\ & VCC))
-- \Inst_top_level|Inst_system_controller|address_cnt[4]~23\ = CARRY((\Inst_top_level|Inst_system_controller|address_cnt\(4) & !\Inst_top_level|Inst_system_controller|address_cnt[3]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|address_cnt[3]~21\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[4]~22_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[4]~23\);

-- Location: FF_X17_Y12_N25
\Inst_top_level|Inst_system_controller|address_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[4]~22_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(4));

-- Location: LCCOMB_X17_Y12_N26
\Inst_top_level|Inst_system_controller|address_cnt[5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[5]~24_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt\(5) & (!\Inst_top_level|Inst_system_controller|address_cnt[4]~23\)) # (!\Inst_top_level|Inst_system_controller|address_cnt\(5) & 
-- ((\Inst_top_level|Inst_system_controller|address_cnt[4]~23\) # (GND)))
-- \Inst_top_level|Inst_system_controller|address_cnt[5]~25\ = CARRY((!\Inst_top_level|Inst_system_controller|address_cnt[4]~23\) # (!\Inst_top_level|Inst_system_controller|address_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_cnt\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|address_cnt[4]~23\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[5]~24_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[5]~25\);

-- Location: LCCOMB_X17_Y12_N28
\Inst_top_level|Inst_system_controller|address_cnt[6]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[6]~26_combout\ = (\Inst_top_level|Inst_system_controller|address_cnt\(6) & (\Inst_top_level|Inst_system_controller|address_cnt[5]~25\ $ (GND))) # (!\Inst_top_level|Inst_system_controller|address_cnt\(6) & 
-- (!\Inst_top_level|Inst_system_controller|address_cnt[5]~25\ & VCC))
-- \Inst_top_level|Inst_system_controller|address_cnt[6]~27\ = CARRY((\Inst_top_level|Inst_system_controller|address_cnt\(6) & !\Inst_top_level|Inst_system_controller|address_cnt[5]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_system_controller|address_cnt[5]~25\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[6]~26_combout\,
	cout => \Inst_top_level|Inst_system_controller|address_cnt[6]~27\);

-- Location: FF_X17_Y12_N29
\Inst_top_level|Inst_system_controller|address_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[6]~26_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(6));

-- Location: LCCOMB_X17_Y12_N30
\Inst_top_level|Inst_system_controller|address_cnt[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[7]~28_combout\ = \Inst_top_level|Inst_system_controller|address_cnt\(7) $ (\Inst_top_level|Inst_system_controller|address_cnt[6]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_cnt\(7),
	cin => \Inst_top_level|Inst_system_controller|address_cnt[6]~27\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[7]~28_combout\);

-- Location: FF_X17_Y12_N31
\Inst_top_level|Inst_system_controller|address_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[7]~28_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(7));

-- Location: LCCOMB_X17_Y12_N2
\Inst_top_level|Inst_system_controller|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal2~1_combout\ = (((!\Inst_top_level|Inst_system_controller|address_cnt\(6)) # (!\Inst_top_level|Inst_system_controller|address_cnt\(7))) # (!\Inst_top_level|Inst_system_controller|address_cnt\(4))) # 
-- (!\Inst_top_level|Inst_system_controller|address_cnt\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_cnt\(5),
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(4),
	datac => \Inst_top_level|Inst_system_controller|address_cnt\(7),
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(6),
	combout => \Inst_top_level|Inst_system_controller|Equal2~1_combout\);

-- Location: FF_X17_Y12_N23
\Inst_top_level|Inst_system_controller|address_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[3]~20_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(3));

-- Location: LCCOMB_X17_Y12_N8
\Inst_top_level|Inst_system_controller|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|Equal2~0_combout\ = (((!\Inst_top_level|Inst_system_controller|address_cnt\(0)) # (!\Inst_top_level|Inst_system_controller|address_cnt\(3))) # (!\Inst_top_level|Inst_system_controller|address_cnt\(1))) # 
-- (!\Inst_top_level|Inst_system_controller|address_cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_cnt\(2),
	datab => \Inst_top_level|Inst_system_controller|address_cnt\(1),
	datac => \Inst_top_level|Inst_system_controller|address_cnt\(3),
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(0),
	combout => \Inst_top_level|Inst_system_controller|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y12_N12
\Inst_top_level|Inst_system_controller|address_cnt[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\ = ((!\Inst_top_level|Inst_system_controller|Equal2~1_combout\ & !\Inst_top_level|Inst_system_controller|Equal2~0_combout\)) # 
-- (!\Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|Equal2~1_combout\,
	datac => \Inst_top_level|Inst_system_controller|Equal2~0_combout\,
	datad => \Inst_top_level|Inst_system_controller|address_cnt[1]~12_combout\,
	combout => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\);

-- Location: FF_X17_Y12_N17
\Inst_top_level|Inst_system_controller|address_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[0]~10_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(0));

-- Location: LCCOMB_X20_Y13_N20
\Inst_top_level|Inst_system_controller|address_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~0_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(0)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(0),
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(0),
	combout => \Inst_top_level|Inst_system_controller|address_out~0_combout\);

-- Location: FF_X20_Y13_N21
\Inst_top_level|Inst_system_controller|address_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~0_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(0));

-- Location: LCCOMB_X19_Y13_N26
\Inst_top_level|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux7~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_Address_Counter|address_int\(24))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_Address_Counter|address_int\(24))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_system_controller|address_out\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(24),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_system_controller|address_out\(0),
	combout => \Inst_top_level|Mux7~0_combout\);

-- Location: LCCOMB_X20_Y11_N16
\Inst_top_level|Inst_Address_Counter|address_int[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[25]~76_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(25) & (!\Inst_top_level|Inst_Address_Counter|address_int[24]~75\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(25) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[24]~75\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[25]~77\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[24]~75\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(25),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[24]~75\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[25]~76_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[25]~77\);

-- Location: FF_X20_Y11_N17
\Inst_top_level|Inst_Address_Counter|address_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(25));

-- Location: LCCOMB_X21_Y13_N22
\Inst_top_level|Inst_system_controller|address_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~1_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(1)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(1),
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(1),
	combout => \Inst_top_level|Inst_system_controller|address_out~1_combout\);

-- Location: FF_X21_Y13_N23
\Inst_top_level|Inst_system_controller|address_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~1_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(1));

-- Location: LCCOMB_X19_Y13_N28
\Inst_top_level|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux6~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_Address_Counter|address_int\(25))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_Address_Counter|address_int\(25))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_system_controller|address_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(25),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_system_controller|address_out\(1),
	combout => \Inst_top_level|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y11_N18
\Inst_top_level|Inst_Address_Counter|address_int[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[26]~78_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(26) & (\Inst_top_level|Inst_Address_Counter|address_int[25]~77\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(26) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[25]~77\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[26]~79\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(26) & !\Inst_top_level|Inst_Address_Counter|address_int[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(26),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[25]~77\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[26]~78_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[26]~79\);

-- Location: FF_X20_Y11_N19
\Inst_top_level|Inst_Address_Counter|address_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(26));

-- Location: LCCOMB_X21_Y13_N20
\Inst_top_level|Inst_system_controller|address_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~2_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(2)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|ROM_cnt\(2),
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(2),
	combout => \Inst_top_level|Inst_system_controller|address_out~2_combout\);

-- Location: FF_X21_Y13_N21
\Inst_top_level|Inst_system_controller|address_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~2_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(2));

-- Location: LCCOMB_X19_Y13_N14
\Inst_top_level|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux5~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_Address_Counter|address_int\(26))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_Address_Counter|address_int\(26))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_system_controller|address_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(26),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_system_controller|address_out\(2),
	combout => \Inst_top_level|Mux5~0_combout\);

-- Location: FF_X18_Y11_N7
\Inst_top_level|Inst_system_controller|ROM_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[3]~17_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(3));

-- Location: LCCOMB_X21_Y13_N30
\Inst_top_level|Inst_system_controller|address_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~3_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(3)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(3),
	datac => \Inst_top_level|Inst_system_controller|address_cnt\(3),
	combout => \Inst_top_level|Inst_system_controller|address_out~3_combout\);

-- Location: FF_X21_Y13_N31
\Inst_top_level|Inst_system_controller|address_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~3_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(3));

-- Location: LCCOMB_X20_Y11_N20
\Inst_top_level|Inst_Address_Counter|address_int[27]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[27]~80_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(27) & (!\Inst_top_level|Inst_Address_Counter|address_int[26]~79\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(27) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[26]~79\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[27]~81\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[26]~79\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(27),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[26]~79\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[27]~80_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[27]~81\);

-- Location: FF_X20_Y11_N21
\Inst_top_level|Inst_Address_Counter|address_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(27));

-- Location: LCCOMB_X19_Y13_N24
\Inst_top_level|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux4~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_Address_Counter|address_int\(27))))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_Address_Counter|address_int\(27)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_system_controller|address_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_system_controller|address_out\(3),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(27),
	combout => \Inst_top_level|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y11_N22
\Inst_top_level|Inst_Address_Counter|address_int[28]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[28]~82_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(28) & (\Inst_top_level|Inst_Address_Counter|address_int[27]~81\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(28) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[27]~81\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[28]~83\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(28) & !\Inst_top_level|Inst_Address_Counter|address_int[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(28),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[27]~81\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[28]~82_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[28]~83\);

-- Location: FF_X20_Y11_N23
\Inst_top_level|Inst_Address_Counter|address_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(28));

-- Location: LCCOMB_X19_Y13_N30
\Inst_top_level|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux3~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(1) & (((\Inst_top_level|Inst_Address_Counter|address_int\(28))))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(0) & ((\Inst_top_level|Inst_Address_Counter|address_int\(28)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_system_controller|address_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_out\(4),
	datab => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(28),
	combout => \Inst_top_level|Mux3~0_combout\);

-- Location: FF_X17_Y12_N27
\Inst_top_level|Inst_system_controller|address_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_cnt[5]~24_combout\,
	sclr => \Inst_top_level|Inst_system_controller|address_cnt[1]~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|address_cnt[1]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_cnt\(5));

-- Location: LCCOMB_X20_Y13_N8
\Inst_top_level|Inst_system_controller|address_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~5_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(5)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|ROM_cnt\(5),
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(5),
	combout => \Inst_top_level|Inst_system_controller|address_out~5_combout\);

-- Location: FF_X20_Y13_N9
\Inst_top_level|Inst_system_controller|address_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~5_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(5));

-- Location: LCCOMB_X20_Y11_N24
\Inst_top_level|Inst_Address_Counter|address_int[29]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[29]~84_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(29) & (!\Inst_top_level|Inst_Address_Counter|address_int[28]~83\)) # (!\Inst_top_level|Inst_Address_Counter|address_int\(29) & 
-- ((\Inst_top_level|Inst_Address_Counter|address_int[28]~83\) # (GND)))
-- \Inst_top_level|Inst_Address_Counter|address_int[29]~85\ = CARRY((!\Inst_top_level|Inst_Address_Counter|address_int[28]~83\) # (!\Inst_top_level|Inst_Address_Counter|address_int\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(29),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[28]~83\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[29]~84_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[29]~85\);

-- Location: FF_X20_Y11_N25
\Inst_top_level|Inst_Address_Counter|address_int[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(29));

-- Location: LCCOMB_X19_Y13_N8
\Inst_top_level|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux2~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_Address_Counter|address_int\(29))))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_Address_Counter|address_int\(29)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_system_controller|address_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_system_controller|address_out\(5),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(29),
	combout => \Inst_top_level|Mux2~0_combout\);

-- Location: FF_X18_Y11_N13
\Inst_top_level|Inst_system_controller|ROM_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|ROM_cnt[6]~23_combout\,
	sclr => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|ROM_cnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|ROM_cnt\(6));

-- Location: LCCOMB_X20_Y13_N18
\Inst_top_level|Inst_system_controller|address_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~6_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & ((\Inst_top_level|Inst_system_controller|address_cnt\(6)))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- (\Inst_top_level|Inst_system_controller|ROM_cnt\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|ROM_cnt\(6),
	datac => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_system_controller|address_cnt\(6),
	combout => \Inst_top_level|Inst_system_controller|address_out~6_combout\);

-- Location: FF_X20_Y13_N19
\Inst_top_level|Inst_system_controller|address_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~6_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(6));

-- Location: LCCOMB_X20_Y11_N26
\Inst_top_level|Inst_Address_Counter|address_int[30]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[30]~86_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(30) & (\Inst_top_level|Inst_Address_Counter|address_int[29]~85\ $ (GND))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(30) & 
-- (!\Inst_top_level|Inst_Address_Counter|address_int[29]~85\ & VCC))
-- \Inst_top_level|Inst_Address_Counter|address_int[30]~87\ = CARRY((\Inst_top_level|Inst_Address_Counter|address_int\(30) & !\Inst_top_level|Inst_Address_Counter|address_int[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(30),
	datad => VCC,
	cin => \Inst_top_level|Inst_Address_Counter|address_int[29]~85\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[30]~86_combout\,
	cout => \Inst_top_level|Inst_Address_Counter|address_int[30]~87\);

-- Location: FF_X20_Y11_N27
\Inst_top_level|Inst_Address_Counter|address_int[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(30));

-- Location: LCCOMB_X19_Y13_N6
\Inst_top_level|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux1~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_Address_Counter|address_int\(30))))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_Address_Counter|address_int\(30)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_system_controller|address_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_system_controller|address_out\(6),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(30),
	combout => \Inst_top_level|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y13_N16
\Inst_top_level|Inst_system_controller|address_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|address_out~7_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_system_controller|address_cnt\(7))) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\ & 
-- ((\Inst_top_level|Inst_system_controller|ROM_cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|address_cnt\(7),
	datad => \Inst_top_level|Inst_system_controller|ROM_cnt\(7),
	combout => \Inst_top_level|Inst_system_controller|address_out~7_combout\);

-- Location: FF_X20_Y13_N17
\Inst_top_level|Inst_system_controller|address_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|address_out~7_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|address_out\(7));

-- Location: LCCOMB_X19_Y13_N2
\Inst_top_level|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Mux0~0_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_Address_Counter|address_int\(31))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_Address_Counter|address_int\(31))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & ((\Inst_top_level|Inst_system_controller|address_out\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(31),
	datab => \Inst_top_level|Inst_system_controller|address_out\(7),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	combout => \Inst_top_level|Mux0~0_combout\);

-- Location: M9K_X15_Y10_N0
\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"0F9B43CDC0ED2839BA0E0A8369B0D43833830C7E830730BBB82D6B0AFB02A700A3DC27820984024A208CE421D4081D01F18077081C7106C9419E006280176605",
	mem_init1 => X"8C8150504F7812BE04694109403E240E860362C0C9802EB00AC9027B4091A02140078E01B540625015F404DF0112403BD00CE802C10094401EB00638013A003C400B1001EC004E000B00013000100000000100013000B0004E001EC00B1003C4013A0063801EB0094402C100CE803BD0112404DF015F4062501B54078E02140091A027B40AC902EB00C980362C0E8603E2410940469412BE04F781505058C817660628019E006C941C71077081F18081D021D408CE424A20984027820A3DC2A700AFB02D6B0BBB830730C7E833830D438369B0E0A839BA0ED283CDC0F9B44000106484323112D4464511F54496412BC44C7C138144F8C1444452941504C558F1",
	mem_init0 => X"5C20587D167BC5B5D173185E2B17E2C60E7188F4638E19368661F19D7C68991A7346AFA1B0846D411B9686F6B1C1D871791C9D073671D14C75361D84876E51DEBC78711E4A879DA1EA087B201EED87C421F3147D3E1F6B87E141F9C47EC51FC387F4E1FE107FA31FE8C7FA31FE8C7FA31FE8C7FA31FE8C7FA31FE107F4E1FC387EC51F9C47E141F6B87D3E1F3147C421EED87B201EA0879DA1E4A878711DEBC76E51D84875361D14C73671C9D071791C1D86F6B1B9686D411B0846AFA1A734689919D7C661F19368638E188F460E717E2C5E2B173185B5D167BC587D15C20558F1504C5294144444F8C138144C7C12BC4496411F544645112D44323106484000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "sine.mif",
	init_file_layout => "port_a",
	logical_ram_name => "top_level:Inst_top_level|ROM1Port:Inst_ROM1_Port|altsyncram:altsyncram_component|altsyncram_u291:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	portaaddr => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X18_Y10_N24
\Inst_top_level|data_muxed[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[14]~1_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(14)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_select~q\,
	datac => \Inst_top_level|Inst_system_controller|data_o\(14),
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(14),
	combout => \Inst_top_level|data_muxed[14]~1_combout\);

-- Location: IOIBUF_X3_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: LCCOMB_X17_Y11_N2
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[13]~5_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[13]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[13]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[13]~5_combout\);

-- Location: FF_X17_Y11_N3
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[13]~5_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(13));

-- Location: LCCOMB_X18_Y11_N30
\Inst_top_level|Inst_system_controller|data_o~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~4_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & 
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(13),
	combout => \Inst_top_level|Inst_system_controller|data_o~4_combout\);

-- Location: FF_X18_Y10_N7
\Inst_top_level|Inst_system_controller|data_o[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|data_o~4_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(13));

-- Location: LCCOMB_X18_Y10_N6
\Inst_top_level|data_muxed[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[13]~2_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(13)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_select~q\,
	datac => \Inst_top_level|Inst_system_controller|data_o\(13),
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(13),
	combout => \Inst_top_level|data_muxed[13]~2_combout\);

-- Location: IOIBUF_X0_Y16_N15
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: LCCOMB_X16_Y11_N30
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[11]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[11]~7_combout\ = (\SRAM_DQ[11]~input_o\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[11]~input_o\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[11]~7_combout\);

-- Location: FF_X16_Y11_N31
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[11]~7_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(11));

-- Location: LCCOMB_X16_Y10_N4
\Inst_top_level|Inst_system_controller|data_o~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~6_combout\ = (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(11) & 
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(11),
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~6_combout\);

-- Location: FF_X16_Y10_N5
\Inst_top_level|Inst_system_controller|data_o[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~6_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(11));

-- Location: LCCOMB_X16_Y10_N26
\Inst_top_level|data_muxed[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[11]~4_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(11)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(11),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(11),
	combout => \Inst_top_level|data_muxed[11]~4_combout\);

-- Location: LCCOMB_X19_Y11_N16
\Inst_top_level|Inst_PWM|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~1_cout\ = CARRY((\Inst_top_level|data_muxed[8]~7_combout\ & !\Inst_top_level|Inst_PWM|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[8]~7_combout\,
	datab => \Inst_top_level|Inst_PWM|counter\(0),
	datad => VCC,
	cout => \Inst_top_level|Inst_PWM|LessThan0~1_cout\);

-- Location: LCCOMB_X19_Y11_N18
\Inst_top_level|Inst_PWM|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~3_cout\ = CARRY((\Inst_top_level|data_muxed[9]~6_combout\ & (\Inst_top_level|Inst_PWM|counter\(1) & !\Inst_top_level|Inst_PWM|LessThan0~1_cout\)) # (!\Inst_top_level|data_muxed[9]~6_combout\ & 
-- ((\Inst_top_level|Inst_PWM|counter\(1)) # (!\Inst_top_level|Inst_PWM|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[9]~6_combout\,
	datab => \Inst_top_level|Inst_PWM|counter\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|LessThan0~1_cout\,
	cout => \Inst_top_level|Inst_PWM|LessThan0~3_cout\);

-- Location: LCCOMB_X19_Y11_N20
\Inst_top_level|Inst_PWM|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~5_cout\ = CARRY((\Inst_top_level|data_muxed[10]~5_combout\ & ((!\Inst_top_level|Inst_PWM|LessThan0~3_cout\) # (!\Inst_top_level|Inst_PWM|counter\(2)))) # (!\Inst_top_level|data_muxed[10]~5_combout\ & 
-- (!\Inst_top_level|Inst_PWM|counter\(2) & !\Inst_top_level|Inst_PWM|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[10]~5_combout\,
	datab => \Inst_top_level|Inst_PWM|counter\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|LessThan0~3_cout\,
	cout => \Inst_top_level|Inst_PWM|LessThan0~5_cout\);

-- Location: LCCOMB_X19_Y11_N22
\Inst_top_level|Inst_PWM|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~7_cout\ = CARRY((\Inst_top_level|Inst_PWM|counter\(3) & ((!\Inst_top_level|Inst_PWM|LessThan0~5_cout\) # (!\Inst_top_level|data_muxed[11]~4_combout\))) # (!\Inst_top_level|Inst_PWM|counter\(3) & 
-- (!\Inst_top_level|data_muxed[11]~4_combout\ & !\Inst_top_level|Inst_PWM|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_PWM|counter\(3),
	datab => \Inst_top_level|data_muxed[11]~4_combout\,
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|LessThan0~5_cout\,
	cout => \Inst_top_level|Inst_PWM|LessThan0~7_cout\);

-- Location: LCCOMB_X19_Y11_N24
\Inst_top_level|Inst_PWM|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~9_cout\ = CARRY((\Inst_top_level|data_muxed[12]~3_combout\ & ((!\Inst_top_level|Inst_PWM|LessThan0~7_cout\) # (!\Inst_top_level|Inst_PWM|counter\(4)))) # (!\Inst_top_level|data_muxed[12]~3_combout\ & 
-- (!\Inst_top_level|Inst_PWM|counter\(4) & !\Inst_top_level|Inst_PWM|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[12]~3_combout\,
	datab => \Inst_top_level|Inst_PWM|counter\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|LessThan0~7_cout\,
	cout => \Inst_top_level|Inst_PWM|LessThan0~9_cout\);

-- Location: LCCOMB_X19_Y11_N26
\Inst_top_level|Inst_PWM|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~11_cout\ = CARRY((\Inst_top_level|Inst_PWM|counter\(5) & ((!\Inst_top_level|Inst_PWM|LessThan0~9_cout\) # (!\Inst_top_level|data_muxed[13]~2_combout\))) # (!\Inst_top_level|Inst_PWM|counter\(5) & 
-- (!\Inst_top_level|data_muxed[13]~2_combout\ & !\Inst_top_level|Inst_PWM|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_PWM|counter\(5),
	datab => \Inst_top_level|data_muxed[13]~2_combout\,
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|LessThan0~9_cout\,
	cout => \Inst_top_level|Inst_PWM|LessThan0~11_cout\);

-- Location: LCCOMB_X19_Y11_N28
\Inst_top_level|Inst_PWM|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~13_cout\ = CARRY((\Inst_top_level|Inst_PWM|counter\(6) & (\Inst_top_level|data_muxed[14]~1_combout\ & !\Inst_top_level|Inst_PWM|LessThan0~11_cout\)) # (!\Inst_top_level|Inst_PWM|counter\(6) & 
-- ((\Inst_top_level|data_muxed[14]~1_combout\) # (!\Inst_top_level|Inst_PWM|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_PWM|counter\(6),
	datab => \Inst_top_level|data_muxed[14]~1_combout\,
	datad => VCC,
	cin => \Inst_top_level|Inst_PWM|LessThan0~11_cout\,
	cout => \Inst_top_level|Inst_PWM|LessThan0~13_cout\);

-- Location: LCCOMB_X19_Y11_N30
\Inst_top_level|Inst_PWM|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_PWM|LessThan0~14_combout\ = (\Inst_top_level|data_muxed[15]~0_combout\ & ((\Inst_top_level|Inst_PWM|LessThan0~13_cout\) # (!\Inst_top_level|Inst_PWM|counter\(7)))) # (!\Inst_top_level|data_muxed[15]~0_combout\ & 
-- (!\Inst_top_level|Inst_PWM|counter\(7) & \Inst_top_level|Inst_PWM|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[15]~0_combout\,
	datab => \Inst_top_level|Inst_PWM|counter\(7),
	cin => \Inst_top_level|Inst_PWM|LessThan0~13_cout\,
	combout => \Inst_top_level|Inst_PWM|LessThan0~14_combout\);

-- Location: FF_X19_Y11_N31
\Inst_top_level|Inst_PWM|pwm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_PWM|LessThan0~14_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_PWM|pwm~q\);

-- Location: LCCOMB_X24_Y13_N8
\Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~7_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) $ (VCC)
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\ = CARRY(\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~7_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\);

-- Location: LCCOMB_X27_Y13_N24
\Inst_top_level|Inst_system_controller|byte_end~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end~6_combout\ = ((\Inst_top_level|Inst_Reset_Delay|oRESET~q\) # (!\Inst_top_level|Inst_system_controller|next_state.pause~q\)) # (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_end~6_combout\);

-- Location: LCCOMB_X27_Y13_N16
\Inst_top_level|Inst_system_controller|byte_end[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end[2]~feeder_combout\ = \Inst_top_level|Inst_system_controller|byte_end~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|byte_end~6_combout\,
	combout => \Inst_top_level|Inst_system_controller|byte_end[2]~feeder_combout\);

-- Location: FF_X27_Y13_N17
\Inst_top_level|Inst_system_controller|byte_end[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_end[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_end\(2));

-- Location: FF_X27_Y13_N7
\Inst_top_level|Inst_LCD_User_Logic|q0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|reset_h~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|q0~q\);

-- Location: FF_X27_Y13_N13
\Inst_top_level|Inst_LCD_User_Logic|q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|q0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|q1~q\);

-- Location: LCCOMB_X27_Y13_N14
\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~0_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|q0~q\ & \Inst_top_level|Inst_LCD_User_Logic|q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|q0~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|q1~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~0_combout\);

-- Location: FF_X27_Y13_N15
\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\);

-- Location: CLKCTRL_G16
\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y13_N6
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\ = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & ((\Inst_top_level|Inst_system_controller|byte_end\(2)))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\);

-- Location: LCCOMB_X26_Y13_N6
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~11_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (\Inst_top_level|Inst_system_controller|speed_sel\(1))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & ((\Inst_top_level|Inst_system_controller|byte_end\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\,
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_system_controller|byte_end\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~11_combout\);

-- Location: LCCOMB_X28_Y12_N4
\Inst_top_level|Inst_LCD_User_Logic|state.start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|state.start~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.start~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\) # (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.start~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|state.start~0_combout\);

-- Location: LCCOMB_X27_Y12_N4
\Inst_top_level|Inst_LCD_User_Logic|state.start~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|state.start~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.start~0_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- !\Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.start~0_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|state.start~2_combout\);

-- Location: FF_X27_Y12_N5
\Inst_top_level|Inst_LCD_User_Logic|state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|state.start~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|state.start~q\);

-- Location: LCCOMB_X28_Y12_N8
\Inst_top_level|Inst_LCD_User_Logic|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Selector33~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\) # ((\Inst_top_level|Inst_LCD_User_Logic|state.ready~q\) # ((\Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\ & 
-- !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Selector33~0_combout\);

-- Location: LCCOMB_X25_Y12_N4
\Inst_top_level|Inst_LCD_User_Logic|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~0_combout\ = \Inst_top_level|Inst_LCD_User_Logic|count\(0) $ (GND)
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~1\ = CARRY(!\Inst_top_level|Inst_LCD_User_Logic|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(0),
	datad => VCC,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~0_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~1\);

-- Location: LCCOMB_X25_Y12_N6
\Inst_top_level|Inst_LCD_User_Logic|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~1\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(1) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~1\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~3\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(1) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~1\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~2_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~3\);

-- Location: LCCOMB_X25_Y12_N2
\Inst_top_level|Inst_LCD_User_Logic|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~82_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~2_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~82_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Inst_top_level|Inst_system_controller|byte_end~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end~8_combout\ = (\Inst_top_level|Inst_system_controller|byte_end~5_combout\) # ((\Inst_top_level|Inst_Reset_Delay|oRESET~q\) # ((!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\) # 
-- (!\Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|byte_end~5_combout\,
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_end~8_combout\);

-- Location: LCCOMB_X25_Y13_N2
\Inst_top_level|Inst_system_controller|byte_end[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end[6]~9_combout\ = !\Inst_top_level|Inst_system_controller|byte_end~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_system_controller|byte_end~8_combout\,
	combout => \Inst_top_level|Inst_system_controller|byte_end[6]~9_combout\);

-- Location: FF_X25_Y13_N3
\Inst_top_level|Inst_system_controller|byte_end[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_end[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_end\(6));

-- Location: LCCOMB_X25_Y13_N30
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\ = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & ((\Inst_top_level|Inst_system_controller|byte_end\(6)))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\);

-- Location: LCCOMB_X25_Y13_N16
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~25_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\) # (\Inst_top_level|Inst_system_controller|byte_end\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~25_combout\);

-- Location: FF_X25_Y13_N17
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~25_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N18
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (\Inst_top_level|Inst_system_controller|byte_end\(6))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\ $ (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datab => \Inst_top_level|Inst_system_controller|byte_end\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~23_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~_emulated_q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\);

-- Location: FF_X26_Y13_N17
\Inst_top_level|Inst_system_controller|byte_end[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|byte_end~5_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_end\(1));

-- Location: LCCOMB_X26_Y13_N0
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\ = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & ((\Inst_top_level|Inst_system_controller|byte_end\(1)))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\);

-- Location: LCCOMB_X26_Y13_N2
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (((\Inst_top_level|Inst_system_controller|byte_end\(1))))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~_emulated_q\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~_emulated_q\,
	datab => \Inst_top_level|Inst_system_controller|byte_end\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\);

-- Location: LCCOMB_X26_Y13_N8
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (((\Inst_top_level|Inst_system_controller|byte_end\(1))))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~_emulated_q\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~_emulated_q\,
	datab => \Inst_top_level|Inst_system_controller|byte_end\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\);

-- Location: FF_X25_Y13_N21
\Inst_top_level|Inst_system_controller|byte_end[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_end~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_end\(0));

-- Location: LCCOMB_X25_Y13_N24
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\ = (GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & ((\Inst_top_level|Inst_system_controller|byte_end\(0)))) # 
-- (!GLOBAL(\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~clkctrl_outclk\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\);

-- Location: LCCOMB_X25_Y13_N8
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~3_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (\Inst_top_level|Inst_system_controller|byte_end\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|byte_end\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int~39_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~3_combout\);

-- Location: FF_X25_Y13_N9
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~3_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~_emulated_q\);

-- Location: LCCOMB_X25_Y13_N6
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (\Inst_top_level|Inst_system_controller|byte_end\(0))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~_emulated_q\ $ (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|byte_end\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~_emulated_q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\);

-- Location: LCCOMB_X26_Y13_N18
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~1_cout\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\,
	datad => VCC,
	cout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~1_cout\);

-- Location: LCCOMB_X26_Y13_N20
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~3_cout\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~1_cout\) # (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\,
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~1_cout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~3_cout\);

-- Location: LCCOMB_X26_Y13_N22
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~5_cout\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|LessThan0~3_cout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\) # (!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\,
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~3_cout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~5_cout\);

-- Location: LCCOMB_X26_Y13_N24
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~7_cout\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & !\Inst_top_level|Inst_LCD_User_Logic|LessThan0~5_cout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # (!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[3]~14_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~5_cout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~7_cout\);

-- Location: LCCOMB_X26_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~9_cout\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\ & ((!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~7_cout\) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & !\Inst_top_level|Inst_LCD_User_Logic|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[4]~18_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~7_cout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~9_cout\);

-- Location: LCCOMB_X26_Y13_N28
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~11_cout\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~9_cout\) # (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\,
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~9_cout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~11_cout\);

-- Location: LCCOMB_X26_Y13_N30
\Inst_top_level|Inst_LCD_User_Logic|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\ & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)) # (!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~11_cout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~11_cout\ & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	cin => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~11_cout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\);

-- Location: LCCOMB_X27_Y12_N0
\Inst_top_level|Inst_LCD_User_Logic|count[27]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|count[27]~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.start~q\) # (\Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.start~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|count[27]~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\Inst_top_level|Inst_LCD_User_Logic|count[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (((\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|count[27]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|count[27]~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\);

-- Location: FF_X25_Y12_N3
\Inst_top_level|Inst_LCD_User_Logic|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~82_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(1));

-- Location: LCCOMB_X25_Y12_N10
\Inst_top_level|Inst_LCD_User_Logic|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~5\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(3) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~5\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~7\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(3) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~5\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~6_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~7\);

-- Location: LCCOMB_X27_Y12_N2
\Inst_top_level|Inst_LCD_User_Logic|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~80_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~6_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~80_combout\);

-- Location: FF_X27_Y12_N3
\Inst_top_level|Inst_LCD_User_Logic|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~80_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(3));

-- Location: LCCOMB_X25_Y12_N12
\Inst_top_level|Inst_LCD_User_Logic|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(4) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~7\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(4) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~7\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~9\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~7\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~7\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~8_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~9\);

-- Location: LCCOMB_X27_Y12_N10
\Inst_top_level|Inst_LCD_User_Logic|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~79_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~79_combout\);

-- Location: FF_X27_Y12_N11
\Inst_top_level|Inst_LCD_User_Logic|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~79_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(4));

-- Location: LCCOMB_X25_Y12_N14
\Inst_top_level|Inst_LCD_User_Logic|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~10_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~9\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(5) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~9\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~11\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(5) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~9\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~10_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~11\);

-- Location: LCCOMB_X27_Y12_N24
\Inst_top_level|Inst_LCD_User_Logic|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~78_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~10_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~78_combout\);

-- Location: FF_X27_Y12_N25
\Inst_top_level|Inst_LCD_User_Logic|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~78_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(5));

-- Location: LCCOMB_X25_Y12_N16
\Inst_top_level|Inst_LCD_User_Logic|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(6) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~11\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(6) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~11\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~13\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~11\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~11\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~12_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~13\);

-- Location: LCCOMB_X25_Y12_N0
\Inst_top_level|Inst_LCD_User_Logic|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~77_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~12_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~77_combout\);

-- Location: FF_X25_Y12_N1
\Inst_top_level|Inst_LCD_User_Logic|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~77_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(6));

-- Location: LCCOMB_X27_Y12_N16
\Inst_top_level|Inst_LCD_User_Logic|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(7) & (\Inst_top_level|Inst_LCD_User_Logic|count\(5) & (\Inst_top_level|Inst_LCD_User_Logic|count\(4) & \Inst_top_level|Inst_LCD_User_Logic|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(7),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~6_combout\);

-- Location: LCCOMB_X27_Y12_N14
\Inst_top_level|Inst_LCD_User_Logic|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~83_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Add0~0_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Add0~0_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~83_combout\);

-- Location: FF_X27_Y12_N15
\Inst_top_level|Inst_LCD_User_Logic|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~83_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(0));

-- Location: LCCOMB_X27_Y12_N8
\Inst_top_level|Inst_LCD_User_Logic|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(2) & (\Inst_top_level|Inst_LCD_User_Logic|count\(0) & (\Inst_top_level|Inst_LCD_User_Logic|count\(1) & \Inst_top_level|Inst_LCD_User_Logic|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~7_combout\);

-- Location: LCCOMB_X25_Y12_N20
\Inst_top_level|Inst_LCD_User_Logic|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~16_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(8) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~15\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(8) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~15\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~17\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~15\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~15\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~16_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~17\);

-- Location: LCCOMB_X24_Y12_N16
\Inst_top_level|Inst_LCD_User_Logic|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~75_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Add0~16_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|Add0~16_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~75_combout\);

-- Location: FF_X25_Y12_N21
\Inst_top_level|Inst_LCD_User_Logic|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Add0~75_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(8));

-- Location: LCCOMB_X25_Y12_N28
\Inst_top_level|Inst_LCD_User_Logic|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~24_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(12) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~23\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(12) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~23\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~25\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~23\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~23\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~24_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~25\);

-- Location: LCCOMB_X26_Y12_N30
\Inst_top_level|Inst_LCD_User_Logic|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~71_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~24_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~71_combout\);

-- Location: FF_X26_Y12_N31
\Inst_top_level|Inst_LCD_User_Logic|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~71_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(12));

-- Location: LCCOMB_X25_Y12_N30
\Inst_top_level|Inst_LCD_User_Logic|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~26_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(13) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~25\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(13) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~25\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~27\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(13) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(13),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~25\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~26_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~27\);

-- Location: LCCOMB_X26_Y12_N24
\Inst_top_level|Inst_LCD_User_Logic|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~70_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~26_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~70_combout\);

-- Location: FF_X26_Y12_N25
\Inst_top_level|Inst_LCD_User_Logic|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~70_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(13));

-- Location: LCCOMB_X25_Y11_N2
\Inst_top_level|Inst_LCD_User_Logic|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~30_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(15) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~29\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(15) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~29\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~31\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(15) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(15),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~29\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~30_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~31\);

-- Location: LCCOMB_X26_Y12_N16
\Inst_top_level|Inst_LCD_User_Logic|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~68_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~30_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~68_combout\);

-- Location: FF_X26_Y12_N17
\Inst_top_level|Inst_LCD_User_Logic|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~68_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(15));

-- Location: LCCOMB_X26_Y12_N8
\Inst_top_level|Inst_LCD_User_Logic|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~3_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(14) & (\Inst_top_level|Inst_LCD_User_Logic|count\(15) & (\Inst_top_level|Inst_LCD_User_Logic|count\(12) & \Inst_top_level|Inst_LCD_User_Logic|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(14),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(15),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(12),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(13),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~3_combout\);

-- Location: LCCOMB_X25_Y11_N4
\Inst_top_level|Inst_LCD_User_Logic|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~32_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(16) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~31\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(16) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~31\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~33\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~31\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(16),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~31\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~32_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~33\);

-- Location: LCCOMB_X26_Y11_N0
\Inst_top_level|Inst_LCD_User_Logic|Add0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~67_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~32_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~67_combout\);

-- Location: FF_X26_Y11_N1
\Inst_top_level|Inst_LCD_User_Logic|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~67_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(16));

-- Location: LCCOMB_X25_Y11_N8
\Inst_top_level|Inst_LCD_User_Logic|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~36_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(18) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~35\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(18) & ((GND) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~35\)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~37\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Add0~35\) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(18),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~35\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~36_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~37\);

-- Location: LCCOMB_X26_Y11_N30
\Inst_top_level|Inst_LCD_User_Logic|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~65_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~36_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~65_combout\);

-- Location: FF_X26_Y11_N31
\Inst_top_level|Inst_LCD_User_Logic|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~65_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(18));

-- Location: LCCOMB_X25_Y11_N10
\Inst_top_level|Inst_LCD_User_Logic|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~38_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(19) & (!\Inst_top_level|Inst_LCD_User_Logic|Add0~37\)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(19) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~37\ & 
-- VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~39\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(19) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(19),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~37\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~38_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~39\);

-- Location: LCCOMB_X26_Y11_N4
\Inst_top_level|Inst_LCD_User_Logic|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~64_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~38_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~64_combout\);

-- Location: FF_X26_Y11_N5
\Inst_top_level|Inst_LCD_User_Logic|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~64_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(19));

-- Location: LCCOMB_X26_Y12_N26
\Inst_top_level|Inst_LCD_User_Logic|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(17) & (\Inst_top_level|Inst_LCD_User_Logic|count\(16) & (\Inst_top_level|Inst_LCD_User_Logic|count\(18) & \Inst_top_level|Inst_LCD_User_Logic|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(17),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(16),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(18),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(19),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y11_N12
\Inst_top_level|Inst_LCD_User_Logic|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~40_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(20) & ((GND) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~39\))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(20) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Add0~39\ $ (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~41\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(20)) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(20),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~39\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~40_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~41\);

-- Location: LCCOMB_X26_Y12_N28
\Inst_top_level|Inst_LCD_User_Logic|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~63_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\) # (\Inst_top_level|Inst_LCD_User_Logic|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~40_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~63_combout\);

-- Location: FF_X26_Y12_N29
\Inst_top_level|Inst_LCD_User_Logic|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~63_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(20));

-- Location: LCCOMB_X25_Y11_N14
\Inst_top_level|Inst_LCD_User_Logic|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~42_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(21) & (\Inst_top_level|Inst_LCD_User_Logic|Add0~41\ & VCC)) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(21) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Add0~41\))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~43\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|count\(21) & !\Inst_top_level|Inst_LCD_User_Logic|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(21),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~41\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~42_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~43\);

-- Location: LCCOMB_X26_Y12_N2
\Inst_top_level|Inst_LCD_User_Logic|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~62_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\) # (\Inst_top_level|Inst_LCD_User_Logic|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~42_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~62_combout\);

-- Location: FF_X26_Y12_N3
\Inst_top_level|Inst_LCD_User_Logic|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~62_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(21));

-- Location: LCCOMB_X25_Y11_N16
\Inst_top_level|Inst_LCD_User_Logic|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~44_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(22) & ((GND) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~43\))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(22) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Add0~43\ $ (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~45\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(22)) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(22),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~43\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~44_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~45\);

-- Location: LCCOMB_X26_Y12_N0
\Inst_top_level|Inst_LCD_User_Logic|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~61_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\) # (\Inst_top_level|Inst_LCD_User_Logic|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~44_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~61_combout\);

-- Location: FF_X26_Y12_N1
\Inst_top_level|Inst_LCD_User_Logic|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~61_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(22));

-- Location: LCCOMB_X25_Y11_N20
\Inst_top_level|Inst_LCD_User_Logic|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~48_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(24) & ((GND) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~47\))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(24) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Add0~47\ $ (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~49\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(24)) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(24),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~47\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~48_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~49\);

-- Location: LCCOMB_X26_Y12_N4
\Inst_top_level|Inst_LCD_User_Logic|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~59_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\) # (\Inst_top_level|Inst_LCD_User_Logic|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~48_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~59_combout\);

-- Location: FF_X26_Y12_N5
\Inst_top_level|Inst_LCD_User_Logic|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~59_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(24));

-- Location: LCCOMB_X25_Y11_N24
\Inst_top_level|Inst_LCD_User_Logic|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~52_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|count\(26) & ((GND) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~51\))) # (!\Inst_top_level|Inst_LCD_User_Logic|count\(26) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Add0~51\ $ (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~53\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|count\(26)) # (!\Inst_top_level|Inst_LCD_User_Logic|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(26),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~51\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~52_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Add0~53\);

-- Location: LCCOMB_X26_Y12_N20
\Inst_top_level|Inst_LCD_User_Logic|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~57_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & \Inst_top_level|Inst_LCD_User_Logic|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Add0~52_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~57_combout\);

-- Location: FF_X26_Y12_N21
\Inst_top_level|Inst_LCD_User_Logic|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~57_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(26));

-- Location: LCCOMB_X25_Y11_N26
\Inst_top_level|Inst_LCD_User_Logic|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~54_combout\ = \Inst_top_level|Inst_LCD_User_Logic|Add0~53\ $ (!\Inst_top_level|Inst_LCD_User_Logic|count\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(27),
	cin => \Inst_top_level|Inst_LCD_User_Logic|Add0~53\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~54_combout\);

-- Location: LCCOMB_X25_Y11_N28
\Inst_top_level|Inst_LCD_User_Logic|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Add0~56_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Add0~54_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|Add0~54_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Add0~56_combout\);

-- Location: FF_X25_Y11_N29
\Inst_top_level|Inst_LCD_User_Logic|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Add0~56_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|count[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|count\(27));

-- Location: LCCOMB_X26_Y12_N18
\Inst_top_level|Inst_LCD_User_Logic|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~0_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|count\(25) & (!\Inst_top_level|Inst_LCD_User_Logic|count\(24) & (!\Inst_top_level|Inst_LCD_User_Logic|count\(27) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|count\(25),
	datab => \Inst_top_level|Inst_LCD_User_Logic|count\(24),
	datac => \Inst_top_level|Inst_LCD_User_Logic|count\(27),
	datad => \Inst_top_level|Inst_LCD_User_Logic|count\(26),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y12_N14
\Inst_top_level|Inst_LCD_User_Logic|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Equal0~1_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|Equal0~3_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|Equal0~2_combout\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Equal0~1_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Equal0~3_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Equal0~2_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y12_N18
\Inst_top_level|Inst_LCD_User_Logic|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Equal0~5_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|Equal0~6_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|Equal0~7_combout\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Equal0~5_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Equal0~6_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Equal0~7_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Equal0~4_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y12_N30
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.start~q\ & \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.start~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\);

-- Location: LCCOMB_X28_Y12_N2
\Inst_top_level|Inst_LCD_User_Logic|Selector33~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Selector33~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|ena~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\) # ((\Inst_top_level|Inst_LCD_User_Logic|Selector33~0_combout\) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|ena~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Selector33~0_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Selector33~1_combout\);

-- Location: LCCOMB_X28_Y12_N0
\Inst_top_level|Inst_LCD_User_Logic|Selector33~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Selector33~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Selector33~1_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|state.ready~q\ & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Selector33~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Selector33~2_combout\);

-- Location: FF_X28_Y12_N1
\Inst_top_level|Inst_LCD_User_Logic|ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Selector33~2_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|ena~q\);

-- Location: LCCOMB_X27_Y9_N24
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~28_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~28_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~6_combout\);

-- Location: FF_X27_Y9_N25
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14));

-- Location: LCCOMB_X27_Y10_N4
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~0_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~0_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~5_combout\);

-- Location: FF_X27_Y10_N5
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(0));

-- Location: LCCOMB_X27_Y10_N18
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~1\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~2_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\);

-- Location: FF_X27_Y10_N19
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1));

-- Location: LCCOMB_X27_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~3\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~4_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~5\);

-- Location: LCCOMB_X27_Y10_N2
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~4_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~4_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~4_combout\);

-- Location: FF_X27_Y10_N3
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2));

-- Location: LCCOMB_X27_Y10_N24
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~7\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~8_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\);

-- Location: FF_X27_Y10_N25
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4));

-- Location: LCCOMB_X27_Y10_N26
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~10_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~9\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~10_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\);

-- Location: LCCOMB_X27_Y10_N28
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~11\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~12_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~13\);

-- Location: LCCOMB_X27_Y9_N0
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~16_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~15\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~16_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\);

-- Location: LCCOMB_X27_Y9_N2
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~18_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9) & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\) # (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~17\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~18_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\);

-- Location: FF_X27_Y9_N3
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9));

-- Location: LCCOMB_X27_Y9_N4
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~20_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~19\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~20_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~21\);

-- Location: LCCOMB_X27_Y9_N20
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~20_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~20_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~1_combout\);

-- Location: FF_X27_Y9_N21
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10));

-- Location: LCCOMB_X27_Y9_N8
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~24_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\ $ (GND))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~23\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~24_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~25\);

-- Location: FF_X27_Y9_N9
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12));

-- Location: FF_X27_Y9_N15
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15));

-- Location: LCCOMB_X27_Y9_N26
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~4_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12) & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(13),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(15),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(12),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(14),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y10_N6
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~3_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(0) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(11),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~3_combout\);

-- Location: FF_X27_Y10_N29
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6));

-- Location: FF_X27_Y10_N27
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5));

-- Location: LCCOMB_X27_Y10_N14
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~1_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5) & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(4),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y9_N22
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~16_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Add0~16_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~2_combout\);

-- Location: FF_X27_Y9_N23
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8));

-- Location: LCCOMB_X27_Y10_N12
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7) & (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8) & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(7),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(9),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(8),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(10),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y10_N0
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~1_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~1_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y10_N8
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(16) & (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~4_combout\ & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~3_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_cnt\(16),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~4_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~3_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~2_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\);

-- Location: FF_X27_Y10_N9
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\);

-- Location: LCCOMB_X27_Y11_N18
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\ & (((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\ & (\Inst_top_level|Inst_LCD_User_Logic|ena~q\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|ena~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~1_combout\);

-- Location: FF_X27_Y11_N19
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~1_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\);

-- Location: LCCOMB_X28_Y12_N22
\Inst_top_level|Inst_LCD_User_Logic|state.start~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|state.start~q\ & (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\ & (\Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\ $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.start~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\);

-- Location: LCCOMB_X28_Y12_N6
\Inst_top_level|Inst_LCD_User_Logic|state.ready~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|state.ready~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (((\Inst_top_level|Inst_LCD_User_Logic|state.ready~q\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|state.ready~q\)) # (!\Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.start~1_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|state.ready~0_combout\);

-- Location: FF_X28_Y12_N7
\Inst_top_level|Inst_LCD_User_Logic|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|state.ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\);

-- Location: LCCOMB_X25_Y10_N18
\Inst_top_level|Inst_LCD_User_Logic|state.repeat~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|state.repeat~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\) # ((\Inst_top_level|Inst_LCD_User_Logic|state.ready~q\)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\ & (((\Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~0_combout\);

-- Location: LCCOMB_X25_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|state.repeat~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|state.repeat~1_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.repeat~0_combout\ & !\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~0_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~1_combout\);

-- Location: FF_X25_Y10_N21
\Inst_top_level|Inst_LCD_User_Logic|state.data_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|state.ready~q\,
	sload => VCC,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\);

-- Location: LCCOMB_X25_Y10_N14
\Inst_top_level|Inst_LCD_User_Logic|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Selector31~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\) # (\Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|busy~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|state.data_valid~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Selector31~0_combout\);

-- Location: FF_X25_Y10_N15
\Inst_top_level|Inst_LCD_User_Logic|state.busy_high\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Selector31~0_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\);

-- Location: FF_X25_Y10_N17
\Inst_top_level|Inst_LCD_User_Logic|state.repeat\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|state.busy_high~q\,
	sload => VCC,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\);

-- Location: LCCOMB_X26_Y13_N14
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\ & \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|LessThan0~12_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\);

-- Location: FF_X26_Y13_N7
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~11_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~_emulated_q\);

-- Location: LCCOMB_X27_Y13_N0
\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & (\Inst_top_level|Inst_system_controller|byte_end\(2))) # (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~_emulated_q\ $ (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datab => \Inst_top_level|Inst_system_controller|byte_end\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~_emulated_q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~9_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\);

-- Location: LCCOMB_X26_Y13_N16
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~18_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\ $ (\Inst_top_level|Inst_system_controller|byte_end\(2))) # 
-- (!\Inst_top_level|Inst_system_controller|byte_end\(1)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\ & ((\Inst_top_level|Inst_system_controller|byte_end\(1)) # (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\ $ 
-- (\Inst_top_level|Inst_system_controller|byte_end\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[1]~6_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[2]~10_combout\,
	datac => \Inst_top_level|Inst_system_controller|byte_end\(1),
	datad => \Inst_top_level|Inst_system_controller|byte_end\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~18_combout\);

-- Location: LCCOMB_X25_Y13_N0
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~20_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\ & ((\Inst_top_level|Inst_system_controller|byte_end\(1) $ (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\)) # 
-- (!\Inst_top_level|Inst_system_controller|byte_end\(6)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\ & ((\Inst_top_level|Inst_system_controller|byte_end\(6)) # (\Inst_top_level|Inst_system_controller|byte_end\(1) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[6]~24_combout\,
	datab => \Inst_top_level|Inst_system_controller|byte_end\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[5]~20_combout\,
	datad => \Inst_top_level|Inst_system_controller|byte_end\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~20_combout\);

-- Location: LCCOMB_X25_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~17_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\ $ ((\Inst_top_level|Inst_system_controller|byte_end\(0))))) # 
-- (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\ $ (\Inst_top_level|Inst_system_controller|byte_end\(0))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byte_end_int[0]~2_combout\,
	datac => \Inst_top_level|Inst_system_controller|byte_end\(0),
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~17_combout\);

-- Location: LCCOMB_X25_Y13_N10
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~19_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~18_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~20_combout\ & 
-- !\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~19_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~18_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~20_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~17_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Inst_top_level|Inst_LCD_User_Logic|byteSel~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel~26_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & ((!\Inst_top_level|Inst_system_controller|speed_sel\(1)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & 
-- (\Inst_top_level|Inst_system_controller|byte_start\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|byte_start\(0),
	datab => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel~26_combout\);

-- Location: FF_X24_Y13_N9
\Inst_top_level|Inst_LCD_User_Logic|byteSel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~7_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel~26_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0));

-- Location: LCCOMB_X24_Y13_N10
\Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~9_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|byteSel[0]~8\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~9_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\);

-- Location: LCCOMB_X24_Y13_N12
\Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~11_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~10\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~11_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\);

-- Location: LCCOMB_X24_Y13_N14
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~13_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~12\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~13_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\);

-- Location: LCCOMB_X25_Y13_N12
\Inst_top_level|Inst_LCD_User_Logic|byteSel~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel~24_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & ((\Inst_top_level|Inst_system_controller|speed_sel\(0)) # ((!\Inst_top_level|Inst_system_controller|speed_sel\(1))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (((\Inst_top_level|Inst_system_controller|byte_end\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_system_controller|byte_end\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel~24_combout\);

-- Location: FF_X24_Y13_N15
\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~13_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel~24_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3));

-- Location: LCCOMB_X24_Y13_N16
\Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~15_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\ $ (GND))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\ & VCC))
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\ = CARRY((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~14\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~15_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\);

-- Location: LCCOMB_X27_Y13_N22
\Inst_top_level|Inst_system_controller|byte_end~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_end~4_combout\ = (((\Inst_top_level|Inst_system_controller|next_state.pause~q\) # (\Inst_top_level|Inst_Reset_Delay|oRESET~q\)) # (!\Inst_top_level|Inst_system_controller|next_state.init~q\)) # 
-- (!\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.pause~q\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_end~4_combout\);

-- Location: LCCOMB_X27_Y13_N8
\Inst_top_level|Inst_system_controller|byte_start[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_start[2]~3_combout\ = !\Inst_top_level|Inst_system_controller|byte_end~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_system_controller|byte_end~4_combout\,
	combout => \Inst_top_level|Inst_system_controller|byte_start[2]~3_combout\);

-- Location: FF_X27_Y13_N9
\Inst_top_level|Inst_system_controller|byte_start[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_start[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_start\(2));

-- Location: LCCOMB_X24_Y13_N0
\Inst_top_level|Inst_LCD_User_Logic|byteSel~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel~22_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & ((\Inst_top_level|Inst_system_controller|speed_sel\(1)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & 
-- (\Inst_top_level|Inst_system_controller|byte_start\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|byte_start\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel~22_combout\);

-- Location: FF_X24_Y13_N17
\Inst_top_level|Inst_LCD_User_Logic|byteSel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~15_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel~22_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4));

-- Location: LCCOMB_X24_Y13_N18
\Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~27_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\) # (GND)))
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~28\ = CARRY((!\Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => VCC,
	cin => \Inst_top_level|Inst_LCD_User_Logic|byteSel[4]~16\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~27_combout\,
	cout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~28\);

-- Location: LCCOMB_X21_Y13_N24
\Inst_top_level|Inst_system_controller|byte_start~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_start~1_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & !\Inst_top_level|Inst_system_controller|next_state.test~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_start~1_combout\);

-- Location: FF_X21_Y13_N25
\Inst_top_level|Inst_system_controller|byte_start[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_start~1_combout\,
	sclr => \Inst_top_level|reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_start\(5));

-- Location: LCCOMB_X25_Y13_N14
\Inst_top_level|Inst_LCD_User_Logic|byteSel~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel~29_combout\ = (\Inst_top_level|Inst_system_controller|byte_start\(5) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|byte_start\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel~29_combout\);

-- Location: FF_X24_Y13_N19
\Inst_top_level|Inst_LCD_User_Logic|byteSel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~27_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel~29_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5));

-- Location: LCCOMB_X24_Y13_N20
\Inst_top_level|Inst_LCD_User_Logic|byteSel[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel[6]~30_combout\ = \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~28\ $ (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	cin => \Inst_top_level|Inst_LCD_User_Logic|byteSel[5]~28\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel[6]~30_combout\);

-- Location: FF_X24_Y13_N21
\Inst_top_level|Inst_LCD_User_Logic|byteSel[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[6]~30_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6));

-- Location: LCCOMB_X24_Y13_N6
\Inst_top_level|Inst_LCD_User_Logic|byteSel~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel~23_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (!\Inst_top_level|Inst_system_controller|speed_sel\(1))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & 
-- ((\Inst_top_level|Inst_system_controller|byte_start\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	datad => \Inst_top_level|Inst_system_controller|byte_start\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel~23_combout\);

-- Location: FF_X24_Y13_N13
\Inst_top_level|Inst_LCD_User_Logic|byteSel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[2]~11_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel~23_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2));

-- Location: LCCOMB_X21_Y11_N14
\Inst_top_level|Inst_LCD_User_Logic|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~2_combout\);

-- Location: LCCOMB_X25_Y13_N22
\Inst_top_level|Inst_system_controller|byte_start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|byte_start~0_combout\ = (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_system_controller|next_state.test~q\ & \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_system_controller|next_state.test~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_system_controller|byte_start~0_combout\);

-- Location: FF_X25_Y13_N23
\Inst_top_level|Inst_system_controller|byte_start[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|byte_start~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|byte_start\(1));

-- Location: LCCOMB_X25_Y13_N4
\Inst_top_level|Inst_LCD_User_Logic|byteSel~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel~25_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((!\Inst_top_level|Inst_system_controller|speed_sel\(0))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\ & (((\Inst_top_level|Inst_system_controller|byte_start\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datab => \Inst_top_level|Inst_system_controller|byte_start\(1),
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel[3]~21_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|byteSel~25_combout\);

-- Location: FF_X24_Y13_N11
\Inst_top_level|Inst_LCD_User_Logic|byteSel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|byteSel[1]~9_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|byteSel~25_combout\,
	clrn => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_reset_h_edge~clkctrl_outclk\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_LessThan0~12_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|state.repeat~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1));

-- Location: LCCOMB_X21_Y11_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y11_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~3_combout\ = \Inst_top_level|Inst_LCD_User_Logic|Mux7~2_combout\ $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & \Inst_top_level|Inst_LCD_User_Logic|Mux7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux7~2_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux7~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~3_combout\);

-- Location: LCCOMB_X21_Y10_N24
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (!\Inst_top_level|Inst_LCD_User_Logic|Mux7~0_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux7~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux7~3_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~0_combout\);

-- Location: LCCOMB_X21_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~12_combout\);

-- Location: LCCOMB_X21_Y10_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux7~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~13_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & \Inst_top_level|Inst_LCD_User_Logic|Mux7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux7~12_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~13_combout\);

-- Location: IOIBUF_X0_Y22_N22
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: LCCOMB_X16_Y11_N12
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[9]~9_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[9]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \SRAM_DQ[9]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[9]~9_combout\);

-- Location: FF_X17_Y11_N7
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[9]~9_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(9));

-- Location: LCCOMB_X17_Y11_N6
\Inst_top_level|Inst_system_controller|data_o~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~8_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(9) & 
-- !\Inst_top_level|Inst_Reset_Delay|oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(9),
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~8_combout\);

-- Location: FF_X18_Y10_N13
\Inst_top_level|Inst_system_controller|data_o[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|data_o~8_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(9));

-- Location: LCCOMB_X18_Y10_N12
\Inst_top_level|data_muxed[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[9]~6_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(9)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_select~q\,
	datac => \Inst_top_level|Inst_system_controller|data_o\(9),
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(9),
	combout => \Inst_top_level|data_muxed[9]~6_combout\);

-- Location: LCCOMB_X18_Y10_N26
\Inst_top_level|data_muxed[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[10]~5_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(10)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|data_o\(10),
	datac => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(10),
	datad => \Inst_top_level|Inst_system_controller|data_select~q\,
	combout => \Inst_top_level|data_muxed[10]~5_combout\);

-- Location: LCCOMB_X21_Y10_N2
\Inst_top_level|Inst_HEX_to_ASCII_2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_2|Mux6~0_combout\ = \Inst_top_level|data_muxed[8]~7_combout\ $ (((\Inst_top_level|data_muxed[11]~4_combout\ & ((\Inst_top_level|data_muxed[9]~6_combout\) # (\Inst_top_level|data_muxed[10]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[8]~7_combout\,
	datab => \Inst_top_level|data_muxed[9]~6_combout\,
	datac => \Inst_top_level|data_muxed[10]~5_combout\,
	datad => \Inst_top_level|data_muxed[11]~4_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y10_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~9_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & 
-- \Inst_top_level|Inst_HEX_to_ASCII_2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux6~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~9_combout\);

-- Location: IOIBUF_X0_Y7_N8
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: LCCOMB_X16_Y11_N28
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[12]~6_combout\ = (\SRAM_DQ[12]~input_o\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[12]~input_o\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[12]~6_combout\);

-- Location: FF_X16_Y11_N29
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[12]~6_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(12));

-- Location: LCCOMB_X14_Y10_N0
\Inst_top_level|Inst_system_controller|data_o~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~5_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(12) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(12),
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~5_combout\);

-- Location: FF_X14_Y10_N1
\Inst_top_level|Inst_system_controller|data_o[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~5_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(12));

-- Location: LCCOMB_X14_Y10_N6
\Inst_top_level|data_muxed[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[12]~3_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(12)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(12),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(12),
	combout => \Inst_top_level|data_muxed[12]~3_combout\);

-- Location: LCCOMB_X19_Y10_N14
\Inst_top_level|Inst_HEX_to_ASCII_3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_3|Mux6~0_combout\ = \Inst_top_level|data_muxed[12]~3_combout\ $ (((\Inst_top_level|data_muxed[15]~0_combout\ & ((\Inst_top_level|data_muxed[14]~1_combout\) # (\Inst_top_level|data_muxed[13]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[15]~0_combout\,
	datab => \Inst_top_level|data_muxed[14]~1_combout\,
	datac => \Inst_top_level|data_muxed[13]~2_combout\,
	datad => \Inst_top_level|data_muxed[12]~3_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y10_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~10_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_HEX_to_ASCII_3|Mux6~0_combout\) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux6~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~10_combout\);

-- Location: LCCOMB_X21_Y10_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~11_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|Mux7~9_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux7~9_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux7~10_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~11_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|Mux7~6_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux7~6_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~7_combout\);

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: LCCOMB_X17_Y11_N0
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[3]~14_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[3]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[3]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[3]~14_combout\);

-- Location: FF_X17_Y11_N1
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[3]~14_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(3));

-- Location: LCCOMB_X14_Y10_N8
\Inst_top_level|Inst_system_controller|data_o~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~13_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(3) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(3),
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~13_combout\);

-- Location: FF_X14_Y10_N9
\Inst_top_level|Inst_system_controller|data_o[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~13_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(3));

-- Location: LCCOMB_X14_Y10_N14
\Inst_top_level|data_muxed[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[3]~11_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(3)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(3),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(3),
	combout => \Inst_top_level|data_muxed[3]~11_combout\);

-- Location: IOIBUF_X5_Y0_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: LCCOMB_X17_Y11_N14
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[0]~11_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[0]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[0]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[0]~11_combout\);

-- Location: FF_X17_Y11_N15
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[0]~11_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(0));

-- Location: LCCOMB_X14_Y10_N16
\Inst_top_level|Inst_system_controller|data_o~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~10_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(0) & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(0),
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~10_combout\);

-- Location: FF_X14_Y10_N17
\Inst_top_level|Inst_system_controller|data_o[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~10_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(0));

-- Location: LCCOMB_X14_Y10_N30
\Inst_top_level|data_muxed[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[0]~8_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(0)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(0),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(0),
	combout => \Inst_top_level|data_muxed[0]~8_combout\);

-- Location: LCCOMB_X14_Y10_N18
\Inst_top_level|data_muxed[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[2]~10_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(2)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|data_o\(2),
	datac => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(2),
	datad => \Inst_top_level|Inst_system_controller|data_select~q\,
	combout => \Inst_top_level|data_muxed[2]~10_combout\);

-- Location: LCCOMB_X14_Y10_N28
\Inst_top_level|Inst_HEX_to_ASCII_0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_0|Mux6~0_combout\ = \Inst_top_level|data_muxed[0]~8_combout\ $ (((\Inst_top_level|data_muxed[3]~11_combout\ & ((\Inst_top_level|data_muxed[1]~9_combout\) # (\Inst_top_level|data_muxed[2]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[1]~9_combout\,
	datab => \Inst_top_level|data_muxed[3]~11_combout\,
	datac => \Inst_top_level|data_muxed[0]~8_combout\,
	datad => \Inst_top_level|data_muxed[2]~10_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux6~0_combout\);

-- Location: IOIBUF_X11_Y0_N22
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: LCCOMB_X16_Y11_N2
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[5]~16_combout\ = (\SRAM_DQ[5]~input_o\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[5]~input_o\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[5]~16_combout\);

-- Location: FF_X16_Y11_N3
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[5]~16_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(5));

-- Location: LCCOMB_X16_Y10_N24
\Inst_top_level|Inst_system_controller|data_o~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~15_combout\ = (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(5) & 
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(5),
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~15_combout\);

-- Location: FF_X16_Y10_N25
\Inst_top_level|Inst_system_controller|data_o[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~15_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(5));

-- Location: LCCOMB_X16_Y10_N14
\Inst_top_level|data_muxed[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[5]~13_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(5)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(5),
	datac => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(5),
	datad => \Inst_top_level|Inst_system_controller|data_select~q\,
	combout => \Inst_top_level|data_muxed[5]~13_combout\);

-- Location: IOIBUF_X11_Y0_N15
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: LCCOMB_X16_Y11_N8
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[6]~17_combout\ = (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\SRAM_DQ[6]~input_o\ & \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datab => \SRAM_DQ[6]~input_o\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[6]~17_combout\);

-- Location: FF_X16_Y11_N9
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[6]~17_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(6));

-- Location: LCCOMB_X16_Y10_N16
\Inst_top_level|Inst_system_controller|data_o~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~16_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(6),
	combout => \Inst_top_level|Inst_system_controller|data_o~16_combout\);

-- Location: FF_X16_Y10_N17
\Inst_top_level|Inst_system_controller|data_o[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~16_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(6));

-- Location: LCCOMB_X16_Y10_N30
\Inst_top_level|data_muxed[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[6]~14_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(6)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(6),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(6),
	combout => \Inst_top_level|data_muxed[6]~14_combout\);

-- Location: LCCOMB_X16_Y10_N10
\Inst_top_level|data_muxed[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[7]~15_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(7)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|data_o\(7),
	datac => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(7),
	datad => \Inst_top_level|Inst_system_controller|data_select~q\,
	combout => \Inst_top_level|data_muxed[7]~15_combout\);

-- Location: LCCOMB_X16_Y10_N20
\Inst_top_level|Inst_HEX_to_ASCII_1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_1|Mux6~0_combout\ = \Inst_top_level|data_muxed[4]~12_combout\ $ (((\Inst_top_level|data_muxed[7]~15_combout\ & ((\Inst_top_level|data_muxed[5]~13_combout\) # (\Inst_top_level|data_muxed[6]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[4]~12_combout\,
	datab => \Inst_top_level|data_muxed[5]~13_combout\,
	datac => \Inst_top_level|data_muxed[6]~14_combout\,
	datad => \Inst_top_level|data_muxed[7]~15_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y10_N16
\Inst_top_level|Inst_LCD_User_Logic|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # ((\Inst_top_level|Inst_HEX_to_ASCII_0|Mux6~0_combout\)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_HEX_to_ASCII_1|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux6~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux6~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\);

-- Location: LCCOMB_X20_Y13_N14
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~0_combout\ = \Inst_top_level|Inst_system_controller|address_out\(4) $ (((\Inst_top_level|Inst_system_controller|address_out\(7) & ((\Inst_top_level|Inst_system_controller|address_out\(6)) # 
-- (\Inst_top_level|Inst_system_controller|address_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_out\(4),
	datab => \Inst_top_level|Inst_system_controller|address_out\(6),
	datac => \Inst_top_level|Inst_system_controller|address_out\(5),
	datad => \Inst_top_level|Inst_system_controller|address_out\(7),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y13_N2
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~2_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1_combout\)) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1_combout\)) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~1_combout\,
	datab => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~2_combout\);

-- Location: LCCOMB_X20_Y13_N28
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~0_combout\ = \Inst_top_level|Inst_system_controller|address_out\(0) $ (((\Inst_top_level|Inst_system_controller|address_out\(3) & ((\Inst_top_level|Inst_system_controller|address_out\(2)) # 
-- (\Inst_top_level|Inst_system_controller|address_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_out\(3),
	datab => \Inst_top_level|Inst_system_controller|address_out\(0),
	datac => \Inst_top_level|Inst_system_controller|address_out\(2),
	datad => \Inst_top_level|Inst_system_controller|address_out\(1),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y11_N10
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1_combout\ = \Inst_top_level|Inst_Address_Counter|address_int\(24) $ (((\Inst_top_level|Inst_Address_Counter|address_int\(27) & ((\Inst_top_level|Inst_Address_Counter|address_int\(26)) # 
-- (\Inst_top_level|Inst_Address_Counter|address_int\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(24),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(26),
	datac => \Inst_top_level|Inst_Address_Counter|address_int\(25),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(27),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1_combout\);

-- Location: LCCOMB_X20_Y13_N6
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~2_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1_combout\)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1_combout\))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~1_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~2_combout\);

-- Location: LCCOMB_X21_Y10_N6
\Inst_top_level|Inst_LCD_User_Logic|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\ & ((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~2_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\ & (\Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~2_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux7~4_combout\,
	datac => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux6~2_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux6~2_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~5_combout\);

-- Location: LCCOMB_X21_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|Mux7~5_combout\) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~7_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|Mux7~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux7~7_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux7~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~8_combout\);

-- Location: LCCOMB_X21_Y10_N14
\Inst_top_level|Inst_LCD_User_Logic|Mux7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux7~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux7~8_combout\) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux7~13_combout\) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux7~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux7~13_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux7~11_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux7~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux7~14_combout\);

-- Location: LCCOMB_X27_Y12_N26
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|state.start~q\ & (!\Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\ & \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|state.start~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|reset_h_edge~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Equal0~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\);

-- Location: FF_X21_Y10_N25
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~0_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Mux7~14_combout\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_byteSel\(4),
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(0));

-- Location: LCCOMB_X17_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux6~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~11_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~11_combout\);

-- Location: LCCOMB_X17_Y10_N6
\Inst_top_level|Inst_LCD_User_Logic|Mux6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux6~11_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) $ 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux6~11_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~12_combout\);

-- Location: LCCOMB_X17_Y10_N4
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[1]~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|Mux6~1_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux6~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux6~1_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux6~12_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[1]~1_combout\);

-- Location: LCCOMB_X18_Y10_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~3_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~3_combout\);

-- Location: LCCOMB_X18_Y10_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\);

-- Location: LCCOMB_X18_Y10_N8
\Inst_top_level|data_muxed[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[8]~7_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(8)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|data_o\(8),
	datab => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(8),
	combout => \Inst_top_level|data_muxed[8]~7_combout\);

-- Location: LCCOMB_X18_Y10_N14
\Inst_top_level|Inst_HEX_to_ASCII_2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_2|Mux5~0_combout\ = (\Inst_top_level|data_muxed[8]~7_combout\ & (((\Inst_top_level|data_muxed[9]~6_combout\)))) # (!\Inst_top_level|data_muxed[8]~7_combout\ & ((\Inst_top_level|data_muxed[11]~4_combout\ & 
-- (\Inst_top_level|data_muxed[10]~5_combout\ & !\Inst_top_level|data_muxed[9]~6_combout\)) # (!\Inst_top_level|data_muxed[11]~4_combout\ & ((\Inst_top_level|data_muxed[9]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[10]~5_combout\,
	datab => \Inst_top_level|data_muxed[8]~7_combout\,
	datac => \Inst_top_level|data_muxed[11]~4_combout\,
	datad => \Inst_top_level|data_muxed[9]~6_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux5~0_combout\);

-- Location: IOIBUF_X3_Y0_N15
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: LCCOMB_X17_Y11_N18
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~2_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\SRAM_DQ[15]~input_o\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \SRAM_DQ[15]~input_o\,
	datad => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~2_combout\);

-- Location: FF_X17_Y11_N19
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~2_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(15));

-- Location: LCCOMB_X17_Y11_N28
\Inst_top_level|Inst_system_controller|data_o~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~1_combout\ = (\Inst_top_level|Inst_system_controller|next_state.init~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(15) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(15),
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~1_combout\);

-- Location: FF_X18_Y10_N1
\Inst_top_level|Inst_system_controller|data_o[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_system_controller|data_o~1_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(15));

-- Location: LCCOMB_X18_Y10_N0
\Inst_top_level|data_muxed[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[15]~0_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(15)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_select~q\,
	datac => \Inst_top_level|Inst_system_controller|data_o\(15),
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(15),
	combout => \Inst_top_level|data_muxed[15]~0_combout\);

-- Location: LCCOMB_X18_Y10_N16
\Inst_top_level|Inst_HEX_to_ASCII_3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_3|Mux5~0_combout\ = (\Inst_top_level|data_muxed[13]~2_combout\ & (((\Inst_top_level|data_muxed[12]~3_combout\) # (!\Inst_top_level|data_muxed[15]~0_combout\)))) # (!\Inst_top_level|data_muxed[13]~2_combout\ & 
-- (\Inst_top_level|data_muxed[14]~1_combout\ & (\Inst_top_level|data_muxed[15]~0_combout\ & !\Inst_top_level|data_muxed[12]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[13]~2_combout\,
	datab => \Inst_top_level|data_muxed[14]~1_combout\,
	datac => \Inst_top_level|data_muxed[15]~0_combout\,
	datad => \Inst_top_level|data_muxed[12]~3_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y10_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_HEX_to_ASCII_2|Mux5~0_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_HEX_to_ASCII_3|Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\,
	datac => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux5~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux5~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~2_combout\);

-- Location: LCCOMB_X18_Y10_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux6~2_combout\) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux6~3_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux6~2_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~4_combout\);

-- Location: LCCOMB_X17_Y10_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~5_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux6~4_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux8~4_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux6~4_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~5_combout\);

-- Location: LCCOMB_X17_Y10_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y10_N30
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux5~0_combout\ = (\Inst_top_level|Mux0~0_combout\ & ((\Inst_top_level|Mux3~0_combout\ & (\Inst_top_level|Mux2~0_combout\)) # (!\Inst_top_level|Mux3~0_combout\ & (!\Inst_top_level|Mux2~0_combout\ & 
-- \Inst_top_level|Mux1~0_combout\)))) # (!\Inst_top_level|Mux0~0_combout\ & (((\Inst_top_level|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux0~0_combout\,
	datab => \Inst_top_level|Mux3~0_combout\,
	datac => \Inst_top_level|Mux2~0_combout\,
	datad => \Inst_top_level|Mux1~0_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux5~0_combout\ = (\Inst_top_level|Mux4~0_combout\ & ((\Inst_top_level|Mux7~0_combout\ & (\Inst_top_level|Mux6~0_combout\)) # (!\Inst_top_level|Mux7~0_combout\ & (!\Inst_top_level|Mux6~0_combout\ & 
-- \Inst_top_level|Mux5~0_combout\)))) # (!\Inst_top_level|Mux4~0_combout\ & (((\Inst_top_level|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux4~0_combout\,
	datab => \Inst_top_level|Mux7~0_combout\,
	datac => \Inst_top_level|Mux6~0_combout\,
	datad => \Inst_top_level|Mux5~0_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux5~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~9_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux6~8_combout\ & (((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux5~0_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux6~8_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_HEX_to_ASCII_5|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux6~8_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux5~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux5~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~9_combout\);

-- Location: LCCOMB_X17_Y10_N8
\Inst_top_level|Inst_LCD_User_Logic|Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~10_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux6~7_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|Mux6~5_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux6~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux6~7_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux6~5_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux6~0_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux6~9_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux6~10_combout\);

-- Location: FF_X17_Y10_N5
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[1]~1_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Mux6~10_combout\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_byteSel\(4),
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(1));

-- Location: LCCOMB_X19_Y13_N20
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux4~0_combout\ = (\Inst_top_level|Mux5~0_combout\ & (((\Inst_top_level|Mux6~0_combout\) # (\Inst_top_level|Mux7~0_combout\)) # (!\Inst_top_level|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux4~0_combout\,
	datab => \Inst_top_level|Mux6~0_combout\,
	datac => \Inst_top_level|Mux7~0_combout\,
	datad => \Inst_top_level|Mux5~0_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y11_N16
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[1]~12_combout\ = (\SRAM_DQ[1]~input_o\ & (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & !\Inst_top_level|Inst_Reset_Delay|oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[1]~input_o\,
	datab => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[1]~12_combout\);

-- Location: FF_X17_Y11_N17
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[1]~12_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(1));

-- Location: LCCOMB_X14_Y10_N4
\Inst_top_level|Inst_system_controller|data_o~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~11_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(1) & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(1),
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~11_combout\);

-- Location: FF_X14_Y10_N5
\Inst_top_level|Inst_system_controller|data_o[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~11_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(1));

-- Location: LCCOMB_X14_Y10_N22
\Inst_top_level|data_muxed[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[1]~9_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(1)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(1),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(1),
	combout => \Inst_top_level|data_muxed[1]~9_combout\);

-- Location: LCCOMB_X14_Y10_N20
\Inst_top_level|Inst_HEX_to_ASCII_0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_0|Mux4~0_combout\ = (\Inst_top_level|data_muxed[2]~10_combout\ & ((\Inst_top_level|data_muxed[0]~8_combout\) # ((\Inst_top_level|data_muxed[1]~9_combout\) # (!\Inst_top_level|data_muxed[3]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[0]~8_combout\,
	datab => \Inst_top_level|data_muxed[3]~11_combout\,
	datac => \Inst_top_level|data_muxed[1]~9_combout\,
	datad => \Inst_top_level|data_muxed[2]~10_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux4~0_combout\);

-- Location: IOIBUF_X7_Y0_N15
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: LCCOMB_X16_Y11_N20
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_out[4]~15_combout\ = (\SRAM_DQ[4]~input_o\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[4]~input_o\,
	datac => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datad => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[4]~15_combout\);

-- Location: FF_X16_Y11_N21
\Inst_top_level|Inst_SRAM_Controller|cont_io_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[4]~15_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|cont_io_out[15]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(4));

-- Location: LCCOMB_X16_Y10_N8
\Inst_top_level|Inst_system_controller|data_o~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_system_controller|data_o~14_combout\ = (\Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\ & (!\Inst_top_level|Inst_Reset_Delay|oRESET~q\ & (\Inst_top_level|Inst_SRAM_Controller|cont_io_out\(4) & 
-- \Inst_top_level|Inst_system_controller|next_state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_BTN_Debounce_reset|btn_reg~q\,
	datab => \Inst_top_level|Inst_Reset_Delay|oRESET~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_out\(4),
	datad => \Inst_top_level|Inst_system_controller|next_state.init~q\,
	combout => \Inst_top_level|Inst_system_controller|data_o~14_combout\);

-- Location: FF_X16_Y10_N9
\Inst_top_level|Inst_system_controller|data_o[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_system_controller|data_o~14_combout\,
	ena => \Inst_top_level|Inst_system_controller|data_o[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_system_controller|data_o\(4));

-- Location: LCCOMB_X16_Y10_N22
\Inst_top_level|data_muxed[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|data_muxed[4]~12_combout\ = (\Inst_top_level|Inst_system_controller|data_select~q\ & ((\Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(4)))) # (!\Inst_top_level|Inst_system_controller|data_select~q\ & 
-- (\Inst_top_level|Inst_system_controller|data_o\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|data_o\(4),
	datac => \Inst_top_level|Inst_system_controller|data_select~q\,
	datad => \Inst_top_level|Inst_ROM1_Port|altsyncram_component|auto_generated|q_a\(4),
	combout => \Inst_top_level|data_muxed[4]~12_combout\);

-- Location: LCCOMB_X16_Y10_N0
\Inst_top_level|Inst_HEX_to_ASCII_1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_1|Mux4~0_combout\ = (\Inst_top_level|data_muxed[6]~14_combout\ & ((\Inst_top_level|data_muxed[5]~13_combout\) # ((\Inst_top_level|data_muxed[4]~12_combout\) # (!\Inst_top_level|data_muxed[7]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[6]~14_combout\,
	datab => \Inst_top_level|data_muxed[5]~13_combout\,
	datac => \Inst_top_level|data_muxed[4]~12_combout\,
	datad => \Inst_top_level|data_muxed[7]~15_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_HEX_to_ASCII_0|Mux4~0_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_HEX_to_ASCII_1|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux4~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux4~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\);

-- Location: LCCOMB_X19_Y13_N18
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux4~0_combout\ = (\Inst_top_level|Mux1~0_combout\ & (((\Inst_top_level|Mux3~0_combout\) # (\Inst_top_level|Mux2~0_combout\)) # (!\Inst_top_level|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux1~0_combout\,
	datab => \Inst_top_level|Mux0~0_combout\,
	datac => \Inst_top_level|Mux3~0_combout\,
	datad => \Inst_top_level|Mux2~0_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y10_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_HEX_to_ASCII_5|Mux4~0_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux4~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\);

-- Location: LCCOMB_X19_Y10_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux5~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~15_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\ & (((!\Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) $ (\Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~15_combout\);

-- Location: LCCOMB_X19_Y10_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux5~13_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~14_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\);

-- Location: LCCOMB_X19_Y10_N16
\Inst_top_level|Inst_LCD_User_Logic|Mux5~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~17_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux5~15_combout\ & ((!\Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux5~15_combout\ & (\Inst_top_level|Inst_HEX_to_ASCII_4|Mux4~0_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- (((\Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux4~0_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux5~15_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~16_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~17_combout\);

-- Location: LCCOMB_X19_Y10_N8
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[2]~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux5~17_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux5~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux5~12_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~17_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[2]~2_combout\);

-- Location: LCCOMB_X23_Y13_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5)) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~4_combout\);

-- Location: LCCOMB_X23_Y13_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~3_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # 
-- ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~3_combout\);

-- Location: LCCOMB_X23_Y13_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux5~18_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (\Inst_top_level|Inst_LCD_User_Logic|Mux5~4_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux5~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux5~4_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~3_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux5~18_combout\);

-- Location: FF_X19_Y10_N9
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[2]~2_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Mux5~18_combout\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(2));

-- Location: LCCOMB_X17_Y13_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & 
-- ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\);

-- Location: LCCOMB_X17_Y13_N20
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[3]~3_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux4~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux4~17_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[3]~3_combout\);

-- Location: LCCOMB_X17_Y13_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux0~0_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux0~0_combout\);

-- Location: LCCOMB_X17_Y13_N16
\Inst_top_level|Inst_LCD_User_Logic|Mux4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~10_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux0~0_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux0~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~10_combout\);

-- Location: LCCOMB_X20_Y13_N0
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~0_combout\ = (\Inst_top_level|Inst_system_controller|address_out\(7) & (!\Inst_top_level|Inst_system_controller|address_out\(5) & !\Inst_top_level|Inst_system_controller|address_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_system_controller|address_out\(7),
	datac => \Inst_top_level|Inst_system_controller|address_out\(5),
	datad => \Inst_top_level|Inst_system_controller|address_out\(6),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y13_N4
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1_combout\ = (\Inst_top_level|Inst_Address_Counter|address_int\(31) & (!\Inst_top_level|Inst_Address_Counter|address_int\(29) & !\Inst_top_level|Inst_Address_Counter|address_int\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(31),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(29),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(30),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y13_N12
\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~2_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1_combout\)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1_combout\))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~1_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y13_N0
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~0_combout\ = (!\Inst_top_level|Inst_system_controller|address_out\(1) & (\Inst_top_level|Inst_system_controller|address_out\(3) & !\Inst_top_level|Inst_system_controller|address_out\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_out\(1),
	datac => \Inst_top_level|Inst_system_controller|address_out\(3),
	datad => \Inst_top_level|Inst_system_controller|address_out\(2),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y11_N30
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1_combout\ = (!\Inst_top_level|Inst_Address_Counter|address_int\(26) & (\Inst_top_level|Inst_Address_Counter|address_int\(27) & !\Inst_top_level|Inst_Address_Counter|address_int\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(26),
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(27),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(25),
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1_combout\);

-- Location: LCCOMB_X19_Y13_N16
\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~2_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1_combout\)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1_combout\))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~0_combout\,
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~1_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y10_N18
\Inst_top_level|Inst_HEX_to_ASCII_1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_1|Mux3~0_combout\ = (!\Inst_top_level|data_muxed[5]~13_combout\ & (!\Inst_top_level|data_muxed[6]~14_combout\ & \Inst_top_level|data_muxed[7]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|data_muxed[5]~13_combout\,
	datac => \Inst_top_level|data_muxed[6]~14_combout\,
	datad => \Inst_top_level|data_muxed[7]~15_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y10_N26
\Inst_top_level|Inst_HEX_to_ASCII_0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_0|Mux3~0_combout\ = (\Inst_top_level|data_muxed[3]~11_combout\ & (!\Inst_top_level|data_muxed[1]~9_combout\ & !\Inst_top_level|data_muxed[2]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|data_muxed[3]~11_combout\,
	datac => \Inst_top_level|data_muxed[1]~9_combout\,
	datad => \Inst_top_level|data_muxed[2]~10_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux3~0_combout\);

-- Location: LCCOMB_X17_Y13_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_HEX_to_ASCII_0|Mux3~0_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_HEX_to_ASCII_1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux3~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux3~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\);

-- Location: LCCOMB_X17_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~13_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\ & ((\Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~2_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\ & (\Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~2_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (((\Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_HEX_to_ASCII_5|Mux3~2_combout\,
	datac => \Inst_top_level|Inst_HEX_to_ASCII_4|Mux3~2_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux4~12_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~13_combout\);

-- Location: LCCOMB_X17_Y13_N8
\Inst_top_level|Inst_LCD_User_Logic|Mux4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux4~11_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|Mux4~13_combout\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux4~11_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux4~13_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~14_combout\);

-- Location: LCCOMB_X17_Y13_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) $ 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) $ ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~8_combout\);

-- Location: LCCOMB_X18_Y10_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~6_combout\ = (!\Inst_top_level|data_muxed[10]~5_combout\ & (!\Inst_top_level|data_muxed[9]~6_combout\ & (\Inst_top_level|data_muxed[11]~4_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[10]~5_combout\,
	datab => \Inst_top_level|data_muxed[9]~6_combout\,
	datac => \Inst_top_level|data_muxed[11]~4_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~6_combout\);

-- Location: LCCOMB_X18_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~5_combout\ = (!\Inst_top_level|data_muxed[13]~2_combout\ & (!\Inst_top_level|data_muxed[14]~1_combout\ & (\Inst_top_level|data_muxed[15]~0_combout\ & \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[13]~2_combout\,
	datab => \Inst_top_level|data_muxed[14]~1_combout\,
	datac => \Inst_top_level|data_muxed[15]~0_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux5~7_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~5_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Inst_top_level|Inst_LCD_User_Logic|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~7_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|Mux4~6_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux4~6_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux4~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~7_combout\);

-- Location: LCCOMB_X17_Y13_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~9_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux4~7_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~8_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & !\Inst_top_level|Inst_LCD_User_Logic|Mux4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux4~8_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux4~7_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~9_combout\);

-- Location: LCCOMB_X17_Y13_N14
\Inst_top_level|Inst_LCD_User_Logic|Mux4~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux4~15_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux4~10_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|Mux4~14_combout\)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (((\Inst_top_level|Inst_LCD_User_Logic|Mux4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux4~10_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux4~14_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux4~9_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux4~15_combout\);

-- Location: FF_X17_Y13_N21
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[3]~3_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Mux4~15_combout\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_byteSel\(4),
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(3));

-- Location: LCCOMB_X21_Y13_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~9_combout\ = ((!\Inst_top_level|Inst_system_controller|address_out\(1) & !\Inst_top_level|Inst_system_controller|address_out\(2))) # (!\Inst_top_level|Inst_system_controller|address_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|address_out\(3),
	datac => \Inst_top_level|Inst_system_controller|address_out\(1),
	datad => \Inst_top_level|Inst_system_controller|address_out\(2),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~9_combout\);

-- Location: LCCOMB_X21_Y11_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~10_combout\ = ((!\Inst_top_level|Inst_Address_Counter|address_int\(26) & !\Inst_top_level|Inst_Address_Counter|address_int\(25))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_Address_Counter|address_int\(26),
	datac => \Inst_top_level|Inst_Address_Counter|address_int\(25),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(27),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~10_combout\);

-- Location: LCCOMB_X21_Y13_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_LCD_User_Logic|Mux3~10_combout\)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~10_combout\))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_LCD_User_Logic|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux3~9_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~10_combout\,
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\);

-- Location: LCCOMB_X20_Y11_N28
\Inst_top_level|Inst_Address_Counter|address_int[31]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_Address_Counter|address_int[31]~88_combout\ = \Inst_top_level|Inst_Address_Counter|address_int[30]~87\ $ (\Inst_top_level|Inst_Address_Counter|address_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(31),
	cin => \Inst_top_level|Inst_Address_Counter|address_int[30]~87\,
	combout => \Inst_top_level|Inst_Address_Counter|address_int[31]~88_combout\);

-- Location: FF_X20_Y11_N29
\Inst_top_level|Inst_Address_Counter|address_int[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_Address_Counter|address_int[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_Address_Counter|address_int\(31));

-- Location: LCCOMB_X20_Y13_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~13_combout\ = ((!\Inst_top_level|Inst_Address_Counter|address_int\(30) & !\Inst_top_level|Inst_Address_Counter|address_int\(29))) # (!\Inst_top_level|Inst_Address_Counter|address_int\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_Address_Counter|address_int\(30),
	datac => \Inst_top_level|Inst_Address_Counter|address_int\(31),
	datad => \Inst_top_level|Inst_Address_Counter|address_int\(29),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~13_combout\);

-- Location: LCCOMB_X20_Y13_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\ = (\Inst_top_level|Inst_system_controller|speed_sel\(0) & (((\Inst_top_level|Inst_LCD_User_Logic|Mux3~13_combout\)))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(0) & 
-- ((\Inst_top_level|Inst_system_controller|speed_sel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~13_combout\))) # (!\Inst_top_level|Inst_system_controller|speed_sel\(1) & (\Inst_top_level|Inst_LCD_User_Logic|Mux3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux3~12_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux3~13_combout\,
	datac => \Inst_top_level|Inst_system_controller|speed_sel\(0),
	datad => \Inst_top_level|Inst_system_controller|speed_sel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\);

-- Location: LCCOMB_X21_Y13_N14
\Inst_top_level|Inst_LCD_User_Logic|Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~15_combout\ = ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~15_combout\);

-- Location: LCCOMB_X19_Y10_N0
\Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\ = (\Inst_top_level|data_muxed[15]~0_combout\ & ((\Inst_top_level|data_muxed[13]~2_combout\) # (\Inst_top_level|data_muxed[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[15]~0_combout\,
	datac => \Inst_top_level|data_muxed[13]~2_combout\,
	datad => \Inst_top_level|data_muxed[14]~1_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y10_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (!\Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((!\Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\);

-- Location: LCCOMB_X16_Y10_N28
\Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\ = ((!\Inst_top_level|data_muxed[5]~13_combout\ & !\Inst_top_level|data_muxed[6]~14_combout\)) # (!\Inst_top_level|data_muxed[7]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|data_muxed[5]~13_combout\,
	datac => \Inst_top_level|data_muxed[6]~14_combout\,
	datad => \Inst_top_level|data_muxed[7]~15_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y10_N16
\Inst_top_level|Inst_LCD_User_Logic|Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~17_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\ & (\Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\ & ((\Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (((\Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~16_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~17_combout\);

-- Location: LCCOMB_X20_Y10_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|Mux3~15_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~15_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~17_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\);

-- Location: LCCOMB_X21_Y12_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~22_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~22_combout\);

-- Location: LCCOMB_X21_Y12_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux3~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~23_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & \Inst_top_level|Inst_LCD_User_Logic|Mux3~22_combout\)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~22_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~22_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~23_combout\);

-- Location: LCCOMB_X20_Y10_N8
\Inst_top_level|Inst_LCD_User_Logic|Mux3~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~19_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux3~23_combout\ & (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)) # (\Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~23_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~19_combout\);

-- Location: LCCOMB_X24_Y13_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) $ ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~5_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~4_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux3~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~21_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|Mux3~5_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~5_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~4_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~21_combout\);

-- Location: LCCOMB_X21_Y12_N28
\Inst_top_level|Inst_LCD_User_Logic|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~8_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux3~21_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux3~7_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~21_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~8_combout\);

-- Location: LCCOMB_X20_Y10_N26
\Inst_top_level|Inst_LCD_User_Logic|Mux3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~20_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux3~8_combout\) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux3~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~19_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux3~20_combout\);

-- Location: FF_X20_Y10_N27
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Mux3~20_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(4));

-- Location: LCCOMB_X21_Y12_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~18_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & 
-- \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~18_combout\);

-- Location: LCCOMB_X21_Y12_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~19_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux2~18_combout\) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux2~18_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~19_combout\);

-- Location: LCCOMB_X21_Y12_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~15_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|Mux2~17_combout\)) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux2~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux2~17_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux2~19_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~15_combout\);

-- Location: LCCOMB_X21_Y10_N12
\Inst_top_level|Inst_LCD_User_Logic|Mux2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~11_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~11_combout\);

-- Location: LCCOMB_X21_Y10_N22
\Inst_top_level|Inst_LCD_User_Logic|Mux2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~12_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~12_combout\);

-- Location: LCCOMB_X20_Y10_N10
\Inst_top_level|Inst_LCD_User_Logic|Mux2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~13_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux2~12_combout\ & (((\Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux2~12_combout\ & (((\Inst_top_level|Inst_LCD_User_Logic|Mux2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux2~11_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~18_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux2~12_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~13_combout\);

-- Location: LCCOMB_X20_Y10_N24
\Inst_top_level|Inst_LCD_User_Logic|Mux2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~14_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux2~15_combout\) # ((!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux2~15_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux2~13_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux2~14_combout\);

-- Location: FF_X20_Y10_N25
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Mux2~14_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(5));

-- Location: LCCOMB_X21_Y11_N12
\Inst_top_level|Inst_LCD_User_Logic|Mux1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~10_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~10_combout\);

-- Location: LCCOMB_X21_Y11_N6
\Inst_top_level|Inst_LCD_User_Logic|Mux1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~11_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux1~10_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux1~10_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~11_combout\);

-- Location: LCCOMB_X20_Y10_N28
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[6]~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux1~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux4~4_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux1~11_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[6]~4_combout\);

-- Location: LCCOMB_X20_Y10_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~2_combout\);

-- Location: LCCOMB_X19_Y10_N10
\Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\ = (\Inst_top_level|data_muxed[11]~4_combout\ & ((\Inst_top_level|data_muxed[10]~5_combout\) # (\Inst_top_level|data_muxed[9]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[11]~4_combout\,
	datac => \Inst_top_level|data_muxed[10]~5_combout\,
	datad => \Inst_top_level|data_muxed[9]~6_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y10_N12
\Inst_top_level|Inst_LCD_User_Logic|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~0_combout\ = ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & 
-- (\Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_3|Mux2~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_2|Mux2~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y10_N6
\Inst_top_level|Inst_LCD_User_Logic|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~1_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6)) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux1~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~1_combout\);

-- Location: LCCOMB_X20_Y10_N14
\Inst_top_level|Inst_LCD_User_Logic|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~3_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux1~1_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & 
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux1~2_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux1~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~3_combout\);

-- Location: LCCOMB_X14_Y10_N24
\Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\ = ((!\Inst_top_level|data_muxed[1]~9_combout\ & !\Inst_top_level|data_muxed[2]~10_combout\)) # (!\Inst_top_level|data_muxed[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|data_muxed[1]~9_combout\,
	datac => \Inst_top_level|data_muxed[3]~11_combout\,
	datad => \Inst_top_level|data_muxed[2]~10_combout\,
	combout => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y10_N4
\Inst_top_level|Inst_LCD_User_Logic|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # ((!\Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\)))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((!\Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datac => \Inst_top_level|Inst_HEX_to_ASCII_0|Mux2~0_combout\,
	datad => \Inst_top_level|Inst_HEX_to_ASCII_1|Mux2~0_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\);

-- Location: LCCOMB_X20_Y10_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\ & ((!\Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux1~4_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux3~14_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux3~11_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~5_combout\);

-- Location: LCCOMB_X20_Y10_N20
\Inst_top_level|Inst_LCD_User_Logic|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~8_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux1~5_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & (\Inst_top_level|Inst_LCD_User_Logic|Mux1~7_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|Mux1~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux1~7_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux1~5_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~8_combout\);

-- Location: LCCOMB_X20_Y10_N30
\Inst_top_level|Inst_LCD_User_Logic|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux1~9_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux1~3_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & \Inst_top_level|Inst_LCD_User_Logic|Mux1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux1~3_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux1~8_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux1~9_combout\);

-- Location: FF_X20_Y10_N29
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[6]~4_combout\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Mux1~9_combout\,
	sload => \Inst_top_level|Inst_LCD_User_Logic|ALT_INV_byteSel\(4),
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(6));

-- Location: LCCOMB_X24_Y12_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux0~2_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) & \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux0~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1)) # (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3) $ (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
\Inst_top_level|Inst_LCD_User_Logic|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux0~3_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux0~2_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux0~1_combout\)))) # (!\Inst_top_level|Inst_LCD_User_Logic|Mux0~2_combout\ & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux0~2_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux0~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y12_N12
\Inst_top_level|Inst_LCD_User_Logic|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux0~4_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux0~3_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) $ (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux0~3_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux0~4_combout\);

-- Location: FF_X24_Y12_N13
\Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Mux0~4_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|currentByte_wr\(7));

-- Location: LCCOMB_X14_Y10_N2
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[0]~feeder_combout\ = \Inst_top_level|data_muxed[0]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|data_muxed[0]~8_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[0]~feeder_combout\);

-- Location: FF_X14_Y10_N3
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[0]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(0));

-- Location: LCCOMB_X13_Y10_N16
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(0),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N30
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\ = (\Inst_top_level|Inst_system_controller|SRAM_valid_int~q\ & (!\Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\ & (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\ & 
-- !\Inst_top_level|reset_h~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_system_controller|SRAM_valid_int~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|cont_rw_reg~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datad => \Inst_top_level|reset_h~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\);

-- Location: FF_X13_Y10_N17
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(0));

-- Location: FF_X14_Y10_N23
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|data_muxed[1]~9_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(1));

-- Location: LCCOMB_X13_Y10_N2
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[1]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(1),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[1]~feeder_combout\);

-- Location: FF_X13_Y10_N3
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[1]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(1));

-- Location: FF_X14_Y10_N19
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|data_muxed[2]~10_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(2));

-- Location: LCCOMB_X13_Y10_N28
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[2]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(2),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[2]~feeder_combout\);

-- Location: FF_X13_Y10_N29
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[2]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(2));

-- Location: LCCOMB_X14_Y11_N16
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[3]~feeder_combout\ = \Inst_top_level|data_muxed[3]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|data_muxed[3]~11_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[3]~feeder_combout\);

-- Location: FF_X14_Y11_N17
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[3]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(3));

-- Location: LCCOMB_X13_Y11_N4
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[3]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(3),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[3]~feeder_combout\);

-- Location: FF_X13_Y11_N5
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[3]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(3));

-- Location: FF_X16_Y10_N1
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|data_muxed[4]~12_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(4));

-- Location: LCCOMB_X13_Y10_N30
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[4]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(4),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[4]~feeder_combout\);

-- Location: FF_X13_Y10_N31
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[4]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(4));

-- Location: FF_X16_Y10_N15
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|data_muxed[5]~13_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(5));

-- Location: LCCOMB_X13_Y10_N0
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[5]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(5),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[5]~feeder_combout\);

-- Location: FF_X13_Y10_N1
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[5]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(5));

-- Location: FF_X16_Y10_N31
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|data_muxed[6]~14_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(6));

-- Location: LCCOMB_X13_Y10_N22
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[6]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(6),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[6]~feeder_combout\);

-- Location: FF_X13_Y10_N23
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[6]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(6));

-- Location: FF_X16_Y10_N11
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|data_muxed[7]~15_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(7));

-- Location: LCCOMB_X13_Y10_N12
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[7]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(7),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[7]~feeder_combout\);

-- Location: FF_X13_Y10_N13
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[7]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(7));

-- Location: FF_X16_Y11_N1
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|data_muxed[8]~7_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(8));

-- Location: LCCOMB_X13_Y11_N2
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[8]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(8),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[8]~feeder_combout\);

-- Location: FF_X13_Y11_N3
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[8]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(8));

-- Location: LCCOMB_X16_Y11_N18
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[9]~feeder_combout\ = \Inst_top_level|data_muxed[9]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|data_muxed[9]~6_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[9]~feeder_combout\);

-- Location: FF_X16_Y11_N19
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[9]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(9));

-- Location: LCCOMB_X13_Y11_N28
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[9]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(9),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[9]~feeder_combout\);

-- Location: FF_X13_Y11_N29
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[9]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(9));

-- Location: LCCOMB_X21_Y11_N22
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[10]~feeder_combout\ = \Inst_top_level|data_muxed[10]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|data_muxed[10]~5_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[10]~feeder_combout\);

-- Location: FF_X21_Y11_N23
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[10]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(10));

-- Location: LCCOMB_X13_Y11_N10
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[10]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(10),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[10]~feeder_combout\);

-- Location: FF_X13_Y11_N11
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[10]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(10));

-- Location: LCCOMB_X16_Y10_N2
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[11]~feeder_combout\ = \Inst_top_level|data_muxed[11]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|data_muxed[11]~4_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[11]~feeder_combout\);

-- Location: FF_X16_Y10_N3
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[11]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(11));

-- Location: LCCOMB_X13_Y10_N10
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[11]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(11),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[11]~feeder_combout\);

-- Location: FF_X13_Y10_N11
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[11]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(11));

-- Location: LCCOMB_X14_Y11_N6
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[12]~feeder_combout\ = \Inst_top_level|data_muxed[12]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|data_muxed[12]~3_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[12]~feeder_combout\);

-- Location: FF_X14_Y11_N7
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[12]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(12));

-- Location: LCCOMB_X14_Y11_N18
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[12]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(12),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[12]~feeder_combout\);

-- Location: FF_X14_Y11_N19
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[12]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(12));

-- Location: FF_X17_Y11_N11
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|data_muxed[13]~2_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(13));

-- Location: LCCOMB_X13_Y11_N24
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[13]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(13),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[13]~feeder_combout\);

-- Location: FF_X13_Y11_N25
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[13]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(13));

-- Location: FF_X16_Y11_N13
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|data_muxed[14]~1_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(14));

-- Location: LCCOMB_X14_Y11_N4
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[14]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(14),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[14]~feeder_combout\);

-- Location: FF_X14_Y11_N5
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[14]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(14));

-- Location: LCCOMB_X16_Y11_N26
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|cont_io_in[15]~feeder_combout\ = \Inst_top_level|data_muxed[15]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Inst_top_level|data_muxed[15]~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[15]~feeder_combout\);

-- Location: FF_X16_Y11_N27
\Inst_top_level|Inst_SRAM_Controller|cont_io_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|cont_io_in[15]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(15));

-- Location: LCCOMB_X13_Y11_N22
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_io_out[15]~feeder_combout\ = \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Inst_top_level|Inst_SRAM_Controller|cont_io_in\(15),
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[15]~feeder_combout\);

-- Location: FF_X13_Y11_N23
\Inst_top_level|Inst_SRAM_Controller|sram_io_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[15]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_io_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_io_out\(15));

-- Location: LCCOMB_X27_Y11_N12
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~1_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\ & \Inst_top_level|Inst_LCD_User_Logic|ena~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|ena~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~1_combout\);

-- Location: FF_X27_Y11_N13
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~1_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.one~q\);

-- Location: FF_X27_Y11_N7
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.one~q\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.zero~q\);

-- Location: LCCOMB_X27_Y11_N10
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector1~0_combout\ = (!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.zero~q\ & ((\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|ena~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.zero~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|ena~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector1~0_combout\);

-- Location: FF_X27_Y11_N11
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector1~0_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\);

-- Location: LCCOMB_X27_Y11_N22
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.one~q\) # ((!\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\ & 
-- \Inst_top_level|Inst_LCD_User_Logic|ena~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.one~q\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|state.idle~q\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|ena~q\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~0_combout\);

-- Location: FF_X27_Y11_N23
\Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|Selector0~0_combout\,
	clrn => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	ena => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|clk_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_LCD_User_Logic|Inst_LCD_Transmitter|en~q\);

-- Location: LCCOMB_X17_Y10_N14
\Inst_top_level|Inst_LCD_User_Logic|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~0_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2)))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(1) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(2) $ ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(2),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(1),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(3),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y12_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4) $ (((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & 
-- !\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y10_N0
\Inst_top_level|Inst_LCD_User_Logic|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(6) & ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(0)) # ((\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5)) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(0),
	datab => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(4),
	datad => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(6),
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\);

-- Location: LCCOMB_X21_Y10_N8
\Inst_top_level|Inst_LCD_User_Logic|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~5_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\))) # 
-- (!\Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\) # (!\Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\))))) # (!\Inst_top_level|Inst_LCD_User_Logic|byteSel\(5) & 
-- ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\ & ((!\Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\))) # (!\Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\ & ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\) # 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux8~2_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|byteSel\(5),
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~5_combout\);

-- Location: LCCOMB_X21_Y10_N18
\Inst_top_level|Inst_LCD_User_Logic|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_LCD_User_Logic|Mux8~6_combout\ = (\Inst_top_level|Inst_LCD_User_Logic|Mux8~5_combout\) # ((\Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\ & (\Inst_top_level|Inst_LCD_User_Logic|Mux8~0_combout\ $ 
-- (\Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_LCD_User_Logic|Mux8~0_combout\,
	datab => \Inst_top_level|Inst_LCD_User_Logic|Mux8~1_combout\,
	datac => \Inst_top_level|Inst_LCD_User_Logic|Mux8~5_combout\,
	datad => \Inst_top_level|Inst_LCD_User_Logic|Mux8~3_combout\,
	combout => \Inst_top_level|Inst_LCD_User_Logic|Mux8~6_combout\);

-- Location: FF_X17_Y11_N9
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux7~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(0));

-- Location: LCCOMB_X16_Y11_N16
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[1]~feeder_combout\ = \Inst_top_level|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux6~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[1]~feeder_combout\);

-- Location: FF_X16_Y11_N17
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[1]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(1));

-- Location: FF_X20_Y11_N31
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \Inst_top_level|Mux5~0_combout\,
	sload => VCC,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(2));

-- Location: LCCOMB_X16_Y11_N22
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[3]~feeder_combout\ = \Inst_top_level|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Mux4~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[3]~feeder_combout\);

-- Location: FF_X16_Y11_N23
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[3]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(3));

-- Location: LCCOMB_X16_Y11_N24
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[4]~feeder_combout\ = \Inst_top_level|Mux3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux3~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[4]~feeder_combout\);

-- Location: FF_X16_Y11_N25
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[4]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(4));

-- Location: LCCOMB_X16_Y11_N14
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[5]~feeder_combout\ = \Inst_top_level|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux2~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[5]~feeder_combout\);

-- Location: FF_X16_Y11_N15
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[5]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(5));

-- Location: LCCOMB_X16_Y11_N4
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[6]~feeder_combout\ = \Inst_top_level|Mux1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Inst_top_level|Mux1~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[6]~feeder_combout\);

-- Location: FF_X16_Y11_N5
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[6]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(6));

-- Location: LCCOMB_X16_Y11_N10
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[7]~feeder_combout\ = \Inst_top_level|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Mux0~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[7]~feeder_combout\);

-- Location: FF_X16_Y11_N11
\Inst_top_level|Inst_SRAM_Controller|sram_address_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[7]~feeder_combout\,
	ena => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_address_reg\(7));

-- Location: LCCOMB_X29_Y11_N28
\Inst_top_level|Inst_SRAM_Controller|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector16~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\) # ((\Inst_top_level|Inst_SRAM_Controller|sram_we_n~q\ & ((\Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\) # 
-- (\Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|sram_we_n~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.read1~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector16~0_combout\);

-- Location: LCCOMB_X29_Y11_N24
\Inst_top_level|Inst_SRAM_Controller|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector16~1_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\) # ((\Inst_top_level|Inst_SRAM_Controller|Selector16~0_combout\) # (!\Inst_top_level|Inst_SRAM_Controller|next_state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|Selector16~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector16~1_combout\);

-- Location: FF_X29_Y11_N25
\Inst_top_level|Inst_SRAM_Controller|sram_we_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|Selector16~1_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_we_n~q\);

-- Location: LCCOMB_X29_Y11_N2
\Inst_top_level|Inst_SRAM_Controller|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector17~0_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\) # ((\Inst_top_level|Inst_SRAM_Controller|sram_oe_n~q\ & ((\Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\) # 
-- (\Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|sram_oe_n~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.read2~q\,
	datac => \Inst_top_level|Inst_SRAM_Controller|next_state.write1~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|next_state.write2~q\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector17~0_combout\);

-- Location: LCCOMB_X29_Y11_N22
\Inst_top_level|Inst_SRAM_Controller|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Inst_top_level|Inst_SRAM_Controller|Selector17~1_combout\ = (\Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\) # ((\Inst_top_level|Inst_SRAM_Controller|Selector17~0_combout\) # (!\Inst_top_level|Inst_SRAM_Controller|next_state.init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_top_level|Inst_SRAM_Controller|next_state.ready~q\,
	datab => \Inst_top_level|Inst_SRAM_Controller|next_state.init~q\,
	datad => \Inst_top_level|Inst_SRAM_Controller|Selector17~0_combout\,
	combout => \Inst_top_level|Inst_SRAM_Controller|Selector17~1_combout\);

-- Location: FF_X29_Y11_N23
\Inst_top_level|Inst_SRAM_Controller|sram_oe_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \Inst_top_level|Inst_SRAM_Controller|Selector17~1_combout\,
	ena => \Inst_top_level|ALT_INV_reset_h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_top_level|Inst_SRAM_Controller|sram_oe_n~q\);

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: IOIBUF_X102_Y0_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: IOIBUF_X96_Y0_N15
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: IOIBUF_X65_Y0_N22
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\LCD_DATA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(0),
	o => \LCD_DATA[0]~input_o\);

-- Location: IOIBUF_X0_Y44_N8
\LCD_DATA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(1),
	o => \LCD_DATA[1]~input_o\);

-- Location: IOIBUF_X0_Y44_N1
\LCD_DATA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(2),
	o => \LCD_DATA[2]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\LCD_DATA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(3),
	o => \LCD_DATA[3]~input_o\);

-- Location: IOIBUF_X0_Y54_N8
\LCD_DATA[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(4),
	o => \LCD_DATA[4]~input_o\);

-- Location: IOIBUF_X0_Y55_N22
\LCD_DATA[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(5),
	o => \LCD_DATA[5]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\LCD_DATA[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(6),
	o => \LCD_DATA[6]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\LCD_DATA[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => LCD_DATA(7),
	o => \LCD_DATA[7]~input_o\);

ww_LCD_ON <= \LCD_ON~output_o\;

ww_LCD_BLON <= \LCD_BLON~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_SRAM_ADDR(0) <= \SRAM_ADDR[0]~output_o\;

ww_SRAM_ADDR(1) <= \SRAM_ADDR[1]~output_o\;

ww_SRAM_ADDR(2) <= \SRAM_ADDR[2]~output_o\;

ww_SRAM_ADDR(3) <= \SRAM_ADDR[3]~output_o\;

ww_SRAM_ADDR(4) <= \SRAM_ADDR[4]~output_o\;

ww_SRAM_ADDR(5) <= \SRAM_ADDR[5]~output_o\;

ww_SRAM_ADDR(6) <= \SRAM_ADDR[6]~output_o\;

ww_SRAM_ADDR(7) <= \SRAM_ADDR[7]~output_o\;

ww_SRAM_ADDR(8) <= \SRAM_ADDR[8]~output_o\;

ww_SRAM_ADDR(9) <= \SRAM_ADDR[9]~output_o\;

ww_SRAM_ADDR(10) <= \SRAM_ADDR[10]~output_o\;

ww_SRAM_ADDR(11) <= \SRAM_ADDR[11]~output_o\;

ww_SRAM_ADDR(12) <= \SRAM_ADDR[12]~output_o\;

ww_SRAM_ADDR(13) <= \SRAM_ADDR[13]~output_o\;

ww_SRAM_ADDR(14) <= \SRAM_ADDR[14]~output_o\;

ww_SRAM_ADDR(15) <= \SRAM_ADDR[15]~output_o\;

ww_SRAM_ADDR(16) <= \SRAM_ADDR[16]~output_o\;

ww_SRAM_ADDR(17) <= \SRAM_ADDR[17]~output_o\;

ww_SRAM_ADDR(18) <= \SRAM_ADDR[18]~output_o\;

ww_SRAM_ADDR(19) <= \SRAM_ADDR[19]~output_o\;

ww_SRAM_UB_N <= \SRAM_UB_N~output_o\;

ww_SRAM_LB_N <= \SRAM_LB_N~output_o\;

ww_SRAM_WE_N <= \SRAM_WE_N~output_o\;

ww_SRAM_CE_N <= \SRAM_CE_N~output_o\;

ww_SRAM_OE_N <= \SRAM_OE_N~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;

GPIO(13) <= \GPIO[13]~output_o\;

GPIO(14) <= \GPIO[14]~output_o\;

GPIO(15) <= \GPIO[15]~output_o\;

GPIO(16) <= \GPIO[16]~output_o\;

GPIO(17) <= \GPIO[17]~output_o\;

GPIO(18) <= \GPIO[18]~output_o\;

GPIO(19) <= \GPIO[19]~output_o\;

GPIO(20) <= \GPIO[20]~output_o\;

GPIO(21) <= \GPIO[21]~output_o\;

GPIO(22) <= \GPIO[22]~output_o\;

GPIO(23) <= \GPIO[23]~output_o\;

GPIO(24) <= \GPIO[24]~output_o\;

GPIO(25) <= \GPIO[25]~output_o\;

GPIO(26) <= \GPIO[26]~output_o\;

GPIO(27) <= \GPIO[27]~output_o\;

GPIO(28) <= \GPIO[28]~output_o\;

GPIO(29) <= \GPIO[29]~output_o\;

GPIO(30) <= \GPIO[30]~output_o\;

GPIO(31) <= \GPIO[31]~output_o\;

GPIO(32) <= \GPIO[32]~output_o\;

GPIO(33) <= \GPIO[33]~output_o\;

GPIO(34) <= \GPIO[34]~output_o\;

GPIO(35) <= \GPIO[35]~output_o\;

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

SRAM_DQ(0) <= \SRAM_DQ[0]~output_o\;

SRAM_DQ(1) <= \SRAM_DQ[1]~output_o\;

SRAM_DQ(2) <= \SRAM_DQ[2]~output_o\;

SRAM_DQ(3) <= \SRAM_DQ[3]~output_o\;

SRAM_DQ(4) <= \SRAM_DQ[4]~output_o\;

SRAM_DQ(5) <= \SRAM_DQ[5]~output_o\;

SRAM_DQ(6) <= \SRAM_DQ[6]~output_o\;

SRAM_DQ(7) <= \SRAM_DQ[7]~output_o\;

SRAM_DQ(8) <= \SRAM_DQ[8]~output_o\;

SRAM_DQ(9) <= \SRAM_DQ[9]~output_o\;

SRAM_DQ(10) <= \SRAM_DQ[10]~output_o\;

SRAM_DQ(11) <= \SRAM_DQ[11]~output_o\;

SRAM_DQ(12) <= \SRAM_DQ[12]~output_o\;

SRAM_DQ(13) <= \SRAM_DQ[13]~output_o\;

SRAM_DQ(14) <= \SRAM_DQ[14]~output_o\;

SRAM_DQ(15) <= \SRAM_DQ[15]~output_o\;
END structure;


