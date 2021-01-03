
-- ----------------------------------------------
-- File Name: bit_mapping_wrapper.vhd
-- Created:   03-Jan-2021 10:47:36
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY bit_mapping_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(39 DOWNTO 0);
      dout                            : OUT std_logic_vector(79 DOWNTO 0)
);
END bit_mapping_wrapper;

ARCHITECTURE rtl of bit_mapping_wrapper IS

COMPONENT bit_mapping IS 
PORT (
      input_sequence_0                : IN  std_logic;
      amplitude                       : IN  std_logic_vector(15 DOWNTO 0);
      clk                             : IN  std_logic;
      input_sequence_2                : IN  std_logic;
      reset_x                         : IN  std_logic;
      clk_enable                      : IN  std_logic;
      input_sequence_1                : IN  std_logic;
      quadrature                      : OUT std_logic_vector(32 DOWNTO 0);
      inphase                         : OUT std_logic_vector(32 DOWNTO 0)
);
END COMPONENT;

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

u_bit_mapping: bit_mapping 
PORT MAP(
        input_sequence_0     => input_sequence_0,
        quadrature           => quadrature,
        inphase              => inphase,
        amplitude            => amplitude,
        clk                  => clk,
        input_sequence_2     => input_sequence_2,
        reset_x              => dut_reset,
        clk_enable           => enb,
        input_sequence_1     => input_sequence_1
);

dut_reset <= reset;

input_sequence_0 <= input_sequence_0_tmp;

input_sequence_0_tmp <= din(0);
input_sequence_1 <= input_sequence_1_tmp;

input_sequence_1_tmp <= din(8);
input_sequence_2 <= input_sequence_2_tmp;

input_sequence_2_tmp <= din(16);
amplitude <= amplitude_tmp;
amplitude_tmp <= din(39 DOWNTO 24);
inphase_tmp <= inphase;
inphase_tmp <= inphase;
zero0 <= (others => '0');
quadrature_tmp <= quadrature;
quadrature_tmp <= quadrature;
zero1 <= (others => '0');
dout <= zero1 & quadrature_tmp & zero0 & inphase_tmp;

END;
