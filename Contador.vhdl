library IEEE;


entity contador100 is 
port (clk,up_down: in bit;
      Q: out unsigned (6 downto 0));
end contador100;

architecture arch of contador100 is 
signal Qout : unsigned(6 downto 0 );

begin 
Q <= Qout;
process (clk)
begin
    if clk'event and clk = '1' then
        if up_down = '1' then
            if Qout = "1100011" then Qout <= "0000000";
            else Qout <= Qout+1; end if;
        else 
            if Qout = "0000000" then Qout<= "1100011" 
            else Qout<= Qout-1; end if;
        end if ;
    end if;
        end process;

        end arch;