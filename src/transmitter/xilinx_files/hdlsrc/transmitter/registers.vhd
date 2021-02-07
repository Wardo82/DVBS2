-- -------------------------------------------------------------
-- 
-- File Name: D:\Documents\DVBS2\DVBS2\src\transmitter\xilinx_files\hdlsrc\transmitter\registers.vhd
-- Created: 2021-02-07 18:26:58
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: registers
-- Source Path: transmitter/tran_dut/bch_encoder/registers
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY registers IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        enb_1_8_0                         :   IN    std_logic;
        registers_in                      :   IN    std_logic_vector(0 TO 191);  -- ufix1 [192]
        out_rsvd                          :   OUT   std_logic;  -- ufix1
        registers_out                     :   OUT   std_logic_vector(0 TO 191)  -- ufix1 [192]
        );
END registers;


ARCHITECTURE rtl OF registers IS

  -- Signals
  SIGNAL lfsr                             : std_logic_vector(0 TO 191);  -- ufix1 [192]
  SIGNAL lfsr_not_empty                   : std_logic;
  SIGNAL lfsr_next                        : std_logic_vector(0 TO 191);  -- ufix1 [192]
  SIGNAL lfsr_not_empty_next              : std_logic;

BEGIN
  registers_1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        lfsr_not_empty <= '0';
        lfsr <= (OTHERS => '0');
      ELSIF enb_1_8_0 = '1' THEN
        lfsr <= lfsr_next;
        lfsr_not_empty <= lfsr_not_empty_next;
      END IF;
    END IF;
  END PROCESS registers_1_process;

  registers_1_output : PROCESS (lfsr, lfsr_not_empty, registers_in)
    VARIABLE lfsr_temp : std_logic_vector(0 TO 191);
  BEGIN
    lfsr_temp := lfsr;
    lfsr_not_empty_next <= lfsr_not_empty;
    IF ( NOT lfsr_not_empty) = '1' THEN 
      lfsr_not_empty_next <= '1';
    ELSE 
      lfsr_temp := registers_in;
    END IF;
    out_rsvd <= lfsr_temp(191);
    registers_out <= lfsr_temp;
    lfsr_next <= lfsr_temp;
  END PROCESS registers_1_output;


END rtl;
