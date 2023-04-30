library ieee;
use ieee.std_logic_1164.all;

entity JK_FF is
	port(j, k, CLK, CLR, PR: in std_logic;
			Q, QB: out std_logic);
end JK_FF;

architecture behavioral of JK_FF is
	signal temp: std_logic;
	
begin
	Q <= temp;
	QB <= not temp;
	process(CLK)
	begin
		if CLR = '1' then
			temp <= '0';
		elsif PR = '1' then
			temp <= '1';
		elsif CLK'event and CLK = '1' then
			temp <= (j and not temp) or (not k and temp);
		end if;
	end process;
end behavioral;


												
library ieee;
use ieee.std_logic_1164.all;

entity Lab3_BA is
	port(X, E, CLK : in std_logic;
		  Y: out std_logic_vector(1 downto 0));
end Lab3_BA;

architecture structural of Lab3_BA is

component JK_FF is
	port(j, k, CLK, CLR, PR: in std_logic;
	     Q, QB: out std_logic);
end component;

signal Q1,Q2, QX: std_logic;
begin	
		FF0: JK_FF port map (E, E, CLK, '0', '0', Q1, QX);
		
		FF1: JK_FF port map (((Q1 XNOR X) and E), ((Q1 XNOR X) and E), CLK, '0', '0', Q2, QX);	

		Y <= Q2 & Q1;

end structural;
