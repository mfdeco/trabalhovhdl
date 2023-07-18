library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4_1 is
    Port ( S1,S0 : in  STD_LOGIC;
           A   : in  STD_LOGIC_VECTOR (3 downto 0);
           B   : in  STD_LOGIC_VECTOR (3 downto 0);
			  C	: in  STD_LOGIC_VECTOR (3 downto 0);
			  D	: in  STD_LOGIC_VECTOR (3 downto 0);
           S   : out STD_LOGIC_VECTOR (3 downto 0));
end mux4_1;

architecture mux441 of mux4_1 is
begin
process (A,B,C,D,S0,S1) is
begin
  if (S0 ='0' and S1 = '0') then
      S <= A;
  elsif (S0 ='1' and S1 = '0') then
      S <= B;
  elsif (S0 ='0' and S1 = '1') then
      S <= C;
  else
      S <= D;
  end if;
 
end process;

end mux441;