library ieee;
use ieee.std_logic_1164.all;

entity toplevel is
	port (SW: in std_logic_vector(9 downto 0);
			KEY: in std_logic_vector(3 downto 0);
			LEDR: out std_logic_vector(9 downto 0);
			HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0));
end toplevel;

architecture top of toplevel is
	component SevenSegDecoder is
		port( SW0, SW1, SW2, SW3: in STD_LOGIC;
		D0, D1, D2, D3, D4, D5, D6: out STD_LOGIC);
	end component;
	
	begin
		LEDR <= "0000000000";
		HEX2 <= "1111111";
		HEX3 <= "1111111";
		HEX4 <= "1111111";
		HEX5 <= "1111111";
		
		Decoder1: SevenSegDecoder port map (SW(0), SW(1), SW(2), SW(3), HEX0(0), HEX0(1), HEX0(2), HEX0(3), HEX0(4), HEX0(5), HEX0(6));
		Decoder2: SevenSegDecoder port map (SW(4), SW(5), SW(6), SW(7), HEX1(0), HEX1(1), HEX1(2), HEX1(3), HEX1(4), HEX1(5), HEX1(6));
		
end top;
	