
-- ----------------------------------------------
-- File Name: interleaver_dut_wrapper.vhd
-- Created:   31-Jan-2021 18:51:08
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY interleaver_dut_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(15 DOWNTO 0);
      dout                            : OUT std_logic_vector(31 DOWNTO 0)
);
END interleaver_dut_wrapper;

ARCHITECTURE rtl of interleaver_dut_wrapper IS

COMPONENT interleaver_dut IS 
PORT (
      clk_enable                      : IN  std_logic;
      input_bit                       : IN  std_logic;
      reset_x                         : IN  std_logic;
      valid                           : IN  std_logic;
      clk                             : IN  std_logic;
      data_out_0                      : OUT std_logic;
      data_out_2                      : OUT std_logic;
      data_out_1                      : OUT std_logic;
      valid_out                       : OUT std_logic
);
END COMPONENT;

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

u_interleaver_dut: interleaver_dut 
PORT MAP(
        data_out_0           => data_out_0,
        clk_enable           => enb,
        data_out_2           => data_out_2,
        input_bit            => input_bit,
        reset_x              => dut_reset,
        data_out_1           => data_out_1,
        valid                => valid,
        clk                  => clk,
        valid_out            => valid_out
);

dut_reset <= reset;

input_bit <= input_bit_tmp;

input_bit_tmp <= din(0);
valid <= valid_tmp;

valid_tmp <= din(8);
data_out_0_tmp <= data_out_0;

data_out_0_tmp <= data_out_0;

zero0 <= (others => '0');
data_out_1_tmp <= data_out_1;

data_out_1_tmp <= data_out_1;

zero1 <= (others => '0');
data_out_2_tmp <= data_out_2;

data_out_2_tmp <= data_out_2;

zero2 <= (others => '0');
valid_out_tmp <= valid_out;

valid_out_tmp <= valid_out;

zero3 <= (others => '0');
dout <= zero3 & valid_out_tmp & zero2 & data_out_2_tmp & zero1 & data_out_1_tmp & zero0 & data_out_0_tmp;

END;
