-- -------------------------------------------------------------
-- 
-- File Name: /home/wardo/Documents/DVBS2/DVBS2/src/simulink/hdl_transmitter/hdl_prj/hdlsrc/transmitter/tran_dut.vhd
-- Created: 2021-01-03 02:06:55
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.125
-- Target subsystem base rate: 0.125
-- 
-- 
-- Clock Enable  Sample Time
-- -------------------------------------------------------------
-- ce_out        0.125
-- -------------------------------------------------------------
-- 
-- 
-- Output Signal                 Clock Enable  Sample Time
-- -------------------------------------------------------------
-- inphase                       ce_out        0.125
-- quadrature                    ce_out        0.125
-- -------------------------------------------------------------
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: tran_dut
-- Source Path: transmitter/tran_dut
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tran_dut IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        input_bit                         :   IN    std_logic;
        amplitude                         :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        start                             :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        ce_out                            :   OUT   std_logic;
        inphase                           :   OUT   std_logic_vector(44 DOWNTO 0);  -- sfix45_En31
        quadrature                        :   OUT   std_logic_vector(44 DOWNTO 0)  -- sfix45_En31
        );
END tran_dut;


ARCHITECTURE rtl OF tran_dut IS

  ATTRIBUTE multstyle : string;

  -- Component Declarations
  COMPONENT tran_dut_tc
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          clk_enable                      :   IN    std_logic;
          enb                             :   OUT   std_logic;
          enb_1_1_1                       :   OUT   std_logic;
          enb_1_8_0                       :   OUT   std_logic;
          enb_1_8_1                       :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT interleaver_dut
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb_1_8_0                       :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          start                           :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          data_out                        :   OUT   std_logic_vector(0 TO 2);  -- ufix1 [3]
          valid_out                       :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT bit_mapping
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_sequence                  :   IN    std_logic_vector(0 TO 2);  -- ufix1 [3]
          amplitude                       :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          inphase                         :   OUT   std_logic_vector(24 DOWNTO 0);  -- sfix25_En15
          quadrature                      :   OUT   std_logic_vector(24 DOWNTO 0)  -- sfix25_En15
          );
  END COMPONENT;

  COMPONENT bb_shaping1
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb_1_1_1                       :   IN    std_logic;
          inphase                         :   IN    std_logic_vector(24 DOWNTO 0);  -- sfix25_En15
          quadrature                      :   IN    std_logic_vector(24 DOWNTO 0);  -- sfix25_En15
          i_filtered                      :   OUT   std_logic_vector(44 DOWNTO 0);  -- sfix45_En31
          q_filtered                      :   OUT   std_logic_vector(44 DOWNTO 0)  -- sfix45_En31
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : tran_dut_tc
    USE ENTITY work.tran_dut_tc(rtl);

  FOR ALL : interleaver_dut
    USE ENTITY work.interleaver_dut(rtl);

  FOR ALL : bit_mapping
    USE ENTITY work.bit_mapping(rtl);

  FOR ALL : bb_shaping1
    USE ENTITY work.bb_shaping1(rtl);

  -- Signals
  SIGNAL enb_1_1_1                        : std_logic;
  SIGNAL enb_1_8_1                        : std_logic;
  SIGNAL enb                              : std_logic;
  SIGNAL enb_1_8_0                        : std_logic;
  SIGNAL data                             : std_logic_vector(0 TO 2);  -- ufix1 [3]
  SIGNAL valid                            : std_logic;
  SIGNAL valid_1                          : std_logic;
  SIGNAL valid_2                          : std_logic;
  SIGNAL valid_dtc                        : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL amplitude_1                      : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL bit_mapping_out1                 : std_logic_vector(24 DOWNTO 0);  -- ufix25
  SIGNAL bit_mapping_out2                 : std_logic_vector(24 DOWNTO 0);  -- ufix25
  SIGNAL bit_mapping_out1_signed          : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL Switch_out1                      : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL valid_dtc_1                      : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL bit_mapping_out2_signed          : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL Switch1_out1                     : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL FIR_Interpolation_bypass_reg     : signed(24 DOWNTO 0);  -- sfix25
  SIGNAL Switch_out1_1                    : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL FIR_Interpolation1_bypass_reg    : signed(24 DOWNTO 0);  -- sfix25
  SIGNAL Switch1_out1_1                   : signed(24 DOWNTO 0);  -- sfix25_En15
  SIGNAL bb_shaping1_out1                 : std_logic_vector(44 DOWNTO 0);  -- ufix45
  SIGNAL bb_shaping1_out2                 : std_logic_vector(44 DOWNTO 0);  -- ufix45

BEGIN
  u_tran_dut_tc : tran_dut_tc
    PORT MAP( clk => clk,
              reset_x => reset_x,
              clk_enable => clk_enable,
              enb => enb,
              enb_1_1_1 => enb_1_1_1,
              enb_1_8_0 => enb_1_8_0,
              enb_1_8_1 => enb_1_8_1
              );

  u_interleaver_dut : interleaver_dut
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb_1_8_0 => enb_1_8_0,
              input_bit => input_bit,
              start => start,  -- uint8
              data_out => data,  -- ufix1 [3]
              valid_out => valid
              );

  u_bit_mapping : bit_mapping
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => enb,
              input_sequence => data,  -- ufix1 [3]
              amplitude => amplitude_1,  -- uint8
              inphase => bit_mapping_out1,  -- sfix25_En15
              quadrature => bit_mapping_out2  -- sfix25_En15
              );

  u_bb_shaping1 : bb_shaping1
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb_1_1_1 => enb_1_1_1,
              inphase => std_logic_vector(Switch_out1_1),  -- sfix25_En15
              quadrature => std_logic_vector(Switch1_out1_1),  -- sfix25_En15
              i_filtered => bb_shaping1_out1,  -- sfix45_En31
              q_filtered => bb_shaping1_out2  -- sfix45_En31
              );

  valid_1 <= valid;

  reduced_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      valid_2 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        valid_2 <= valid_1;
      END IF;
    END IF;
  END PROCESS reduced_process;


  valid_dtc <= signed(resize(unsigned'(valid_2 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0'), 25));

  amplitude_1 <= std_logic_vector(unsigned(amplitude));

  bit_mapping_out1_signed <= signed(bit_mapping_out1);

  
  Switch_out1 <= valid_dtc WHEN valid_2 = '0' ELSE
      bit_mapping_out1_signed;

  valid_dtc_1 <= signed(resize(unsigned'(valid_2 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0'), 25));

  bit_mapping_out2_signed <= signed(bit_mapping_out2);

  
  Switch1_out1 <= valid_dtc_1 WHEN valid_2 = '0' ELSE
      bit_mapping_out2_signed;

  FIR_Interpolation_bypass_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      FIR_Interpolation_bypass_reg <= to_signed(16#0000000#, 25);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_8_1 = '1' THEN
        FIR_Interpolation_bypass_reg <= Switch_out1;
      END IF;
    END IF;
  END PROCESS FIR_Interpolation_bypass_process;

  
  Switch_out1_1 <= Switch_out1 WHEN enb_1_8_1 = '1' ELSE
      FIR_Interpolation_bypass_reg;

  FIR_Interpolation1_bypass_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      FIR_Interpolation1_bypass_reg <= to_signed(16#0000000#, 25);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_8_1 = '1' THEN
        FIR_Interpolation1_bypass_reg <= Switch1_out1;
      END IF;
    END IF;
  END PROCESS FIR_Interpolation1_bypass_process;

  
  Switch1_out1_1 <= Switch1_out1 WHEN enb_1_8_1 = '1' ELSE
      FIR_Interpolation1_bypass_reg;

  ce_out <= enb_1_1_1;

  inphase <= bb_shaping1_out1;

  quadrature <= bb_shaping1_out2;

END rtl;

