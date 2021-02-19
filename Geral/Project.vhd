--
--	Porta lógica AND descrita em VHDL...
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity project is port -- Declaração da entidade.
(
	a: in std_logic;
	b: in std_logic;
	c: out std_logic
);

end project;

--Inicio da Arquitetura.
architecture hardware of project is 
begin													-- Inicia o projeto.
	c <=a and b;
end hardware;