library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity system_controller is
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
end system_controller;

architecture behavioral of system_controller is
	type stateType is (init, operation_1hz, operation_stop, program_data, program_address);
	
	--For State Machine
	signal state, next_state : stateType                     := init;
	signal ROM_cnt           : integer range 0 to 256        := 0;
	signal address_cnt       : integer range 0 to 255        := 0;
	signal SRAM_rw_int       : std_logic                     := '0'; --0 is write, 1 is read
	signal data_io_out       : std_logic_vector(15 downto 0);        --what will be written to the SRAM
	signal up                : std_logic                     := '1'; --1 is counting up, 2 is down
	signal data_int          : std_logic_vector(15 downto 0);        --read data, internal
	signal address_int       : std_logic_vector(7 downto 0);         --address, internal
	signal sampled           : std_logic;                            --have we sampled from data_i?
	signal SRAM_valid_o      : std_logic;                            --is the SRAM_io valid?
	signal to_increment      : std_logic;
	
	--For command controller
	signal program_SRAM      : std_logic                     := '0'; --trigger a pulse down SRAM_valid
	signal read_SRAM         : std_logic                     := '0'; --trigger a pulse down SRAM_valid
	
	--For clk_en_1
	signal clk_cnt           : integer range 0 to 50000000-1 := 0;
	signal clk_en_1          : std_logic                     := '0';
	
	--For 1 HZ counter
	signal run_counter       : std_logic                     := '0'; --should the counter run?
	
	begin
	
	state <= next_state;
	SRAM_rw <= SRAM_rw_int;
	data_o <= data_io_out;
	SRAM_valid <= SRAM_valid_o;
	
	--Process for state machine
	process(clk) begin
	if rising_edge(clk) then
		if reset_h = '0' then
			case(state) is 
				when init =>
					SRAM_rw_int <= '0';                                       --we're writing
					data_select <= "01";                                      --reading from ROM
					mode_LED    <= '0';                                       --programming
					run_counter <= '0';                                       --keep the counter off
					address_out <= std_logic_vector(to_unsigned(ROM_cnt, 8)); --convert the ROM_cnt to address
					if SRAM_busy_h = '0' then                                 --if the controller is ready
						if to_increment = '1' then
							ROM_cnt <= ROM_cnt + 1;
							to_increment <= '0';
						end if;
						SRAM_valid_o <= '1';                                  --take in the next value
					elsif SRAM_valid_o = '1' then
							SRAM_valid_o <= '0';                              --take valid back low
							to_increment <= '1';                              --prepare for next count
					end if;
					if ROM_cnt = 256 then                                     --if we've reached the end\
						ROM_cnt <= 0;
						next_state <= operation_stop;                         --move to the next state
						SRAM_rw_int <= '1';
						address_cnt <= 0;
						read_SRAM <= '1';
						data_io_out <= (others => '0');
					end if;		
					
				when operation_1hz =>
					mode_LED    <= '1';  --we are in operation mode
					data_select <= "00"; --we are controlling data to SRAM
					SRAM_rw_int <= '1';  --we are reading
					run_counter <= '1';  --turn on the counter
					address_out <= std_logic_vector(to_unsigned(address_cnt, 8));
					data_io_out <= data_i;
--					if sampled = '0' then
--						if SRAM_busy_h = '0' then
--							sampled <= '1';
--						end if;
--					end if;
					if read_SRAM = '1' then
						sampled <= '0';
						SRAM_valid_o <= '1';
						read_SRAM <= '0';
					else
						SRAM_valid_o   <= '0';
					end if;
					
				when operation_stop =>
					mode_LED    <= '1';  --we are in operation mode
					data_select <= "00"; --we are controlling data to SRAM
					SRAM_rw_int <= '1';  --we are reading
					run_counter <= '0';  --turn off the counter
					address_out <= std_logic_vector(to_unsigned(address_cnt, 8));
					data_io_out <= data_i;
--					if sampled = '0' then
--						if SRAM_busy_h = '0' then
--							sampled <= '1';
--						end if;
--					end if;
					if read_SRAM = '1' and SRAM_busy_h = '0' then
						sampled <= '0';
						SRAM_valid_o <= '1';
						read_SRAM <= '0';
					elsif SRAM_busy_h = '1' and sampled = '0' then
						SRAM_valid_o   <= '0';
					end if;
					
				when program_data =>
					mode_LED    <= '0';
					data_select <= "10";
					SRAM_rw_int <= '0';
					address_out <= address_int;
					if program_SRAM = '1' then
						SRAM_valid_o   <= '1';
						program_SRAM <= '0';
					else
						SRAM_valid_o   <= '0';
					end if;
					
				when program_address =>
					mode_LED    <= '0';
					data_select <= "10";
					SRAM_rw_int <= '0';
					address_out <= address_int;
					if program_SRAM = '1' then
						SRAM_valid_o   <= '1';
						program_SRAM <= '0';
					else
						SRAM_valid_o   <= '0';
					end if;
					
			end case;
		elsif reset_h = '1' then
			next_state <= init;
			ROM_cnt <= 0;
			address_cnt <= 0;
			address_int <= (others => '0');
			up <= '1';
			clk_cnt <= 0;
			run_counter <= '0';
			data_select <= "01";
			data_io_out <= (others => '0');
			read_SRAM <= '1';
			SRAM_valid_o <= '0';
		end if;
	
	--Process for normal keypresses
		if clk_en_200 = '1' and keypad_valid = '1' and kp_value(4) = '0' then --If the keypad has a good, non-command output
			case(state) is                                                    --complete relevant shift register operation
				when program_data    => data_io_out(3 downto 0) <= kp_value(3 downto 0); data_io_out(15 downto 4) <= data_io_out(11 downto 0);
				when program_address => address_int(3 downto 0) <= kp_value(3 downto 0); address_int(7  downto 4) <= address_int(3  downto 0);
				when others => null;
			end case;
		end if;
	
	--Process for commands
		if clk_en_200 = '1' and keypad_valid = '1' then --If the keypad has a good output
			case(kp_value) is
				when "10000" =>                         --H was pressed
					case(state) is
						when program_address => next_state <= program_data;
						when program_data    => next_state <= program_address;
						when operation_1hz   => next_state <= operation_stop;
						when operation_stop  => next_state <= operation_1hz; read_SRAM <= '1';
						when others          => null;
					end case;
				when "10010" =>                         --Shift was pressed
					case(state) is                      --Change program/operation
						when operation_1hz   | operation_stop => next_state <= program_address; address_int <= (others => '0'); data_io_out <= (others => '0');
						when program_address | program_data   => next_state <= operation_stop;  address_cnt <= 0; SRAM_rw_int <= '1'; data_io_out <= (others => '0'); read_SRAM <= '1'; up <= '1';
						when others                           => null;
					end case;
				when "10001" =>                         --L was pressed
					case(state) is
						when program_address | program_data   => program_SRAM <= '1'; sampled <= '0';
						when operation_1hz   | operation_stop => up <= not up;
						when others => null;
					end case;
				when others => null;                    --Anything else (0-F)
			end case;
		end if;
	
	--Process for 1 Hz clock enable
			if clk_cnt = 50000000-1 then -- change to 50000000 for board
				clk_cnt <= 0;
				clk_en_1 <= '1';
			else
				clk_cnt <= clk_cnt + 1;
				clk_en_1 <= '0';
			end if;
	
	--Process for 1 Hz operation counter
		if run_counter = '1' then
			if SRAM_busy_h = '1' then
				SRAM_valid_o <= '0';
			elsif clk_en_1 = '1' then
				read_SRAM <= '1';
				if up = '1' then
					address_cnt <= address_cnt + 1;
					if address_cnt = 255 then
						address_cnt <= 0;
					end if;
				else
					address_cnt <= address_cnt - 1;
					if address_cnt = 0 then
						address_cnt <= 255;
					end if;
				end if;
			end if;
		end if;
		end if;
	end process;
end behavioral;