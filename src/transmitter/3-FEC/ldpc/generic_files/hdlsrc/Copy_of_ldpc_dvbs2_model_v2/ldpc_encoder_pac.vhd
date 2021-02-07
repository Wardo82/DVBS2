-- Created by Eduardo Flores in fulfillment of his Bachellor's degree Thesis.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE ldpc_encoder_pac IS
  TYPE vector_of_std_logic_vector16 IS ARRAY (NATURAL RANGE <>) OF std_logic_vector(15 DOWNTO 0);
  TYPE vector_of_unsigned16 IS ARRAY (NATURAL RANGE <>) OF unsigned(15 DOWNTO 0);
  TYPE vector_of_signed32 IS ARRAY (NATURAL RANGE <>) OF signed(31 DOWNTO 0);
  TYPE matrix_of_signed16 IS ARRAY (NATURAL RANGE <>, NATURAL RANGE <>) OF signed(15 DOWNTO 0);
END ldpc_encoder_pac;

