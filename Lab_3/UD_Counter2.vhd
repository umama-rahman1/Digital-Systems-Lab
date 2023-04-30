library IEEE;
use IEEE.std_logic_1164.all;

entity UD_Counter2 is
	port(X, E, CLK, PRN, CLRN: in std_logic;
			COUNT: out std_logic_vector(1 downto 0));
end UD_Counter2;

architecture behavioral of UD_Counter2 is
	component JK_FlipFlop is
		port (PRN, CLRN, J, K, CLK: in std_logic;
				Q, QN: out std_logic);
	end component;
	signal JA, KA, QA, QAbar, JB, KB, QB, QBbar: std_logic;
	begin
		JA <= E;
		KA <= E;
		-- JB <= (QA and X) or (not X and not QA);
		-- KB <= (QA and X) or (not X and not QA);
		JB <= ((QA XNOR X) and E);
		KB <= ((QA XNOR X) and E);
		
		JKFFA: JK_FlipFlop port map(PRN, CLRN, E, E, CLK, QA, QAbar);
		JKFFB: JK_FlipFlop port map(PRN, CLRN, JB, KB, CLK, QB, QBbar);
		
		COUNT <= QB & QA;
		
end behavioral;