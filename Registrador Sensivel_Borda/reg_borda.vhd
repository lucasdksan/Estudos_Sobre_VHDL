--
--
--		Registrador Sensível a Borda
--
--

library IEEE;
use IEEE.std_logic_1164.all;

entity reg_borda is port
(
	clk, rst, set: in bit;
	d: in bit_vector(2 downto 0);
	q: out bit_vector(2 downto 0) 
);
end reg_borda;

architecture hardware of reg_borda is
	begin
		process(clk)
			begin
				if(clk'event and clk = '1') then
					if (rst = '1') then q <= "000";
					elsif (set = '1') then q <= "111";
					else q <= d;
					end if;
				end if;
			end process;
end hardware;
					