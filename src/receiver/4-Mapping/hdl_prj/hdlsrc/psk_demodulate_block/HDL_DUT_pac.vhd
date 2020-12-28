-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\psk_demodulate_block\HDL_DUT_pac.vhd
-- Created: 2020-12-26 18:15:59
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE HDL_DUT_pac IS
  TYPE vector_of_unsigned8 IS ARRAY (NATURAL RANGE <>) OF unsigned(7 DOWNTO 0);
  TYPE vector_of_signed28 IS ARRAY (NATURAL RANGE <>) OF signed(27 DOWNTO 0);
  TYPE vector_of_unsigned27 IS ARRAY (NATURAL RANGE <>) OF unsigned(26 DOWNTO 0);
  TYPE vector_of_unsigned23 IS ARRAY (NATURAL RANGE <>) OF unsigned(22 DOWNTO 0);
  TYPE vector_of_signed9 IS ARRAY (NATURAL RANGE <>) OF signed(8 DOWNTO 0);
  TYPE vector_of_signed27 IS ARRAY (NATURAL RANGE <>) OF signed(26 DOWNTO 0);
  TYPE vector_of_unsigned24 IS ARRAY (NATURAL RANGE <>) OF unsigned(23 DOWNTO 0);
  TYPE vector_of_unsigned37 IS ARRAY (NATURAL RANGE <>) OF unsigned(36 DOWNTO 0);
  TYPE vector_of_signed64 IS ARRAY (NATURAL RANGE <>) OF signed(63 DOWNTO 0);
  TYPE vector_of_unsigned62 IS ARRAY (NATURAL RANGE <>) OF unsigned(61 DOWNTO 0);
  TYPE vector_of_unsigned5 IS ARRAY (NATURAL RANGE <>) OF unsigned(4 DOWNTO 0);
  TYPE vector_of_std_logic_vector32 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(31 DOWNTO 0);
END HDL_DUT_pac;

