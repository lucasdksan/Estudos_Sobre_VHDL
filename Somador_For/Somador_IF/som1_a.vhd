--
--	Somador de 1 bit
--

entity som1_a is port 
(
	a,b,ve: in bit;
	s, vs: out bit
);
end som1_a;

architecture sum of som1_a is
begin
	s <= a xor b xor ve;
	vs <= (a and b) or (a and ve) or (b and ve);
end sum;