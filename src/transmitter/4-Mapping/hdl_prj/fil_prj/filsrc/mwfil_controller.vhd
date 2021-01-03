
-- ----------------------------------------------
-- File Name: mwfil_controller.vhd
-- Created:   02-Jan-2021 22:08:31
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_arith.all;

entity mwfil_controller is
generic(
    HASENABLE: integer range 0 to 1 := 1
);
port(
    -- Interface with B2D
    b2d_fifo_empty  : in std_logic;
    b2d_fifo_rdreq  : out std_logic;

    -- Interface with D2B
    d2b_fifo_wrreq  : out std_logic;
    d2b_fifo_full   : in std_logic;    
    
    -- DUT controller signals
    dut_enable : out std_logic;
    
    -- Control signals
    clk : in std_logic;
    reset: in std_logic;
    simcycle: in std_logic_vector(15 downto 0)
    );
end mwfil_controller;

architecture rtl of mwfil_controller is

signal simrem, simrem_next : std_logic_vector(15 downto 0);

signal dut_enable_int      : std_logic;
signal b2d_fifo_rdreq_int  : std_logic;
signal zeros16: std_logic_vector(15 downto 0);
signal reset_d1            : std_logic;
begin

-- constant zero
zeros16 <= conv_std_logic_vector(0,16);

dut_enable <= dut_enable_int;

simrem_next <= simrem - '1' when (dut_enable_int = '1' and simrem > zeros16)
               else simrem;

-- We only read data from b2d fifo when (1) that fifo is nonempty, and 
-- (2) we are done with the current or all previous data
b2d_fifo_rdreq_int <= '1' when simrem_next = zeros16 and b2d_fifo_empty = '0'
                                 else '0';

                      
b2d_fifo_rdreq <= b2d_fifo_rdreq_int;

-- We write to the fifo whenever DUT is enabled
d2b_fifo_wrreq <= dut_enable_int; 

process(clk)
begin
    if clk'event and clk='1' then
          reset_d1 <= reset;
        if reset = '1' then
            simrem   <= (others => '0');
                if HASENABLE = 1 then
                    dut_enable_int <= '0';
                else
                    -- In case of synchronous reset and without clock enable,
                    -- We need to toggle enable signal, which is used as clock.
                    dut_enable_int <= reset and (not reset_d1);
                end if;
        else
            dut_enable_int <= '0';
            -- read new data in
            if b2d_fifo_rdreq_int = '1' then
                if HASENABLE = 1 then
                    dut_enable_int <= not d2b_fifo_full;
                else 
                    dut_enable_int <= (not d2b_fifo_full) and (not dut_enable_int);
                end if;
                simrem <= simcycle;
            else
                simrem <= simrem_next;
                if(simrem_next > zeros16) then
                    if HASENABLE = 1 then
                      dut_enable_int <= not d2b_fifo_full;
                    else
                      dut_enable_int <= (not d2b_fifo_full) and (not dut_enable_int);
                    end if;
                end if;
            end if;
        end if;
    end if;
end process;

end architecture;

