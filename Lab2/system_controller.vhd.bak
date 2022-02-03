library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity system_controller is
	port(
		clk          : in    std_logic;                     --50 MHz
		reset_h      : in    std_logic;                     --active-high reset
		SRAM_busy_h  : in    std_logic;                     --is the SRAM controller busy?

		data_i       : in    std_logic_vector(15 downto 0); --16-bit data
		data_o       : out   std_logic_vector(15 downto 0); --16-bit data
		data_select  : out   std_logic;                     --data select for multiplexor
		address_out  : out   std_logic_vector(7 downto 0);  --8-bit address
		SRAM_rw      : out   std_logic;                     --1 is read, 0 is write
		SRAM_valid   : out   std_logic                      --is our data valid to be computed by the SRAM
	);
end system_controller;

architecture behavioral of system_controller is
	type stateType is (init, test, pause, pwm60, pwm120, pwm1000);
	
	--For State Machine
	signal state, next_state : stateType                     := init;
	signal ROM_cnt           : integer range 0 to 256        := 0;
	signal address_cnt       : integer range 0 to 255        := 0;
	signal to_increment      : std_logic                     := '0'; --does the ROM need to be incremented
	signal SRAM_rw_int       : std_logic                     := '0'; --0 is write, 1 is read
	signal SRAM_valid_int    : std_logic;                            --is the SRAM_io valid?
	
	begin
	
	state <= next_state;
	SRAM_rw <= SRAM_rw_int;
	SRAM_valid <= SRAM_valid_int;
	
	--Process for state machine
	process(clk) begin
	if rising_edge(clk) then
		if reset_h = '0' then
			case(state) is 
				when init =>
					SRAM_rw_int <= '0';                                       --we're writing
					data_select <= '0';                                       --reading from ROM
					address_out <= std_logic_vector(to_unsigned(ROM_cnt, 8)); --convert the ROM_cnt to address
					if SRAM_busy_h = '0' then                                 --if the controller is ready
						SRAM_valid_o <= '1';                                  --take in the next value
						if to_increment = '1' then
							ROM_cnt <= ROM_cnt + 1;
							to_increment <= '0';
						end if;
						
					elsif SRAM_valid_o = '1' then
							SRAM_valid_o <= '0';                               --take valid back low
							to_increment <= '1';                               --prepare for next count
					end if;
					if ROM_cnt = 256 then                                    --if we've reached the end
						ROM_cnt     <= 0;
						next_state  <= test;                                   --move to the next state
						SRAM_rw_int <= '1';
						address_cnt <= 0;
						read_SRAM   <= '1';
						data_io_o   <= (others => '0');
					end if;	
					
				when test =>
					
					
				when pause =>
					
					
				when pwm60 =>
					
					
				when pwm120 =>
					
				
				when pwm1000 =>
					
					
			end case;
		elsif reset_h = '1' then
			next_state <= init;             --move to init
			data_o <= (others => '0');      --reset to 0s
			address_out <= (others => '0'); --reset to 0s
			SRAM_rw => '1';                 --reading
			SRAM_valid_int => '0';          --reset to 0
			ROM_cnt => 0;                   --reset to 0
			address_cnt => 0;               --reset to 0
		end if;
	end process;
end behavioral;