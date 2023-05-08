library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder_test is
	port (CLOCK_50, enb: in std_logic;KEY: in STD_LOGIC_VECTOR(3 downto 0);
			HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(6 downto 0));
end decoder_test;

architecture behavioral of decoder_test is 
	component SevenSegDecoder is
		port( SW: in std_logic_vector(7 downto 0);
			HEX0, HEX1 : out std_logic_vector(6 downto 0));
	end component;
	
	signal HEX_5, HEX_4, HEX_3, HEX_2, HEX_1, HEX_0: std_logic_vector(6 downto 0);
	signal sec_display: std_logic_vector(7 downto 0):= "01011001";
	signal min_display: std_logic_vector(7 downto 0):= "00100001";
	signal hr_display: std_logic_vector(7 downto 0):= "00010100";
	
	begin
	hours_display: SevenSegDecoder port map(hr_display, HEX_4, HEX_5); -- 14
	
	minutes_display: SevenSegDecoder port map(min_display, HEX_2, HEX_3); -- 21
	
	seconds_display: SevenSegDecoder port map(sec_display, HEX_0, HEX_1); -- 59

	HEX5 <= HEX_5;
	HEX4 <= HEX_4;
	HEX3 <= HEX_3;
	HEX2 <= HEX_2;
	HEX1 <= HEX_1;
	HEX0 <= HEX_0;

	
end behavioral;