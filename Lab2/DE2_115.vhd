LIBRARY ieee;
   USE ieee.std_logic_1164.all;

ENTITY DE2_115 IS
   PORT (
 -- 			Clock Input	
		CLOCK_50    : IN STD_LOGIC;								-- On Board 50 MHz
-- 			Push Button		      
		KEY         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);		-- Pushbutton[3:0]
-- 			

-- 			LED		      
		LEDG         : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);		-- LED [8:0]

  
-- 			SRAM Interface		      
		SRAM_DQ     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);		-- SRAM Data bus 16 Bits
		SRAM_ADDR   : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);		-- SRAM Address bus 20 Bits
		SRAM_UB_N   : OUT STD_LOGIC;									-- SRAM High-byte Data Mask
		SRAM_LB_N   : OUT STD_LOGIC;									-- SRAM Low-byte Data Mask
		SRAM_WE_N   : OUT STD_LOGIC;									-- SRAM Write Enable
		SRAM_CE_N   : OUT STD_LOGIC;									-- SRAM Chip Enable
		SRAM_OE_N   : OUT STD_LOGIC;									-- SRAM Output Enable

-- 			GPIO	      
		GPIO       	: INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);	-- GPIO Connection 0
--	   	

--			HEX

		HEX0		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX4		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX5		: OUT STD_LOGIC_VECTOR(6 DOWNTO 0)	                                                                                                    
   );
END DE2_115;

ARCHITECTURE structural OF DE2_115 IS

-- TOP LEVEL COMPONENT

component top_level is
--		port(
--		);
end component;

--SIGNALS

BEGIN

	
-- INSTANTIATION OF THE TOP LEVEL COMPONENT

END structural;