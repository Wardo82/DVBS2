
-- ----------------------------------------------
-- File Name: mwfil_chiftop.vhd
-- Created:   31-Jan-2021 18:10:23
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
      dut_dout                        : IN  std_logic_vector(79 DOWNTO 0);
      din_ready                       : OUT std_logic;
      dout                            : OUT std_logic_vector(7 DOWNTO 0);
      dout_valid                      : OUT std_logic;
      dut_din                         : OUT std_logic_vector(39 DOWNTO 0);
      dut_enable                      : OUT std_logic
);
END COMPONENT;

COMPONENT bit_mapping_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(39 DOWNTO 0);
      dout                            : OUT std_logic_vector(79 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_din                          : std_logic_vector(39 DOWNTO 0); -- std40
  SIGNAL dut_dout                         : std_logic_vector(79 DOWNTO 0); -- std80
  SIGNAL dut_clkenb                       : std_logic; -- boolean
  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL input_sequence_0                 : std_logic; -- boolean
  SIGNAL input_sequence_0_tmp             : std_logic; -- boolean
  SIGNAL input_sequence_1                 : std_logic; -- boolean
  SIGNAL input_sequence_1_tmp             : std_logic; -- boolean
  SIGNAL input_sequence_2                 : std_logic; -- boolean
  SIGNAL input_sequence_2_tmp             : std_logic; -- boolean
  SIGNAL amplitude                        : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL amplitude_tmp                    : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL inphase                          : std_logic_vector(32 DOWNTO 0); -- std33
  SIGNAL inphase_tmp                      : std_logic_vector(32 DOWNTO 0); -- std33
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL quadrature                       : std_logic_vector(32 DOWNTO 0); -- std33
  SIGNAL quadrature_tmp                   : std_logic_vector(32 DOWNTO 0); -- std33
  SIGNAL zero1                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(79 DOWNTO 0); -- std80

BEGIN

u_mwfil_chifcore: mwfil_chifcore 
GENERIC MAP (INWORD => 5,
OUTWORD => 10,
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

u_dut: bit_mapping_wrapper 
PORT MAP(
        clk                  => clk,
        enb                  => dut_clkenb,
        reset                => reset,
        din                  => dut_din,
        dout                 => dut_dout
);


END;
