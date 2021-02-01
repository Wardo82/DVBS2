
-- ----------------------------------------------
-- File Name: bb_shaping_wrapper.vhd
-- Created:   31-Jan-2021 16:15:17
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY bb_shaping_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(47 DOWNTO 0);
      dout                            : OUT std_logic_vector(79 DOWNTO 0)
);
END bb_shaping_wrapper;

ARCHITECTURE rtl of bb_shaping_wrapper IS

COMPONENT bb_shaping IS 
PORT (
      quadrature                      : IN  std_logic_vector(17 DOWNTO 0);
      clk_enable                      : IN  std_logic;
      reset_x                         : IN  std_logic;
      clk                             : IN  std_logic;
      inphase                         : IN  std_logic_vector(17 DOWNTO 0);
      i_filtered                      : OUT std_logic_vector(37 DOWNTO 0);
      q_filtered                      : OUT std_logic_vector(37 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL inphase                          : std_logic_vector(17 DOWNTO 0); -- std18
  SIGNAL inphase_tmp                      : std_logic_vector(17 DOWNTO 0); -- std18
  SIGNAL quadrature                       : std_logic_vector(17 DOWNTO 0); -- std18
  SIGNAL quadrature_tmp                   : std_logic_vector(17 DOWNTO 0); -- std18
  SIGNAL i_filtered                       : std_logic_vector(37 DOWNTO 0); -- std38
  SIGNAL i_filtered_tmp                   : std_logic_vector(37 DOWNTO 0); -- std38
  SIGNAL zero0                            : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL q_filtered                       : std_logic_vector(37 DOWNTO 0); -- std38
  SIGNAL q_filtered_tmp                   : std_logic_vector(37 DOWNTO 0); -- std38
  SIGNAL zero1                            : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL tmpconcat                        : std_logic_vector(79 DOWNTO 0); -- std80

BEGIN

u_bb_shaping: bb_shaping 
PORT MAP(
        quadrature           => quadrature,
        i_filtered           => i_filtered,
        clk_enable           => enb,
        reset_x              => dut_reset,
        clk                  => clk,
        inphase              => inphase,
        q_filtered           => q_filtered
);

dut_reset <= reset;

inphase <= inphase_tmp;
inphase_tmp <= din(17 DOWNTO 0);
quadrature <= quadrature_tmp;
quadrature_tmp <= din(41 DOWNTO 24);
i_filtered_tmp <= i_filtered;
i_filtered_tmp <= i_filtered;
zero0 <= (others => '0');
q_filtered_tmp <= q_filtered;
q_filtered_tmp <= q_filtered;
zero1 <= (others => '0');
dout <= zero1 & q_filtered_tmp & zero0 & i_filtered_tmp;

END;
