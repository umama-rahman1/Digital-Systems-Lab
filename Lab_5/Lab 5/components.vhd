library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity counter20bit is
    port( clk, clrb, ld: in std_logic;
   		 l: in std_logic_vector(19 downto 0);
        	q: out std_logic_vector(19 downto 0));
end counter20bit;

architecture rtl of counter20bit is
    signal cnt: unsigned(19 downto 0);
    begin
   	 process(clk, clrb)
    	begin
   		 if (clrb = '0') then
       		 cnt <= "00000000000000000000";
        	elsif (clk'event) and (clk = '1') then
       		if (ld = '1') then
           		cnt <= unsigned(l);
				else
				 cnt <= cnt + "1";
				end if;
        	end if;
    	end process;
    	q <= std_logic_vector(cnt);
end rtl;

library IEEE;
use IEEE.std_logic_1164.all;

entity shiftreg10bit is
    port( s0, s1, sil, sir, clk, clrb: in std_logic;
   		 l: in std_logic_vector(9 downto 0);
        	q: out std_logic_vector(9 downto 0));
end shiftreg10bit;

architecture rtl of shiftreg10bit is
    signal regval: std_logic_vector(9 downto 0);
	 signal ctrl: std_logic_vector(1 downto 0);
    begin
   	 ctrl <= s1 & s0;
   	process(clk, clrb)
    	begin
   		 if (clrb = '0') then
       		 regval <= "0000000000";
        	elsif (clk'event and clk = '1') then
       		 case ctrl is
           		   when "11" => regval <= l;
                	when "10" => regval <= sir & regval(9 downto 1);
                	when "01" => regval <= regval(8 downto 0) & sil;
                	when others => regval <= regval;
             	end case;
         	end if;
    	end process;
    	q <= regval;
end rtl;
