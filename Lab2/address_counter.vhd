library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity address_counter is
	generic(
		constant OPERATION_SPEED : integer := 12_000 --12 KHz
	);
	port(
		clk         : in  std_logic;
		speed_sel   : in  std_logic_vector(1 downto 0);
		
		address_out : out std_logic_vector(7 downto 0);
	);
end address_counter;

architecture behavioral of address_counter is
	signal increment_value : integer range OPERATION_SPEED/1000 to OPERATION_SPEED/60;
	signal address_int : unsigned(31 downto 0);
	
	address_out(7 downto 0) <= address_int(31 downto 23);
	
	process(clk) 
	begin
		case(speed_sel) is
			when "01" => increment_value <= OPERATION_SPEED / 60;
			when "10" => increment_value <= OPERATION_SPEED / 120;
			when "11" => increment_value <= OPERATION_SPEED / 1000;
			when others => null;
		end case;
		
		if rising_edge(clk)then
			address_int <= address_int + increment_value;
		end if;
	end process;

end behavioral;