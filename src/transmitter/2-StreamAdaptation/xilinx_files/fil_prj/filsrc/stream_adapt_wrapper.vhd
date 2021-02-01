
-- ----------------------------------------------
-- File Name: stream_adapt_wrapper.vhd
-- Created:   01-Feb-2021 10:19:19
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY stream_adapt_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(39 DOWNTO 0);
      dout                            : OUT std_logic_vector(7 DOWNTO 0)
);
END stream_adapt_wrapper;

ARCHITECTURE rtl of stream_adapt_wrapper IS

COMPONENT stream_adapt IS 
PORT (
      start                           : IN  std_logic;
      clk_enable                      : IN  std_logic;
      reset_x                         : IN  std_logic;
      valid                           : IN  std_logic;
      input_bit                       : IN  std_logic_vector(15 DOWNTO 0);
      clk                             : IN  std_logic;
      end_rsvd                        : IN  std_logic;
      out_rsvd                        : OUT std_logic
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL input_bit                        : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL input_bit_tmp                    : std_logic_vector(15 DOWNTO 0); -- std16
  SIGNAL start                            : std_logic; -- boolean
  SIGNAL start_tmp                        : std_logic; -- boolean
  SIGNAL valid                            : std_logic; -- boolean
  SIGNAL valid_tmp                        : std_logic; -- boolean
  SIGNAL end_rsvd                         : std_logic; -- boolean
  SIGNAL end_rsvd_tmp                     : std_logic; -- boolean
  SIGNAL out_rsvd                         : std_logic; -- boolean
  SIGNAL out_rsvd_tmp                     : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(7 DOWNTO 0); -- std8

BEGIN

u_stream_adapt: stream_adapt 
PORT MAP(
        start                => start,
        out_rsvd             => out_rsvd,
        clk_enable           => enb,
        reset_x              => dut_reset,
        valid                => valid,
        input_bit            => input_bit,
        clk                  => clk,
        end_rsvd             => end_rsvd
);

dut_reset <= reset;

input_bit <= input_bit_tmp;
input_bit_tmp <= din(15 DOWNTO 0);
start <= start_tmp;

start_tmp <= din(16);
valid <= valid_tmp;

valid_tmp <= din(24);
end_rsvd <= end_rsvd_tmp;

end_rsvd_tmp <= din(32);
out_rsvd_tmp <= out_rsvd;

out_rsvd_tmp <= out_rsvd;

zero0 <= (others => '0');
dout <= zero0 & out_rsvd_tmp;

END;
