library IEEE;
use IEEE.std_logic_1164.all;
 
entity demo_display is
    port( RESET, clk, rstb: in std_logic;
   		 leds: out std_logic_vector(9 downto 0));
end demo_display;

architecture top of demo_display is
    
    component counter20bit is
   	 port( clk, clrb, ld: in std_logic;
   		 l: in std_logic_vector(19 downto 0);
        	 q: out std_logic_vector(19 downto 0));
    end component;
    
	 component shiftreg10bit is
   	 port( s0, s1, sil, sir, clk, clrb: in std_logic;
   		 l: in std_logic_vector(9 downto 0);
        	 q: out std_logic_vector(9 downto 0));
    end component;

    type state_type is (INIT, LEFT, RIGHT);
		signal current_state, next_state: state_type;
		signal led_init, led_vals: std_logic_vector(9 downto 0);
		signal clk_1mil_ld, clk_1mil_vals: std_logic_vector(19 downto 0);
		signal cnt10_ld, cnt10_vals: std_logic_vector(19 downto 0);
		signal ld_cnt, s0, s1, sil, sir, cnt_10, clk_1mil, not_clk_1mil: std_logic;
		signal ld_cnt_4: std_logic;
		signal shift_clk: std_logic;
    
	begin
   	led_init <= "0000000001";
    	clk_1mil_ld <= "00000000000000000000";
    	cnt10_ld <= "00000000000000000000";
		ld_cnt_4 <= led_vals(9) or led_vals(0);
		shift_clk <= (RESET OR clk_1mil);
		
		clk_1mil <= clk_1mil_vals(19) and clk_1mil_vals(18) and clk_1mil_vals(17) and clk_1mil_vals(16) and clk_1mil_vals(14) and clk_1mil_vals(9) and clk_1mil_vals(5) and clk_1mil_vals(4) and clk_1mil_vals(3) and clk_1mil_vals(2) and clk_1mil_vals(1); 
    	cnt1mil: counter20bit port map (clk, not_clk_1mil, ld_cnt, clk_1mil_ld, clk_1mil_vals); 
    	cnt10: counter20bit port map (clk_1mil, rstb, ld_cnt_4, cnt10_ld, cnt10_vals); 
    	shft10: shiftreg10bit port map (s0, s1, sil, sir, shift_clk, rstb, led_init, led_vals); 
    	sir <= '0';
    	sil <= '0';
    	cnt_10 <= cnt10_vals(0) and cnt10_vals(3);
		leds <= led_vals;
   	 
	process( clk, rstb) 
		begin
			if (rstb = '0') then
				current_state <= INIT;
			elsif (clk'event and clk = '1') then
				current_state <= next_state;
			end if;
	end process;
	 
	process(current_state, RESET, clk_1mil_vals, clk_1mil)
	begin
		s0 <= '0';
		s1 <= '0';
		ld_cnt <= '1';
		case current_state is
			when INIT =>
				s0<= '1';
				s1<= '1';
				ld_cnt <= '0','1'after 5 ns, '0' after 20 ns;
				if (clk_1mil = '1') then 
					next_state <= LEFT;
				else
					next_state <= INIT;
				end if;
			when LEFT =>
				s0 <= '1';
				s1 <= '0';
				if (RESET = '1') then
					ld_cnt <= '1';
					next_state <= LEFT;
				else
					if (clk_1mil = '0') then
						next_state <= LEFT;
					elsif ((clk_1mil = '1') and (cnt_10 = '0')) then
						next_state <= LEFT;
					elsif ((clk_1mil = '1') and (cnt_10 = '1')) then
						ld_cnt <= '1';
						next_state <= RIGHT;
					end if;
				end if;
			when RIGHT =>
				s0 <= '0';
				s1 <= '1';
				if (RESET = '1') then
					ld_cnt <= '1';
					next_state <= LEFT;
				else
					if (clk_1mil = '0') then
						next_state <= RIGHT;
					elsif ((clk_1mil = '1') and (cnt_10 = '0')) then
						next_state <= RIGHT;
					elsif ((clk_1mil = '1') and (cnt_10 = '1')) then
						ld_cnt <= '1';
						next_state <= LEFT;
					end if;
				end if;
		end case;
	end process;
end top;
	
					
						
								
									