library ieee;
use ieee.std_logic_1164.all;

library work;

entity top_level is
	--GENERIC
	--PORTS
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
end top_level;

architecture behavioral of top_level is
	--General Signals
	signal reset_h : std_logic := '0';
	signal reset_pulse_h : std_logic;
	signal reset_delay_out : std_logic := '0';
	signal clk_en_op : std_logic;
	
	--Button Signals
	signal pause_pulse : std_logic;
	signal speed_pulse : std_logic;
	signal pwm_pulse : std_logic;
	signal reset_pulse : std_logic;
	signal reset_debounced : std_logic;
	
	--Data Sgnals
	signal data_ascii : std_logic_vector(31 downto 0);
	signal data_muxed : std_logic_vector(15 downto 0);
	signal ROM_data : std_logic_vector(15 downto 0);
	signal SRAM_data : std_logic_vector(15 downto 0);
	
	--Address Signals
	signal addr_ascii : std_logic_vector(15 downto 0);
	signal addr_muxed : std_logic_vector(7  downto 0);
	signal system_address : std_logic_vector(7 downto 0);
	signal counter_address : std_logic_vector(7 downto 0);
	
	--SRAM Signals
	signal SRAM_busy_h : std_logic;
	signal SRAM_rw : std_logic;
	signal SRAM_valid : std_logic;
	signal SYS_data : std_logic_vector(15 downto 0);
	
	--System Signals
	signal speed_sel : std_logic_vector(1 downto 0);
	signal data_sel : std_logic;
	signal byte_start : integer range 0 to 109;
	signal byte_end : integer range 0 to 109;
	signal LCD_en_int : std_logic;
	signal run_PWM : std_logic;
	
	component SRAM_Controller is
		generic(
			IO_WIDTH 			 : integer := 16; --Width of the I/O Datapath
			CONT_ADDRESS_WIDTH : integer := 8   --Width of the input address.  Higher bits filled to 0.
		);
		port(
			--Controller to Rest of System
			cont_i 				: in    std_logic_vector(IO_WIDTH-1 downto 0) := (others => '0'); 				 --Data I
			cont_o            : out   std_logic_vector(IO_WIDTH-1 downto 0) := (others => '0'); --Data O
			cont_address		: in 	  std_logic_vector(CONT_ADDRESS_WIDTH-1 downto 0);  --Address to be accessed
			cont_rw				: in 	  std_logic;													 --Read when 1, Write when 0
			cont_data_valid	: in 	  std_logic;											 		 --Data valid signal, expects single 50 MHz pulse
			
			--Controller outputs to SRAM
			sram_io		   : inout std_logic_vector(IO_WIDTH-1 downto 0) := (others => 'Z'); --Data I/O
			sram_address   : out   std_logic_vector(19 downto 0); 		--Address to be accessed
			sram_we_n		: out   std_logic;									--Write enable, active low
			sram_oe_n		: out   std_logic;									--Output enable, active low
			sram_ub_n		: out   std_logic;									--Upper byte, active low.  Normally tie to gnd
			sram_lb_n		: out   std_logic;									--Lower byte, active low.  Normally tie to gnd
			sram_ce_n		: out   std_logic;									--Chip Enable, active low.  Tie to gnd for DE2-115
			
			--General
			clk		  	   : in 	  std_logic; --Clock signal, 50 MHz
			reset_h 			: in    std_logic; --Active-high reset
			busy_h 			: out   std_logic  --When high the system is busy
		);
	end component;
	
	component ROM1Port is
		port(
			address		: in  std_logic_vector(7 downto 0);
			clock		   : in  std_logic  := '1';
			q	      	: out std_logic_vector(15 downto 0)
		);
	end component;

	component Reset_Delay is	
		 port(
			  signal iCLK : in std_logic;	
			  signal oRESET : out std_logic
				);	
	end component;
		

	component LCD_User_Logic is
		port(
			iClk          : in  std_logic;                     --50 MHz    
			reset         : in  std_logic;
			reset_pulse   : in  std_logic;
			LCD_en        : in  std_logic;                     --a pulse to make the system write to the LCD
		  
			speed_sel     : in  std_logic_vector(1 downto 0);  --60, 120, or 1000 Hz
		  
			byte_start    : in  integer range 0 to 109;         --inclusive start for byteSel
			byte_end      : in  integer range 0 to 109;         --inclusive end for byteSel
		  
			data_ascii    : in  std_logic_vector(31 downto 0); --ASCII character inputs for the 16-bit data
			address_ascii : in  std_logic_vector(15 downto 0); --ASCII character inputs for the 8-bit address

			data          : out std_logic_vector (7 downto 0); --to LCD
			en            : out std_logic;                     --to LCD
			rs            : out std_logic                      --to LCD
		); 
	end component;
	
	component i2c_user_logic is
		port(
			clk      : in    std_logic;                     --clock input
			reset_h  : in    std_logic;                     --active-high reset
			data_hex : in    std_logic_vector(15 downto 0); --the data to display on the seven segments
			
			sda      : inout std_logic;                     --i2c data
			scl      : inout std_logic                      --i2c clock
		);
	end component;
	
	component PWM is
		port(
			--INS
			clk 		: in std_logic;
			reset 	: in std_logic := '0';
			clk_en 	: in std_logic;
			value_i  : in std_logic_vector(15 downto 0);
			
			--OUTS
			pwm_o		: out std_logic
		);
	end component;
	
	component HEX_to_ASCII is
		port(
			--IN
			HEX_i : in std_logic_vector(3 downto 0);
			
			--OUT
			ASCII_o : out std_logic_vector(7 downto 0)
			);
	end component;
	
	component address_counter is
		generic(
			constant FULL_AMOUNT     : integer := 4_294_967_296; --Bottom 24 Bits
			constant OPERATION_SPEED : integer := 12_000;     --12 KHz
			constant CLK_SPEED       : integer := 50_000_000  --50 MHz
		);
		port(
			clk         : in  std_logic;                      --input clock
			speed_sel   : in  std_logic_vector(1 downto 0);   --Select signal for the sine frequency
		
			clk_en_op   : out std_logic;                      --clk_en signal at the given operation speed
			address_out : out std_logic_vector(7 downto 0)    --address to read from the SRAM
		);
	end component;
	
	component system_controller is
		port(
			--General Inputs
			clk          : in    std_logic;                     --50 MHz
			reset_h      : in    std_logic;                     --active-high reset
			pause_btn    : in    std_logic;                     --switch between pause and test states
			pwm_btn      : in    std_logic;                     --switch between Test and PWM
			speed_btn    : in    std_logic;                     --change speeds
			
			--PWM Connections
			run_PWM      : out   std_logic;                     --should the PWM be on
			
			--LCD Connections
			speed_sel    : out   std_logic_vector(1 downto 0);  --ignore, 60, 120, or 1000 hz
			byte_start   : out   integer range 0 to 109;        --starting byte
			byte_end     : out   integer range 0 to 109;        --ending byte
			LCD_en       : out   std_logic;                     --a pulse to write to the LCD
			
			--SRAM Controller Connections
			SRAM_busy_h  : in    std_logic;                     --is the SRAM controller busy?
			data_i       : in    std_logic_vector(15 downto 0); --16-bit data
			data_o       : out   std_logic_vector(15 downto 0); --16-bit data
			data_select  : out   std_logic;                     --data select for multiplexor, 0 is us, 1 is ROM
			address_out  : out   std_logic_vector(7 downto 0);  --8-bit address
			SRAM_rw      : out   std_logic;                     --1 is read, 0 is write
			SRAM_valid   : out   std_logic                      --is our data valid to be computed by the SRAM
		);	
	end component;
	
	component btn_debounce_toggle is
		GENERIC (
			CONSTANT CNTR_MAX : std_logic_vector(15 downto 0) := X"FFFF");
		Port (
			BTN_I 	: in  STD_LOGIC;
			CLK 	   : in  STD_LOGIC;
			BTN_O 	: out  STD_LOGIC;
			pulse_O  : out std_logic;
			TOGGLE_O : out  STD_LOGIC);
	end component;
		
	begin

	Inst_PWM: PWM
		port map(
			clk => clk,
			reset => reset_h,
			clk_en => run_PWM,
			value_i => data_muxed,
			pwm_o => pwm_out 
		);
		
	Inst_HEX_to_ASCII_0: HEX_to_ASCII
		port map(
			HEX_i => data_muxed(3 downto 0),
			ASCII_o => data_ascii(7 downto 0)
		);
		
	Inst_HEX_to_ASCII_1: HEX_to_ASCII
		port map(
			HEX_i => data_muxed(7 downto 4),
			ASCII_o => data_ascii(15 downto 8)
		);
		
	Inst_HEX_to_ASCII_2: HEX_to_ASCII
		port map(
			HEX_i => data_muxed(11 downto 8),
			ASCII_o => data_ascii(23 downto 16)
		);
		
	Inst_HEX_to_ASCII_3: HEX_to_ASCII
		port map(
			HEX_i => data_muxed(15 downto 12),
			ASCII_o => data_ascii(31 downto 24)
		);
		
	Inst_HEX_to_ASCII_4: HEX_to_ASCII
		port map(
			HEX_i => addr_muxed(3 downto 0),
			ASCII_o => addr_ascii(7 downto 0)
		);
		
	Inst_HEX_to_ASCII_5: HEX_to_ASCII
		port map(
			HEX_i => addr_muxed(7 downto 4),
			ASCII_o => addr_ascii(15 downto 8)
		);
		
	Inst_LCD_User_Logic: LCD_User_Logic
		port map( 
			iClk => clk,
			reset => reset_debounced,
			reset_pulse => reset_pulse,
			LCD_en => LCD_en_int,
		  
			speed_sel => speed_sel,
		  
			byte_start => byte_start,
			byte_end => byte_end,
		  
			data_ascii => data_ascii,
			address_ascii => addr_ascii,

			data => lcd_data,
			en => lcd_en,
			rs => lcd_rs
		);
		
	Inst_system_controller: system_controller
		port map(
			clk => clk,
			reset_h => reset_h,
			pause_btn => pause_pulse,
			pwm_btn => pwm_pulse,
			speed_btn => speed_pulse,
			
			--PWM Connections
			run_PWM => run_PWM,
			
			--LCD Connections
			speed_sel => speed_sel,
			byte_start => byte_start,
			byte_end => byte_end,
			LCD_en => LCD_en_int,
			
			--SRAM Controller Connections
			SRAM_busy_h => SRAM_busy_h,
			data_i => SRAM_data,
			data_o => SYS_data, --this should only ever be 0s or mirroring SRAM.  Therefore just ignore totally
			data_select => data_sel,
			address_out => system_address,
			SRAM_rw => SRAM_rw,
			SRAM_valid => SRAM_valid
		);
		
	Inst_i2c_user_logic: i2c_user_logic
		port map(
			clk => clk,
			reset_h => reset_h,
			data_hex => data_muxed,
			
			sda => sda,
			scl => scl
		);
		
	Inst_SRAM_Controller: SRAM_Controller
		port map(
			--Controller to Rest of System
			cont_i => data_muxed,
			cont_o => SRAM_data,
			cont_address => addr_muxed,
			cont_rw => SRAM_rw,
			cont_data_valid => SRAM_valid,
			
			--Controller outputs to SRAM
			sram_io => sram_io,
			sram_address => sram_address,
			sram_we_n => sram_we_n,
			sram_oe_n => sram_oe_n,
			sram_ub_n => sram_ub_n,
			sram_lb_n => sram_lb_n,
			sram_ce_n => sram_ce_n,
			
			--General
			clk => clk,
			reset_h => reset_h,
			busy_h => SRAM_busy_h
		);
	
	Inst_Address_Counter: address_counter
		port map(
			clk => clk,
			speed_sel => speed_sel,
			clk_en_op => clk_en_op,
			address_out	=> counter_address
		);
		
	Inst_ROM1_Port: ROM1Port
		port map(
			address => addr_muxed,
			clock => clk,
			q => ROM_data
		);

	Inst_BTN_Debounce_reset: btn_debounce_toggle
		port map(
			BTN_I => reset,
			CLK => clk,
			BTN_O	=> reset_debounced,
			PULSE_O => reset_pulse,
			TOGGLE_O => open
		);
		
	Inst_BTN_Debounce_pause: btn_debounce_toggle
		port map(
			BTN_I => pause_btn,
			CLK => clk,
			BTN_O	=> open,
			PULSE_O => pause_pulse,
			TOGGLE_O => open
		);
		
	Inst_BTN_Debounce_speed: btn_debounce_toggle
		port map(
			BTN_I => speed_btn,
			CLK => clk,
			BTN_O	=> open,
			PULSE_O => speed_pulse,
			TOGGLE_O => open
		);
		
	Inst_BTN_Debounce_pwm: btn_debounce_toggle
		port map(
			BTN_I => pwm_btn,
			CLK => clk,
			BTN_O	=> open,
			PULSE_O => pwm_pulse,
			TOGGLE_O => open
		);
		
	Inst_Reset_Delay : Reset_Delay
		port map(
			iCLK => clk,
			oRESET => reset_delay_out
		);
	
	--GENERAL CONNECTIONS
	reset_h <= not reset_debounced or reset_delay_out;
	reset_pulse_h <= reset_pulse or reset_delay_out;
		
	--PROCESSES
	Mux1_Process: process(speed_sel, system_address, counter_address) --ADDRESS MULTIPLEXOR
	begin
		case(speed_sel) is
			when "00"   => addr_muxed <= system_address;
			when others => addr_muxed <= counter_address;
		end case;
	end process;

	Mux2_Process: process(data_sel, SRAM_data, ROM_data) --DATA MUTLIPLEXOR
	begin
		case(data_sel) is
			when '0' => data_muxed <= SRAM_data;
			when '1' => data_muxed <= ROM_data;
		end case;
	end process;

--INSTANTIATIONS
--OTHER LOGIC
end behavioral;