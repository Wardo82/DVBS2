
-- ----------------------------------------------
-- File Name: ldpc_encoder_wrapper.vhd
-- Created:   16-Jan-2021 13:22:45
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;


ENTITY ldpc_encoder_wrapper IS 
PORT (
      clk                             : IN  std_logic;
      enb                             : IN  std_logic;
      reset                           : IN  std_logic;
      din                             : IN  std_logic_vector(23 DOWNTO 0);
      dout                            : OUT std_logic_vector(23 DOWNTO 0)
);
END ldpc_encoder_wrapper;

ARCHITECTURE rtl of ldpc_encoder_wrapper IS

COMPONENT ldpc_encoder IS 
PORT (
      clk                             : IN  std_logic;
      input_bit                       : IN  std_logic;
      end_of_frame                    : IN  std_logic;
      clk_enable                      : IN  std_logic;
      rst                             : IN  std_logic;
      reset_x                         : IN  std_logic;
      ce_out                          : OUT std_logic;
      out_rsvd                        : OUT std_logic;
      valid                           : OUT std_logic
);
END COMPONENT;

  SIGNAL dut_reset                        : std_logic; -- boolean
  SIGNAL reset_x                          : std_logic; -- boolean
  SIGNAL reset_x_tmp                      : std_logic; -- boolean
  SIGNAL input_bit                        : std_logic; -- boolean
  SIGNAL input_bit_tmp                    : std_logic; -- boolean
  SIGNAL end_of_frame                     : std_logic; -- boolean
  SIGNAL end_of_frame_tmp                 : std_logic; -- boolean
  SIGNAL ce_out                           : std_logic; -- boolean
  SIGNAL ce_out_tmp                       : std_logic; -- boolean
  SIGNAL zero0                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL out_rsvd                         : std_logic; -- boolean
  SIGNAL out_rsvd_tmp                     : std_logic; -- boolean
  SIGNAL zero1                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL valid                            : std_logic; -- boolean
  SIGNAL valid_tmp                        : std_logic; -- boolean
  SIGNAL zero2                            : std_logic_vector(6 DOWNTO 0); -- std7
  SIGNAL tmpconcat                        : std_logic_vector(23 DOWNTO 0); -- std24

BEGIN

u_ldpc_encoder: ldpc_encoder 
PORT MAP(
        clk                  => clk,
        input_bit            => input_bit,
        ce_out               => ce_out,
        out_rsvd             => out_rsvd,
        end_of_frame         => end_of_frame,
        valid                => valid,
        clk_enable           => enb,
        rst                  => dut_reset,
        reset_x              => reset_x
);

dut_reset <= reset;

reset_x <= reset_x_tmp;

reset_x_tmp <= din(0);
input_bit <= input_bit_tmp;

input_bit_tmp <= din(8);
end_of_frame <= end_of_frame_tmp;

end_of_frame_tmp <= din(16);
ce_out_tmp <= ce_out;

ce_out_tmp <= ce_out;

zero0 <= (others => '0');
out_rsvd_tmp <= out_rsvd;

out_rsvd_tmp <= out_rsvd;

zero1 <= (others => '0');
valid_tmp <= valid;

valid_tmp <= valid;

zero2 <= (others => '0');
dout <= zero2 & valid_tmp & zero1 & out_rsvd_tmp & zero0 & ce_out_tmp;

END;
