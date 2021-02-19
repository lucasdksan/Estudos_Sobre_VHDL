--
--
--		Estudos Sobre VHDL.
--
--		Projetos RTL.
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity test_RTL is port
(
	a: in std_logic_vector(3 downto 0);
	s: out std_logic_vector(1 downto 0)
);
end test_RTL;

architecture hardware of test_RTL is
begin
	process(a)
		begin	 
			case a is 
				when "0000" => s <= "01";
				when "0010" => s <= "10";
				when "1010" => s <= "11";
				when others => s <= "00";
			end case;
	end process;
end hardware;