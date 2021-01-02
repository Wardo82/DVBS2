-- ------------------------------------------------------------
-- 
-- File Name: D:\Documents\DVBS2\DVBS2\src\transmitter\6-BaseBandShaping\hdl_prj\hdlsrc\base_band_shaping_model\FIR_Interpolation
-- Created: 2021-01-02 13:55:28
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- ------------------------------------------------------------
-- 
-- 
-- ------------------------------------------------------------
-- 
-- Module: FIR_Interpolation
-- Source Path: /FIR_Interpolation
-- 
-- ------------------------------------------------------------
-- 
-- HDL Implementation    : Fully parallel
-- Folding Factor        : 1
-- Multipliers           : 11


LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.ALL;

ENTITY FIR_Interpolation IS
   PORT( clk                             :   IN    std_logic; 
         enb_1_1_1                       :   IN    std_logic; 
         reset_x                         :   IN    std_logic; 
         FIR_Interpolation_in            :   IN    std_logic_vector(17 DOWNTO 0); -- sfix18_En14
         FIR_Interpolation_out           :   OUT   std_logic_vector(37 DOWNTO 0)  -- sfix38_En30
         );

END FIR_Interpolation;


----------------------------------------------------------------
--Module Architecture: FIR_Interpolation
----------------------------------------------------------------
ARCHITECTURE rtl OF FIR_Interpolation IS
  -- Local Functions
  -- Type Definitions
  TYPE delay_pipeline_type IS ARRAY (NATURAL range <>) OF signed(17 DOWNTO 0); -- sfix18_En14
  -- Constants
  CONSTANT coeffphase1_1                  : signed(15 DOWNTO 0) := to_signed(-393, 16); -- sfix16_En16
  CONSTANT coeffphase1_2                  : signed(15 DOWNTO 0) := to_signed(634, 16); -- sfix16_En16
  CONSTANT coeffphase1_3                  : signed(15 DOWNTO 0) := to_signed(-874, 16); -- sfix16_En16
  CONSTANT coeffphase1_4                  : signed(15 DOWNTO 0) := to_signed(1080, 16); -- sfix16_En16
  CONSTANT coeffphase1_5                  : signed(15 DOWNTO 0) := to_signed(-1218, 16); -- sfix16_En16
  CONSTANT coeffphase1_6                  : signed(15 DOWNTO 0) := to_signed(24441, 16); -- sfix16_En16
  CONSTANT coeffphase1_7                  : signed(15 DOWNTO 0) := to_signed(-1218, 16); -- sfix16_En16
  CONSTANT coeffphase1_8                  : signed(15 DOWNTO 0) := to_signed(1080, 16); -- sfix16_En16
  CONSTANT coeffphase1_9                  : signed(15 DOWNTO 0) := to_signed(-874, 16); -- sfix16_En16
  CONSTANT coeffphase1_10                 : signed(15 DOWNTO 0) := to_signed(634, 16); -- sfix16_En16
  CONSTANT coeffphase1_11                 : signed(15 DOWNTO 0) := to_signed(-393, 16); -- sfix16_En16
  CONSTANT coeffphase2_1                  : signed(15 DOWNTO 0) := to_signed(-337, 16); -- sfix16_En16
  CONSTANT coeffphase2_2                  : signed(15 DOWNTO 0) := to_signed(379, 16); -- sfix16_En16
  CONSTANT coeffphase2_3                  : signed(15 DOWNTO 0) := to_signed(-269, 16); -- sfix16_En16
  CONSTANT coeffphase2_4                  : signed(15 DOWNTO 0) := to_signed(-191, 16); -- sfix16_En16
  CONSTANT coeffphase2_5                  : signed(15 DOWNTO 0) := to_signed(1945, 16); -- sfix16_En16
  CONSTANT coeffphase2_6                  : signed(15 DOWNTO 0) := to_signed(23732, 16); -- sfix16_En16
  CONSTANT coeffphase2_7                  : signed(15 DOWNTO 0) := to_signed(-3436, 16); -- sfix16_En16
  CONSTANT coeffphase2_8                  : signed(15 DOWNTO 0) := to_signed(1974, 16); -- sfix16_En16
  CONSTANT coeffphase2_9                  : signed(15 DOWNTO 0) := to_signed(-1244, 16); -- sfix16_En16
  CONSTANT coeffphase2_10                 : signed(15 DOWNTO 0) := to_signed(736, 16); -- sfix16_En16
  CONSTANT coeffphase2_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase3_1                  : signed(15 DOWNTO 0) := to_signed(-190, 16); -- sfix16_En16
  CONSTANT coeffphase3_2                  : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase3_3                  : signed(15 DOWNTO 0) := to_signed(493, 16); -- sfix16_En16
  CONSTANT coeffphase3_4                  : signed(15 DOWNTO 0) := to_signed(-1670, 16); -- sfix16_En16
  CONSTANT coeffphase3_5                  : signed(15 DOWNTO 0) := to_signed(5846, 16); -- sfix16_En16
  CONSTANT coeffphase3_6                  : signed(15 DOWNTO 0) := to_signed(21680, 16); -- sfix16_En16
  CONSTANT coeffphase3_7                  : signed(15 DOWNTO 0) := to_signed(-4635, 16); -- sfix16_En16
  CONSTANT coeffphase3_8                  : signed(15 DOWNTO 0) := to_signed(2409, 16); -- sfix16_En16
  CONSTANT coeffphase3_9                  : signed(15 DOWNTO 0) := to_signed(-1349, 16); -- sfix16_En16
  CONSTANT coeffphase3_10                 : signed(15 DOWNTO 0) := to_signed(688, 16); -- sfix16_En16
  CONSTANT coeffphase3_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase4_1                  : signed(15 DOWNTO 0) := to_signed(29, 16); -- sfix16_En16
  CONSTANT coeffphase4_2                  : signed(15 DOWNTO 0) := to_signed(-446, 16); -- sfix16_En16
  CONSTANT coeffphase4_3                  : signed(15 DOWNTO 0) := to_signed(1287, 16); -- sfix16_En16
  CONSTANT coeffphase4_4                  : signed(15 DOWNTO 0) := to_signed(-3125, 16); -- sfix16_En16
  CONSTANT coeffphase4_5                  : signed(15 DOWNTO 0) := to_signed(10173, 16); -- sfix16_En16
  CONSTANT coeffphase4_6                  : signed(15 DOWNTO 0) := to_signed(18503, 16); -- sfix16_En16
  CONSTANT coeffphase4_7                  : signed(15 DOWNTO 0) := to_signed(-4864, 16); -- sfix16_En16
  CONSTANT coeffphase4_8                  : signed(15 DOWNTO 0) := to_signed(2382, 16); -- sfix16_En16
  CONSTANT coeffphase4_9                  : signed(15 DOWNTO 0) := to_signed(-1208, 16); -- sfix16_En16
  CONSTANT coeffphase4_10                 : signed(15 DOWNTO 0) := to_signed(521, 16); -- sfix16_En16
  CONSTANT coeffphase4_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase5_1                  : signed(15 DOWNTO 0) := to_signed(283, 16); -- sfix16_En16
  CONSTANT coeffphase5_2                  : signed(15 DOWNTO 0) := to_signed(-879, 16); -- sfix16_En16
  CONSTANT coeffphase5_3                  : signed(15 DOWNTO 0) := to_signed(1967, 16); -- sfix16_En16
  CONSTANT coeffphase5_4                  : signed(15 DOWNTO 0) := to_signed(-4281, 16); -- sfix16_En16
  CONSTANT coeffphase5_5                  : signed(15 DOWNTO 0) := to_signed(14533, 16); -- sfix16_En16
  CONSTANT coeffphase5_6                  : signed(15 DOWNTO 0) := to_signed(14533, 16); -- sfix16_En16
  CONSTANT coeffphase5_7                  : signed(15 DOWNTO 0) := to_signed(-4281, 16); -- sfix16_En16
  CONSTANT coeffphase5_8                  : signed(15 DOWNTO 0) := to_signed(1967, 16); -- sfix16_En16
  CONSTANT coeffphase5_9                  : signed(15 DOWNTO 0) := to_signed(-879, 16); -- sfix16_En16
  CONSTANT coeffphase5_10                 : signed(15 DOWNTO 0) := to_signed(283, 16); -- sfix16_En16
  CONSTANT coeffphase5_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase6_1                  : signed(15 DOWNTO 0) := to_signed(521, 16); -- sfix16_En16
  CONSTANT coeffphase6_2                  : signed(15 DOWNTO 0) := to_signed(-1208, 16); -- sfix16_En16
  CONSTANT coeffphase6_3                  : signed(15 DOWNTO 0) := to_signed(2382, 16); -- sfix16_En16
  CONSTANT coeffphase6_4                  : signed(15 DOWNTO 0) := to_signed(-4864, 16); -- sfix16_En16
  CONSTANT coeffphase6_5                  : signed(15 DOWNTO 0) := to_signed(18503, 16); -- sfix16_En16
  CONSTANT coeffphase6_6                  : signed(15 DOWNTO 0) := to_signed(10173, 16); -- sfix16_En16
  CONSTANT coeffphase6_7                  : signed(15 DOWNTO 0) := to_signed(-3125, 16); -- sfix16_En16
  CONSTANT coeffphase6_8                  : signed(15 DOWNTO 0) := to_signed(1287, 16); -- sfix16_En16
  CONSTANT coeffphase6_9                  : signed(15 DOWNTO 0) := to_signed(-446, 16); -- sfix16_En16
  CONSTANT coeffphase6_10                 : signed(15 DOWNTO 0) := to_signed(29, 16); -- sfix16_En16
  CONSTANT coeffphase6_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase7_1                  : signed(15 DOWNTO 0) := to_signed(688, 16); -- sfix16_En16
  CONSTANT coeffphase7_2                  : signed(15 DOWNTO 0) := to_signed(-1349, 16); -- sfix16_En16
  CONSTANT coeffphase7_3                  : signed(15 DOWNTO 0) := to_signed(2409, 16); -- sfix16_En16
  CONSTANT coeffphase7_4                  : signed(15 DOWNTO 0) := to_signed(-4635, 16); -- sfix16_En16
  CONSTANT coeffphase7_5                  : signed(15 DOWNTO 0) := to_signed(21680, 16); -- sfix16_En16
  CONSTANT coeffphase7_6                  : signed(15 DOWNTO 0) := to_signed(5846, 16); -- sfix16_En16
  CONSTANT coeffphase7_7                  : signed(15 DOWNTO 0) := to_signed(-1670, 16); -- sfix16_En16
  CONSTANT coeffphase7_8                  : signed(15 DOWNTO 0) := to_signed(493, 16); -- sfix16_En16
  CONSTANT coeffphase7_9                  : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase7_10                 : signed(15 DOWNTO 0) := to_signed(-190, 16); -- sfix16_En16
  CONSTANT coeffphase7_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16
  CONSTANT coeffphase8_1                  : signed(15 DOWNTO 0) := to_signed(736, 16); -- sfix16_En16
  CONSTANT coeffphase8_2                  : signed(15 DOWNTO 0) := to_signed(-1244, 16); -- sfix16_En16
  CONSTANT coeffphase8_3                  : signed(15 DOWNTO 0) := to_signed(1974, 16); -- sfix16_En16
  CONSTANT coeffphase8_4                  : signed(15 DOWNTO 0) := to_signed(-3436, 16); -- sfix16_En16
  CONSTANT coeffphase8_5                  : signed(15 DOWNTO 0) := to_signed(23732, 16); -- sfix16_En16
  CONSTANT coeffphase8_6                  : signed(15 DOWNTO 0) := to_signed(1945, 16); -- sfix16_En16
  CONSTANT coeffphase8_7                  : signed(15 DOWNTO 0) := to_signed(-191, 16); -- sfix16_En16
  CONSTANT coeffphase8_8                  : signed(15 DOWNTO 0) := to_signed(-269, 16); -- sfix16_En16
  CONSTANT coeffphase8_9                  : signed(15 DOWNTO 0) := to_signed(379, 16); -- sfix16_En16
  CONSTANT coeffphase8_10                 : signed(15 DOWNTO 0) := to_signed(-337, 16); -- sfix16_En16
  CONSTANT coeffphase8_11                 : signed(15 DOWNTO 0) := to_signed(0, 16); -- sfix16_En16

  -- Signals
  SIGNAL cur_count                        : unsigned(2 DOWNTO 0); -- ufix3
  SIGNAL phase_7                          : std_logic; -- boolean
  SIGNAL delay_pipeline                   : delay_pipeline_type(0 TO 9); -- sfix18_En14
  SIGNAL FIR_Interpolation_in_regtype     : signed(17 DOWNTO 0); -- sfix18_En14
  SIGNAL product                          : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux                      : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_1                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_1                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_2                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_2                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_3                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_3                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_4                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_4                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_5                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_5                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_6                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_6                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_7                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_7                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_8                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_8                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_9                        : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_9                    : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL product_10                       : signed(33 DOWNTO 0); -- sfix34_En30
  SIGNAL product_mux_10                   : signed(15 DOWNTO 0); -- sfix16_En16
  SIGNAL sum1                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast                         : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_1                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp                         : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum2                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_2                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_3                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_1                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum3                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_4                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_5                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_2                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum4                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_6                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_7                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_3                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum5                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_8                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_9                       : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_4                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum6                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_10                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_11                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_5                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum7                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_12                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_13                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_6                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum8                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_14                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_15                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_7                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum9                             : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_16                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_17                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_8                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL sum10                            : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_18                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_cast_19                      : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL add_temp_9                       : signed(38 DOWNTO 0); -- sfix39_En30
  SIGNAL output_typeconvert               : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL regout                           : signed(37 DOWNTO 0); -- sfix38_En30
  SIGNAL muxout                           : signed(37 DOWNTO 0); -- sfix38_En30


BEGIN

  -- Block Statements
  ce_output : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      cur_count <= to_unsigned(0, 3);
    ELSIF clk'event AND clk = '1' THEN
      IF enb_1_1_1 = '1' THEN
        IF cur_count >= to_unsigned(7, 3) THEN
          cur_count <= to_unsigned(0, 3);
        ELSE
          cur_count <= cur_count + to_unsigned(1, 3);
        END IF;
      END IF;
    END IF; 
  END PROCESS ce_output;

  phase_7 <= '1' WHEN cur_count = to_unsigned(7, 3) AND enb_1_1_1 = '1' ELSE '0';

  --   ---------------- Delay Registers ----------------

  Delay_Pipeline_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      delay_pipeline(0 TO 9) <= (OTHERS => (OTHERS => '0'));
    ELSIF clk'event AND clk = '1' THEN
      IF phase_7 = '1' THEN
        delay_pipeline(0) <= signed(FIR_Interpolation_in);
        delay_pipeline(1 TO 9) <= delay_pipeline(0 TO 8);
      END IF;
    END IF; 
  END PROCESS Delay_Pipeline_process;

  FIR_Interpolation_in_regtype <= signed(FIR_Interpolation_in);

  product_mux <= coeffphase1_11 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                      coeffphase2_11 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                      coeffphase3_11 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                      coeffphase4_11 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                      coeffphase5_11 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                      coeffphase6_11 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                      coeffphase7_11 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                      coeffphase8_11;
  product <= delay_pipeline(9) * product_mux;

  product_mux_1 <= coeffphase1_10 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_10 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_10 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_10 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_10 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_10 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_10 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_10;
  product_1 <= delay_pipeline(8) * product_mux_1;

  product_mux_2 <= coeffphase1_9 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_9 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_9 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_9 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_9 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_9 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_9 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_9;
  product_2 <= delay_pipeline(7) * product_mux_2;

  product_mux_3 <= coeffphase1_8 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_8 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_8 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_8 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_8 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_8 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_8 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_8;
  product_3 <= delay_pipeline(6) * product_mux_3;

  product_mux_4 <= coeffphase1_7 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_7 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_7 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_7 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_7 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_7 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_7 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_7;
  product_4 <= delay_pipeline(5) * product_mux_4;

  product_mux_5 <= coeffphase1_6 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_6 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_6 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_6 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_6 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_6 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_6 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_6;
  product_5 <= delay_pipeline(4) * product_mux_5;

  product_mux_6 <= coeffphase1_5 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_5 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_5 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_5 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_5 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_5 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_5 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_5;
  product_6 <= delay_pipeline(3) * product_mux_6;

  product_mux_7 <= coeffphase1_4 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_4 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_4 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_4 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_4 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_4 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_4 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_4;
  product_7 <= delay_pipeline(2) * product_mux_7;

  product_mux_8 <= coeffphase1_3 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_3 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_3 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_3 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_3 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_3 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_3 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_3;
  product_8 <= delay_pipeline(1) * product_mux_8;

  product_mux_9 <= coeffphase1_2 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                        coeffphase2_2 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                        coeffphase3_2 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                        coeffphase4_2 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                        coeffphase5_2 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                        coeffphase6_2 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                        coeffphase7_2 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                        coeffphase8_2;
  product_9 <= delay_pipeline(0) * product_mux_9;

  product_mux_10 <= coeffphase1_1 WHEN ( cur_count = to_unsigned(0, 3) ) ELSE
                         coeffphase2_1 WHEN ( cur_count = to_unsigned(1, 3) ) ELSE
                         coeffphase3_1 WHEN ( cur_count = to_unsigned(2, 3) ) ELSE
                         coeffphase4_1 WHEN ( cur_count = to_unsigned(3, 3) ) ELSE
                         coeffphase5_1 WHEN ( cur_count = to_unsigned(4, 3) ) ELSE
                         coeffphase6_1 WHEN ( cur_count = to_unsigned(5, 3) ) ELSE
                         coeffphase7_1 WHEN ( cur_count = to_unsigned(6, 3) ) ELSE
                         coeffphase8_1;
  product_10 <= FIR_Interpolation_in_regtype * product_mux_10;

  add_cast <= resize(product_10, 38);
  add_cast_1 <= resize(product_9, 38);
  add_temp <= resize(add_cast, 39) + resize(add_cast_1, 39);
  sum1 <= add_temp(37 DOWNTO 0);

  add_cast_2 <= sum1;
  add_cast_3 <= resize(product_8, 38);
  add_temp_1 <= resize(add_cast_2, 39) + resize(add_cast_3, 39);
  sum2 <= add_temp_1(37 DOWNTO 0);

  add_cast_4 <= sum2;
  add_cast_5 <= resize(product_7, 38);
  add_temp_2 <= resize(add_cast_4, 39) + resize(add_cast_5, 39);
  sum3 <= add_temp_2(37 DOWNTO 0);

  add_cast_6 <= sum3;
  add_cast_7 <= resize(product_6, 38);
  add_temp_3 <= resize(add_cast_6, 39) + resize(add_cast_7, 39);
  sum4 <= add_temp_3(37 DOWNTO 0);

  add_cast_8 <= sum4;
  add_cast_9 <= resize(product_5, 38);
  add_temp_4 <= resize(add_cast_8, 39) + resize(add_cast_9, 39);
  sum5 <= add_temp_4(37 DOWNTO 0);

  add_cast_10 <= sum5;
  add_cast_11 <= resize(product_4, 38);
  add_temp_5 <= resize(add_cast_10, 39) + resize(add_cast_11, 39);
  sum6 <= add_temp_5(37 DOWNTO 0);

  add_cast_12 <= sum6;
  add_cast_13 <= resize(product_3, 38);
  add_temp_6 <= resize(add_cast_12, 39) + resize(add_cast_13, 39);
  sum7 <= add_temp_6(37 DOWNTO 0);

  add_cast_14 <= sum7;
  add_cast_15 <= resize(product_2, 38);
  add_temp_7 <= resize(add_cast_14, 39) + resize(add_cast_15, 39);
  sum8 <= add_temp_7(37 DOWNTO 0);

  add_cast_16 <= sum8;
  add_cast_17 <= resize(product_1, 38);
  add_temp_8 <= resize(add_cast_16, 39) + resize(add_cast_17, 39);
  sum9 <= add_temp_8(37 DOWNTO 0);

  add_cast_18 <= sum9;
  add_cast_19 <= resize(product, 38);
  add_temp_9 <= resize(add_cast_18, 39) + resize(add_cast_19, 39);
  sum10 <= add_temp_9(37 DOWNTO 0);

  output_typeconvert <= sum10;

  DataHoldRegister_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      regout <= (OTHERS => '0');
    ELSIF clk'event AND clk = '1' THEN
      IF enb_1_1_1 = '1' THEN
        regout <= output_typeconvert;
      END IF;
    END IF; 
  END PROCESS DataHoldRegister_process;

  muxout <= output_typeconvert WHEN ( enb_1_1_1 = '1' ) ELSE
            regout;
  -- Assignment Statements
  FIR_Interpolation_out <= std_logic_vector(muxout);
END rtl;
