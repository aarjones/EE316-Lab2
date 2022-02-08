library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity address_counter is
	generic(
		constant BASE_AMOUNT     : integer := 16_777_215; --Bottom 24 Bits
		constant OPERATION_SPEED : integer := 195_000;     --12 KHz
		constant CLK_SPEED       : integer := 50_000_000  --50 MHz
	);
	port(
		clk         : in  std_logic;                      --input clock
		speed_sel   : in  std_logic_vector(1 downto 0);   --Select signal for the sine frequency
		
		clk_en_op   : out std_logic;                      --clk_en signal at the given operation speed
		address_out : out std_logic_vector(7 downto 0)    --address to read from the SRAM
	);
end address_counter;

architecture behavioral of address_counter is
	signal increment_value : integer range BASE_AMOUNT/(256*60) to BASE_AMOUNT * 17 / (256*60);   --How much to increment the counter by
	signal address_int     : unsigned(31 downto 0);                              --Internal 32-bit address
	signal clk_cnt         : integer range 0 to CLK_SPEED / OPERATION_SPEED - 1; --Count for the clk_en signal at the operation speed
	signal clk_en_op_int   : std_logic;                                          --clk_en signal at the operation speed
	
	begin
	
	clk_en_op               <= clk_en_op_int;
	address_out(7 downto 0) <= std_logic_vector(address_int(31 downto 24));
	
	process(clk) 
	begin
		case(speed_sel) is                                          --case statement determining how much to increment the address by
			when "01" => increment_value <= BASE_AMOUNT / (256*60) * 4.72;
			when "10" => increment_value <= BASE_AMOUNT * 2 / (256*60) * 4.74;
			when "11" => increment_value <= BASE_AMOUNT * 17 / (256*60) * 4.63;
			when others => null;
		end case;
		
		if rising_edge(clk) then
			address_int <= address_int + increment_value;            --increment the address at the operation speed
		end if;
	end process;

	process(clk)                                                   --clk_en signal at the generic operation speed
	begin
		if clk_cnt = 256*60 - 1 then
			clk_cnt   <= 0;
			clk_en_op_int <= '1';
		else
			clk_cnt   <= clk_cnt + 1;
			clk_en_op_int <= '0';
		end if;
	end process;
	
end behavioral;