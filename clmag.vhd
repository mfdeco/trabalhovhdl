library ieee;
use ieee.std_logic_1164.all;

entity clmag is 
-- declaração das portas de entrada
port (A,B: in std_logic_vector (3 downto 0);
-- declaração das portas de saída
magnitude: out std_logic_vector (3 downto 0) ) ; 
end clmag; 

architecture compmag of clmag is 
signal maior, igual:  std_logic;
begin
-- funcionamento da arquitetura do módulo cl mag
	
	maior <= (A(3) and not(B(3))) or ((not(A(3) xor B(3))) and (A(2) and not(B(2)))) or (( not(A(3) xor B(3))) and ( not(A(2) xor B(2))) and (A(1) and not(B(1)))) or (( not(A(3) xor B(3))) and ( not(A(2) xor B(2))) and ( not(A(1) xor B(1))) and (A(0) and not(B(0))));
	igual <= (not(A(3) xor B(3))) and (not(A(2) xor B(2))) and (not(A(1) xor B(1))) and (not(A(0) xor B(0)));
	magnitude(0) <= maior;
	magnitude(1) <= igual;
	magnitude(2) <= not(maior) and not(igual);
	magnitude(3) <= '0';

end compmag;
