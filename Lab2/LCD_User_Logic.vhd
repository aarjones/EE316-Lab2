library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity LCD_User_Logic is
    Port ( iClk : in STD_LOGIC; -- 125 MHz    
           reset : in std_logic;
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
signal clk_en : std_logic;
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
            when 0  => currentByte <= X"38"; RS_sig <= '0';
            when 1  => currentByte <= X"38"; RS_sig <= '0';
            when 2  => currentByte <= X"38"; RS_sig <= '0';
            when 3  => currentByte <= X"38"; RS_sig <= '0';
            when 4  => currentByte <= X"38"; RS_sig <= '0';
            when 5  => currentByte <= X"38"; RS_sig <= '0';
            when 6  => currentByte <= X"01"; RS_sig <= '0';
            when 7  => currentByte <= X"0C"; RS_sig <= '0';
            when 8  => currentByte <= X"06"; RS_sig <= '0';
            when 9  => currentByte <= X"80"; RS_sig <= '0';
            when 10 => currentByte <= X"53"; RS_sig <= '1';
            when 11 => currentByte <= X"79"; RS_sig <= '1';
            when 12 => currentByte <= X"73"; RS_sig <= '1';
            when 13 => currentByte <= X"74"; RS_sig <= '1';
            when 14 => currentByte <= X"65"; RS_sig <= '1';
            when 15 => currentByte <= X"6D"; RS_sig <= '1';
            when 16 => currentByte <= X"FE"; RS_sig <= '1';
            when 17 => currentByte <= X"52"; RS_sig <= '1';
            when 18 => currentByte <= X"65"; RS_sig <= '1';
            when 19 => currentByte <= X"61"; RS_sig <= '1';
            when 20 => currentByte <= X"64"; RS_sig <= '1';
            when 21 => currentByte <= X"79"; RS_sig <= '1';
            when 22 => currentByte <= X"C0"; RS_sig <= '0';--REPEAT FROM HERE
            when 23 => currentByte <= X"3D"; RS_sig <= '1';
            when 24 => currentByte <= X"3D"; RS_sig <= '1';
            when 25 => currentByte <= X"3E"; RS_sig <= '1';
            when 26 => currentByte <= X"44"; RS_sig <= '1';
            when 27 => currentByte <= X"45"; RS_sig <= '1';
            when 28 => currentByte <= X"41"; RS_sig <= '1';
            when 29 => currentByte <= X"44"; RS_sig <= '1';
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
