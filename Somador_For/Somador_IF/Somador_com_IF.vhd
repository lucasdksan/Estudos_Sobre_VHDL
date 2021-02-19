--
--
--	Somador utilizando IF
--
--

entity Somador_com_IF is 
generic(n: integer :=4);
port(
	x, y: in bit_vector(n-1 downto 0);
	ze: in bit;
	s: out bit_vector(n-1 downto 0);
	zs: out bit
);
end Somador_com_IF;

architecture hardware of Somador_com_IF is
	signal v: bit_vector(n-1 downto 0);
	component som1_a
		port(
			a,b,ve: in bit;
			s,vs: out bit
		);
	end component;
	begin
		global: for i in 0 to n-1 generate
			sum_1: if i=0 generate 
				cel_1: som1_a port map(x(i), y(i), v(i), s(i), v(i+1));
			end generate sum_1;
			sum_2: if (i > 0) and (i < n-1)generate 
				cel_2: som1_a port map(x(i), y(i), v(i), s(i), v(i+1));
			end generate sum_2;
			sum_3: if i=n-1  generate 
				cel_3: som1_a port map(x(i), y(i), v(i), s(i), zs);
			end generate sum_3;
		end generate global;
end hardware;
			