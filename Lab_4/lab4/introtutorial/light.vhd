LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY light IS
	PORT(SW: in std_logic_vector(9 downto 0);
			LEDR: out std_logic_vector(9 downto 0));
END light ;

ARCHITECTURE LogicFunction OF light IS
	BEGIN
		LEDR(0) <= (SW(0) and not SW(1)) or (not SW(0) and SW(1));
END LogicFunction ;