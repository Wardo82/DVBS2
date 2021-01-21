
-- ----------------------------------------------
-- File Name: bch_encoder_wrapper.vhd
-- Created:   21-Jan-2021 00:34:14
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY bch_encoder_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(7 DOWNTO 0);
      dout                            : OUT std_logic_vector(7 DOWNTO 0)
);
END bch_encoder_wrapper;

ARCHITECTURE rtl of bch_encoder_wrapper IS

COMPONENT bch_encoder IS 
PORT (
      reset_x                         : IN  std_logic;
      in_rsvd                         : IN  std_logic;
      clk                             : IN  std_logic;
      clk_enable                      : IN  std_logic;
      out_rsvd                        : OUT std_logic
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL in_rsvd                          : std_logic; -- boolean
  SIGNAL in_rsvd_tmp                      : std_logic; -- boolean
  SIGNAL out_rsvd                         : std_logic; -- boolean
  SIGNAL out_rsvd_tmp                     : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(7 DOWNTO 0); -- std8

BEGIN

u_bch_encoder: bch_encoder 
PORT MAP(
        reset_x              => dut_reset,
        out_rsvd             => out_rsvd,
        in_rsvd              => in_rsvd,
        clk                  => clk,
        clk_enable           => enb
);

dut_reset <= reset;

in_rsvd <= in_rsvd_tmp;

in_rsvd_tmp <= din(0);
out_rsvd_tmp <= out_rsvd;

out_rsvd_tmp <= out_rsvd;

zero0 <= (others => '0');
dout <= zero0 & out_rsvd_tmp;

END;
