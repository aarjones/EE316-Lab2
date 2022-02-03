library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity HEX_to_ASCII is
port (
	--IN
	HEX_i : in std_logic_vector(3 downto 0);
	
	--OUT
	ASCII_o : out std_logic_vector(7 downto 0)
	);
end HEX_to_ASCII;

architecture Behavioral of HEX_to_ASCII is

begin

HEX_ASCII_PROCESS: process (HEX_i)
begin
	case HEX_i is
		when x"0" => ASCII_o <= x"30";
		when x"1" => ASCII_o <= x"31";
		when x"2" => ASCII_o <= x"32";
		when x"3" => ASCII_o <= x"33";
		when x"4" => ASCII_o <= x"34";
		when x"5" => ASCII_o <= x"35";
		when x"6" => ASCII_o <= x"36";
		when x"7" => ASCII_o <= x"37";
		when x"8" => ASCII_o <= x"38";
		when x"9" => ASCII_o <= x"39";
		when x"A" => ASCII_o <= x"41";
		when x"B" => ASCII_o <= x"42";
		when x"C" => ASCII_o <= x"43";
		when x"D" => ASCII_o <= x"44";
		when x"E" => ASCII_o <= x"45";
		when x"F" => ASCII_o <= x"46";
		when others => ASCII_o <= x"0"; --Default of 0
	end case;
end process;

end Behavioral;