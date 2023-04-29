entity AddSub8 is
	port(A, B: in bit_vector(7 downto 0); Cin: in bit; -- Inputs
			Sum: out bit_vector(7 downto 0); Cout: out bit); -- Outputs
end AddSub8;

architecture Structure of AddSub8 is
	component FullAdder
		port (X, Y, Cin: in bit;
				Cout, Sum: out bit);
	end component;
	
	signal C: bit_vector(6 downto 0); -- Internal carries between the adders 0 to 6
	
begin
	FA0: FullAdder port map(A(0), (B(0) xor Cin), Cin, C(0), Sum(0));
	FA1: FullAdder port map(A(1), (B(1) xor Cin), C(0), C(1), Sum(1));
	FA2: FullAdder port map(A(2), (B(2) xor Cin), C(1), C(2), Sum(2));
	FA3: FullAdder port map(A(3), (B(3) xor Cin), C(2), C(3), Sum(3));
	FA4: FullAdder port map(A(4), (B(4) xor Cin), C(3), C(4), Sum(4));
	FA5: FullAdder port map(A(5), (B(5) xor Cin), C(4), C(5), Sum(5));
	FA6: FullAdder port map(A(6), (B(6) xor Cin), C(5), C(6), Sum(6));
	FA7: FullAdder port map(A(7), (B(7) xor Cin), C(6), Cout, Sum(7));
end Structure;
