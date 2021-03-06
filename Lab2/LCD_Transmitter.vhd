library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_Transmitter is
    Port ( iClk : in STD_LOGIC; -- 50 MHz
           reset : in std_logic;
           ena : in std_logic;
    
           busy : out std_logic;
           en      : out STD_LOGIC
    );
           
           
end LCD_Transmitter;

architecture Behavioral of LCD_Transmitter is
type stateType is (idle, zero, one);
signal state : stateType;

signal clk_en : std_logic;
signal clk_cnt : integer range 0 to 83333;

begin
process(iClk, reset, ena)
begin
  if reset = '1' then
		state <= idle;
		busy <= '0';
		en <= '0';
  elsif clk_en = '1' and rising_edge(iClk) then
		case state is
			 when idle =>
				  if ena = '0' then
						busy <= '0';
						en <= '0';
						state <= idle;
				  else
						busy <= '1';
						en <= '1';
						state <= one;
				  end if;
				  
			 when one =>
						en <= '1';
						state <= zero;
						
			 when zero =>
						en <= '0';
						state <= idle;
		end case;
  end if;
end process;

process(iClk)
begin
	if rising_edge(iClk) then
			if (clk_cnt = 83333-1) then --600 Hz
				clk_cnt <= 0;
				clk_en <= '1';
			else
				clk_cnt <= clk_cnt + 1;
				clk_en <= '0';
			end if;
		end if;
end process;
	 
end Behavioral;
