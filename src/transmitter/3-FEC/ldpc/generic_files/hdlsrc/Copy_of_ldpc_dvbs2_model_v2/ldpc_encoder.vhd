-- Created by Eduardo Flores in fulfillment of his Bachellor's degree Thesis.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.ldpc_encoder_pac.ALL;

ENTITY ldpc_encoder IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        clk_enable                        :   IN    std_logic;
        input_bit                         :   IN    std_logic;
        rst                               :   IN    std_logic;
        end_of_frame                      :   IN    std_logic;
        start                             :   IN    std_logic;
        ce_out                            :   OUT   std_logic;
        out_rsvd                          :   OUT   std_logic;  -- ufix1
        valid                             :   OUT   std_logic  -- ufix1
        );
END ldpc_encoder;


ARCHITECTURE rtl OF ldpc_encoder IS

  -- Component Declarations
  COMPONENT address_calculator
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          rst                             :   IN    std_logic;
          addresses1                      :   OUT   vector_of_std_logic_vector16(0 TO 11)  -- uint16 [12]
          );
  END COMPONENT;

  COMPONENT fsm_select_xor
    PORT( clk                             :   IN    std_logic;
          reset_x                         :   IN    std_logic;
          enb                             :   IN    std_logic;
          addresses                       :   IN    vector_of_std_logic_vector16(0 TO 11);  -- uint16 [12]
          input_bit                       :   IN    std_logic;
          start                           :   IN    std_logic;
          enable                          :   IN    std_logic;
          serial_out                      :   OUT   std_logic;  -- ufix1
          valid                           :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : address_calculator
    USE ENTITY work.address_calculator(rtl);

  FOR ALL : fsm_select_xor
    USE ENTITY work.fsm_select_xor(rtl);

  -- Signals
  SIGNAL enb                              : std_logic;
  SIGNAL addresses                        : vector_of_std_logic_vector16(0 TO 11);  -- ufix16 [12]
  SIGNAL serial_out                       : std_logic;  -- ufix1
  SIGNAL Delay1_out1                      : std_logic;  -- ufix1
  SIGNAL Logical_Operator_out1            : std_logic;  -- ufix1

BEGIN
  -- Sequential xor

  u_address_calculator : address_calculator
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              rst => rst,
              addresses1 => addresses  -- uint16 [12]
              );

  u_fsm_select_xor : fsm_select_xor
    PORT MAP( clk => clk,
              reset_x => reset_x,
              enb => clk_enable,
              addresses => addresses,  -- uint16 [12]
              input_bit => input_bit,
              start => start,
              enable => end_of_frame,
              serial_out => serial_out,  -- ufix1
              valid => valid  -- ufix1
              );

  enb <= clk_enable;

  Logical_Operator_out1 <= serial_out XOR Delay1_out1;

  Delay1_process : PROCESS (clk)
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN
        Delay1_out1 <= '0';
      ELSIF enb = '1' THEN
        Delay1_out1 <= Logical_Operator_out1;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  out_rsvd <= Delay1_out1;

  ce_out <= clk_enable;

END rtl;

