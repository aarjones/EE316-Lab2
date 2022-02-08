library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
port (
	--INS
	clk 		: in std_logic;
	reset 	: in std_logic := '0';
	clk_en 	: in std_logic;
	value_i  : in std_logic_vector(15 downto 0);
	
	--OUTS
	pwm_o		: out std_logic
	);
end PWM;

architecture Behavioral of PWM is

signal pwm : std_logic;
signal counter : integer range 0 to 65535:= 0;


begin

pwm_o <= pwm;

PWM_Process: process(clk, clk_en, reset)
begin
	if (clk_en = '1' and reset = '0' and rising_edge(clk) and clk'event) then
		if (counter >= to_integer(unsigned(value_i))) then
			pwm <= '0';
			counter <= counter + 1;
		else
			counter <= counter + 1;
			pwm <= '1';
		end if;
	elsif (rising_edge(clk) and reset = '1') then
		pwm <= '0';
		counter <= 0;
	end if;
end process;


end Behavioral;