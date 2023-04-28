--Data Transfer Level of Lab 1.1
entity Lab1_1_1DT is
	port ( A , B , D : in bit;
	E : out bit );
end Lab1_1_1DT;

architecture circuit1_1DT of Lab1_1_1DT is
	signal C : bit;
begin
	C <= A and B;
	E <= C or D; 
end circuit1_1DT;

--Structural of Lab 1.1

entity Lab1_1_1ST is
	port ( A , B , D : in bit;
	E : out bit );
end Lab1_1_1ST;

architecture circuit1_1ST of Lab1_1_1ST is
	signal C : bit ;
	component and_gate
		port( AI, BI:bit; 
			CO:bit);
	end component;
		
	component or_gate
		port( CI, DI:bit; 
			EO:bit);
	end component;

begin
	g1: and_gate port map (AI => A, BI => B, CO => C);
	g2: or_gate port map (CI => C, DI => D, EO => E);
end circuit1_1ST;

--Lab 1.2 part

entity Lab2_1_1 is
	port ( A , B , C , D , E , F : in bit;
	D1 , D2 , D3 , D4, D5 , D6 , AL : out bit );
end Lab1_1_1;

architecture circuit2_1 of Lab2_1_1 is
begin
	D1 <= not A and not B and C and E;
	D2 <= not A and B and not C and F;
	D3 <= not A and B and C and ( D or E);
	D4 <= A and not B and not C and D and E;
	D5 <= A and not B and C and not D and E;
	D6 <= A and B and not C and D;
	AL <= A and B and C;
end circuit2_1;