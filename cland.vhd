library ieee;
use ieee.std_logic_1164.all;

entity cland is 
-- declaração das portas de entrada
port (A,B: in std_logic_vector (3 downto 0);
-- declaração das portas de saída
		Y: out std_logic_vector (3 downto 0) ) ; 
end cland; 

architecture andbit of cland is 
begin
-- funcionamento da arquitetura do módulo cl and
-- as saídas são equivalentes ao 'and' bit a bit com os sinais de entrada
 Y(0) <= A(0) and B(0);
 Y(1) <= A(1) and B(1);
 Y(2) <= A(2) and B(2);
 Y(3) <= A(3) and B(3);
end andbit;
