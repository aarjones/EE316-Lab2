LIBRARY ieee;
   USE ieee.std_logic_1164.all;

ENTITY DE2_115 IS
   PORT (	
   --GENERAL
	CLOCK_50    : IN    STD_LOGIC;						-- On Board 50 MHz		      
	KEY         : IN    STD_LOGIC_VECTOR(3 DOWNTO 0);	-- Pushbutton[3:0]
	GPIO       	: INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);	-- GPIO Connection
	
	--LCD
	LCD_ON      : OUT STD_LOGIC;
	LCD_BLON    : OUT STD_LOGIC;
	LCD_EN      : OUT STD_LOGIC;
	LCD_RS      : OUT STD_LOGIC;
	LCD_RW      : OUT STD_LOGIC;
	LCD_DATA    : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);

	--SRAM
	SRAM_DQ     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);	-- SRAM Data bus 16 Bits
	SRAM_ADDR   : OUT   STD_LOGIC_VECTOR(19 DOWNTO 0);	-- SRAM Address bus 20 Bits
	SRAM_UB_N   : OUT   STD_LOGIC;						-- SRAM High-byte Data Mask
	SRAM_LB_N   : OUT   STD_LOGIC;						-- SRAM Low-byte Data Mask
	SRAM_WE_N   : OUT   STD_LOGIC;						-- SRAM Write Enable
	SRAM_CE_N   : OUT   STD_LOGIC;						-- SRAM Chip Enable
	SRAM_OE_N   : OUT   STD_LOGIC						-- SRAM Output Enable                
   );
END DE2_115;

ARCHITECTURE structural OF DE2_115 IS

-- TOP LEVEL COMPONENT

component top_level is
	port(
		--General Inputs
		clk                    : in    std_logic; --50 MHz board clock
		reset                  : in    std_logic; --active-low reset switch, KEY0
		
		--Button Inputs
		pause_btn              : in    std_logic; -- active-low switch, used to go Test-Pause KEY1
		pwm_btn                : in    std_logic; --active-low button, used to go to Test-PWM Gen KEY2
		speed_btn              : in    std_logic; --active-low butotn, used to change playback speed
		
		--General Outputs
		pwm_out                : out   std_logic; --PWM signal
		
		--I2C Outputs
		sda                    : inout std_logic; --I2C data 
		scl                    : inout std_logic; --I2C clock 
		
		--LCD Outputs
		lcd_data               : out   std_logic_vector(7 downto 0);
		lcd_en                 : out   std_logic; --lcd en signal
		lcd_rs                 : out   std_logic; --lcd rs signal
		
		--SRAM Connections
		sram_io                : inout std_logic_vector(15 downto 0);
		sram_address           : out   std_logic_vector(19 downto 0);
		sram_we_n              : out   std_logic;
		sram_oe_n              : out   std_logic;
		sram_ce_n              : out   std_logic;
		sram_lb_n              : out   std_logic;
		sram_ub_n              : out   std_logic		
	);	
end component;

--SIGNALS

BEGIN

LCD_RW <= '0'; --always writing
LCD_BLON <= '1';
LCD_ON <= '1';

-- INSTANTIATION OF THE TOP LEVEL COMPONENT
	Inst_top_level: top_level
		port map(
			clk => CLOCK_50,
			reset => KEY(0),
			pause_btn => KEY(1),
			pwm_btn => KEY(2),
			speed_btn => KEY(3),
			pwm_out => GPIO(2),
			sda => GPIO(1),
			scl => GPIO(0),
			lcd_data => LCD_DATA, 
			lcd_en => LCD_EN,
			lcd_rs => LCD_RS,
			sram_io => SRAM_DQ,
			sram_address => SRAM_ADDR,
			sram_we_n => SRAM_WE_N,
			sram_oe_n => SRAM_OE_N,
			sram_ce_n => SRAM_CE_N,
			sram_lb_n => SRAM_LB_N,
			sram_ub_n => SRAM_UB_N
		);

END structural;