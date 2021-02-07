
-- ----------------------------------------------
-- File Name: tran_dut_wrapper.vhd
-- Created:   07-Feb-2021 15:24:56
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY tran_dut_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(39 DOWNTO 0);
      dout                            : OUT std_logic_vector(95 DOWNTO 0)
);
END tran_dut_wrapper;

ARCHITECTURE rtl of tran_dut_wrapper IS

COMPONENT tran_dut IS 
PORT (
      start                           : IN  std_logic;
      amplitude                       : IN  std_logic_vector(7 DOWNTO 0);
      end_rsvd                        : IN  std_logic;
      clk                             : IN  std_logic;
      input_bit                       : IN  std_logic;
      valid                           : IN  std_logic;
      reset_x                         : IN  std_logic;
      clk_enable                      : IN  std_logic;
      inphase                         : OUT std_logic_vector(44 DOWNTO 0);
      quadrature                      : OUT std_logic_vector(44 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL input_bit                        : std_logic; -- boolean
  SIGNAL input_bit_tmp                    : std_logic; -- boolean
  SIGNAL amplitude                        : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL amplitude_tmp                    : std_logic_vector(7 DOWNTO 0); -- std8
  SIGNAL start                            : std_logic; -- boolean
  SIGNAL start_tmp                        : std_logic; -- boolean
  SIGNAL end_rsvd                         : std_logic; -- boolean
  SIGNAL end_rsvd_tmp                     : std_logic; -- boolean
  SIGNAL valid                            : std_logic; -- boolean
  SIGNAL valid_tmp                        : std_logic; -- boolean
  SIGNAL inphase                          : std_logic_vector(44 DOWNTO 0); -- std45
  SIGNAL inphase_tmp                      : std_logic_vector(44 DOWNTO 0); -- std45
  SIGNAL zero0                            : std_logic_vector(2 DOWNTO 0); -- std3
  SIGNAL quadrature                       : std_logic_vector(44 DOWNTO 0); -- std45
  SIGNAL quadrature_tmp                   : std_logic_vector(44 DOWNTO 0); -- std45
  SIGNAL zero1                            : std_logic_vector(2 DOWNTO 0); -- std3
  SIGNAL tmpconcat                        : std_logic_vector(95 DOWNTO 0); -- std96

BEGIN

u_tran_dut: tran_dut 
PORT MAP(
        start                => start,
        amplitude            => amplitude,
        end_rsvd             => end_rsvd,
        clk                  => clk,
        inphase              => inphase,
        input_bit            => input_bit,
        quadrature           => quadrature,
        valid                => valid,
        reset_x              => dut_reset,
        clk_enable           => enb
);

dut_reset <= reset;

input_bit <= input_bit_tmp;

input_bit_tmp <= din(0);
amplitude <= amplitude_tmp;
amplitude_tmp <= din(15 DOWNTO 8);
start <= start_tmp;

start_tmp <= din(16);
end_rsvd <= end_rsvd_tmp;

end_rsvd_tmp <= din(24);
valid <= valid_tmp;

valid_tmp <= din(32);
inphase_tmp <= inphase;
inphase_tmp <= inphase;
zero0 <= (others => '0');
quadrature_tmp <= quadrature;
quadrature_tmp <= quadrature;
zero1 <= (others => '0');
dout <= zero1 & quadrature_tmp & zero0 & inphase_tmp;

END;
