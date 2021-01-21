
-- ----------------------------------------------
-- File Name: mwfil_chiftop.vhd
-- Created:   21-Jan-2021 00:34:14
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
      dut_dout                        : IN  std_logic_vector(7 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic;
      dut_din                         : OUT std_logic_vector(7 DOWNTO 0);
      dut_enable                      : OUT std_logic
);
END COMPONENT;

COMPONENT bch_encoder_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      dout                            : OUT std_logic_vector(7 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_din                          : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL dut_dout                         : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL dut_clkenb                       : std_logic; -- boolean
  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL in_rsvd                          : std_logic; -- boolean
  SIGNAL in_rsvd_tmp                      : std_logic; -- boolean
  SIGNAL out_rsvd                         : std_logic; -- boolean
  SIGNAL out_rsvd_tmp                     : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(7 DOWNTO 0); -- std8

BEGIN

u_mwfil_chifcore: mwfil_chifcore 
GENERIC MAP (INWORD => 1,
OUTWORD => 1,
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

u_dut: bch_encoder_wrapper 
PORT MAP(
        clk                  => clk,
        enb                  => dut_clkenb,
        reset                => reset,
        din                  => dut_din,
        dout                 => dut_dout
);


END;
