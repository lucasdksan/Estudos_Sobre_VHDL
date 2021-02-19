--
--
--	Somador completo de 1 bit.
--
--
entity regist is generic
(
	n: integer := 3			--		Genérico para definir o tamanho do barramento.
);
port
(
	rst, clk: in bit;
	d: in bit_vector(n-1 downto 0);	
	q: out bit_vector(n-1 downto 0)
);
end regist;

architecture hardware of regist is
begin
	process(rst, clk)
		begin
			if(rst='1') then q <= (others => '0' );
			elsif(clk'event and clk = '1') then q <= d;
			end if;
	end process;
end hardware;