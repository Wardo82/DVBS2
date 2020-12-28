-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/psk_demodulate_block1/value_within5.vhd
-- Created: 2020-12-26 19:59:59
-- 
-- Generated by MATLAB 9.8 and HDL Coder 3.16
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: value_within5
-- Source Path: psk_demodulate_block1/HDL_DUT/hard_decision_demod/value_within5
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY value_within5 IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        enb                               :   IN    std_logic;
        lower_bound                       :   IN    std_logic_vector(31 DOWNTO 0);  -- single
        value                             :   IN    std_logic_vector(31 DOWNTO 0);  -- single
        higher_bound                      :   IN    std_logic_vector(31 DOWNTO 0);  -- single
        flag                              :   OUT   std_logic
        );
END value_within5;


ARCHITECTURE rtl OF value_within5 IS

  -- Component Declarations
  COMPONENT nfp_relop_single
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_in2                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out1                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT nfp_relop_single_block
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_in2                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out1                        :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : nfp_relop_single
    USE ENTITY work.nfp_relop_single(rtl);

  FOR ALL : nfp_relop_single_block
    USE ENTITY work.nfp_relop_single_block(rtl);

  -- Signals
  SIGNAL Relational_Operator_out1         : std_logic;
  SIGNAL Relational_Operator1_out1        : std_logic;
  SIGNAL Logical_Operator_out1            : std_logic;

BEGIN
  u_nfp_relop_comp : nfp_relop_single
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => enb,
              nfp_in1 => value,  -- single
              nfp_in2 => lower_bound,  -- single
              nfp_out1 => Relational_Operator_out1
              );

  u_nfp_relop_comp_1 : nfp_relop_single_block
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => enb,
              nfp_in1 => value,  -- single
              nfp_in2 => higher_bound,  -- single
              nfp_out1 => Relational_Operator1_out1
              );

  Logical_Operator_out1 <= Relational_Operator_out1 AND Relational_Operator1_out1;

  flag <= Logical_Operator_out1;

END rtl;

