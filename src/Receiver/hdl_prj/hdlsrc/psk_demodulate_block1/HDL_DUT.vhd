-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\psk_demodulate_block1\HDL_DUT.vhd
-- Created: 2020-12-28 21:12:53
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.2
-- Target subsystem base rate: 0.2
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        0.2
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- out_0                         ce_out        0.2
-- out_1                         ce_out        0.2
-- out_2                         ce_out        0.2
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: HDL_DUT
-- Source Path: psk_demodulate_block1/HDL_DUT
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.HDL_DUT_pac.ALL;

ENTITY HDL_DUT IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        quadrature                        :   IN    std_logic_vector(31 DOWNTO 0);  -- single
        inphase                           :   IN    std_logic_vector(31 DOWNTO 0);  -- single
        ce_out                            :   OUT   std_logic;
        out_0                             :   OUT   std_logic_vector(31 DOWNTO 0);  -- single
        out_1                             :   OUT   std_logic_vector(31 DOWNTO 0);  -- single
        out_2                             :   OUT   std_logic_vector(31 DOWNTO 0)  -- single
        );
END HDL_DUT;


ARCHITECTURE rtl OF HDL_DUT IS

  -- Component Declarations
  COMPONENT nfp_relop_single_block
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_in2                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out1                        :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT nfp_div_single
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_in2                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out                         :   OUT   std_logic_vector(31 DOWNTO 0)  -- single
          );
  END COMPONENT;

  COMPONENT nfp_atan_single
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in                          :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out                         :   OUT   std_logic_vector(31 DOWNTO 0)  -- single
          );
  END COMPONENT;

  COMPONENT nfp_sub_single
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_in2                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out                         :   OUT   std_logic_vector(31 DOWNTO 0)  -- single
          );
  END COMPONENT;

  COMPONENT nfp_add_single
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          nfp_in1                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_in2                         :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          nfp_out                         :   OUT   std_logic_vector(31 DOWNTO 0)  -- single
          );
  END COMPONENT;

  COMPONENT hard_decision_demod
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          angle                           :   IN    std_logic_vector(31 DOWNTO 0);  -- single
          index                           :   OUT   std_logic_vector(8 DOWNTO 0)  -- ufix9
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : nfp_relop_single_block
    USE ENTITY work.nfp_relop_single_block(rtl);

  FOR ALL : nfp_div_single
    USE ENTITY work.nfp_div_single(rtl);

  FOR ALL : nfp_atan_single
    USE ENTITY work.nfp_atan_single(rtl);

  FOR ALL : nfp_sub_single
    USE ENTITY work.nfp_sub_single(rtl);

  FOR ALL : nfp_add_single
    USE ENTITY work.nfp_add_single(rtl);

  FOR ALL : hard_decision_demod
    USE ENTITY work.hard_decision_demod(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL Switch_threshold                 : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Switch_control                   : std_logic;
  SIGNAL Switch1_threshold                : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Switch1_control                  : std_logic;
  SIGNAL delayMatch_reg                   : std_logic_vector(0 TO 75);  -- ufix1 [76]
  SIGNAL delayMatch_reg_next              : std_logic_vector(0 TO 75);  -- ufix1 [76]
  SIGNAL Switch1_control_1                : std_logic;
  SIGNAL Divide_out1                      : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Atan_out1                        : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Constant_out1                    : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Subtract_out1                    : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delayMatch2_reg                  : std_logic_vector(0 TO 75);  -- ufix1 [76]
  SIGNAL delayMatch2_reg_next             : std_logic_vector(0 TO 75);  -- ufix1 [76]
  SIGNAL Switch_control_1                 : std_logic;
  SIGNAL Add_out1                         : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Switch1_out1                     : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL delayMatch1_reg                  : vector_of_std_logic_vector32(0 TO 10);  -- ufix32 [11]
  SIGNAL delayMatch1_reg_next             : vector_of_std_logic_vector32(0 TO 10);  -- ufix32 [11]
  SIGNAL Atan_out1_1                      : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL Switch_out1                      : std_logic_vector(31 DOWNTO 0);  -- ufix32
  SIGNAL hard_decision_demod_out1         : std_logic_vector(8 DOWNTO 0);  -- ufix9
  SIGNAL hard_decision_demod_out1_unsigned : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL Constant1_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant2_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant3_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant4_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant5_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant6_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant7_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Constant8_out1                   : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]
  SIGNAL Index_Vector_out1                : vector_of_std_logic_vector32(0 TO 2);  -- ufix32 [3]

BEGIN
  u_nfp_relop_comp : nfp_relop_single_block
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              nfp_in1 => inphase,  -- single
              nfp_in2 => Switch_threshold,  -- single
              nfp_out1 => Switch_control
              );

  u_nfp_relop_comp_1 : nfp_relop_single_block
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              nfp_in1 => quadrature,  -- single
              nfp_in2 => Switch1_threshold,  -- single
              nfp_out1 => Switch1_control
              );

  u_nfp_div_comp : nfp_div_single
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              nfp_in1 => quadrature,  -- single
              nfp_in2 => inphase,  -- single
              nfp_out => Divide_out1  -- single
              );

  u_nfp_atan_comp : nfp_atan_single
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              nfp_in => Divide_out1,  -- single
              nfp_out => Atan_out1  -- single
              );

  u_nfp_sub_comp : nfp_sub_single
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              nfp_in1 => Atan_out1,  -- single
              nfp_in2 => Constant_out1,  -- single
              nfp_out => Subtract_out1  -- single
              );

  u_nfp_add_comp : nfp_add_single
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              nfp_in1 => Constant_out1,  -- single
              nfp_in2 => Atan_out1,  -- single
              nfp_out => Add_out1  -- single
              );

  u_hard_decision_demod : hard_decision_demod
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              angle => Switch_out1,  -- single
              index => hard_decision_demod_out1  -- ufix9
              );

  Switch_threshold <= X"00000000";

  enb <= clk_enable;

  Switch1_threshold <= X"00000000";

  delayMatch_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      delayMatch_reg(0) <= '0';
      delayMatch_reg(1) <= '0';
      delayMatch_reg(2) <= '0';
      delayMatch_reg(3) <= '0';
      delayMatch_reg(4) <= '0';
      delayMatch_reg(5) <= '0';
      delayMatch_reg(6) <= '0';
      delayMatch_reg(7) <= '0';
      delayMatch_reg(8) <= '0';
      delayMatch_reg(9) <= '0';
      delayMatch_reg(10) <= '0';
      delayMatch_reg(11) <= '0';
      delayMatch_reg(12) <= '0';
      delayMatch_reg(13) <= '0';
      delayMatch_reg(14) <= '0';
      delayMatch_reg(15) <= '0';
      delayMatch_reg(16) <= '0';
      delayMatch_reg(17) <= '0';
      delayMatch_reg(18) <= '0';
      delayMatch_reg(19) <= '0';
      delayMatch_reg(20) <= '0';
      delayMatch_reg(21) <= '0';
      delayMatch_reg(22) <= '0';
      delayMatch_reg(23) <= '0';
      delayMatch_reg(24) <= '0';
      delayMatch_reg(25) <= '0';
      delayMatch_reg(26) <= '0';
      delayMatch_reg(27) <= '0';
      delayMatch_reg(28) <= '0';
      delayMatch_reg(29) <= '0';
      delayMatch_reg(30) <= '0';
      delayMatch_reg(31) <= '0';
      delayMatch_reg(32) <= '0';
      delayMatch_reg(33) <= '0';
      delayMatch_reg(34) <= '0';
      delayMatch_reg(35) <= '0';
      delayMatch_reg(36) <= '0';
      delayMatch_reg(37) <= '0';
      delayMatch_reg(38) <= '0';
      delayMatch_reg(39) <= '0';
      delayMatch_reg(40) <= '0';
      delayMatch_reg(41) <= '0';
      delayMatch_reg(42) <= '0';
      delayMatch_reg(43) <= '0';
      delayMatch_reg(44) <= '0';
      delayMatch_reg(45) <= '0';
      delayMatch_reg(46) <= '0';
      delayMatch_reg(47) <= '0';
      delayMatch_reg(48) <= '0';
      delayMatch_reg(49) <= '0';
      delayMatch_reg(50) <= '0';
      delayMatch_reg(51) <= '0';
      delayMatch_reg(52) <= '0';
      delayMatch_reg(53) <= '0';
      delayMatch_reg(54) <= '0';
      delayMatch_reg(55) <= '0';
      delayMatch_reg(56) <= '0';
      delayMatch_reg(57) <= '0';
      delayMatch_reg(58) <= '0';
      delayMatch_reg(59) <= '0';
      delayMatch_reg(60) <= '0';
      delayMatch_reg(61) <= '0';
      delayMatch_reg(62) <= '0';
      delayMatch_reg(63) <= '0';
      delayMatch_reg(64) <= '0';
      delayMatch_reg(65) <= '0';
      delayMatch_reg(66) <= '0';
      delayMatch_reg(67) <= '0';
      delayMatch_reg(68) <= '0';
      delayMatch_reg(69) <= '0';
      delayMatch_reg(70) <= '0';
      delayMatch_reg(71) <= '0';
      delayMatch_reg(72) <= '0';
      delayMatch_reg(73) <= '0';
      delayMatch_reg(74) <= '0';
      delayMatch_reg(75) <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch_reg(0) <= delayMatch_reg_next(0);
        delayMatch_reg(1) <= delayMatch_reg_next(1);
        delayMatch_reg(2) <= delayMatch_reg_next(2);
        delayMatch_reg(3) <= delayMatch_reg_next(3);
        delayMatch_reg(4) <= delayMatch_reg_next(4);
        delayMatch_reg(5) <= delayMatch_reg_next(5);
        delayMatch_reg(6) <= delayMatch_reg_next(6);
        delayMatch_reg(7) <= delayMatch_reg_next(7);
        delayMatch_reg(8) <= delayMatch_reg_next(8);
        delayMatch_reg(9) <= delayMatch_reg_next(9);
        delayMatch_reg(10) <= delayMatch_reg_next(10);
        delayMatch_reg(11) <= delayMatch_reg_next(11);
        delayMatch_reg(12) <= delayMatch_reg_next(12);
        delayMatch_reg(13) <= delayMatch_reg_next(13);
        delayMatch_reg(14) <= delayMatch_reg_next(14);
        delayMatch_reg(15) <= delayMatch_reg_next(15);
        delayMatch_reg(16) <= delayMatch_reg_next(16);
        delayMatch_reg(17) <= delayMatch_reg_next(17);
        delayMatch_reg(18) <= delayMatch_reg_next(18);
        delayMatch_reg(19) <= delayMatch_reg_next(19);
        delayMatch_reg(20) <= delayMatch_reg_next(20);
        delayMatch_reg(21) <= delayMatch_reg_next(21);
        delayMatch_reg(22) <= delayMatch_reg_next(22);
        delayMatch_reg(23) <= delayMatch_reg_next(23);
        delayMatch_reg(24) <= delayMatch_reg_next(24);
        delayMatch_reg(25) <= delayMatch_reg_next(25);
        delayMatch_reg(26) <= delayMatch_reg_next(26);
        delayMatch_reg(27) <= delayMatch_reg_next(27);
        delayMatch_reg(28) <= delayMatch_reg_next(28);
        delayMatch_reg(29) <= delayMatch_reg_next(29);
        delayMatch_reg(30) <= delayMatch_reg_next(30);
        delayMatch_reg(31) <= delayMatch_reg_next(31);
        delayMatch_reg(32) <= delayMatch_reg_next(32);
        delayMatch_reg(33) <= delayMatch_reg_next(33);
        delayMatch_reg(34) <= delayMatch_reg_next(34);
        delayMatch_reg(35) <= delayMatch_reg_next(35);
        delayMatch_reg(36) <= delayMatch_reg_next(36);
        delayMatch_reg(37) <= delayMatch_reg_next(37);
        delayMatch_reg(38) <= delayMatch_reg_next(38);
        delayMatch_reg(39) <= delayMatch_reg_next(39);
        delayMatch_reg(40) <= delayMatch_reg_next(40);
        delayMatch_reg(41) <= delayMatch_reg_next(41);
        delayMatch_reg(42) <= delayMatch_reg_next(42);
        delayMatch_reg(43) <= delayMatch_reg_next(43);
        delayMatch_reg(44) <= delayMatch_reg_next(44);
        delayMatch_reg(45) <= delayMatch_reg_next(45);
        delayMatch_reg(46) <= delayMatch_reg_next(46);
        delayMatch_reg(47) <= delayMatch_reg_next(47);
        delayMatch_reg(48) <= delayMatch_reg_next(48);
        delayMatch_reg(49) <= delayMatch_reg_next(49);
        delayMatch_reg(50) <= delayMatch_reg_next(50);
        delayMatch_reg(51) <= delayMatch_reg_next(51);
        delayMatch_reg(52) <= delayMatch_reg_next(52);
        delayMatch_reg(53) <= delayMatch_reg_next(53);
        delayMatch_reg(54) <= delayMatch_reg_next(54);
        delayMatch_reg(55) <= delayMatch_reg_next(55);
        delayMatch_reg(56) <= delayMatch_reg_next(56);
        delayMatch_reg(57) <= delayMatch_reg_next(57);
        delayMatch_reg(58) <= delayMatch_reg_next(58);
        delayMatch_reg(59) <= delayMatch_reg_next(59);
        delayMatch_reg(60) <= delayMatch_reg_next(60);
        delayMatch_reg(61) <= delayMatch_reg_next(61);
        delayMatch_reg(62) <= delayMatch_reg_next(62);
        delayMatch_reg(63) <= delayMatch_reg_next(63);
        delayMatch_reg(64) <= delayMatch_reg_next(64);
        delayMatch_reg(65) <= delayMatch_reg_next(65);
        delayMatch_reg(66) <= delayMatch_reg_next(66);
        delayMatch_reg(67) <= delayMatch_reg_next(67);
        delayMatch_reg(68) <= delayMatch_reg_next(68);
        delayMatch_reg(69) <= delayMatch_reg_next(69);
        delayMatch_reg(70) <= delayMatch_reg_next(70);
        delayMatch_reg(71) <= delayMatch_reg_next(71);
        delayMatch_reg(72) <= delayMatch_reg_next(72);
        delayMatch_reg(73) <= delayMatch_reg_next(73);
        delayMatch_reg(74) <= delayMatch_reg_next(74);
        delayMatch_reg(75) <= delayMatch_reg_next(75);
      END IF;
    END IF;
  END PROCESS delayMatch_process;

  Switch1_control_1 <= delayMatch_reg(75);
  delayMatch_reg_next(0) <= Switch1_control;
  delayMatch_reg_next(1) <= delayMatch_reg(0);
  delayMatch_reg_next(2) <= delayMatch_reg(1);
  delayMatch_reg_next(3) <= delayMatch_reg(2);
  delayMatch_reg_next(4) <= delayMatch_reg(3);
  delayMatch_reg_next(5) <= delayMatch_reg(4);
  delayMatch_reg_next(6) <= delayMatch_reg(5);
  delayMatch_reg_next(7) <= delayMatch_reg(6);
  delayMatch_reg_next(8) <= delayMatch_reg(7);
  delayMatch_reg_next(9) <= delayMatch_reg(8);
  delayMatch_reg_next(10) <= delayMatch_reg(9);
  delayMatch_reg_next(11) <= delayMatch_reg(10);
  delayMatch_reg_next(12) <= delayMatch_reg(11);
  delayMatch_reg_next(13) <= delayMatch_reg(12);
  delayMatch_reg_next(14) <= delayMatch_reg(13);
  delayMatch_reg_next(15) <= delayMatch_reg(14);
  delayMatch_reg_next(16) <= delayMatch_reg(15);
  delayMatch_reg_next(17) <= delayMatch_reg(16);
  delayMatch_reg_next(18) <= delayMatch_reg(17);
  delayMatch_reg_next(19) <= delayMatch_reg(18);
  delayMatch_reg_next(20) <= delayMatch_reg(19);
  delayMatch_reg_next(21) <= delayMatch_reg(20);
  delayMatch_reg_next(22) <= delayMatch_reg(21);
  delayMatch_reg_next(23) <= delayMatch_reg(22);
  delayMatch_reg_next(24) <= delayMatch_reg(23);
  delayMatch_reg_next(25) <= delayMatch_reg(24);
  delayMatch_reg_next(26) <= delayMatch_reg(25);
  delayMatch_reg_next(27) <= delayMatch_reg(26);
  delayMatch_reg_next(28) <= delayMatch_reg(27);
  delayMatch_reg_next(29) <= delayMatch_reg(28);
  delayMatch_reg_next(30) <= delayMatch_reg(29);
  delayMatch_reg_next(31) <= delayMatch_reg(30);
  delayMatch_reg_next(32) <= delayMatch_reg(31);
  delayMatch_reg_next(33) <= delayMatch_reg(32);
  delayMatch_reg_next(34) <= delayMatch_reg(33);
  delayMatch_reg_next(35) <= delayMatch_reg(34);
  delayMatch_reg_next(36) <= delayMatch_reg(35);
  delayMatch_reg_next(37) <= delayMatch_reg(36);
  delayMatch_reg_next(38) <= delayMatch_reg(37);
  delayMatch_reg_next(39) <= delayMatch_reg(38);
  delayMatch_reg_next(40) <= delayMatch_reg(39);
  delayMatch_reg_next(41) <= delayMatch_reg(40);
  delayMatch_reg_next(42) <= delayMatch_reg(41);
  delayMatch_reg_next(43) <= delayMatch_reg(42);
  delayMatch_reg_next(44) <= delayMatch_reg(43);
  delayMatch_reg_next(45) <= delayMatch_reg(44);
  delayMatch_reg_next(46) <= delayMatch_reg(45);
  delayMatch_reg_next(47) <= delayMatch_reg(46);
  delayMatch_reg_next(48) <= delayMatch_reg(47);
  delayMatch_reg_next(49) <= delayMatch_reg(48);
  delayMatch_reg_next(50) <= delayMatch_reg(49);
  delayMatch_reg_next(51) <= delayMatch_reg(50);
  delayMatch_reg_next(52) <= delayMatch_reg(51);
  delayMatch_reg_next(53) <= delayMatch_reg(52);
  delayMatch_reg_next(54) <= delayMatch_reg(53);
  delayMatch_reg_next(55) <= delayMatch_reg(54);
  delayMatch_reg_next(56) <= delayMatch_reg(55);
  delayMatch_reg_next(57) <= delayMatch_reg(56);
  delayMatch_reg_next(58) <= delayMatch_reg(57);
  delayMatch_reg_next(59) <= delayMatch_reg(58);
  delayMatch_reg_next(60) <= delayMatch_reg(59);
  delayMatch_reg_next(61) <= delayMatch_reg(60);
  delayMatch_reg_next(62) <= delayMatch_reg(61);
  delayMatch_reg_next(63) <= delayMatch_reg(62);
  delayMatch_reg_next(64) <= delayMatch_reg(63);
  delayMatch_reg_next(65) <= delayMatch_reg(64);
  delayMatch_reg_next(66) <= delayMatch_reg(65);
  delayMatch_reg_next(67) <= delayMatch_reg(66);
  delayMatch_reg_next(68) <= delayMatch_reg(67);
  delayMatch_reg_next(69) <= delayMatch_reg(68);
  delayMatch_reg_next(70) <= delayMatch_reg(69);
  delayMatch_reg_next(71) <= delayMatch_reg(70);
  delayMatch_reg_next(72) <= delayMatch_reg(71);
  delayMatch_reg_next(73) <= delayMatch_reg(72);
  delayMatch_reg_next(74) <= delayMatch_reg(73);
  delayMatch_reg_next(75) <= delayMatch_reg(74);

  Constant_out1 <= X"40490fdb";

  delayMatch2_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      delayMatch2_reg(0) <= '0';
      delayMatch2_reg(1) <= '0';
      delayMatch2_reg(2) <= '0';
      delayMatch2_reg(3) <= '0';
      delayMatch2_reg(4) <= '0';
      delayMatch2_reg(5) <= '0';
      delayMatch2_reg(6) <= '0';
      delayMatch2_reg(7) <= '0';
      delayMatch2_reg(8) <= '0';
      delayMatch2_reg(9) <= '0';
      delayMatch2_reg(10) <= '0';
      delayMatch2_reg(11) <= '0';
      delayMatch2_reg(12) <= '0';
      delayMatch2_reg(13) <= '0';
      delayMatch2_reg(14) <= '0';
      delayMatch2_reg(15) <= '0';
      delayMatch2_reg(16) <= '0';
      delayMatch2_reg(17) <= '0';
      delayMatch2_reg(18) <= '0';
      delayMatch2_reg(19) <= '0';
      delayMatch2_reg(20) <= '0';
      delayMatch2_reg(21) <= '0';
      delayMatch2_reg(22) <= '0';
      delayMatch2_reg(23) <= '0';
      delayMatch2_reg(24) <= '0';
      delayMatch2_reg(25) <= '0';
      delayMatch2_reg(26) <= '0';
      delayMatch2_reg(27) <= '0';
      delayMatch2_reg(28) <= '0';
      delayMatch2_reg(29) <= '0';
      delayMatch2_reg(30) <= '0';
      delayMatch2_reg(31) <= '0';
      delayMatch2_reg(32) <= '0';
      delayMatch2_reg(33) <= '0';
      delayMatch2_reg(34) <= '0';
      delayMatch2_reg(35) <= '0';
      delayMatch2_reg(36) <= '0';
      delayMatch2_reg(37) <= '0';
      delayMatch2_reg(38) <= '0';
      delayMatch2_reg(39) <= '0';
      delayMatch2_reg(40) <= '0';
      delayMatch2_reg(41) <= '0';
      delayMatch2_reg(42) <= '0';
      delayMatch2_reg(43) <= '0';
      delayMatch2_reg(44) <= '0';
      delayMatch2_reg(45) <= '0';
      delayMatch2_reg(46) <= '0';
      delayMatch2_reg(47) <= '0';
      delayMatch2_reg(48) <= '0';
      delayMatch2_reg(49) <= '0';
      delayMatch2_reg(50) <= '0';
      delayMatch2_reg(51) <= '0';
      delayMatch2_reg(52) <= '0';
      delayMatch2_reg(53) <= '0';
      delayMatch2_reg(54) <= '0';
      delayMatch2_reg(55) <= '0';
      delayMatch2_reg(56) <= '0';
      delayMatch2_reg(57) <= '0';
      delayMatch2_reg(58) <= '0';
      delayMatch2_reg(59) <= '0';
      delayMatch2_reg(60) <= '0';
      delayMatch2_reg(61) <= '0';
      delayMatch2_reg(62) <= '0';
      delayMatch2_reg(63) <= '0';
      delayMatch2_reg(64) <= '0';
      delayMatch2_reg(65) <= '0';
      delayMatch2_reg(66) <= '0';
      delayMatch2_reg(67) <= '0';
      delayMatch2_reg(68) <= '0';
      delayMatch2_reg(69) <= '0';
      delayMatch2_reg(70) <= '0';
      delayMatch2_reg(71) <= '0';
      delayMatch2_reg(72) <= '0';
      delayMatch2_reg(73) <= '0';
      delayMatch2_reg(74) <= '0';
      delayMatch2_reg(75) <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch2_reg(0) <= delayMatch2_reg_next(0);
        delayMatch2_reg(1) <= delayMatch2_reg_next(1);
        delayMatch2_reg(2) <= delayMatch2_reg_next(2);
        delayMatch2_reg(3) <= delayMatch2_reg_next(3);
        delayMatch2_reg(4) <= delayMatch2_reg_next(4);
        delayMatch2_reg(5) <= delayMatch2_reg_next(5);
        delayMatch2_reg(6) <= delayMatch2_reg_next(6);
        delayMatch2_reg(7) <= delayMatch2_reg_next(7);
        delayMatch2_reg(8) <= delayMatch2_reg_next(8);
        delayMatch2_reg(9) <= delayMatch2_reg_next(9);
        delayMatch2_reg(10) <= delayMatch2_reg_next(10);
        delayMatch2_reg(11) <= delayMatch2_reg_next(11);
        delayMatch2_reg(12) <= delayMatch2_reg_next(12);
        delayMatch2_reg(13) <= delayMatch2_reg_next(13);
        delayMatch2_reg(14) <= delayMatch2_reg_next(14);
        delayMatch2_reg(15) <= delayMatch2_reg_next(15);
        delayMatch2_reg(16) <= delayMatch2_reg_next(16);
        delayMatch2_reg(17) <= delayMatch2_reg_next(17);
        delayMatch2_reg(18) <= delayMatch2_reg_next(18);
        delayMatch2_reg(19) <= delayMatch2_reg_next(19);
        delayMatch2_reg(20) <= delayMatch2_reg_next(20);
        delayMatch2_reg(21) <= delayMatch2_reg_next(21);
        delayMatch2_reg(22) <= delayMatch2_reg_next(22);
        delayMatch2_reg(23) <= delayMatch2_reg_next(23);
        delayMatch2_reg(24) <= delayMatch2_reg_next(24);
        delayMatch2_reg(25) <= delayMatch2_reg_next(25);
        delayMatch2_reg(26) <= delayMatch2_reg_next(26);
        delayMatch2_reg(27) <= delayMatch2_reg_next(27);
        delayMatch2_reg(28) <= delayMatch2_reg_next(28);
        delayMatch2_reg(29) <= delayMatch2_reg_next(29);
        delayMatch2_reg(30) <= delayMatch2_reg_next(30);
        delayMatch2_reg(31) <= delayMatch2_reg_next(31);
        delayMatch2_reg(32) <= delayMatch2_reg_next(32);
        delayMatch2_reg(33) <= delayMatch2_reg_next(33);
        delayMatch2_reg(34) <= delayMatch2_reg_next(34);
        delayMatch2_reg(35) <= delayMatch2_reg_next(35);
        delayMatch2_reg(36) <= delayMatch2_reg_next(36);
        delayMatch2_reg(37) <= delayMatch2_reg_next(37);
        delayMatch2_reg(38) <= delayMatch2_reg_next(38);
        delayMatch2_reg(39) <= delayMatch2_reg_next(39);
        delayMatch2_reg(40) <= delayMatch2_reg_next(40);
        delayMatch2_reg(41) <= delayMatch2_reg_next(41);
        delayMatch2_reg(42) <= delayMatch2_reg_next(42);
        delayMatch2_reg(43) <= delayMatch2_reg_next(43);
        delayMatch2_reg(44) <= delayMatch2_reg_next(44);
        delayMatch2_reg(45) <= delayMatch2_reg_next(45);
        delayMatch2_reg(46) <= delayMatch2_reg_next(46);
        delayMatch2_reg(47) <= delayMatch2_reg_next(47);
        delayMatch2_reg(48) <= delayMatch2_reg_next(48);
        delayMatch2_reg(49) <= delayMatch2_reg_next(49);
        delayMatch2_reg(50) <= delayMatch2_reg_next(50);
        delayMatch2_reg(51) <= delayMatch2_reg_next(51);
        delayMatch2_reg(52) <= delayMatch2_reg_next(52);
        delayMatch2_reg(53) <= delayMatch2_reg_next(53);
        delayMatch2_reg(54) <= delayMatch2_reg_next(54);
        delayMatch2_reg(55) <= delayMatch2_reg_next(55);
        delayMatch2_reg(56) <= delayMatch2_reg_next(56);
        delayMatch2_reg(57) <= delayMatch2_reg_next(57);
        delayMatch2_reg(58) <= delayMatch2_reg_next(58);
        delayMatch2_reg(59) <= delayMatch2_reg_next(59);
        delayMatch2_reg(60) <= delayMatch2_reg_next(60);
        delayMatch2_reg(61) <= delayMatch2_reg_next(61);
        delayMatch2_reg(62) <= delayMatch2_reg_next(62);
        delayMatch2_reg(63) <= delayMatch2_reg_next(63);
        delayMatch2_reg(64) <= delayMatch2_reg_next(64);
        delayMatch2_reg(65) <= delayMatch2_reg_next(65);
        delayMatch2_reg(66) <= delayMatch2_reg_next(66);
        delayMatch2_reg(67) <= delayMatch2_reg_next(67);
        delayMatch2_reg(68) <= delayMatch2_reg_next(68);
        delayMatch2_reg(69) <= delayMatch2_reg_next(69);
        delayMatch2_reg(70) <= delayMatch2_reg_next(70);
        delayMatch2_reg(71) <= delayMatch2_reg_next(71);
        delayMatch2_reg(72) <= delayMatch2_reg_next(72);
        delayMatch2_reg(73) <= delayMatch2_reg_next(73);
        delayMatch2_reg(74) <= delayMatch2_reg_next(74);
        delayMatch2_reg(75) <= delayMatch2_reg_next(75);
      END IF;
    END IF;
  END PROCESS delayMatch2_process;

  Switch_control_1 <= delayMatch2_reg(75);
  delayMatch2_reg_next(0) <= Switch_control;
  delayMatch2_reg_next(1) <= delayMatch2_reg(0);
  delayMatch2_reg_next(2) <= delayMatch2_reg(1);
  delayMatch2_reg_next(3) <= delayMatch2_reg(2);
  delayMatch2_reg_next(4) <= delayMatch2_reg(3);
  delayMatch2_reg_next(5) <= delayMatch2_reg(4);
  delayMatch2_reg_next(6) <= delayMatch2_reg(5);
  delayMatch2_reg_next(7) <= delayMatch2_reg(6);
  delayMatch2_reg_next(8) <= delayMatch2_reg(7);
  delayMatch2_reg_next(9) <= delayMatch2_reg(8);
  delayMatch2_reg_next(10) <= delayMatch2_reg(9);
  delayMatch2_reg_next(11) <= delayMatch2_reg(10);
  delayMatch2_reg_next(12) <= delayMatch2_reg(11);
  delayMatch2_reg_next(13) <= delayMatch2_reg(12);
  delayMatch2_reg_next(14) <= delayMatch2_reg(13);
  delayMatch2_reg_next(15) <= delayMatch2_reg(14);
  delayMatch2_reg_next(16) <= delayMatch2_reg(15);
  delayMatch2_reg_next(17) <= delayMatch2_reg(16);
  delayMatch2_reg_next(18) <= delayMatch2_reg(17);
  delayMatch2_reg_next(19) <= delayMatch2_reg(18);
  delayMatch2_reg_next(20) <= delayMatch2_reg(19);
  delayMatch2_reg_next(21) <= delayMatch2_reg(20);
  delayMatch2_reg_next(22) <= delayMatch2_reg(21);
  delayMatch2_reg_next(23) <= delayMatch2_reg(22);
  delayMatch2_reg_next(24) <= delayMatch2_reg(23);
  delayMatch2_reg_next(25) <= delayMatch2_reg(24);
  delayMatch2_reg_next(26) <= delayMatch2_reg(25);
  delayMatch2_reg_next(27) <= delayMatch2_reg(26);
  delayMatch2_reg_next(28) <= delayMatch2_reg(27);
  delayMatch2_reg_next(29) <= delayMatch2_reg(28);
  delayMatch2_reg_next(30) <= delayMatch2_reg(29);
  delayMatch2_reg_next(31) <= delayMatch2_reg(30);
  delayMatch2_reg_next(32) <= delayMatch2_reg(31);
  delayMatch2_reg_next(33) <= delayMatch2_reg(32);
  delayMatch2_reg_next(34) <= delayMatch2_reg(33);
  delayMatch2_reg_next(35) <= delayMatch2_reg(34);
  delayMatch2_reg_next(36) <= delayMatch2_reg(35);
  delayMatch2_reg_next(37) <= delayMatch2_reg(36);
  delayMatch2_reg_next(38) <= delayMatch2_reg(37);
  delayMatch2_reg_next(39) <= delayMatch2_reg(38);
  delayMatch2_reg_next(40) <= delayMatch2_reg(39);
  delayMatch2_reg_next(41) <= delayMatch2_reg(40);
  delayMatch2_reg_next(42) <= delayMatch2_reg(41);
  delayMatch2_reg_next(43) <= delayMatch2_reg(42);
  delayMatch2_reg_next(44) <= delayMatch2_reg(43);
  delayMatch2_reg_next(45) <= delayMatch2_reg(44);
  delayMatch2_reg_next(46) <= delayMatch2_reg(45);
  delayMatch2_reg_next(47) <= delayMatch2_reg(46);
  delayMatch2_reg_next(48) <= delayMatch2_reg(47);
  delayMatch2_reg_next(49) <= delayMatch2_reg(48);
  delayMatch2_reg_next(50) <= delayMatch2_reg(49);
  delayMatch2_reg_next(51) <= delayMatch2_reg(50);
  delayMatch2_reg_next(52) <= delayMatch2_reg(51);
  delayMatch2_reg_next(53) <= delayMatch2_reg(52);
  delayMatch2_reg_next(54) <= delayMatch2_reg(53);
  delayMatch2_reg_next(55) <= delayMatch2_reg(54);
  delayMatch2_reg_next(56) <= delayMatch2_reg(55);
  delayMatch2_reg_next(57) <= delayMatch2_reg(56);
  delayMatch2_reg_next(58) <= delayMatch2_reg(57);
  delayMatch2_reg_next(59) <= delayMatch2_reg(58);
  delayMatch2_reg_next(60) <= delayMatch2_reg(59);
  delayMatch2_reg_next(61) <= delayMatch2_reg(60);
  delayMatch2_reg_next(62) <= delayMatch2_reg(61);
  delayMatch2_reg_next(63) <= delayMatch2_reg(62);
  delayMatch2_reg_next(64) <= delayMatch2_reg(63);
  delayMatch2_reg_next(65) <= delayMatch2_reg(64);
  delayMatch2_reg_next(66) <= delayMatch2_reg(65);
  delayMatch2_reg_next(67) <= delayMatch2_reg(66);
  delayMatch2_reg_next(68) <= delayMatch2_reg(67);
  delayMatch2_reg_next(69) <= delayMatch2_reg(68);
  delayMatch2_reg_next(70) <= delayMatch2_reg(69);
  delayMatch2_reg_next(71) <= delayMatch2_reg(70);
  delayMatch2_reg_next(72) <= delayMatch2_reg(71);
  delayMatch2_reg_next(73) <= delayMatch2_reg(72);
  delayMatch2_reg_next(74) <= delayMatch2_reg(73);
  delayMatch2_reg_next(75) <= delayMatch2_reg(74);

  
  Switch1_out1 <= Subtract_out1 WHEN Switch1_control_1 = '0' ELSE
      Add_out1;

  delayMatch1_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      delayMatch1_reg(0) <= X"00000000";
      delayMatch1_reg(1) <= X"00000000";
      delayMatch1_reg(2) <= X"00000000";
      delayMatch1_reg(3) <= X"00000000";
      delayMatch1_reg(4) <= X"00000000";
      delayMatch1_reg(5) <= X"00000000";
      delayMatch1_reg(6) <= X"00000000";
      delayMatch1_reg(7) <= X"00000000";
      delayMatch1_reg(8) <= X"00000000";
      delayMatch1_reg(9) <= X"00000000";
      delayMatch1_reg(10) <= X"00000000";
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        delayMatch1_reg(0) <= delayMatch1_reg_next(0);
        delayMatch1_reg(1) <= delayMatch1_reg_next(1);
        delayMatch1_reg(2) <= delayMatch1_reg_next(2);
        delayMatch1_reg(3) <= delayMatch1_reg_next(3);
        delayMatch1_reg(4) <= delayMatch1_reg_next(4);
        delayMatch1_reg(5) <= delayMatch1_reg_next(5);
        delayMatch1_reg(6) <= delayMatch1_reg_next(6);
        delayMatch1_reg(7) <= delayMatch1_reg_next(7);
        delayMatch1_reg(8) <= delayMatch1_reg_next(8);
        delayMatch1_reg(9) <= delayMatch1_reg_next(9);
        delayMatch1_reg(10) <= delayMatch1_reg_next(10);
      END IF;
    END IF;
  END PROCESS delayMatch1_process;

  Atan_out1_1 <= delayMatch1_reg(10);
  delayMatch1_reg_next(0) <= Atan_out1;
  delayMatch1_reg_next(1) <= delayMatch1_reg(0);
  delayMatch1_reg_next(2) <= delayMatch1_reg(1);
  delayMatch1_reg_next(3) <= delayMatch1_reg(2);
  delayMatch1_reg_next(4) <= delayMatch1_reg(3);
  delayMatch1_reg_next(5) <= delayMatch1_reg(4);
  delayMatch1_reg_next(6) <= delayMatch1_reg(5);
  delayMatch1_reg_next(7) <= delayMatch1_reg(6);
  delayMatch1_reg_next(8) <= delayMatch1_reg(7);
  delayMatch1_reg_next(9) <= delayMatch1_reg(8);
  delayMatch1_reg_next(10) <= delayMatch1_reg(9);

  
  Switch_out1 <= Switch1_out1 WHEN Switch_control_1 = '0' ELSE
      Atan_out1_1;

  hard_decision_demod_out1_unsigned <= unsigned(hard_decision_demod_out1);

  Constant1_out1(0) <= X"00000000";
  Constant1_out1(1) <= X"00000000";
  Constant1_out1(2) <= X"3f800000";

  Constant2_out1(0) <= X"00000000";
  Constant2_out1(1) <= X"00000000";
  Constant2_out1(2) <= X"00000000";

  Constant3_out1(0) <= X"3f800000";
  Constant3_out1(1) <= X"00000000";
  Constant3_out1(2) <= X"00000000";

  Constant4_out1(0) <= X"3f800000";
  Constant4_out1(1) <= X"3f800000";
  Constant4_out1(2) <= X"00000000";

  Constant5_out1(0) <= X"00000000";
  Constant5_out1(1) <= X"3f800000";
  Constant5_out1(2) <= X"00000000";

  Constant6_out1(0) <= X"00000000";
  Constant6_out1(1) <= X"3f800000";
  Constant6_out1(2) <= X"3f800000";

  Constant7_out1(0) <= X"3f800000";
  Constant7_out1(1) <= X"3f800000";
  Constant7_out1(2) <= X"3f800000";

  Constant8_out1(0) <= X"3f800000";
  Constant8_out1(1) <= X"00000000";
  Constant8_out1(2) <= X"3f800000";

  
  Index_Vector_out1(0) <= Constant1_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#001#, 9) ELSE
      Constant2_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#002#, 9) ELSE
      Constant3_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#003#, 9) ELSE
      Constant4_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#004#, 9) ELSE
      Constant5_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#005#, 9) ELSE
      Constant6_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#006#, 9) ELSE
      Constant7_out1(0) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#007#, 9) ELSE
      Constant8_out1(0);
  
  Index_Vector_out1(1) <= Constant1_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#001#, 9) ELSE
      Constant2_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#002#, 9) ELSE
      Constant3_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#003#, 9) ELSE
      Constant4_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#004#, 9) ELSE
      Constant5_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#005#, 9) ELSE
      Constant6_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#006#, 9) ELSE
      Constant7_out1(1) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#007#, 9) ELSE
      Constant8_out1(1);
  
  Index_Vector_out1(2) <= Constant1_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#001#, 9) ELSE
      Constant2_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#002#, 9) ELSE
      Constant3_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#003#, 9) ELSE
      Constant4_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#004#, 9) ELSE
      Constant5_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#005#, 9) ELSE
      Constant6_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#006#, 9) ELSE
      Constant7_out1(2) WHEN hard_decision_demod_out1_unsigned = to_unsigned(16#007#, 9) ELSE
      Constant8_out1(2);

  ce_out <= clk_enable;

  out_0 <= Index_Vector_out1(0);

  out_1 <= Index_Vector_out1(1);

  out_2 <= Index_Vector_out1(2);

END rtl;

