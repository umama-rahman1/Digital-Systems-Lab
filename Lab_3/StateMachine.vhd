library ieee;
use ieee.std_logic_1164.all;

entity StateMachine is
	port(PRN, CLRN, CLK : in std_logic; state: out std_logic_vector(1 downto 0);
		  Y: out std_logic);
end StateMachine;

architecture structural of StateMachine is

	component JK_FlipFlop is
		port (PRN, CLRN, J, K, CLK: in std_logic;
				Q, QN: out std_logic);
	end component;

	signal D1, D2, D1bar, D2bar, Q1,Q2, QX, X: std_logic;
	begin	
		D1 <= Q2;
		D1bar <= not D1;
		D2 <= ((X and (Q1 XOR Q2)) OR ( not X and ( Q1 XNOR Q2)));
		D2bar <= not D2;

		JKFF1: JK_FlipFlop port map (PRN, CLRN, D1, D1bar, CLK, Q1, QX);
		
		JKFF2: JK_FlipFlop port map (PRN, CLRN, D2, D2bar , CLK, Q2, QX);
	
		state <= Q1 & Q2;
		Y <= ((X XOR Q1) XOR Q2);
		X<=Q2;

end structural;
