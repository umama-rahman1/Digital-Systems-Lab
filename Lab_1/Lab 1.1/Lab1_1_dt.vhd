--Data Transfer Level of Lab 1.1
entity Lab1_1_dt is
	port ( A , B , D : in bit;
	E : out bit );
end Lab1_1_dt;

architecture circuit1_1DT of Lab1_1_dt is
	signal C : bit;
begin
	C <= A and B;
	E <= C or D; 
end circuit1_1DT;