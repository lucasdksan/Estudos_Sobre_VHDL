--
--	Porta lógica AND descrita em VHDL...
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity first_step is port -- Declaração da entidade.
(
	a: in std_logic;
	b: in std_logic;
	c: out std_logic
);

end first_step;

--Inicio da Arquitetura.
architecture hardware of first_step is 
begin													-- Inicia o projeto.
	c <=a and b;
end hardware;