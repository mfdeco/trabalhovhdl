library ieee;
use ieee.std_logic_1164.all;

entity clor is 
-- declaração das portas de entrada
port (A,B: in std_logic_vector (3 downto 0);
-- declaração das portas de saída
		Y: out std_logic_vector (3 downto 0) ) ; 
end clor; 

architecture orbit of clor is 
begin
-- funcionamento da arquitetura do módulo cl or
-- as saídas são equivalentes ao 'or' bit a bit com os sinais de entrada
 Y(0) <= A(0) or B(0);
 Y(1) <= A(1) or B(1);
 Y(2) <= A(2) or B(2);
 Y(3) <= A(3) or B(3);
end orbit;