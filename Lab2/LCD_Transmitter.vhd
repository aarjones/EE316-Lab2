library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LCD_Transmitter is
    Port ( iClk : in STD_LOGIC; -- 125 MHz
           reset : in std_logic;
           ena : in std_logic;
    
           busy : out std_logic;
           en      : out STD_LOGIC
    );
           
           
end LCD_Transmitter;

architecture Behavioral of LCD_Transmitter is

component clk_enabler is
	GENERIC (CONSTANT cnt_max : integer := 62500-1);      --  200*3 Hz, 5/3 ms, hardware
	port(	
		clock       : in std_logic;
		clk_en      : out std_logic
	);
end component; 

type stateType is (idle, zero, one);
signal state : stateType;
signal clk_en : std_logic;

begin

Inst_clk_enable : clk_enabler
    port map(
        clock => iClk,
        clk_en => clk_en
   );

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
end Behavioral;
