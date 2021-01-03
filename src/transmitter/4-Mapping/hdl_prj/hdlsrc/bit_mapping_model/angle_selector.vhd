-- -------------------------------------------------------------
-- 
-- File Name: /home/wardo/Documents/DVBS2/DVBS2/src/transmitter/4-Mapping/hdl_prj/hdlsrc/bit_mapping_model/angle_selector.vhd
-- Created: 2021-01-02 22:08:09
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: angle_selector
-- Source Path: bit_mapping_model/bit_mapping/angle_selector
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY angle_selector IS
  PORT( input_sequence                    :   IN    std_logic_vector(0 TO 2);  -- boolean [3]
        phase                             :   OUT   std_logic_vector(22 DOWNTO 0)  -- ufix23_En14
        );
END angle_selector;


ARCHITECTURE rtl OF angle_selector IS

  ATTRIBUTE multstyle : string;

  -- Signals
  SIGNAL phase_tmp                        : unsigned(22 DOWNTO 0);  -- ufix23_En14

BEGIN
  angle_selector_1_output : PROCESS (input_sequence)
    VARIABLE tmp : signed(31 DOWNTO 0);
  BEGIN
    -- Receives a bit sequence and returns the angle in radians of the
    -- corresponding 8-psk constellation symbol. Gray encoding is used as stated
    -- in the DVB-S2 standard.
    tmp := to_signed(16#00000000#, 32);
    -- Start at phase 0
    IF ((( NOT input_sequence(0)) AND ( NOT input_sequence(1))) AND input_sequence(2)) = '1' THEN 
      NULL;
    ELSIF ((( NOT input_sequence(0)) AND ( NOT input_sequence(1))) AND ( NOT input_sequence(2))) = '1' THEN 
      tmp := to_signed(16#0000002D#, 32);
    ELSIF ((input_sequence(0) AND ( NOT input_sequence(1))) AND ( NOT input_sequence(2))) = '1' THEN 
      tmp := to_signed(16#0000005A#, 32);
    ELSIF ((input_sequence(0) AND input_sequence(1)) AND ( NOT input_sequence(2))) = '1' THEN 
      tmp := to_signed(16#00000087#, 32);
    ELSIF ((( NOT input_sequence(0)) AND input_sequence(1)) AND ( NOT input_sequence(2))) = '1' THEN 
      tmp := to_signed(16#000000B4#, 32);
    ELSIF ((( NOT input_sequence(0)) AND input_sequence(1)) AND input_sequence(2)) = '1' THEN 
      tmp := to_signed(16#000000E1#, 32);
    ELSIF ((input_sequence(0) AND input_sequence(1)) AND input_sequence(2)) = '1' THEN 
      tmp := to_signed(16#0000010E#, 32);
    ELSIF ((input_sequence(0) AND ( NOT input_sequence(1))) AND input_sequence(2)) = '1' THEN 
      tmp := to_signed(16#0000013B#, 32);
    END IF;
    -- 9 bits necessary to represent 360 degrees.
    phase_tmp <= unsigned(tmp(8 DOWNTO 0) & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0');
  END PROCESS angle_selector_1_output;


  phase <= std_logic_vector(phase_tmp);

END rtl;

