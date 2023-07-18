library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	
	port(
		clk, rst : in std_logic;
		X			: out std_logic_vector(3 downto 0)
		);
end contador;

architecture rtl of contador is

	signal q_temp : unsigned (3 downto 0);

begin

	contagem : process(clk, rst)
	begin
	-- reset assincrono
		if rst = '1' then
			q_temp <= (others => '0');
			
		elsif falling_edge(clk) then
			q_temp <= q_temp + 1;
		end if;
	end process;
	
	X <= std_logic_vector(q_temp);

end rtl;