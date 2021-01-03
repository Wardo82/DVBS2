-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\bit_mapping_model\Cosine_HDL_Optimized.vhd
-- Created: 2021-01-03 10:46:21
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Cosine_HDL_Optimized
-- Source Path: bit_mapping_model/bit_mapping/Cosine HDL Optimized
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.bit_mapping_pac.ALL;

ENTITY Cosine_HDL_Optimized IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        enb                               :   IN    std_logic;
        u                                 :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        x                                 :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
        y                                 :   OUT   std_logic_vector(16 DOWNTO 0)  -- sfix17_En15
        );
END Cosine_HDL_Optimized;


ARCHITECTURE rtl OF Cosine_HDL_Optimized IS

  ATTRIBUTE multstyle : string;

  -- Constants
  CONSTANT Look_Up_Table1_data            : vector_of_signed17(0 TO 63) := 
    (to_signed(16#00000#, 17), to_signed(16#00331#, 17), to_signed(16#00661#, 17), to_signed(16#00991#, 17),
     to_signed(16#00CBF#, 17), to_signed(16#00FEA#, 17), to_signed(16#01314#, 17), to_signed(16#0163A#, 17),
     to_signed(16#0195D#, 17), to_signed(16#01C7C#, 17), to_signed(16#01F96#, 17), to_signed(16#022AB#, 17),
     to_signed(16#025BB#, 17), to_signed(16#028C4#, 17), to_signed(16#02BC7#, 17), to_signed(16#02EC3#, 17),
     to_signed(16#031B8#, 17), to_signed(16#034A5#, 17), to_signed(16#0378A#, 17), to_signed(16#03A65#, 17),
     to_signed(16#03D37#, 17), to_signed(16#04000#, 17), to_signed(16#042BE#, 17), to_signed(16#04572#, 17),
     to_signed(16#0481B#, 17), to_signed(16#04AB8#, 17), to_signed(16#04D49#, 17), to_signed(16#04FCF#, 17),
     to_signed(16#05247#, 17), to_signed(16#054B2#, 17), to_signed(16#05710#, 17), to_signed(16#05960#, 17),
     to_signed(16#05BA2#, 17), to_signed(16#05DD5#, 17), to_signed(16#05FF9#, 17), to_signed(16#0620E#, 17),
     to_signed(16#06413#, 17), to_signed(16#06608#, 17), to_signed(16#067EE#, 17), to_signed(16#069C2#, 17),
     to_signed(16#06B86#, 17), to_signed(16#06D39#, 17), to_signed(16#06EDA#, 17), to_signed(16#0706A#, 17),
     to_signed(16#071E7#, 17), to_signed(16#07353#, 17), to_signed(16#074AC#, 17), to_signed(16#075F3#, 17),
     to_signed(16#07727#, 17), to_signed(16#07848#, 17), to_signed(16#07956#, 17), to_signed(16#07A50#, 17),
     to_signed(16#07B37#, 17), to_signed(16#07C0B#, 17), to_signed(16#07CCA#, 17), to_signed(16#07D76#, 17),
     to_signed(16#07E0E#, 17), to_signed(16#07E92#, 17), to_signed(16#07F02#, 17), to_signed(16#07F5D#, 17),
     to_signed(16#07FA4#, 17), to_signed(16#07FD7#, 17), to_signed(16#07FF6#, 17), to_signed(16#08000#, 17));  -- sfix17 [64]
  CONSTANT Look_Up_Table_data             : vector_of_signed17(0 TO 63) := 
    (to_signed(16#00000#, 17), to_signed(16#00331#, 17), to_signed(16#00661#, 17), to_signed(16#00991#, 17),
     to_signed(16#00CBF#, 17), to_signed(16#00FEA#, 17), to_signed(16#01314#, 17), to_signed(16#0163A#, 17),
     to_signed(16#0195D#, 17), to_signed(16#01C7C#, 17), to_signed(16#01F96#, 17), to_signed(16#022AB#, 17),
     to_signed(16#025BB#, 17), to_signed(16#028C4#, 17), to_signed(16#02BC7#, 17), to_signed(16#02EC3#, 17),
     to_signed(16#031B8#, 17), to_signed(16#034A5#, 17), to_signed(16#0378A#, 17), to_signed(16#03A65#, 17),
     to_signed(16#03D37#, 17), to_signed(16#04000#, 17), to_signed(16#042BE#, 17), to_signed(16#04572#, 17),
     to_signed(16#0481B#, 17), to_signed(16#04AB8#, 17), to_signed(16#04D49#, 17), to_signed(16#04FCF#, 17),
     to_signed(16#05247#, 17), to_signed(16#054B2#, 17), to_signed(16#05710#, 17), to_signed(16#05960#, 17),
     to_signed(16#05BA2#, 17), to_signed(16#05DD5#, 17), to_signed(16#05FF9#, 17), to_signed(16#0620E#, 17),
     to_signed(16#06413#, 17), to_signed(16#06608#, 17), to_signed(16#067EE#, 17), to_signed(16#069C2#, 17),
     to_signed(16#06B86#, 17), to_signed(16#06D39#, 17), to_signed(16#06EDA#, 17), to_signed(16#0706A#, 17),
     to_signed(16#071E7#, 17), to_signed(16#07353#, 17), to_signed(16#074AC#, 17), to_signed(16#075F3#, 17),
     to_signed(16#07727#, 17), to_signed(16#07848#, 17), to_signed(16#07956#, 17), to_signed(16#07A50#, 17),
     to_signed(16#07B37#, 17), to_signed(16#07C0B#, 17), to_signed(16#07CCA#, 17), to_signed(16#07D76#, 17),
     to_signed(16#07E0E#, 17), to_signed(16#07E92#, 17), to_signed(16#07F02#, 17), to_signed(16#07F5D#, 17),
     to_signed(16#07FA4#, 17), to_signed(16#07FD7#, 17), to_signed(16#07FF6#, 17), to_signed(16#08000#, 17));  -- sfix17 [64]

  -- Signals
  SIGNAL u_signed                         : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL insig_out1                       : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL Point50_out1                     : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp501_1_cast                   : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp501_relop1                   : std_logic;
  SIGNAL RAMDelayBalance_out1             : std_logic;
  SIGNAL pow2switch_out1                  : std_logic;
  SIGNAL Amp50_sub_cast                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp50_sub_cast_1                 : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp50_out1                       : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL insig_out1_dtc                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL QuadHandle1_out1                 : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Point25_out1                     : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp251_1_cast                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL LTEp251_relop1                   : std_logic;
  SIGNAL p50mA_sub_cast                   : signed(18 DOWNTO 0);  -- sfix19_En17
  SIGNAL p50mA_sub_cast_1                 : signed(18 DOWNTO 0);  -- sfix19_En17
  SIGNAL p50mA_out1                       : signed(18 DOWNTO 0);  -- sfix19_En17
  SIGNAL p50mA_out1_dtc                   : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL QuadHandle1_out1_dtc             : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL QuadHandle2_out1                 : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL CastU16En2_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL CastU16En4_out1                  : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL CastU16En3_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Saturation_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Look_Up_Table1_k                 : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL Look_Up_Table_out1               : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Look_Up_Table_out1_1             : signed(16 DOWNTO 0) := to_signed(16#00000#, 17);  -- sfix17_En15
  SIGNAL Negate1_cast                     : signed(17 DOWNTO 0);  -- sfix18_En15
  SIGNAL Negate1_cast_1                   : signed(17 DOWNTO 0);  -- sfix18_En15
  SIGNAL Negate_out1                      : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Sine                             : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL insig_out1_1                     : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL Point25_out1_1                   : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp25_1_cast                    : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp25_relop1                    : std_logic;
  SIGNAL Point75_out1                     : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL GTEp75_1_cast                    : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL GTEp75_relop1                    : std_logic;
  SIGNAL alpha1st_or_4th_Quad_bool        : std_logic;
  SIGNAL alpha1st_or_4th_Quad_out1        : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL RAMDelayBalance_out1_1           : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL pow2switch_out1_1                : std_logic;
  SIGNAL Point50_out1_1                   : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL p75mA_sub_cast                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL p75mA_sub_cast_1                 : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL p75mA_out1                       : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp75_sub_cast                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp75_sub_cast_1                 : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp75_out1                       : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp25_sub_cast                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp25_sub_cast_1                 : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL Amp25_out1                       : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL p25mA_sub_cast                   : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL p25mA_sub_cast_1                 : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL p25mA_out1                       : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL LTEp50_1_cast                    : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp50_relop1                    : std_logic;
  SIGNAL QuadHandle1b_out1                : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL QuadHandle1b_out1_dtc            : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL QuadHandle1a_out1                : signed(17 DOWNTO 0);  -- sfix18_En17
  SIGNAL QuadHandle1a_out1_dtc            : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL QuadHandle2_out1_1               : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL CastU16En1_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL CastU16En3_out1_1                : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL CastU16En2_out1_1                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Saturation_out1_1                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch_out1_1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Look_Up_Table_k                  : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL Look_Up_Table_out1_2             : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Look_Up_Table_out1_3             : signed(16 DOWNTO 0) := to_signed(16#00000#, 17);  -- sfix17_En15
  SIGNAL Negate_cast                      : signed(17 DOWNTO 0);  -- sfix18_En15
  SIGNAL Negate_cast_1                    : signed(17 DOWNTO 0);  -- sfix18_En15
  SIGNAL Negate_out1_1                    : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Cosine                           : signed(16 DOWNTO 0);  -- sfix17_En15

BEGIN
  -- (C) 2016 Mathworks, Inc
  -- 
  -- (C) 2016 Mathworks, Inc

  u_signed <= signed(u);

  insig_out1 <= unsigned(u_signed(13 DOWNTO 6));

  Point50_out1 <= to_unsigned(16#10000#, 17);

  LTEp501_1_cast <= insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  
  LTEp501_relop1 <= '1' WHEN LTEp501_1_cast <= Point50_out1 ELSE
      '0';

  delayMatch_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      RAMDelayBalance_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        RAMDelayBalance_out1 <= LTEp501_relop1;
      END IF;
    END IF;
  END PROCESS delayMatch_process;


  pow2switch_out1 <= '1';

  Amp50_sub_cast <= signed(resize(insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18));
  Amp50_sub_cast_1 <= signed(resize(Point50_out1, 18));
  Amp50_out1 <= Amp50_sub_cast - Amp50_sub_cast_1;

  insig_out1_dtc <= signed(resize(insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18));

  
  QuadHandle1_out1 <= Amp50_out1 WHEN LTEp501_relop1 = '0' ELSE
      insig_out1_dtc;

  Point25_out1 <= to_unsigned(16#08000#, 17);

  LTEp251_1_cast <= signed(resize(Point25_out1, 18));
  
  LTEp251_relop1 <= '1' WHEN QuadHandle1_out1 <= LTEp251_1_cast ELSE
      '0';

  p50mA_sub_cast <= signed(resize(Point50_out1, 19));
  p50mA_sub_cast_1 <= resize(QuadHandle1_out1, 19);
  p50mA_out1 <= p50mA_sub_cast - p50mA_sub_cast_1;

  p50mA_out1_dtc <= unsigned(p50mA_out1(16 DOWNTO 9));

  QuadHandle1_out1_dtc <= unsigned(QuadHandle1_out1(16 DOWNTO 9));

  
  QuadHandle2_out1 <= p50mA_out1_dtc WHEN LTEp251_relop1 = '0' ELSE
      QuadHandle1_out1_dtc;

  CastU16En2_out1 <= QuadHandle2_out1;

  CastU16En4_out1 <= resize(CastU16En2_out1, 9);

  
  CastU16En3_out1 <= "11111111" WHEN CastU16En4_out1(8) /= '0' ELSE
      CastU16En4_out1(7 DOWNTO 0);

  -- saturation block maybe optimized away
  -- if the NumDataPoints is a power of 2
  
  Saturation_out1 <= to_unsigned(16#3F#, 8) WHEN CastU16En3_out1 > to_unsigned(16#3F#, 8) ELSE
      CastU16En3_out1;

  
  Switch_out1 <= CastU16En3_out1 WHEN pow2switch_out1 = '0' ELSE
      Saturation_out1;

  
  Look_Up_Table1_k <= to_unsigned(16#00#, 6) WHEN Switch_out1 = to_unsigned(16#00#, 8) ELSE
      to_unsigned(16#3F#, 6) WHEN Switch_out1 >= to_unsigned(16#3F#, 8) ELSE
      Switch_out1(5 DOWNTO 0);
  Look_Up_Table_out1 <= Look_Up_Table1_data(to_integer(Look_Up_Table1_k));

  PipelineRegister1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Look_Up_Table_out1_1 <= Look_Up_Table_out1;
      END IF;
    END IF;
  END PROCESS PipelineRegister1_process;


  Negate1_cast <= resize(Look_Up_Table_out1_1, 18);
  Negate1_cast_1 <=  - (Negate1_cast);
  Negate_out1 <= Negate1_cast_1(16 DOWNTO 0);

  
  Sine <= Negate_out1 WHEN RAMDelayBalance_out1 = '0' ELSE
      Look_Up_Table_out1_1;

  x <= std_logic_vector(Sine);

  insig_out1_1 <= unsigned(u_signed(13 DOWNTO 6));

  Point25_out1_1 <= to_unsigned(16#08000#, 17);

  LTEp25_1_cast <= insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  
  LTEp25_relop1 <= '1' WHEN LTEp25_1_cast <= Point25_out1_1 ELSE
      '0';

  Point75_out1 <= to_unsigned(16#18000#, 17);

  GTEp75_1_cast <= insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  
  GTEp75_relop1 <= '1' WHEN GTEp75_1_cast >= Point75_out1 ELSE
      '0';

  alpha1st_or_4th_Quad_bool <= LTEp25_relop1 OR GTEp75_relop1;

  alpha1st_or_4th_Quad_out1 <= '0' & '0' & '0' & '0' & '0' & '0' & '0' & alpha1st_or_4th_Quad_bool;

  delayMatch1_process : PROCESS (clk, reset_x)
  BEGIN
    IF reset_x = '1' THEN
      RAMDelayBalance_out1_1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        RAMDelayBalance_out1_1 <= alpha1st_or_4th_Quad_out1;
      END IF;
    END IF;
  END PROCESS delayMatch1_process;


  pow2switch_out1_1 <= '1';

  Point50_out1_1 <= to_unsigned(16#10000#, 17);

  p75mA_sub_cast <= signed(resize(Point75_out1, 18));
  p75mA_sub_cast_1 <= signed(resize(insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18));
  p75mA_out1 <= p75mA_sub_cast - p75mA_sub_cast_1;

  Amp75_sub_cast <= signed(resize(insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18));
  Amp75_sub_cast_1 <= signed(resize(Point75_out1, 18));
  Amp75_out1 <= Amp75_sub_cast - Amp75_sub_cast_1;

  Amp25_sub_cast <= signed(resize(insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18));
  Amp25_sub_cast_1 <= signed(resize(Point25_out1_1, 18));
  Amp25_out1 <= Amp25_sub_cast - Amp25_sub_cast_1;

  p25mA_sub_cast <= signed(resize(Point25_out1_1, 18));
  p25mA_sub_cast_1 <= signed(resize(insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 18));
  p25mA_out1 <= p25mA_sub_cast - p25mA_sub_cast_1;

  LTEp50_1_cast <= insig_out1_1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  
  LTEp50_relop1 <= '1' WHEN LTEp50_1_cast <= Point50_out1_1 ELSE
      '0';

  
  QuadHandle1b_out1 <= p75mA_out1 WHEN GTEp75_relop1 = '0' ELSE
      Amp75_out1;

  
  QuadHandle1b_out1_dtc <= "11111111" WHEN (QuadHandle1b_out1(17) = '0') AND (QuadHandle1b_out1(16 DOWNTO 9) = "11111111") ELSE
      "00000000" WHEN QuadHandle1b_out1(17) = '1' ELSE
      unsigned(QuadHandle1b_out1(16 DOWNTO 9));

  
  QuadHandle1a_out1 <= Amp25_out1 WHEN LTEp25_relop1 = '0' ELSE
      p25mA_out1;

  
  QuadHandle1a_out1_dtc <= "11111111" WHEN (QuadHandle1a_out1(17) = '0') AND (QuadHandle1a_out1(16 DOWNTO 9) = "11111111") ELSE
      "00000000" WHEN QuadHandle1a_out1(17) = '1' ELSE
      unsigned(QuadHandle1a_out1(16 DOWNTO 9));

  
  QuadHandle2_out1_1 <= QuadHandle1b_out1_dtc WHEN LTEp50_relop1 = '0' ELSE
      QuadHandle1a_out1_dtc;

  CastU16En1_out1 <= QuadHandle2_out1_1;

  CastU16En3_out1_1 <= resize(CastU16En1_out1, 9);

  
  CastU16En2_out1_1 <= "11111111" WHEN CastU16En3_out1_1(8) /= '0' ELSE
      CastU16En3_out1_1(7 DOWNTO 0);

  -- saturation block maybe optimized away
  -- if the NumDataPoints is a power of 2
  
  Saturation_out1_1 <= to_unsigned(16#3F#, 8) WHEN CastU16En2_out1_1 > to_unsigned(16#3F#, 8) ELSE
      CastU16En2_out1_1;

  
  Switch_out1_1 <= CastU16En2_out1_1 WHEN pow2switch_out1_1 = '0' ELSE
      Saturation_out1_1;

  
  Look_Up_Table_k <= to_unsigned(16#00#, 6) WHEN Switch_out1_1 = to_unsigned(16#00#, 8) ELSE
      to_unsigned(16#3F#, 6) WHEN Switch_out1_1 >= to_unsigned(16#3F#, 8) ELSE
      Switch_out1_1(5 DOWNTO 0);
  Look_Up_Table_out1_2 <= Look_Up_Table_data(to_integer(Look_Up_Table_k));

  PipelineRegister_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Look_Up_Table_out1_3 <= Look_Up_Table_out1_2;
      END IF;
    END IF;
  END PROCESS PipelineRegister_process;


  Negate_cast <= resize(Look_Up_Table_out1_3, 18);
  Negate_cast_1 <=  - (Negate_cast);
  Negate_out1_1 <= Negate_cast_1(16 DOWNTO 0);

  
  Cosine <= Negate_out1_1 WHEN RAMDelayBalance_out1_1 = to_unsigned(16#00#, 8) ELSE
      Look_Up_Table_out1_3;

  y <= std_logic_vector(Cosine);

END rtl;

