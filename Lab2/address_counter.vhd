library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;

entity address_counter is
	generic(
		constant OPERATION_SPEED : integer := 12_000_000
	);
	port(
		clk : in std_logic;
		speed_sel : in std_logic_vector(1 downto 0);
		
		address_out : out std_logic_vector(7 downto 0);
		clk_en_op : out std_logic;
	);
	

end address_counter;