library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity LCD_User_Logic is
    Port ( iClk : in STD_LOGIC; -- 50 MHz    
           reset : in std_logic;
			  speed_sel : in std_logic_vector(1 downto 0); --60, 120, or 1000 Hz
           Data : out STD_LOGIC_VECTOR (7 downto 0); -- to LCD
           en   : out STD_LOGIC;                     --to LCD
           rs   : out STD_LOGIC                      --to LCD
     ); 
end LCD_User_Logic;

architecture Behavioral of LCD_User_Logic is

component LCD_Transmitter is
    port(
        iClk : in STD_LOGIC;
        reset : in std_logic;
        ena : in std_logic;
        
        busy : out std_logic;
        en     : out STD_LOGIC --to LCD
    );
end component;

type stateType is (start, ready, data_valid, busy_high, repeat);

signal state : stateType;
signal busy : std_logic;
signal reset_h : std_logic;
signal reset_LCD : std_logic;
signal currentByte : std_logic_vector(7 downto 0);
signal currentByte_wr : std_logic_vector(7 downto 0);
signal RS_sig : std_logic;
signal currentRS : std_logic;
signal byteSel : integer range 0 to 29 := 0;
signal count : unsigned(27 DOWNTO 0):=X"000000F";
signal ena : std_logic;

begin

Data <= currentByte_wr;
rs <= RS_sig;
reset_h <= reset;

Inst_LCD_Transmitter : LCD_Transmitter
    port map(
        iClk => iClk,
        reset => reset_h,
        ena => ena,
        busy => busy,
        en => en
    );

process(byteSel)
    begin
        case byteSel is
            when 0  => currentByte <= X"00"; RS_sig <= '0'; --clear display                  --START INT
            when 1  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 2  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 3  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 4  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 5  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 6  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 7  => currentByte <= X"00"; RS_sig <= '0'; --clear display
            when 8  => currentByte <= X"02"; RS_sig <= '0'; --return home
            when 9  => currentByte <= X"04"; RS_sig <= '0'; --display on, cursor off, cursor blink off
            when 10 => currentByte <= X"49"; RS_sig <= '1'; -- "I" 
            when 11 => currentByte <= X"6E"; RS_sig <= '1'; -- "n"
            when 12 => currentByte <= X"69"; RS_sig <= '1'; -- "i"
            when 13 => currentByte <= X"74"; RS_sig <= '1'; -- "t"
            when 14 => currentByte <= X"69"; RS_sig <= '1'; -- "i"
            when 15 => currentByte <= X"61"; RS_sig <= '1'; -- "a"
            when 16 => currentByte <= X"6C"; RS_sig <= '1'; -- "l"
            when 17 => currentByte <= X"69"; RS_sig <= '1'; -- "i"
            when 18 => currentByte <= X"7A"; RS_sig <= '1'; -- "z"
            when 19 => currentByte <= X"69"; RS_sig <= '1'; -- "i"
            when 20 => currentByte <= X"6E"; RS_sig <= '1'; -- "n"
            when 21 => currentByte <= X"67"; RS_sig <= '1'; -- "g"                           --END INIT
				when 22 => currentByte <= X"00"; RS_sig <= '0'; -- clear display                 --START TEST MODE
				when 23 => currentByte <= X"80"; RS_sig <= '0'; -- send curor to top row
            when 24 => currentByte <= X"54"; RS_sig <= '1'; -- "T"  
            when 25 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
            when 26 => currentByte <= X"73"; RS_sig <= '1'; -- "s"
            when 27 => currentByte <= X"74"; RS_sig <= '1'; -- "t"
            when 28 => currentByte <= X"20"; RS_sig <= '1'; -- " "
            when 29 => currentByte <= X"4D"; RS_sig <= '1'; -- "M"
            when 30 => currentByte <= X"6F"; RS_sig <= '1'; -- "o"
            when 31 => currentByte <= X"64"; RS_sig <= '1'; -- "d"
				when 32 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
				when 33 => currentByte <= X"C0"; RS_sig <= '0'; -- Move to second row, first char --START PAUSE
            when 34 => currentByte <= X"30"; RS_sig <= '1'; -- "0"
            when 35 => currentByte <= X"78"; RS_sig <= '1'; -- "x"
            when 36 => currentByte <= X""; RS_sig <= '1'; -- data left
            when 37 => currentByte <= X""; RS_sig <= '1'; -- data left middle
            when 38 => currentByte <= X""; RS_sig <= '1'; -- data right middle
            when 39 => currentByte <= X""; RS_sig <= '1'; -- data right 
				when 40 => currentByte <= X"20"; RS_sig <= '1'; -- " "
				when 41 => currentByte <= X"61"; RS_sig <= '1'; -- "a"
            when 42 => currentByte <= X"74"; RS_sig <= '1'; -- "t"
            when 43 => currentByte <= X"20"; RS_sig <= '1'; -- " "
            when 44 => currentByte <= X"30"; RS_sig <= '1'; -- "0"
            when 45 => currentByte <= X"78"; RS_sig <= '1'; -- "x"
            when 46 => currentByte <= X""; RS_sig <= '1'; -- address left
            when 47 => currentByte <= X""; RS_sig <= '1'; -- address right                    --END TEST MODE
				when 48 => currentByte <= X"00"; RS_sig <= '0'; -- clear display
				when 49 => currentByte <= X"80"; RS_sig <= '0'; -- send cursor to top row
				when 50 => currentByte <= X"50"; RS_sig <= '1'; -- "P"  
            when 51 => currentByte <= X"61"; RS_sig <= '1'; -- "a"
            when 52 => currentByte <= X"75"; RS_sig <= '1'; -- "u"
            when 53 => currentByte <= X"73"; RS_sig <= '1'; -- "s"
            when 54 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
				when 55 => currentByte <= X"20"; RS_sig <= '1'; -- " "
            when 56 => currentByte <= X"4D"; RS_sig <= '1'; -- "M"
            when 57 => currentByte <= X"6F"; RS_sig <= '1'; -- "o"
            when 58 => currentByte <= X"64"; RS_sig <= '1'; -- "d"
				when 59 => currentByte <= X"65"; RS_sig <= '1'; -- "e"                           --END PAUSE MODE
				when 60 => currentByte <= X"00"; RS_sig <= '0'; -- clear display                 --START PWM GEN
				when 61 => currentByte <= X"80"; RS_sig <= '0'; -- cursor top row
            when 62 => currentByte <= X"47"; RS_sig <= '1'; -- "G"
            when 63 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
            when 64 => currentByte <= X"6E"; RS_sig <= '1'; -- "n"
            when 65 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
				when 66 => currentByte <= X"72"; RS_sig <= '1'; -- "r"
            when 67 => currentByte <= X"61"; RS_sig <= '1'; -- "a"
            when 68 => currentByte <= X"74"; RS_sig <= '1'; -- "t"
            when 69 => currentByte <= X"69"; RS_sig <= '1'; -- "i"
				when 70 => currentByte <= X"6E"; RS_sig <= '1'; -- "n"
            when 71 => currentByte <= X"67"; RS_sig <= '1'; -- "g"
            when 72 => currentByte <= X"20"; RS_sig <= '1'; -- " "
            when 73 => currentByte <= X"50"; RS_sig <= '1'; -- "P"
				when 74 => currentByte <= X"57"; RS_sig <= '1'; -- "W"
            when 75 => currentByte <= X"4D"; RS_sig <= '1'; -- "M"
            when 76 => currentByte <= X"C0"; RS_sig <= '0'; -- cursor bottom row
            when 77 => currentByte <= X""; RS_sig <= '1'; -- "6"
				when 78 => currentByte <= X"47"; RS_sig <= '1'; -- "G"
            when 79 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
            when 80 => currentByte <= X"6E"; RS_sig <= '1'; -- "n"
            when 81 => currentByte <= X"65"; RS_sig <= '1'; -- "e"
				when 82 => currentByte <= X"72"; RS_sig <= '1'; -- "r"
            when 83 => currentByte <= X"61"; RS_sig <= '1'; -- "a"
            when 84 => currentByte <= X"74"; RS_sig <= '1'; -- "t"
            when 85 => currentByte <= X"69"; RS_sig <= '1'; -- "i"
				when 86 => currentByte <= X"6E"; RS_sig <= '1'; -- "n"
            when 87 => currentByte <= X"67"; RS_sig <= '1'; -- "g"
            when 88 => currentByte <= X"20"; RS_sig <= '1'; -- " "
            when 89 => currentByte <= X"50"; RS_sig <= '1'; -- "P"
				when 90 => currentByte <= X"57"; RS_sig <= '1'; -- "W"
            when 91 => currentByte <= X"4D"; RS_sig <= '1'; -- "M"
				
        end case;
end process;

process(iClk, reset_h)
    begin
        if(reset_h = '1') then
            byteSel <= 0;
        elsif(rising_edge(iClk)) then
            case state is
                when start => 
                    if count /= X"0000000" then
                        count <= count - 1;
                        reset_LCD <= '1' or reset;
                        state <= start;
                        ena <= '0';
                    else
                        reset_LCD <= '0' or reset;
                        state <= ready;
                        currentByte_wr <= currentByte;
                    end if;
                    
                when ready =>
                    if busy = '0' then
                        ena <= '1';
                        state <= data_valid;
                     end if;
                     
                when data_valid =>
                    if busy = '1' then
                        ena <= '0';
                        state <= busy_high;
                    end if;
                    
                when busy_high =>
                    if busy = '0' then
                        state <= repeat;
                    end if;
                
                when repeat =>
                    if byteSel < 29 then
                        byteSel <= byteSel + 1;
                    else 
                        byteSel <= 22;
                    end if;
                    state <= start;
                
                when others => null;
            end case;
        end if;
    end process;
end Behavioral;
