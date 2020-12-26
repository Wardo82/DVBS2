
-- ----------------------------------------------
-- File Name: jtag_mac_fifo_wrapper.vhd
-- Created:   26-Dec-2020 18:16:09
-- Copyright  2020 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.std_logic_unsigned.all;
USE IEEE.numeric_std.ALL;
USE IEEE.std_logic_arith.all;

entity jtag_mac_fifo_wrapper is
    port (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    almost_full: OUT STD_LOGIC;
    rd_data_count : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
);
end jtag_mac_fifo_wrapper;

architecture Behavioral of jtag_mac_fifo_wrapper is

COMPONENT jtag_mac_fifo
  PORT (
    rst : IN STD_LOGIC;
    wr_clk : IN STD_LOGIC;
    rd_clk : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    almost_full: OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    rd_data_count : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
  );
END COMPONENT;

begin

u_jtag_mac_fifo : jtag_mac_fifo
port map(
    rst => rst,
    wr_clk => wr_clk,
    rd_clk => rd_clk,
    din => din,
    wr_en => wr_en,
    rd_en => rd_en,
    dout => dout,
    full => full,
    empty => empty,
    almost_full => almost_full,
    rd_data_count => rd_data_count

);

end Behavioral;
