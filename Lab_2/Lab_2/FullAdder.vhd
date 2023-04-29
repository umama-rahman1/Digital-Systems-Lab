entity FullAdder is
	port(X, Y, Cin: in bit;
	Cout, Sum: out bit);
end FullAdder;

architecture Equations of FullAdder is
begin
	Sum<= (X xor Y) xor Cin;
	Cout <= (X and Y) or ((X xor Y) and Cin);
end Equations;