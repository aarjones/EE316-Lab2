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
		lcd_data               : out   std_logic(7 downto 0);
		lcd_en                 : out   std_logic; --lcd en signal
		lcd_rs                 : out   std_logic; --lcd rs signal
		
		--SRAM Connections
		sram_io                : inout std_logic_vector(15 downto 0);
		sram_address           : out   std_logic_vector(19 downto 0);
		sram_we_n              : out   std_logic;
		sram_oe_n              : out   std_logic;
		sram_ce_n              : out   std_logic;
		sram_lb_n              : out   std_logic;
		sram_ub_n              : out   std_logic;
		
	);	
end top_level;

architecture behavioral of top_level is
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
	end Reset_Delay;
		
	component LCD_User_Logic is
		 port( iClk  : in std_logic`;                     -- 50 MHz    
				 reset : in std_logic;
				 Data  : out std_logic_vector (7 downto 0); -- to LCD
			    en    : out std_logic;                     --to LCD
			    rs    : out std_logic                      --to LCD
		  ); 
	end component;
		
begin
--INSTANTIATIONS
--SIGNALS
--OTHER LOGIC
end behavioral;