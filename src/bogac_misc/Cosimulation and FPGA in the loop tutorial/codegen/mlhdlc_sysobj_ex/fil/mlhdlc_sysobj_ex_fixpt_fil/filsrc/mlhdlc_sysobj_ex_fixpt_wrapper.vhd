
-- ----------------------------------------------
-- File Name: mlhdlc_sysobj_ex_fixpt_wrapper.vhd
-- Created:   29-Nov-2020 19:41:40
-- Copyright  2020 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY mlhdlc_sysobj_ex_fixpt_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(79 DOWNTO 0);
      dout                            : OUT std_logic_vector(31 DOWNTO 0)
);
END mlhdlc_sysobj_ex_fixpt_wrapper;

ARCHITECTURE rtl of mlhdlc_sysobj_ex_fixpt_wrapper IS

COMPONENT mlhdlc_sysobj_ex_fixpt IS 
PORT (
      reset                           : IN  std_logic;
      h_in1                           : IN  std_logic_vector(13 DOWNTO 0);
      h_in2                           : IN  std_logic_vector(13 DOWNTO 0);
      h_in3                           : IN  std_logic_vector(13 DOWNTO 0);
      h_in4                           : IN  std_logic_vector(13 DOWNTO 0);
      clk                             : IN  std_logic;
      clk_enable                      : IN  std_logic;
      x_in                            : IN  std_logic_vector(13 DOWNTO 0);
      y_out                           : OUT std_logic_vector(13 DOWNTO 0);
      delayed_xout                    : OUT std_logic_vector(13 DOWNTO 0)
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL x_in                             : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL x_in_tmp                         : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in1                            : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in1_tmp                        : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in2                            : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in2_tmp                        : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in3                            : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in3_tmp                        : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in4                            : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL h_in4_tmp                        : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL y_out                            : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL y_out_tmp                        : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL zero0                            : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL delayed_xout                     : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL delayed_xout_tmp                 : std_logic_vector(13 DOWNTO 0); -- std14
  SIGNAL zero1                            : std_logic_vector(1 DOWNTO 0); -- std2
  SIGNAL tmpconcat                        : std_logic_vector(31 DOWNTO 0); -- std32

BEGIN

u_mlhdlc_sysobj_ex_fixpt: mlhdlc_sysobj_ex_fixpt 
PORT MAP(
        y_out                => y_out,
        delayed_xout         => delayed_xout,
        reset                => dut_reset,
        h_in1                => h_in1,
        h_in2                => h_in2,
        h_in3                => h_in3,
        h_in4                => h_in4,
        clk                  => clk,
        clk_enable           => enb,
        x_in                 => x_in
);

dut_reset <= reset;

x_in <= x_in_tmp;
x_in_tmp <= din(13 DOWNTO 0);
h_in1 <= h_in1_tmp;
h_in1_tmp <= din(29 DOWNTO 16);
h_in2 <= h_in2_tmp;
h_in2_tmp <= din(45 DOWNTO 32);
h_in3 <= h_in3_tmp;
h_in3_tmp <= din(61 DOWNTO 48);
h_in4 <= h_in4_tmp;
h_in4_tmp <= din(77 DOWNTO 64);
y_out_tmp <= y_out;
y_out_tmp <= y_out;
zero0 <= (others => '0');
delayed_xout_tmp <= delayed_xout;
delayed_xout_tmp <= delayed_xout;
zero1 <= (others => '0');
dout <= zero1 & delayed_xout_tmp & zero0 & y_out_tmp;

END;
