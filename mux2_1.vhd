library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
    Port ( SEL : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
           Y   : out STD_LOGIC_VECTOR (3 downto 0));
end mux2_1;

architecture mux421 of mux2_1 is
begin
process(A,B,SEL) IS
BEGIN
	IF(SEL='0') THEN 
		Y <= A;
	ELSE
		Y <= B;
	END IF;
END PROCESS;

end mux421;