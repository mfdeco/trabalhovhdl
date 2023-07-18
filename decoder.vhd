library ieee;
use ieee.std_logic_1164.all;

entity decoder is
		port(
		A 			: in std_logic_vector(3 downto 0);
		A_dec7	: out std_logic_vector(6 downto 0));
end decoder;

architecture dec7 of decoder is
begin
	process(A)
	begin
	case A is
		when "0000" => A_dec7 <= not "1111110";
		when "0001" => A_dec7 <= not "0110000";
		when "0010" => A_dec7 <= not"1101101";
		when "0011" => A_dec7 <= not"1111001";
		when "0100" => A_dec7 <= not"0110011";
		when "0101" => A_dec7 <= not"1011011";
		when "0110" => A_dec7 <= not"1011111";
		when "0111" => A_dec7 <= not"1110000";
		when "1000" => A_dec7 <= not"1111111";
		when "1001" => A_dec7 <= not"1111011";
		when "1010" => A_dec7 <= not"1110111";
		when "1011" => A_dec7 <= not"0011111";
		when "1100" => A_dec7 <= not"1001110";
		when "1101" => A_dec7 <= not"0111101";
		when "1110" => A_dec7 <= not"1001111";
		when "1111" => A_dec7 <= not"1000111";
				
		
		when others => A_dec7 <= "0000000";
	end case;
	end process;
		
end dec7;