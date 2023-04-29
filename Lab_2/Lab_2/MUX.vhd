entity mux4 is
	port(
		I1: in bit_vector(7 downto 0);
		I2: in bit_vector(7 downto 0);
		I3: in bit_vector(7 downto 0);
		I4: in bit_vector(7 downto 0);
		O: in bit;
		P: in bit;
		F: out bit_vector(7 downto 0));
end mux4;

architecture Structure of mux4 is
	signal sel: bit_vector(1 downto 0);
	
	begin
	sel <= O & P;
	process(I1, I2, I3, I4, sel)
	begin
		case sel is
			when "00" => F <= I1;
			when "01" => F <= I2;
			when "10" => F <= I3;
			when "11" => F <= I4;
		end case;
	end process;
end Structure;
