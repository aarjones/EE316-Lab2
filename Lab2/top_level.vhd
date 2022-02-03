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
	component system_controller is
		port(
			--General Inputs
			clk          : in    std_logic;                     --50 MHz
			reset_h      : in    std_logic;                     --active-high reset
			pause_btn    : in    std_logic;                     --switch between pause and test states
			pwm_btn      : in    std_logic;                     --switch between Test and PWM
			speed_btn    : in    std_logic;                     --change speeds
			
			--LCD Connections
			speed_sel    : out   std_logic_vector(1 downto 0);  --ignore, 60, 120, or 1000 hz
			byte_start   : out   integer range 0 to 94;         --starting byte
			byte_end     : out   integer range 0 to 94;         --ending byte
			
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
		  
			speed_sel     : in  std_logic_vector(1 downto 0);  --60, 120, or 1000 Hz
		  
			byte_start    : in  integer range 0 to 94;         --inclusive start for byteSel
			byte_end      : in  integer range 0 to 94;         --inclusive end for byteSel
		  
			data_ascii    : in  std_logic_vector(31 downto 0); --ASCII character inputs for the 16-bit data
			address_ascii : in  std_logic_vector(15 downto 0); --ASCII character inputs for the 8-bit address

			data          : out std_logic_vector (7 downto 0); --to LCD
			en            : out std_logic;                     --to LCD
			rs            : out std_logic                      --to LCD
		); 
	end component;
	
	component btn_debounce_toggle is
		generic (
			constant CNTR_MAX : std_logic_vector(15 downto 0) := X"FFFF");
		 port( 
			BTN_I 	: in  std_logic;
		   CLK 		: in  std_logic;
		   BTN_O 	: out std_logic;
		   pulse_O   :out std_logic;
		   TOGGLE_O : out std_logic
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

--SIGNALS
signal reset_h : std_logic := '0';
signal reset_delay_out : std_logic := '0';	
begin
--GENERAL CONNECTIONS
reset_h <= not reset or reset_delay_out;

--INSTANTIATIONS
--OTHER LOGIC
end behavioral;