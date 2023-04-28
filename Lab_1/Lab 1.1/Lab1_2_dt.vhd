--Lab 1 part 2

entity Lab1_2_dt is
	port ( A , B , C , D , E , F : in bit;
	D1 , D2 , D3 , D4, D5 , D6 , AL : out bit );
end Lab1_2_dt;

architecture circuit2_1 of Lab1_2_dt is
begin
	D1 <= not A and not B and C and E;
	D2 <= not A and B and not C and F;
	D3 <= not A and B and C and ( D or E);
	D4 <= A and not B and not C and D and E;
	D5 <= A and not B and C and not D and E;
	D6 <= A and B and not C and D;
	AL <= A and B and C;
end circuit2_1;