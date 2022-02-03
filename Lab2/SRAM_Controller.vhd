library ieee;
use ieee.std_logic_1164.all;

library work;

entity SRAM_Controller is
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
end SRAM_Controller;

--Need to get rising edge detector before cont_clk_en
architecture behavioral of SRAM_Controller is
	type state_type is (init, ready, write1, write2, read1, read2); --States for the controller
	
	signal state, next_state : state_type := init; 														--state machine signal
	signal cont_io_out		 : std_logic_vector(IO_WIDTH-1 downto 0) := (others => '0'); 	--To be sent when reading
	signal cont_io_in 		 : std_logic_vector(IO_WIDTH-1 downto 0) := (others => '0'); 	--To be read when writing
	signal sram_io_out		 : std_logic_vector(IO_WIDTH-1 downto 0) := (others => '0');	--To be sent when writing
	signal cont_address_reg  : std_logic_vector(CONT_ADDRESS_WIDTH-1 downto 0);   			--registered address, small
	signal sram_address_reg  : std_logic_vector(19 downto 0); 						   			--registered address, large
	signal cont_rw_reg 		 : std_logic; 																	--Registered rw signal
	signal sampled           : std_logic;                                                  --has the signal been sampled (when reading)?
	
	begin
	--Continuous assignments from Controller to SRAM
	sram_address <= sram_address_reg;
	sram_io <= sram_io_out when (cont_rw_reg = '0') else (others => 'Z'); --When writing, tie the sram_io port to the output register, otherwise do nothing
	cont_o <= cont_io_out;
	
	state <= next_state;
	
	process(clk) begin 
		if rising_edge(clk) and reset_h = '0' then			
			case(state) is
				when init =>
					cont_io_in		  <= cont_i; 		 													  --save I/O data
					cont_io_out 	  <= sram_io;															  --sample data when reading from the sram
					cont_address_reg <= cont_address; 													  --save input address data
					sram_address_reg <= (19 downto CONT_ADDRESS_WIDTH => '0') & cont_address; --save output address data, with leading zeros
					sram_we_n   	  <= '1'; 																  --no writing
					sram_oe_n   	  <= '1'; 																  --no reading/output
					sram_ub_n   	  <= '0'; 															     --include upper byte
					sram_lb_n   	  <= '0'; 																  --include lower byte
					sram_ce_n   	  <= '0'; 																  --the SRAM is on
					busy_h      	  <= '1'; 															     --the system is not ready to accept new data
					cont_rw_reg 	  <= cont_rw; 															  --sample read/write command
					next_state  	  <= ready;
				
				when ready =>
					cont_io_in 		  <= cont_i; 		 													  --save I/O data
					if cont_rw = '0' then 
						cont_io_out 	  <= sram_io;															  --sample data when reading from the sram
					elsif cont_rw = '1' and sampled = '0' then
						sampled <= '1';
						cont_io_out <= sram_io;
					end if;
					cont_address_reg <= cont_address; 													  --save input address data
					cont_rw_reg 	  <= cont_rw;															  --save rw data
					sram_address_reg <= (19 downto CONT_ADDRESS_WIDTH => '0') & cont_address; --save output address data, with leading zeros
					sram_we_n  		  <= '1'; 																  --no writing
					sram_oe_n  		  <= '1'; 																  --no reading/output
					busy_h 			  <= '0'; 																  --able to accept new data
					if cont_data_valid = '1' then 														  --if we receive the pulse
						busy_h <= '1'; 		      														  --we are now busy
						if cont_rw_reg = '1' then 															  --and should choose to either read
							next_state  <= read1;
						else						 																  --or write
							sram_io_out <= cont_io_in;														  --which necessitates sampling the controller-side io to prepare to send to the sram-side io
							next_state  <= write1;
						end if;
					end if;
					
				when write1 =>
					--busy_h <= '1';
					sram_we_n <= '0';
					next_state <= write2;
					
				when write2 =>
					busy_h <= '0';
					sram_we_n <= '1';
					next_state <= ready;
					
				when read1 =>
					--busy_h <= '1';
					sampled <= '0';
					sram_oe_n <= '0';
					next_state <= read2;
					
				when read2 =>
					--busy_h <= '1'; --intentionally not 0, to ensure it's sampled when valid
					sram_oe_n <= '1';
					next_state <= ready;
					
			end case;
		elsif rising_edge(clk) and reset_h = '1' then
			cont_io_out <= (others => '0');
			sampled <= '0';
		end if;
		
	end process;
end behavioral;