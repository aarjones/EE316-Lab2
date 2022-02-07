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
	

	--System Controller Signals
	signal Sys_Clk : std_logic;
	--signal Sys_Clk_En : std_logic; -> open
	--signal Sys_KP : std_logic_vector(4 downto 0); -> open
	signal Sys_Reset_h : std_logic;
	signal Sys_KP_Valid : std_logic;
	signal Sys_SRAM_busy_h : std_logic;
	signal Sys_Mode_Led : std_logic;
	signal Sys_Data_Select : std_logic_vector(1 downto 0);
	signal Sys_Data_i : std_logic_vector(15 downto 0);
	signal Sys_Data : std_logic_vector(15 downto 0);
	signal Sys_Address : std_logic_vector(7 downto 0);
	signal Sys_SRAM_rw : std_logic;
	signal Sys_SRAM_Valid : std_logic;
	
	--Address Counter Signals
	signal Address_Clock : std_logic;
	signal Address_Speed_Sel : std_logic_vector(1 downto 0);
	--signal Address_Clock_En_Op : std_logic; -> open
	signal Counter_Address : std_logic_vector(7 downto 0);
	
	--Rom Signals
	signal Rom_Address : std_logic_vector(7 downto 0);
	signal Rom_Clock : std_logic;
	signal Rom_Data : std_logic_vector(15 downto 0);
	
	--Debouncer SIGNALS
	signal BTN_I : std_logic;
	signal BTN_CLK : std_logic;
	signal BTN_O : std_logic;
	--signal PULSE_O : std_logic; -> open
	signal TOGGLE_O : std_logic;
	
	--Master Signals
	signal Address_Master_o : std_logic_vector(7 downto 0);
	signal Data_Master_o : std_logic_vector(7 downto 0);


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
		
	component LCD_User_Logic is
		 port( iClk  : in std_logic`;                     -- 50 MHz    
				 reset : in std_logic;
				 Data  : out std_logic_vector (7 downto 0); -- to LCD
			    en    : out std_logic;                     --to LCD
			    rs    : out std_logic                      --to LCD
		  ); 
	end component;
	
	component Reset_Delay is	
		 port(
			  signal iCLK : in std_logic;	
			  signal oRESET : out std_logic
				);	
	end component;
	
	component i2c_master is
	  generic(
		 input_clk : INTEGER := 100_000_000; --input clock speed from user logic in Hz
		 bus_clk   : INTEGER := 400_000);   --speed the i2c bus (scl) will run at in Hz
	  port(
		 clk       : IN     STD_LOGIC;                    --system clock
		 reset_n   : IN     STD_LOGIC;                    --active low reset
		 ena       : IN     STD_LOGIC;                    --latch in command
		 addr      : IN     STD_LOGIC_VECTOR(6 DOWNTO 0); --address of target slave
		 rw        : IN     STD_LOGIC;                    --'0' is write, '1' is read
		 data_wr   : IN     STD_LOGIC_VECTOR(7 DOWNTO 0); --data to write to slave
		 busy      : OUT    STD_LOGIC;                    --indicates transaction in progress
		 data_rd   : OUT    STD_LOGIC_VECTOR(7 DOWNTO 0); --data read from slave
		 ack_error : BUFFER STD_LOGIC;                    --flag if improper acknowledge from slave
		 sda       : INOUT  STD_LOGIC;                    --serial data output of i2c bus
		 scl       : INOUT  STD_LOGIC);                   --serial clock output of i2c bus
	end component;
	
	component address_counter is
		generic(
			constant BASE_AMOUNT     : integer := 16_777_215; --Bottom 24 Bits
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
		clk          : in    std_logic;                     --50 MHz
		clk_en_200   : in    std_logic;                     --200 MHz, from keypad
		kp_value     : in    std_logic_vector(4 downto 0);  --HEX value of the keypad
		keypad_valid : in    std_logic;                     --is the keypad value valid?
		reset_h      : in    std_logic;                     --active-high reset
		SRAM_busy_h  : in    std_logic;                     --is the SRAM controller busy?

		mode_LED     : out   std_logic;                     --1 in operation, 0 in programming
		data_select  : out   std_logic_vector(1 downto 0);  --1 is ROM, 0 is manual
		data_i       : in    std_logic_vector(15 downto 0); --16-bit data
		data_o       : out   std_logic_vector(15 downto 0); --16-bit data
		address_out  : out   std_logic_vector(7 downto 0);  --8-bit address
		SRAM_rw      : out   std_logic;                     --1 is read, 0 is write
		SRAM_valid   : out   std_logic                      --is our data valid to be computed by the SRAM
	);
	end component;
	
	component btn_debounce_toggle is
		GENERIC (
			CONSTANT CNTR_MAX : std_logic_vector(15 downto 0) := X"FFFF");
		Port (	BTN_I 	 : in  STD_LOGIC;
				CLK 	 : in  STD_LOGIC;
				BTN_O 	 : out  STD_LOGIC;
				pulse_O  : out std_logic;
				TOGGLE_O : out  STD_LOGIC);
	end component;
		
begin

--INSTANTIATIONS
Inst_System_Controller: system_controller
	port map(
		clk			=> Sys_Clk,
		clk_en_200	=> open,
		kp_value	=> open,
		keypad_valid => Sys_KP_Valid,
		reset_h		=> Sys_Reset_h,
		SRAM_busy_h => Sys_SRAM_busy_h,
		mode_LED	=> Sys_Mode_Led,
		data_select	=> Sys_Data_Select,
		data_i		=> Sys_Data_i,
		data_o		=> Sys_Data,
		address_out	=> Sys_Address, 
		SRAM_rw		=> Sys_SRAM_rw,
		SRAM_valid 	=> Sys_SRAM_Valid
	);

Inst_Address_Counter: address_counter
	port map(
		clk			=> Address_Clock,
		speed_sel	=> Address_Speed_Sel,
		clk_en_op	=> open,
		address_out	=> Counter_Address
	);
	
Inst_ROM1_Port: ROM1Port
	port map(
		address		=> Rom_Address,
		clock		=> Rom_Clock,
		q			=> Rom_Data
	);

Inst_BTN_Debounce: btn_debounce_toggle
	port map(
		BTN_I => open,
		CLK		=> BTN_CLK,
		BTN_O	=> BTN_O,
		PULSE_O	=> open,
		TOGGLE_O => TOGGLE_O
	);
	
--PROCESSES

Mux1_Process: process(Address_Speed_Sel, Sys_Address, Counter_Address)
begin
	case(Address_Speed_Sel) is
		when "00" => Address_Master_o <= Sys_Address;
		when others => Address_Master_o <= Counter_Address;
	end case;
end process;

Mux2_Process: process(Sys_Data_Select, Sys_Data, Rom_Data)
begin
	case (Sys_Data_Select) is
		when '0' => Data_Master_o <= Sys_Data;
		when others => Data_Master_o <= Rom_Data;
	end case;
end process;



--INSTANTIATIONS
--SIGNALS
--OTHER LOGIC
end behavioral;