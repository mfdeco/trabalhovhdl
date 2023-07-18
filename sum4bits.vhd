library ieee;
use ieee.std_logic_1164.all;

entity sum4bits is 
port
(
-- declaração das variáveis de entrada
	X , Y: in std_logic_vector (3 downto 0);
	C0: in std_logic;
	-- declaração das variáveis de saída
	S : out std_logic_vector (3 downto 0);
	Cn,Cn_1: out std_logic
);
end sum4bits;

architecture somador of sum4bits is
-- sinais de carry out intermediários
	signal C1,C2,C3: std_logic;

begin
	-- primeiro somador
	S(0)<=X(0) XOR Y(0) XOR C0;
	C1<= (X(0) AND Y(0)) OR (X(0) AND C0) OR (Y(0) AND C0);
	--segundo somador
	S(1)<=X(1) XOR Y(1) XOR C1;
	C2<= (X(1) AND Y(1)) OR (X(1) AND C1) OR (Y(1) AND C1);
	--terceiro somador
	S(2)<=X(2) XOR Y(2) XOR C2;
	C3<= (X(2) AND Y(2)) OR (X(2) AND C2) OR (Y(2) AND C2);
	--quarto somador
	S(3)<=X(3) XOR Y(3) XOR C3;
	Cn<= (X(3) AND Y(3)) OR (X(3) AND C3) OR (Y(3) AND C3);
	--envio do terceiro carry para o pino de saída
	Cn_1<=C3;

end somador;