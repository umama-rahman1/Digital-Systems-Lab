library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter26bit is
    port( clk, clrb, enb: in std_logic;
   		 --l: in std_logic_vector(25 downto 0);
        	q: out std_logic_vector(25 downto 0));
end counter26bit;

architecture rtl of counter26bit is
    signal cnt: unsigned(25 downto 0) :="00000000000000000000000000";
    begin
   	process(clk, clrb)
    	begin
   		if (clrb = '0') then
       		 cnt <= "00000000000000000000000000";
        	elsif (clk'event) and (clk = '1') then
				if(enb = '1') then
					--if (ld = '1') then
						--cnt <= unsigned(l);
					--else
					 cnt <= cnt + "1";
					--end if;
				end if;
				
        	end if;
    	end process;
    	q <= std_logic_vector(cnt);
end rtl;

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter26 is
    port( clk, clrb, enb: in std_logic;
   		 --l: in std_logic_vector(25 downto 0);
        	q: out std_logic_vector(25 downto 0));
end counter26;

architecture rtl of counter26 is
    signal cnt: unsigned(25 downto 0) :="00000000000000000000000000";
    begin
   	process(clk, clrb)
    	begin
   		if (clrb = '0') then
       		 cnt <= "00000000000000000000000000";
        	elsif (clk'event) and (clk = '1') then
				if(enb = '1') then
					--if (ld = '1') then
						--cnt <= unsigned(l);
					--else
					 cnt <= cnt + "1";
					--end if;
				end if;
				if(cnt="10111110101111000001111111") then
				--if(cnt="00100110001001011001111111") then
				--if(cnt="01011011100011010111111111") then
				--if(cnt="00000000000000000000000001") then
					cnt<="00000000000000000000000000";
				end if;
        	end if;
    	end process;
    	q <= std_logic_vector(cnt);
end rtl;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SevenSegDecoder is
	Port( SW: in std_logic_vector(7 downto 0);
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
