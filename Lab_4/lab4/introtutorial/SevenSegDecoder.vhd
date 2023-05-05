library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SevenSegDecoder is
	Port( SW0, SW1, SW2, SW3: in STD_LOGIC;
	D0, D1, D2, D3, D4, D5, D6: out STD_LOGIC);
end SevenSegDecoder;

architecture behavioral of SevenSegDecoder is
	begin 
		D0 <= (SW0 and not SW1 and not SW2 and not SW3) or (SW0 and SW1 and not SW2 and SW3) or (SW0 and not SW1 and SW2 and SW3) or (not SW0 and not SW1 and SW2 and not SW3);
		D1 <= (SW0 and not SW1 and SW2 and not SW3) or (SW0 and SW1 and SW3) or (not SW0 and SW2 and SW3) or (not SW0 and SW1 and SW2);
		D2 <= (not SW0 and SW1 and not SW2 and not SW3) or (SW1 and SW2 and SW3) or (not SW0 and SW2 and SW3);
		D3 <= (SW0 and not SW1 and not SW2) or (SW0 and SW1 and SW2) or (not SW0 and SW1 and not SW2 and SW3) or (not SW0 and not SW1 and SW2 and not SW3);
		D4 <= (SW0 and not SW3) or (SW0 and not SW1 and not SW2) or (not  SW1 and SW2 and not SW3);
		D5 <= (SW0 and not SW1 and SW2 and SW3) or (SW0 and SW1 and not SW3) or (SW0 and not SW2 and not SW3) or (SW1 and not SW2 and not SW3);
		D6 <= (SW0 and SW1 and SW2 and not SW3) or (not SW0 and not SW1 and SW2 and SW3) or (not SW1 and not SW2 and not SW3);
end behavioral;

--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--
--entity testSSD is 
--end testSSD;
--
--architecture test of testSSD is
--	component SevenSegDecoder is
--		port( I0, I1, I2, I3: in STD_LOGIC;
--		O0, O1, O2, O3, O4, O5, O6: out STD_LOGIC);
--	end component;
--	
--	signal S0, S1, S2, S3, T0, T1, T2, T3, T4, T5, T6 : STD_LOGIC;
--	
--	begin
--		SSD1: SevenSegDecoder port map( S0, S1, S2, S3, T0, T1, T2, T3, T4, T5, T6);
--		
--		S0 <= not S0 after 50 ns ;
--		S1 <= not S1 after 100 ns ;
--		S2 <= not S2 after 200 ns ;
--		S3 <= not S3 after 400 ns ;
--end test;
--	
--		
--		
--		