library ieee;
use ieee.std_logic_1164.all;

entity flags is 
-- declaração das portas de entrada
port (S : in std_logic_vector (3 downto 0);
		Cn_1,Cn: in std_logic;
-- declaração das portas de saída
	zeros,overflow,sinal,carryout: out std_logic ) ; 
end flags; 

architecture sinalizador of flags is 
begin
-- funcionamento da arquitetura do módulo flags

 zeros <= not(S(0) or S(1) or S(2) or S(3));
 overflow <= Cn_1 xor Cn;
 sinal <= S(3);
 carryout <= Cn;
end sinalizador;
