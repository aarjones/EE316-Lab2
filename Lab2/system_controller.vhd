library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity system_controller is
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
end system_controller;

architecture behavioral of system_controller is
	type stateType is (init, test, pause, pwm60, pwm120, pwm1000);
	
	--For State Machine
	signal state, next_state : stateType                     := init;
	signal ROM_cnt           : integer range 0 to 256        := 0;
	signal address_cnt       : integer range 0 to 255        := 0;
	signal to_increment      : std_logic                     := '0'; --does the ROM need to be incremented
	signal read_SRAM         : std_logic;                            --should we read the SRAM
	signal sampled           : std_logic;                            --have we sampled from the SRAM
	
	--Internal Versions
	signal SRAM_rw_int       : std_logic                     := '0'; --0 is write, 1 is read
	signal SRAM_valid_int    : std_logic;                            --Should the SRAM_Controller begin
	
	--For 1 Hz 
	signal clk_cnt : integer range 0 to 50000000-1;                  --Counter for the clk_en at 1 hz
	signal run_counter : std_logic;                                  --should we run the counter?
	signal clk_en_1 : std_logic;                                     --1 Hz clock enable
	
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
						speed_sel   <= "00";                                          --ignore the speed
						byte_start  <= 0;                                             --start at the first byte
						byte_end    <= 21;                                            --end at byte 21
						SRAM_rw_int <= '0';                                           --we're writing
						data_select <= '0';                                           --reading from ROM
						address_out <= std_logic_vector(to_unsigned(ROM_cnt, 8));     --convert the ROM_cnt to address
						if SRAM_busy_h = '0' then                                     --if the controller is ready
							SRAM_valid_int <= '1';                                     --take in the next value
							if to_increment = '1' then
								ROM_cnt <= ROM_cnt + 1;
								to_increment <= '0';
							end if;
							
						elsif SRAM_valid_int = '1' then
								SRAM_valid_int <= '0';                                  --take valid back low
								to_increment <= '1';                                    --prepare for next count
						end if;    
						if ROM_cnt = 256 then                                         --if we've reached the end
							ROM_cnt     <= 0;
							next_state  <= test;                                       --move to the next state
							SRAM_rw_int <= '1';
							address_cnt <= 0;
							data_o   <= (others => '0');
						end if;	
						
					when test =>
						speed_sel   <= "00";                                          --ignore the speed
						byte_start  <= 22;                                            --start at the first byte
						byte_end    <= 47;                                            --end at byte 21
						data_select <= '1';                                           --we are controlling the data
						SRAM_rw_int <= '1';                                           --we are reading
						run_counter <= '1';                                           --turn on the counter
						address_out <= std_logic_vector(to_unsigned(address_cnt, 8)); --output address to displays
						data_o      <= data_i;                                        --data_o is same as SRAM
						if read_SRAM = '1' then                                       --if we need to read
							sampled        <= '0';                                     --remember to sample
							SRAM_valid_int <= '1';                                     --pulse valid
							read_SRAM      <= '0';                                     --clear flag
						else
							SRAM_valid_int <= '0';                                     --pulse valid
						end if;
						if pause_btn = '1' then                                       --if the pause button was pressed
							next_state <= pause;                                       --move to pause
						elsif pwm_btn = '1' then                                      --otherwise if the pwm button was pressed
							next_state <= pwm60;                                       --move to pwm, 60 hz
							address_cnt <= 0;                                          --and reset the count
						end if;
						
					when pause =>
						speed_sel   <= "00";                                          --ignore the speed
						byte_start  <= 33;                                            --start at the first byte
						byte_end    <= 59;                                            --end at byte 21
						data_select <= '0';                                           --we are controlling the data
						SRAM_rw_int <= '1';                                           --we are reading
						run_counter <= '0';                                           --turn off the counter
						address_out <= std_logic_vector(to_unsigned(address_cnt, 8)); --output address to displays
						data_o      <= data_i;                                        --data_o is same as SRAM
						if read_SRAM = '1' and SRAM_busy_h = '0' then                                       --if we need to read
							sampled        <= '0';                                     --remember to sample
							SRAM_valid_int <= '1';                                     --pulse valid
							read_SRAM      <= '0';                                     --clear flag
						elsif SRAM_busy_h = '1' and sampled = '0' then
							SRAM_valid_int <= '0';                                     --pulse valid
						end if;
						if pause_btn = '1' then                                       --if the pause button was pressed
							next_state <= test;                                        --move to test
						elsif pwm_btn = '1' then                                      --otherwise if the pwm button was pressed
							next_state <= pwm60;                                       --move to pwm, 60 hz
							address_cnt <= 0;                                          --and reset the count
						end if;
						
					when pwm60 =>
						speed_sel   <= "01";                                          --60 Hz
						byte_start  <= 60;                                            --start at the first byte
						byte_end    <= 76;                                            --end at byte 21
						data_select <= '1';                                           --we are controlling the data
						SRAM_rw_int <= '1';                                           --we are reading
						run_counter <= '0';                                           --turn off the counter
						address_out <= std_logic_vector(to_unsigned(address_cnt, 8)); --output address to displays
						data_o      <= data_i;                                        --data_o is same as SRAM
						if speed_btn = '1' then                                       --if we need to change speeds
							next_state <= pwm120;                                      --do it
							address_cnt <= 0;                                          --and reset the address
						elsif pwm_btn = '1' then                                      --otherwise, if we need to go back to the test mode
							next_state <= test;                                        --do it
							address_cnt <= 0;                                          --and reset the address
						end if;
						
					when pwm120 =>
						speed_sel   <= "10";                                          --120 Hz
						byte_start  <= 60;                                            --start at the first byte
						byte_end    <= 76;                                            --end at byte 21
						data_select <= '1';                                           --we are controlling the data
						SRAM_rw_int <= '1';                                           --we are reading
						run_counter <= '0';                                           --turn off the counter
						address_out <= std_logic_vector(to_unsigned(address_cnt, 8)); --output address to displays
						data_o      <= data_i;                                        --data_o is same as SRAM
						if speed_btn = '1' then                                       --if we need to change speeds
							next_state <= pwm1000;                                     --do it
							address_cnt <= 0;                                          --and reset the address
						elsif pwm_btn = '1' then                                      --otherwise, if we need to go back to the test mode
							next_state <= test;                                        --do it
							address_cnt <= 0;                                          --and reset the address
						end if;
					
					when pwm1000 =>
						speed_sel   <= "11";                                          --1000 Hz
						byte_start  <= 60;                                            --start at the first byte
						byte_end    <= 76;                                            --end at byte 21
						data_select <= '1';                                           --we are controlling the data
						SRAM_rw_int <= '1';                                           --we are reading
						run_counter <= '0';                                           --turn off the counter
						address_out <= std_logic_vector(to_unsigned(address_cnt, 8)); --output address to displays
						data_o      <= data_i;                                        --data_o is same as SRAM
						if speed_btn = '1' then                                       --if we need to change speeds
							next_state <= pwm60;                                       --do it
							address_cnt <= 0;                                          --and reset the address
						elsif pwm_btn = '1' then                                      --otherwise, if we need to go back to the test mode
							next_state <= test;                                        --do it
							address_cnt <= 0;                                          --and reset the address
						end if;
						
				end case;
			elsif reset_h = '1' then
				speed_sel   <= "00";            --ignore the speed
				byte_start  <= 0;               --start at the first byte
				byte_end    <= 21;              --end at byte 21
				next_state <= init;             --move to init
				data_o <= (others => '0');      --reset to 0s
				address_out <= (others => '0'); --reset to 0s
				SRAM_rw_int <= '1';                 --reading
				SRAM_valid_int <= '0';          --reset to 0
				ROM_cnt <= 0;                   --reset to 0
				address_cnt <= 0;               --reset to 0
			end if;
		
		--1 Hz clock enable
			if clk_cnt = (50000000)-1 then --for hardware
				clk_cnt <= 0;
				clk_en_1 <= '1';
			else
				clk_cnt <= clk_cnt + 1;
				clk_en_1 <= '0';
			end if;
		
		--1 Hz operation counter
			if run_counter = '1' then
				if SRAM_busy_h = '1' then
					SRAM_valid_int <= '0';
				elsif clk_en_1 = '1' then
					read_SRAM <= '1';
					address_cnt <= address_cnt + 1;
					if address_cnt = 255 then
						address_cnt <= 0;
					end if;
				end if;
			end if;
		end if;
		end process;
end behavioral;