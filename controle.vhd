library ieee;
use ieee.std_logic_1164.all;


entity controle is 
		port (f : in std_logic_vector (2 downto 0);
				KM0, KM1, KM2, C0, KX, KY: out std_logic ) ; 
end controle; 
	
architecture unidadecontrole of controle is 
begin
-- funcionamento da arquitetura do módulo de controle
 KM0 <= f(2) xor f(1);
 KM1 <= f(2) and f(1);
 KM2 <= f(2) and f(0);
 C0 <= not(f(2)) and (f(1) or f(0));
 KX <= not(f(0)) and (f(2) xor f(1));
 KY <= not(f(2)) and not(f(1)) and f(0);
end unidadecontrole;