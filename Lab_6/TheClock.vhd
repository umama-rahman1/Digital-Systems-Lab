library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;

entity digital_clock is
	port( CLOCK_50: in STD_LOGIC; KEY: in STD_LOGIC_VECTOR(3 downto 0); SW: in STD_LOGIC_VECTOR(7 downto 0);
	HEX5, HEX4, HEX3, HEX2, HEX1, HEX0: out std_logic_vector(6 downto 0));
end digital_clock;

architecture behavioral of digital_clock is
    component counter26bit
		port(clk, clrb, enb: in std_logic;
   		 --l: in std_logic_vector(25 downto 0);
        	q: out std_logic_vector(25 downto 0));
	end component;
	
	component counter26 is
   port( clk, clrb, enb: in std_logic;
   		 --l: in std_logic_vector(25 downto 0);
        	q: out std_logic_vector(25 downto 0));
	end component;
	
	component SevenSegDecoder is
	Port( SW: in std_logic_vector(7 downto 0);
			HEX0, HEX1 : out std_logic_vector(6 downto 0));
	end component;

signal one_sec, counter_ld: std_logic;
signal counter_hr, counter_min, counter_sec: integer := 0;

signal hr_1: std_logic_vector(3 downto 0):= "0000"; -- 10s of hrs
signal hr_0: std_logic_vector(3 downto 0):= "0000"; -- hrs
signal hr_display: std_logic_vector(7 downto 0):= "00000000";
signal min_1: std_logic_vector(3 downto 0):= "0000"; -- 10s of mins
signal min_0: std_logic_vector(3 downto 0):= "0000"; -- mins
signal min_display: std_logic_vector(7 downto 0):= "00000000";
signal sec_1: std_logic_vector(3 downto 0):= "0000"; -- 10s of secs
signal sec_0: std_logic_vector(3 downto 0):= "0000"; -- secs
signal sec_display: std_logic_vector(7 downto 0):= "00000000";
signal timer_count: std_logic_vector(25 downto 0);
--signal timer_counter: std_logic_vector(25 downto 0);
signal timer_load: std_logic_vector(25 downto 0):= "00000000000000000000000000";
signal en: std_logic:= KEY(1);
signal HEX_5, HEX_4, HEX_3, HEX_2, HEX_1, HEX_0: std_logic_vector(6 downto 0);
signal clrb: std_logic;


begin
  --count_1sec: counter26bit port map (CLOCK_50, clrb, en, timer_count); --put in the component parts
--counter1Sec: counter26 port map (CLOCK_50, clrb, en, timer_counter);
    dut: counter26
        port map (
            clk => CLOCK_50,
            clrb => clrb,
            enb => en,
            q => timer_count
        );
  
 
 --one_sec <=timer_count(25) and timer_count(23) and timer_count(22) and timer_count(21) and timer_count(20) and timer_count(19) and timer_count(17) and timer_count(15) and timer_count(14) and timer_count(13) and timer_count(12) and timer_count(6) and timer_count(5) and timer_count(4) and timer_count(3) and timer_count(2) and timer_count(1) and timer_count(0);
--	with timer_count select
--  one_sec <= '1' when "10111110101111000010000000", -- Apply 1 cycle = 1 sec for testing
--             '0' when others;
				 
--				 with timer_count select
--  one_sec <= '1' when "00000000000000000000000001", -- Apply 1 cycle = 1 sec for testing
--             '0' when others;
				 
	--one_sec <= timer_count(0);
 
  process(one_sec, KEY) -- commenting out to do test
  --process(CLOCK_50, KEY)
  begin
--		if (KEY(2) = '1') then
--			counter_hr <= to_integer(unsigned(SW(7 downto 4)))*10 + to_integer(unsigned(SW(3 downto 0)));
--		end if;
--		if (KEY(3) = '1') then
--			counter_min <= to_integer(unsigned(SW(7 downto 4)))*10 + to_integer(unsigned(SW(3 downto 0)));
--		end if;
--		if (KEY(0) = '0') then
--			counter_hr <= 0;
--			counter_min <= 0;
--			counter_sec <= 0;
--		elsif(one_sec = '1') then
		--elsif(rising_edge(CLOCK_50)) then
		if(rising_edge(one_sec)) then
		--if(rising_edge(CLOCK_50)) then
			counter_sec <= counter_sec + 1;
			if (counter_sec > 59) then
				counter_min <= counter_min + 1;
				counter_sec <= 0;
				if (counter_min >= 59) then
					counter_hr <= counter_hr + 1;
					counter_min <= 0;
					if (counter_hr >= 24) then
						counter_hr <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;

	hr_1 <= "0010" when counter_hr >= 20 else
	"0001" when counter_hr >= 10 else
	"0000";
	
	hr_0 <= std_logic_vector(to_unsigned((counter_hr - to_integer(unsigned(hr_1))*10),4));
	
	hr_display <= hr_1 & hr_0;
	
	hours_display: SevenSegDecoder port map(hr_display, HEX_4, HEX_5); 
	
	min_1 <= "1001" when counter_min >= 50 else
	"1000" when counter_min >= 40 else
	"0101" when counter_min >= 30 else
	"0010" when counter_min >= 20 else
	"0001" when counter_min >= 10 else
	"0000";
	
	min_0 <= std_logic_vector(to_unsigned((counter_min - to_integer(unsigned(min_1))*10),4));
	
	min_display <= min_1 & min_0;
	
	minutes_display: SevenSegDecoder port map(min_display, HEX_2, HEX_3); 
	
	sec_1 <= "1001" when counter_sec >= 50 else
	"1000" when counter_sec >= 40 else
	"0101" when counter_sec >= 30 else
	"0010" when counter_sec >= 20 else
	"0001" when counter_sec >= 10 else
	"0000";
	
	sec_0 <=  std_logic_vector(16 - unsigned(std_logic_vector(to_unsigned((counter_sec - to_integer(unsigned(sec_1))*10),4))));
	
	sec_display <= sec_1 & sec_0;
	
	seconds_display: SevenSegDecoder port map(sec_display, HEX_0, HEX_1); 
	HEX5 <= HEX_5;
	HEX4 <= HEX_4;
	HEX3 <= HEX_3;
	HEX2 <= HEX_2;
	HEX1 <= HEX_1;
	HEX0 <= HEX_0;
	
end behavioral;
	
	

	
	
