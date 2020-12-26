
-- ----------------------------------------------
-- File Name: HDL_DUT_wrapper.vhd
-- Created:   26-Dec-2020 18:16:09
-- Copyright  2020 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY HDL_DUT_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(63 DOWNTO 0);
      dout                            : OUT std_logic_vector(95 DOWNTO 0)
);
END HDL_DUT_wrapper;

ARCHITECTURE rtl of HDL_DUT_wrapper IS

COMPONENT HDL_DUT IS 
PORT (
      inphase                         : IN  std_logic_vector(31 DOWNTO 0);
      quadrature                      : IN  std_logic_vector(31 DOWNTO 0);
      clk                             : IN  std_logic;
      reset_x                         : IN  std_logic;
      clk_enable                      : IN  std_logic;
      out_1                           : OUT std_logic_vector(31 DOWNTO 0);
      out_2                           : OUT std_logic_vector(31 DOWNTO 0);
      out_0                           : OUT std_logic_vector(31 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL quadrature                       : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL quadrature_tmp                   : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL inphase                          : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL inphase_tmp                      : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL out_0                            : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL out_0_tmp                        : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL out_1                            : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL out_1_tmp                        : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL out_2                            : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL out_2_tmp                        : std_logic_vector(31 DOWNTO 0); -- std32
  SIGNAL tmpconcat                        : std_logic_vector(95 DOWNTO 0); -- std96

BEGIN

u_HDL_DUT: HDL_DUT 
PORT MAP(
        out_1                => out_1,
        inphase              => inphase,
        quadrature           => quadrature,
        clk                  => clk,
        reset_x              => dut_reset,
        out_2                => out_2,
        out_0                => out_0,
        clk_enable           => enb
);

dut_reset <= reset;

quadrature <= quadrature_tmp;
quadrature_tmp <= din(31 DOWNTO 0);
inphase <= inphase_tmp;
inphase_tmp <= din(63 DOWNTO 32);
out_0_tmp <= out_0;
out_0_tmp <= out_0;
out_1_tmp <= out_1;
out_1_tmp <= out_1;
out_2_tmp <= out_2;
out_2_tmp <= out_2;
dout <= out_2_tmp & out_1_tmp & out_0_tmp;

END;
