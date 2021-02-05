
-- ----------------------------------------------
-- File Name: mwfil_chiftop.vhd
-- Created:   31-Jan-2021 18:51:08
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY mwfil_chiftop IS 
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      din_valid                       : IN  std_logic;
      dout_ready                      : IN  std_logic;
      simcycle                        : IN  std_logic_vector(15 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic
);
END mwfil_chiftop;

ARCHITECTURE rtl of mwfil_chiftop IS

COMPONENT mwfil_chifcore IS 
GENERIC (INWORD: integer := 1;
OUTWORD: integer := 1;
WORDSIZE: integer := 64;
HASENABLE: integer := 1
);
PORT (
      clk                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      din_valid                       : IN  std_logic;
      dout_ready                      : IN  std_logic;
      simcycle                        : IN  std_logic_vector(15 DOWNTO 0);
      dut_dout                        : IN  std_logic_vector(31 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic;
      dut_din                         : OUT std_logic_vector(15 DOWNTO 0);
      dut_enable                      : OUT std_logic
);
END COMPONENT;

COMPONENT interleaver_dut_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(15 DOWNTO 0);
      dout                            : OUT std_logic_vector(31 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_din                          : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL dut_dout                         : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL dut_clkenb                       : std_logic; -- boolean
  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL input_bit                        : std_logic; -- boolean
  SIGNAL input_bit_tmp                    : std_logic; -- boolean
  SIGNAL valid                            : std_logic; -- boolean
  SIGNAL valid_tmp                        : std_logic; -- boolean
  SIGNAL data_out_0                       : std_logic; -- boolean
  SIGNAL data_out_0_tmp                   : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL data_out_1                       : std_logic; -- boolean
  SIGNAL data_out_1_tmp                   : std_logic; -- boolean
  SIGNAL zero1                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL data_out_2                       : std_logic; -- boolean
  SIGNAL data_out_2_tmp                   : std_logic; -- boolean
  SIGNAL zero2                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL valid_out                        : std_logic; -- boolean
  SIGNAL valid_out_tmp                    : std_logic; -- boolean
  SIGNAL zero3                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(31 DOWNTO 0); -- std32

BEGIN

u_mwfil_chifcore: mwfil_chifcore 
GENERIC MAP (INWORD => 2,
OUTWORD => 4,
WORDSIZE => 8,
HASENABLE => 1
)
PORT MAP(
        clk                  => clk,
        reset                => reset,
        din                  => din,
        din_valid            => din_valid,
        din_ready            => din_ready,
        dout                 => dout,
        dout_valid           => dout_valid,
        dout_ready           => dout_ready,
        simcycle             => simcycle,
        dut_din              => dut_din,
        dut_dout             => dut_dout,
        dut_enable           => dut_clkenb
);

u_dut: interleaver_dut_wrapper 
PORT MAP(
        clk                  => clk,
        enb                  => dut_clkenb,
        reset                => reset,
        din                  => dut_din,
        dout                 => dut_dout
);


END;