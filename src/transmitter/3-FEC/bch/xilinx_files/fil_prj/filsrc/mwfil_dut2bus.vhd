
-- ----------------------------------------------
-- File Name: mwfil_dut2bus.vhd
-- Created:   01-Feb-2021 09:37:56
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;

entity mwfil_dut2bus is
generic( 
	WORDSIZE : integer range 1 to 256 := 64;
	OUTWORD: integer range 0 to 2047 := 2);
port (		
	-- Interface with the DUT
	d2b_fifo_q      : in std_logic_vector(OUTWORD*WORDSIZE-1 downto 0);
	d2b_fifo_rdreq  : out std_logic;
	d2b_fifo_empty  : in std_logic;
	
	-- Interface with the WORDSIZE-bit bus
	dout        : out std_logic_vector(WORDSIZE-1 downto 0);
	dout_valid  : out std_logic;
	dout_ready  : in  std_logic;
    
	-- Control signals
	clk : in std_logic;
	reset: in std_logic
	);
end mwfil_dut2bus;

architecture rtl of mwfil_dut2bus is

constant OUTWIDTH: integer := OUTWORD*WORDSIZE;
signal shiftreg : std_logic_vector(OUTWIDTH-1 downto 0);

signal remword, remword_next: integer range 0 to OUTWORD+1;
signal d2b_fifo_valid : std_logic;
signal d2b_fifo_rdreq_int: std_logic;
begin

d2b_fifo_rdreq <= d2b_fifo_rdreq_int;

-- we can only read from d2b fifo when the current shiftreg is about to shift out entirely, or this is no data in shiftreg
d2b_fifo_rdreq_int   <= '1' when (remword_next = 0  and d2b_fifo_empty = '0') else
                        '0';
                       
-- Calculate the remaining word in shiftreg after the current clock cycle                       
remword_next <= OUTWORD -1 when d2b_fifo_valid = '1' and dout_ready = '1' else
                OUTWORD    when d2b_fifo_valid = '1' else
                remword -1 when dout_ready = '1' and remword >=1 else
                remword;
                
               
process(clk)
begin
    if clk'event and clk='1' then        
        if reset = '1' then
            remword <= 0;
            dout    <= (others =>'0');
        else
            d2b_fifo_valid <= d2b_fifo_rdreq_int;
            dout_valid  <= '0';
            remword <= remword_next;
            if d2b_fifo_valid = '1' and dout_ready = '1' then 
                -- Load and shift at the same time
                dout        <= d2b_fifo_q(WORDSIZE-1 downto 0);
                shiftreg(OUTWIDTH-WORDSIZE-1 downto 0) <= d2b_fifo_q(OUTWIDTh-1 downto WORDSIZE);
                dout_valid  <= '1';
            elsif d2b_fifo_valid = '1' and dout_ready = '0' then
                -- Only load the shift register
                shiftreg  <= d2b_fifo_q;
            elsif dout_ready = '1' and remword>0 then
                -- Shift out one word                
                dout_valid <= '1';
                dout <= shiftreg(WORDSIZE-1 downto 0);
                shiftreg(OUTWIDTH-WORDSIZE-1 downto 0) <= shiftreg(OUTWIDTH-1 downto WORDSIZE);            
            end if;           
        end if;
    end if;
end process;
                  
end architecture;

