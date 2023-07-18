library ieee;
use ieee.std_logic_1164.all;

entity ULAV2 is 
-- declaração das portas de entrada
	port (
		clk, rst: in std_logic:='0';
      Y : in std_logic_vector (3 downto 0); 
		f: in std_logic_vector (2 downto 0); 
-- declaração das portas de saída
      Res : out std_logic_vector (3 downto 0); -- resultado
		zeros, overflow, carryout, sinal: out std_logic ;
		X_dec7: out std_logic_vector (6 downto 0);-- saída X codificada para 7 segmentos
		Y_dec7: out std_logic_vector (6 downto 0);-- saída Y codificada para 7 segmentos
		D_dec7: out std_logic_vector (6 downto 0)-- saída D codificada para 7 segmentos
		) ; 
	end ULAV2; 


architecture ULA_SD of ULAV2 is
--------------------------------------------
component decoder is
		port(
		A 			: in std_logic_vector(3 downto 0);
		A_dec7	: out std_logic_vector(6 downto 0));
end component decoder;
	

--------------------------------------------
	component contador is
		port(
			clk, rst : in std_logic;
			X			: out std_logic_vector(3 downto 0));
		end component contador;

--------------------------------------------
	component controle is 
		port (f : in std_logic_vector (2 downto 0);
				KM0, KM1, KM2, C0, KX, KY: out std_logic ) ; 
	end component controle; 
---------------------------------------------		
	component clor is 
	-- declaração das portas de entrada
		port (A,B: in std_logic_vector (3 downto 0);
	-- declaração das portas de saída
			Y: out std_logic_vector (3 downto 0) ) ; 
	end component clor; 
------------------------------------------------	
	component clmag is 
		-- declaração das portas de entrada
		port (A,B: in std_logic_vector (3 downto 0);
		-- declaração das portas de saída
			magnitude: out std_logic_vector (3 downto 0) ) ; 
	end component clmag; 

-----------------------------------------------------	
	component cland is 
		-- declaração das portas de entrada
		port (A,B: in std_logic_vector (3 downto 0);
		-- declaração das portas de saída
				Y: out std_logic_vector (3 downto 0) ) ; 
	end component cland; 
--------------------------------------------------
	component mux2_1 is
		Port ( SEL : in  STD_LOGIC;
				A   : in  STD_LOGIC_VECTOR (3 downto 0);
				B   : in  STD_LOGIC_VECTOR (3 downto 0);
				Y   : out STD_LOGIC_VECTOR (3 downto 0));
	end component mux2_1;

---------------------------------------------------
	component mux4_1 is
		Port ( S1,S0 : in  STD_LOGIC;
				A   : in  STD_LOGIC_VECTOR (3 downto 0);
				B   : in  STD_LOGIC_VECTOR (3 downto 0);
				C	: in  STD_LOGIC_VECTOR (3 downto 0);
				D	: in  STD_LOGIC_VECTOR (3 downto 0);
				S   : out STD_LOGIC_VECTOR (3 downto 0));
	end component mux4_1;
---------------------------------------------------
	component flags is 
		-- declaração das portas de entrada
		port (S : in std_logic_vector (3 downto 0);
				Cn_1,Cn: in std_logic;
		-- declaração das portas de saída
				zeros,overflow,sinal,carryout: out std_logic ) ; 
	end component flags; 
---------------------------------------------------
	component sum4bits is 
		port(
		-- declaração das variáveis de entrada
			X , Y: in std_logic_vector (3 downto 0);
			C0: in std_logic;
			-- declaração das variáveis de saída
			S : out std_logic_vector (3 downto 0);
			Cn,Cn_1: out std_logic);
	end component sum4bits;
------------------------------------------------
	component comp is 
		-- declaração das portas de entrada
		port (X : in std_logic_vector (3 downto 0);
				sel: in std_logic;
		-- declaração das portas de saída
				Y: out std_logic_vector (3 downto 0)) ; 
	end component comp; 

-----------------------------------------------------	

	-- saída do contaador
	signal X: std_logic_vector (3 downto 0);
	
-- sinais de saída do módulo controle 
-- recebem f da ula e liberam KM0,KM1,KM2,C0,KX E KY
--port (F, KM0, KM1, KM2, C0, KX, KY) ;

	signal KM0, KM1, KM2, C0, KX, KY : std_logic;

-- sinais de saida do circuito de complemento a  um ligados a entrada X
-- RECEBEM X(0..3) e liberam CPM1_(0..3)
--port (X, sel,Y) ; 

	signal CPM1: std_logic_vector (3 downto 0);
	
-- sinais de saida do circuito de complemento a  um ligados a entrada Y
-- recebem as entradas Y(0..3) e liberam CPM2_(0..3)
	signal CPM2 : std_logic_vector (3 downto 0);
	
-- sinais da chave1 
-- recebem -CPM2_(0..3) e KM0 e liberam CH1_(0..3), as entradas B(0..3) são iguais a zero
--port(A,B,sel,Y);
	signal CH1 : std_logic_vector (3 downto 0);
	
	
-- somador
--port(X,Y,C0,S,Cn,Cn_1);
-- Recebem CPM1_0, CPM1_1 , CPM1_2, CPM1_3, CPM2_0, CPM2_1 , CPM2_2, CPM2_3, C0
-- e liberam SUM, CN, CN_1
	signal 	SUM : std_logic_vector (3 downto 0);
	signal CN, CN_1 : std_logic;
	
-- módulo and bit a bit
--port(A,B,Y)
-- recebem X(0..3) e Y(0..3) da entrada e liberam land0,land1,land2,land3
	signal land : std_logic_vector (3 downto 0);

-- módulo or bit a bit
--port(A,B,Y)
-- recebem X(0..3) e Y(0..3) da entrada e liberam lor0,lor1,lor2,lor3
	signal lor : std_logic_vector (3 downto 0);

	
-- módulo magnitude
--port(A,B,magnitude)
-- recebem X(0..3) e Y(0..3) da entrada e liberam magnitude
	signal mag : std_logic_vector (3 downto 0);

-- módulo dos flags 
--recebem SUM(0..3), CN e CN_1 e liberam zeros,overflow,sinal,carryout
--	port (S0,S1,S2,S3,Cn_1,Cn,	zeros,overflow,sinal,carryout) ; 
--	zeros,overflow,sinal,carryout já são as sáídas da ula	

	
-- módulo chave2
--	port(A,S,M, O, KM1, KM2, D);
-- D(0..3) entra no decodificador para 7 segmentos
-- e repassa o valor para res para facilitar a simulação	
	signal D : std_logic_vector (3 downto 0);

-------------------------------------------------
		
begin

	control: Controle
		-- faz a connexão da entrada da ula => entrada do controle
		port map(f, KM0, KM1, KM2, C0, KX, KY);
		
	comp1: comp
	-- faz a connexão da entrada da ula => entrada do complemento
		port map(X, KX, CPM1);
					
	
	comp2: comp
		port map(Y,KY, CPM2);
					
	chave1: mux2_1
		port map(KM0, CPM2,"0000",CH1);
	
	
	somador: sum4bits
		port map(CPM1,CH1, C0,SUM, CN, CN_1);
		
	cand: cland
		port map(X,Y,land) ; 
		
	cor: clor
		port map(X,Y,lor) ; 
	
	cmag: clmag 
			port map(X,Y,mag);
		
	flag: flags
			port map(SUM, CN_1, CN, zeros,overflow,sinal,carryout); 
		
	chave2: mux4_1
			port map (KM1, KM2, SUM, land, lor ,mag, D);
			
	conta: contador
			port map(clk, rst, X);
			
	saidaX: decoder -- saída para o display
			port map(X, X_dec7);
			
	saidaY: decoder -- saída para o display
			port map(Y, Y_dec7);
			
	saidaD: decoder -- saída para o display
			port map(D, D_dec7);
			
	Res <= D; -- uma saída em binário de 4 bits

end ULA_SD;	
	