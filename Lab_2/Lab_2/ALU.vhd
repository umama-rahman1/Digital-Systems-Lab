entity ALU is
	port(
		A: in bit_vector(7 downto 0);
		B: in bit_vector(7 downto 0);
		O: in bit;
		P: in bit;
		C: out bit;
		S: out bit_vector(7 downto 0) -- Final output
		); -- Overflow
end ALU;

architecture Structure of ALU is
	signal AandB: bit_vector(7 downto 0);
	signal AorB: bit_vector(7 downto 0);
	signal Sum: bit_vector(7 downto 0);
	signal Cin: bit;
	
	component AddSub8
		port(A, B: in bit_vector(7 downto 0); Cin: in bit; 
			Sum: out bit_vector(7 downto 0); Cout: out bit); 
	end component;
	
	component mux4
		port(
		I1: in bit_vector(7 downto 0);
		I2: in bit_vector(7 downto 0);
		I3: in bit_vector(7 downto 0);
		I4: in bit_vector(7 downto 0);
		O: in bit;
		P: in bit;
		F: out bit_vector(7 downto 0)); -- Final output of MUX
	end component;

	
	begin
		AddSub81: AddSub8 port map(A, B, Cin, Sum, C);
		MUX1: mux4 port map(AandB, AorB, Sum, Sum, O, P, S);
		process(A, B, O, P)
			begin
			AandB <= A and B;
			AorB <= A or B;
			Cin <= O and P;

		end process;
	end Structure;
