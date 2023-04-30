library IEEE;
use IEEE.std_logic_1164.all;

entity JK_FlipFlop is
	port (PRN, CLRN, J, K, CLK: in std_logic;
			Q, QN: out std_logic);
end JK_FlipFlop;

architecture behavioral of JK_FlipFlop is
	signal Qtemp: std_logic;

begin
	Q <= Qtemp;
	QN <= not Qtemp;
	process(CLK)
	begin
		if CLRN = '0' then
			Qtemp <= '0';
		elsif PRN = '0' then
			Qtemp <= '1';
		elsif CLK'event and CLK = '1' then
			Qtemp <= (J and not Qtemp) or (not K and Qtemp);
		end if;
	end process;
end behavioral;




--architecture behavioral of JK_FlipFlop is
--	signal Qint, Qintbar: std_logic;
--begin
--	Q <= Qint;
--	QN <= Qintbar;
--	
--	process(PRN, CLRN, CLK)
--	begin
--		if PRN='0' and CLRN='0' then
--			Qint<='1';
--			Qintbar<='1';
--		elsif PRN='1' and CLRN='0' then
--			Qint<='0';
--			Qintbar<='1';
--		elsif PRN='0' and CLRN='1' then
--			Qint<='1';
--			Qintbar<='0';
--		elsif CLK'event and CLK='1' then
--			Qint <= (J and not Qint) or (not K and Qint);
--			Qintbar <= not ((J and not Qint) or (not K and Qint));
--		end if;
--	end process;
--end behavioral;