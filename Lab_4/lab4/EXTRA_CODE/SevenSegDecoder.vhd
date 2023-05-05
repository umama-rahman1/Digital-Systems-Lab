library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SevenSegDecoder is
	Port( SW: in std_logic_vector(9 downto 0);
			HEX0, HEX1 : out std_logic_vector(6 downto 0));
end SevenSegDecoder;

architecture behavioral of SevenSegDecoder is
	begin 
		HEX0(0) <= (SW(0) and not SW(1) and not SW(2) and not SW(3)) or (SW(0) and SW(1) and not SW(2) and SW(3)) or (SW(0) and not SW(1) and SW(2) and SW(3)) or (not SW(0) and not SW(1) and SW(2) and not SW(3));
		HEX0(1) <= (SW(0) and not SW(1) and SW(2) and not SW(3)) or (SW(0) and SW(1) and SW(3)) or (not SW(0) and SW(2) and SW(3)) or (not SW(0) and SW(1) and SW(2));
		HEX0(2) <= (not SW(0) and SW(1) and not SW(2) and not SW(3)) or (SW(1) and SW(2) and SW(3)) or (not SW(0) and SW(2) and SW(3));
		HEX0(3) <= (SW(0) and not SW(1) and not SW(2)) or (SW(0) and SW(1) and SW(2)) or (not SW(0) and SW(1) and not SW(2) and SW(3)) or (not SW(0) and not SW(1) and SW(2) and not SW(3));
		HEX0(4) <= (SW(0) and not SW(3)) or (SW(0) and not SW(1) and not SW(2)) or (not  SW(1) and SW(2) and not SW(3));
		HEX0(5) <= (SW(0) and not SW(1) and SW(2) and SW(3)) or (SW(0) and SW(1) and not SW(3)) or (SW(0) and not SW(2) and not SW(3)) or (SW(1) and not SW(2) and not SW(3));
		HEX0(6) <= (SW(0) and SW(1) and SW(2) and not SW(3)) or (not SW(0) and not SW(1) and SW(2) and SW(3)) or (not SW(1) and not SW(2) and not SW(3));
		
		HEX1(0) <= (SW(4) and not SW(5) and not SW(6) and not SW(7)) or (SW(4) and SW(5) and not SW(6) and SW(7)) or (SW(4) and not SW(5) and SW(6) and SW(7)) or (not SW(4) and not SW(5) and SW(6) and not SW(7));
		HEX1(1) <= (SW(4) and not SW(5) and SW(6) and not SW(7)) or (SW(4) and SW(5) and SW(7)) or (not SW(4) and SW(6) and SW(7)) or (not SW(4) and SW(5) and SW(6));
		HEX1(2) <= (not SW(4) and SW(5) and not SW(6) and not SW(7)) or (SW(5) and SW(6) and SW(7)) or (not SW(4) and SW(6) and SW(7));
		HEX1(3) <= (SW(4) and not SW(5) and not SW(6)) or (SW(4) and SW(5) and SW(6)) or (not SW(4) and SW(5) and not SW(6) and SW(7)) or (not SW(4) and not SW(5) and SW(6) and not SW(7));
		HEX1(4) <= (SW(4) and not SW(7)) or (SW(4) and not SW(5) and not SW(6)) or (not  SW(5) and SW(6) and not SW(7));
		HEX1(5) <= (SW(4) and not SW(5) and SW(6) and SW(7)) or (SW(4) and SW(5) and not SW(7)) or (SW(4) and not SW(6) and not SW(7)) or (SW(5) and not SW(6) and not SW(7));
		HEX1(6) <= (SW(4) and SW(5) and SW(6) and not SW(7)) or (not SW(4) and not SW(5) and SW(6) and SW(7)) or (not SW(5) and not SW(6) and not SW(7));
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
	
		
		
		