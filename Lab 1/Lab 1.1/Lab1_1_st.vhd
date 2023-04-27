--Structural of Lab 1.1

--Structure of AND gate
entity and_gate is
	port (a, b: in bit;
			c: out bit);
end and_gate;

architecture arch of and_gate is
begin
	c <= a and b;
end arch;

--Structure of OR gate
entity or_gate is
	port (c, d: in bit;
			e: out bit);
end or_gate;

architecture arch of or_gate is
begin
	e <= c or d;
end arch;

--Structure of main circuit

entity Lab1_1_st is
	port ( A , B , D : in bit;
	E : out bit );
end Lab1_1_st;

architecture circuit1_1ST of Lab1_1_st is
	signal C : bit ;
	component and_gate
		port( a, b: in bit; 
			c:out bit);
	end component;
		
	component or_gate
		port( c, d: in bit; 
			e:out bit);
	end component;
	
begin
	g1: and_gate port map (A, B, C);
	g2: or_gate port map (C, D, E);
end circuit1_1ST;