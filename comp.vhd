library ieee;
use ieee.std_logic_1164.all;

entity comp is 
-- declaração das portas de entrada
port (X : in std_logic_vector (3 downto 0);
		sel: in std_logic;
-- declaração das portas de saída
		Y: out std_logic_vector (3 downto 0)
		) ; 
end comp; 

architecture clcomp of comp is 
begin
-- funcionamento da arquitetura do módulo comp (complemento a um)
-- as saídas são equivalentes ao 'xor' com o sinal de controle KX ou KY
 Y(0) <= X(0) xor sel;
 Y(1) <= X(1) xor sel;
 Y(2) <= X(2) xor sel;
 Y(3) <= X(3) xor sel;
end clcomp;
