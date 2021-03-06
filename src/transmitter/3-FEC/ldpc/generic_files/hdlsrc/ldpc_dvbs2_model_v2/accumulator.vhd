-- -------------------------------------------------------------
-- 
-- File Name: /home/wardo/Documents/DVBS2/DVBS2/src/transmitter/3-FEC/ldpc/generic_files/hdlsrc/ldpc_dvbs2_model_v2/accumulator.vhd
-- Created: 2021-02-07 01:39:02
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: accumulator
-- Source Path: ldpc_dvbs2_model_v2/ldpc_encoder/accumulator
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY accumulator IS
  PORT( clk                               :   IN    std_logic;
        enb                               :   IN    std_logic;
        input_bit                         :   IN    std_logic;
        enable                            :   IN    std_logic;
        In1                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In2                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In3                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In4                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In5                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In6                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In7                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In8                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In9                               :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In10                              :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In11                              :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        In12                              :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
        dout                              :   OUT   std_logic;
        dout1                             :   OUT   std_logic;
        dout2                             :   OUT   std_logic;
        dout3                             :   OUT   std_logic;
        dout4                             :   OUT   std_logic;
        dout5                             :   OUT   std_logic;
        dout6                             :   OUT   std_logic;
        dout7                             :   OUT   std_logic;
        dout8                             :   OUT   std_logic;
        dout9                             :   OUT   std_logic;
        dout10                            :   OUT   std_logic;
        dout11                            :   OUT   std_logic
        );
END accumulator;


ARCHITECTURE rtl OF accumulator IS

  -- Component Declarations
  COMPONENT ram_accumulate
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate1
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate2
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate3
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate4
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate5
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate6
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate7
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate8
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate9
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate10
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT ram_accumulate11
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          input_bit                       :   IN    std_logic;
          In1                             :   IN    std_logic_vector(13 DOWNTO 0);  -- ufix14
          In3                             :   IN    std_logic;
          dout                            :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : ram_accumulate
    USE ENTITY work.ram_accumulate(rtl);

  FOR ALL : ram_accumulate1
    USE ENTITY work.ram_accumulate1(rtl);

  FOR ALL : ram_accumulate2
    USE ENTITY work.ram_accumulate2(rtl);

  FOR ALL : ram_accumulate3
    USE ENTITY work.ram_accumulate3(rtl);

  FOR ALL : ram_accumulate4
    USE ENTITY work.ram_accumulate4(rtl);

  FOR ALL : ram_accumulate5
    USE ENTITY work.ram_accumulate5(rtl);

  FOR ALL : ram_accumulate6
    USE ENTITY work.ram_accumulate6(rtl);

  FOR ALL : ram_accumulate7
    USE ENTITY work.ram_accumulate7(rtl);

  FOR ALL : ram_accumulate8
    USE ENTITY work.ram_accumulate8(rtl);

  FOR ALL : ram_accumulate9
    USE ENTITY work.ram_accumulate9(rtl);

  FOR ALL : ram_accumulate10
    USE ENTITY work.ram_accumulate10(rtl);

  FOR ALL : ram_accumulate11
    USE ENTITY work.ram_accumulate11(rtl);

  -- Signals
  SIGNAL ram_accumulate_out1              : std_logic;
  SIGNAL ram_accumulate1_out1             : std_logic;
  SIGNAL ram_accumulate2_out1             : std_logic;
  SIGNAL ram_accumulate3_out1             : std_logic;
  SIGNAL ram_accumulate4_out1             : std_logic;
  SIGNAL ram_accumulate5_out1             : std_logic;
  SIGNAL ram_accumulate6_out1             : std_logic;
  SIGNAL ram_accumulate7_out1             : std_logic;
  SIGNAL ram_accumulate8_out1             : std_logic;
  SIGNAL ram_accumulate9_out1             : std_logic;
  SIGNAL ram_accumulate10_out1            : std_logic;
  SIGNAL ram_accumulate11_out1            : std_logic;

BEGIN
  u_ram_accumulate : ram_accumulate
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In1,  -- ufix14
              In3 => enable,
              dout => ram_accumulate_out1
              );

  u_ram_accumulate1 : ram_accumulate1
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In2,  -- ufix14
              In3 => enable,
              dout => ram_accumulate1_out1
              );

  u_ram_accumulate2 : ram_accumulate2
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In3,  -- ufix14
              In3 => enable,
              dout => ram_accumulate2_out1
              );

  u_ram_accumulate3 : ram_accumulate3
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In4,  -- ufix14
              In3 => enable,
              dout => ram_accumulate3_out1
              );

  u_ram_accumulate4 : ram_accumulate4
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In5,  -- ufix14
              In3 => enable,
              dout => ram_accumulate4_out1
              );

  u_ram_accumulate5 : ram_accumulate5
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In6,  -- ufix14
              In3 => enable,
              dout => ram_accumulate5_out1
              );

  u_ram_accumulate6 : ram_accumulate6
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In7,  -- ufix14
              In3 => enable,
              dout => ram_accumulate6_out1
              );

  u_ram_accumulate7 : ram_accumulate7
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In8,  -- ufix14
              In3 => enable,
              dout => ram_accumulate7_out1
              );

  u_ram_accumulate8 : ram_accumulate8
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In9,  -- ufix14
              In3 => enable,
              dout => ram_accumulate8_out1
              );

  u_ram_accumulate9 : ram_accumulate9
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In10,  -- ufix14
              In3 => enable,
              dout => ram_accumulate9_out1
              );

  u_ram_accumulate10 : ram_accumulate10
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In11,  -- ufix14
              In3 => enable,
              dout => ram_accumulate10_out1
              );

  u_ram_accumulate11 : ram_accumulate11
    PORT MAP( clk => clk,
              enb => enb,
              input_bit => input_bit,
              In1 => In12,  -- ufix14
              In3 => enable,
              dout => ram_accumulate11_out1
              );

  dout <= ram_accumulate_out1;

  dout1 <= ram_accumulate1_out1;

  dout2 <= ram_accumulate2_out1;

  dout3 <= ram_accumulate3_out1;

  dout4 <= ram_accumulate4_out1;

  dout5 <= ram_accumulate5_out1;

  dout6 <= ram_accumulate6_out1;

  dout7 <= ram_accumulate7_out1;

  dout8 <= ram_accumulate8_out1;

  dout9 <= ram_accumulate9_out1;

  dout10 <= ram_accumulate10_out1;

  dout11 <= ram_accumulate11_out1;

END rtl;

