-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_bit.all;

entity contador100_tb is
end contador100_tb;

architecture arch of contador100_tb is 

component contador100 is 
port(clk,up_down: in bit;
      Q: out unsigned (6 downto 0));
end component;

signal clk,up_down: bit;
signal Q: unsigned (6 downto 0);

begin

UUT: contador100 port map (clk,up_down,Q);
P0: process 
begin
clk<= '0';
wait for 5 ns;
clk <= '1';
wait for 5 ns;
end process;

P1: process 
begin
up_down<= '1';
wait for 150 ns;
up_down<='0';
wait for 150 ns;

end process;

end arch;