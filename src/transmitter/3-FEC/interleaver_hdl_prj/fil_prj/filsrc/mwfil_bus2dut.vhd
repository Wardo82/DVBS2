
-- ----------------------------------------------
-- File Name: mwfil_bus2dut.vhd
-- Created:   03-Jan-2021 01:38:48
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;

entity mwfil_bus2dut is
generic(
	 WORDSIZE : integer range 1 to 256 := 64;
    OUTWORD: integer range 0 to 2047 := 3);
port (  
    -- Interface with the WORDSIZE-bit data bus
    din         : in std_logic_vector(WORDSIZE-1 downto 0);
    din_valid   : in std_logic;
    din_ready   : out std_logic;
    
    -- Interface with the b2d fifo
    fifo_data   : out std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
    fifo_wrreq  : out std_logic;
    fifo_full   : in  std_logic;
    
    -- Control signals
    clk : in std_logic;
    reset: in std_logic
);
end mwfil_bus2dut;

architecture rtl of mwfil_bus2dut is

constant OUTWIDTH: integer := OUTWORD*WORDSIZE;
signal shiftreg, shiftreg_next: std_logic_vector(OUTWIDTH-1 downto 0);
signal counter,counter_inc: integer range 0 to 1023;

begin

din_ready <= not fifo_full;

shiftreg_next(OUTWIDTH-1 downto OUTWIDTH-WORDSIZE) <= din;
shiftreg_next(OUTWIDTH-WORDSIZE-1 downto 0) <= shiftreg(OUTWIDTH-1 downto WORDSIZE);
fifo_data <= shiftreg_next;

fifo_wrreq <= '1' when (counter_inc = OUTWORD and din_valid = '1')
              else '0';
          
counter_inc <= counter + 1;

process(clk)
begin
    if clk'event and clk = '1' then
        if reset = '1' then
            counter <= 0;
        elsif din_valid = '1' then
            -- Load data
            shiftreg <= shiftreg_next;           
            if counter_inc = OUTWORD then
                counter <= 0;
            else
                counter <= counter_inc;
            end if;           
        end if;
    end if;
end process;

end architecture;

