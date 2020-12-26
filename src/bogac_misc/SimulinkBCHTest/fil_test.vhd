LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;


ENTITY fil_test IS
port(
    datain : in std_logic_vector(7 downto 0);
    dataout: out std_logic_vector(7 downto 0);
    clk: in std_logic;
    clk_en: in std_logic;
    reset: in std_logic);
end entity;

architecture rtl of fil_test is 
begin

process(clk)
begin
    if clk'event and clk='1' then
        if reset = '1' then
            dataout <= (others => '0');
        elsif clk_en = '1' then
            dataout <= datain;
        end if;
    end if;
end process;    

    
end rtl;