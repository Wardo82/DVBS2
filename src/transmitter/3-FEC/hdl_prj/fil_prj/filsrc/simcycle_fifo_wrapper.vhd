
-- ----------------------------------------------
-- File Name: simcycle_fifo_wrapper.vhd
-- Created:   21-Jan-2021 00:34:14
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_arith.all;

entity simcycle_fifo_wrapper is
    port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
);
end simcycle_fifo_wrapper;

architecture Behavioral of simcycle_fifo_wrapper is

COMPONENT simcycle_fifo
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC
  );
END COMPONENT;

begin

u_simcycle_fifo : simcycle_fifo
port map(
    rst => rst,
    wr_clk => wr_clk,
    rd_clk => rd_clk,
    din => din,
    wr_en => wr_en,
    rd_en => rd_en,
    dout => dout,
    full => full,
    empty => empty
);

end Behavioral;
