-- -------------------------------------------------------------
-- 
-- File Name: D:\Documents\DVBS2\DVBS2\src\transmitter\3-FEC\interleaver\xilinx_files\hdlsrc\interleaver_model\interleaver.vhd
-- Created: 2021-02-01 12:53:54
-- 
-- Generated by MATLAB 9.9 and HDL Coder 3.17
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: interleaver
-- Source Path: interleaver_model/interleaver_dut/interleaver
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.interleaver_dut_pac.ALL;

ENTITY interleaver IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        enb                               :   IN    std_logic;
        input_bit                         :   IN    std_logic;
        start                             :   IN    std_logic;
        data                              :   OUT   std_logic_vector(0 TO 2);  -- ufix1 [3]
        valid                             :   OUT   std_logic
        );
END interleaver;


ARCHITECTURE rtl OF interleaver IS

  -- Signals
  SIGNAL moore_state_reg                  : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL counter                          : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL column                           : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL buffer_rsvd                      : matrix_of_std_logic(0 TO 21599, 0 TO 2);  -- ufix1 [21600x3]
  SIGNAL moore_state_reg_next             : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL counter_next                     : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL column_next                      : unsigned(7 DOWNTO 0);  -- ufix8
  SIGNAL buffer_next                      : matrix_of_std_logic(0 TO 21599, 0 TO 2);  -- ufix1 [21600x3]

BEGIN
  interleaver_1_process : PROCESS (clk, reset_x)
    VARIABLE i_0 : INTEGER;
    VARIABLE i2_0 : INTEGER;
  BEGIN
    IF reset_x = '1' THEN
      moore_state_reg <= to_unsigned(16#0#, 2);
      counter <= to_unsigned(16#0001#, 16);
      column <= to_unsigned(16#01#, 8);

      FOR i_0 IN 0 TO 2 LOOP
        FOR i2_0 IN 0 TO 21599 LOOP
          buffer_rsvd(i2_0, i_0) <= '0';
        END LOOP;
      END LOOP;

    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        moore_state_reg <= moore_state_reg_next;
        counter <= counter_next;
        column <= column_next;

        FOR i IN 0 TO 2 LOOP
          FOR i2 IN 0 TO 21599 LOOP
            buffer_rsvd(i2, i) <= buffer_next(i2, i);
          END LOOP;
        END LOOP;

      END IF;
    END IF;
  END PROCESS interleaver_1_process;

  interleaver_1_output : PROCESS (buffer_rsvd, column, counter, input_bit, moore_state_reg, start)
    VARIABLE counter_temp : unsigned(15 DOWNTO 0);
    VARIABLE column_temp : unsigned(7 DOWNTO 0);
    VARIABLE buffer_temp : matrix_of_std_logic(0 TO 21599, 0 TO 2);
    VARIABLE sub_cast : signed(31 DOWNTO 0);
    VARIABLE sub_cast_0 : signed(31 DOWNTO 0);
    VARIABLE sub_cast_1 : vector_of_signed32(0 TO 2);
  BEGIN
    sub_cast := to_signed(16#00000000#, 32);
    sub_cast_0 := to_signed(16#00000000#, 32);
    counter_temp := counter;
    column_temp := column;

    FOR i IN 0 TO 2 LOOP
      FOR i2 IN 0 TO 21599 LOOP
        buffer_temp(i2, i) := buffer_rsvd(i2, i);
      END LOOP;
    END LOOP;

    moore_state_reg_next <= moore_state_reg;
    --MATLAB Function 'interleaver_dut/interleaver'
    CASE moore_state_reg IS
      WHEN "00" =>
        counter_temp := to_unsigned(16#0001#, 16);
        column_temp := to_unsigned(16#01#, 8);

        FOR i_0 IN 0 TO 2 LOOP
          FOR i2_0 IN 0 TO 21599 LOOP
            buffer_temp(i2_0, i_0) := '0';
          END LOOP;
        END LOOP;

        valid <= '0';

        FOR t_3 IN 0 TO 2 LOOP
          data(t_3) <= '0';
        END LOOP;

        IF ( NOT start) = '1' THEN 
          moore_state_reg_next <= to_unsigned(16#0#, 2);
        ELSE 
          moore_state_reg_next <= to_unsigned(16#1#, 2);
          -- Write first bit at the first position as it is the MSB
          buffer_temp(0, 0) := input_bit;
          counter_temp := to_unsigned(16#0002#, 16);
        END IF;
      WHEN "01" =>
        sub_cast := signed(resize(counter, 32));
        sub_cast_0 := signed(resize(column, 32));
        buffer_temp(to_integer(sub_cast - 1), to_integer(sub_cast_0 - 1)) := input_bit;
        counter_temp := counter + to_unsigned(16#0001#, 16);
        IF counter_temp > to_unsigned(16#5460#, 16) THEN 
          counter_temp := to_unsigned(16#0001#, 16);
          column_temp := column + to_unsigned(16#01#, 8);
          IF column_temp > to_unsigned(16#03#, 8) THEN 
            moore_state_reg_next <= to_unsigned(16#2#, 2);
            column_temp := to_unsigned(16#01#, 8);
            valid <= '1';

            FOR t_5 IN 0 TO 2 LOOP
              data(t_5) <= buffer_temp(0, t_5);
            END LOOP;

            counter_temp := to_unsigned(16#0002#, 16);
          ELSE 

            FOR t_4 IN 0 TO 2 LOOP
              data(t_4) <= '0';
            END LOOP;

            valid <= '0';
          END IF;
        ELSE 
          valid <= '0';

          FOR t_2 IN 0 TO 2 LOOP
            data(t_2) <= '0';
          END LOOP;

        END IF;
      WHEN "10" =>

        FOR t_0 IN 0 TO 2 LOOP
          sub_cast_1(t_0) := signed(resize(counter, 32));
          data(t_0) <= buffer_rsvd(to_integer(sub_cast_1(t_0) - 1), t_0);
        END LOOP;

        counter_temp := counter + to_unsigned(16#0001#, 16);
        IF counter_temp > to_unsigned(16#5460#, 16) THEN 
          moore_state_reg_next <= to_unsigned(16#0#, 2);
        END IF;
        valid <= '1';
      WHEN OTHERS => 
        valid <= '0';

        FOR t_1 IN 0 TO 2 LOOP
          data(t_1) <= '0';
        END LOOP;

    END CASE;
    counter_next <= counter_temp;
    column_next <= column_temp;

    FOR i_1 IN 0 TO 2 LOOP
      FOR i2_1 IN 0 TO 21599 LOOP
        buffer_next(i2_1, i_1) <= buffer_temp(i2_1, i_1);
      END LOOP;
    END LOOP;

  END PROCESS interleaver_1_output;


END rtl;
