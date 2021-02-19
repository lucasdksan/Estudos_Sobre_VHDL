--
--
--		Processos em VHDL 
--		Decodificador 2 para 4
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity decod_2_to_4 is port
(
	B: in std_logic_vector( 1 downto 0 );
	Y: out std_logic_vector( 3 downto 0 );
	EN: in std_logic
);

end decod_2_to_4;

architecture hardware of decod_2_to_4 is
begin
	process(B,EN)
		begin
			Y <= "ZZZZ";
			if(EN = '1') then 
				case B is 
					when "00" => Y <= "0001";
					when "01" => Y <= "0010";
					when "10" => Y <= "0100";
					when "11" => Y <= "1000";
					when others => Y <= "0000";
				end case;
			end if;
	end process;
end hardware;