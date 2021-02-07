-- Created by Eduardo Flores in fulfillment of his Bachellor's degree Thesis.


LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.ldpc_encoder_pac.ALL;

ENTITY fsm_select_xor IS
  PORT( clk                               :   IN    std_logic;
        reset_x                           :   IN    std_logic;
        enb                               :   IN    std_logic;
        addresses                         :   IN    vector_of_std_logic_vector16(0 TO 11);  -- uint16 [12]
        input_bit                         :   IN    std_logic;
        start                             :   IN    std_logic;
        enable                            :   IN    std_logic;
        serial_out                        :   OUT   std_logic;  -- ufix1
        valid                             :   OUT   std_logic  -- ufix1
        );
END fsm_select_xor;


ARCHITECTURE rtl OF fsm_select_xor IS

  -- Functions
  -- HDLCODER_TO_STDLOGIC 
  FUNCTION hdlcoder_to_stdlogic(arg: boolean) RETURN std_logic IS
  BEGIN
    IF arg THEN
      RETURN '1';
    ELSE
      RETURN '0';
    END IF;
  END FUNCTION;

  -- HDLCODER_TO_SIGNED
  FUNCTION hdlcoder_to_signed(arg: boolean; width: integer) RETURN signed IS
  BEGIN
    IF arg THEN
      RETURN to_signed(1, width);
    ELSE
      RETURN to_signed(0, width);
    END IF;
  END FUNCTION;


  -- Signals
  SIGNAL addresses_unsigned               : vector_of_unsigned16(0 TO 11);  -- uint16 [12]
  SIGNAL parity_bits                      : std_logic_vector(0 TO 16200);  -- ufix1 [16201]
  SIGNAL moore_state_machine              : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL counter                          : unsigned(15 DOWNTO 0);  -- ufix16
  SIGNAL parity_bits_next                 : std_logic_vector(0 TO 16200);  -- ufix1 [16201]
  SIGNAL moore_state_machine_next         : unsigned(1 DOWNTO 0);  -- ufix2
  SIGNAL counter_next                     : unsigned(15 DOWNTO 0);  -- ufix16

BEGIN
  addresses_unsigned(0) <= unsigned(addresses(0));
  addresses_unsigned(1) <= unsigned(addresses(1));
  addresses_unsigned(2) <= unsigned(addresses(2));
  addresses_unsigned(3) <= unsigned(addresses(3));
  addresses_unsigned(4) <= unsigned(addresses(4));
  addresses_unsigned(5) <= unsigned(addresses(5));
  addresses_unsigned(6) <= unsigned(addresses(6));
  addresses_unsigned(7) <= unsigned(addresses(7));
  addresses_unsigned(8) <= unsigned(addresses(8));
  addresses_unsigned(9) <= unsigned(addresses(9));
  addresses_unsigned(10) <= unsigned(addresses(10));
  addresses_unsigned(11) <= unsigned(addresses(11));

  fsm_select_xor_1_process : PROCESS (clk)
    VARIABLE t_1 : INTEGER;
  BEGIN
    IF clk'EVENT AND clk = '1' THEN
      IF reset_x = '1' THEN

        FOR t_1 IN 0 TO 16200 LOOP
          parity_bits(t_1) <= '0';
        END LOOP;

        moore_state_machine <= to_unsigned(16#2#, 2);
        counter <= to_unsigned(16#0001#, 16);
      ELSIF enb = '1' THEN

        FOR t_0 IN 0 TO 16200 LOOP
          parity_bits(t_0) <= parity_bits_next(t_0);
        END LOOP;

        moore_state_machine <= moore_state_machine_next;
        counter <= counter_next;
      END IF;
    END IF;
  END PROCESS fsm_select_xor_1_process;

  fsm_select_xor_1_output : PROCESS (addresses_unsigned, counter, enable, input_bit, moore_state_machine,
       parity_bits, start)
    VARIABLE address : unsigned(15 DOWNTO 0);
    VARIABLE parity_bits_temp : std_logic_vector(0 TO 16200);
    VARIABLE counter_temp : unsigned(15 DOWNTO 0);
    VARIABLE address_0 : unsigned(15 DOWNTO 0);
    VARIABLE sub_cast : signed(31 DOWNTO 0);
    VARIABLE sub_cast_0 : vector_of_signed32(0 TO 11);
    VARIABLE sub_cast_1 : vector_of_signed32(0 TO 11);
    VARIABLE cast : vector_of_signed32(0 TO 11);
    VARIABLE sub_cast_2 : signed(31 DOWNTO 0);
    VARIABLE sub_cast_3 : vector_of_signed32(0 TO 11);
    VARIABLE sub_cast_4 : vector_of_signed32(0 TO 11);
    VARIABLE cast_0 : vector_of_signed32(0 TO 11);
  BEGIN
    address := to_unsigned(16#0000#, 16);
    address_0 := to_unsigned(16#0000#, 16);
    sub_cast := to_signed(16#00000000#, 32);
    sub_cast_2 := to_signed(16#00000000#, 32);

    FOR t_0 IN 0 TO 16200 LOOP
      parity_bits_temp(t_0) := parity_bits(t_0);
    END LOOP;

    counter_temp := counter;
    moore_state_machine_next <= moore_state_machine;
    --MATLAB Function 'ldpc_encoder/fsm_select_xor'
    CASE moore_state_machine IS
      WHEN "10" =>
        serial_out <= '0';
        valid <= '0';
        IF start = '1' THEN 
          moore_state_machine_next <= to_unsigned(16#0#, 2);
          -- Repeat bit on all addresses

          FOR add IN 0 TO 11 LOOP
            address := addresses_unsigned(add) + 1;
            sub_cast_3(add) := signed(resize(address, 32));
            sub_cast_4(add) := signed(resize(address, 32));
            cast_0(add) := '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & input_bit;
            parity_bits_temp(to_integer(sub_cast_3(add) - 1)) := hdlcoder_to_stdlogic(hdlcoder_to_signed(parity_bits_temp(to_integer(sub_cast_4(add) - 1)) /= '0', 32) /= cast_0(add));
          END LOOP;

        END IF;
      WHEN "00" =>
        serial_out <= '0';
        valid <= '0';
        -- Repeat bit on all addresses

        FOR add_0 IN 0 TO 11 LOOP
          address_0 := addresses_unsigned(add_0) + 1;
          sub_cast_0(add_0) := signed(resize(address_0, 32));
          sub_cast_1(add_0) := signed(resize(address_0, 32));
          cast(add_0) := '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & input_bit;
          parity_bits_temp(to_integer(sub_cast_0(add_0) - 1)) := hdlcoder_to_stdlogic(hdlcoder_to_signed(parity_bits_temp(to_integer(sub_cast_1(add_0) - 1)) /= '0', 32) /= cast(add_0));
        END LOOP;

        IF enable = '1' THEN 
          moore_state_machine_next <= to_unsigned(16#1#, 2);
          sub_cast_2 := signed(resize(counter, 32));
          serial_out <= parity_bits_temp(to_integer(sub_cast_2 - 1));
          counter_temp := counter + to_unsigned(16#0001#, 16);
          valid <= '1';
        END IF;
      WHEN "01" =>
        sub_cast := signed(resize(counter, 32));
        serial_out <= parity_bits(to_integer(sub_cast - 1));
        counter_temp := counter + to_unsigned(16#0001#, 16);
        valid <= '1';
        IF counter_temp > to_unsigned(16#3F48#, 16) THEN 
          moore_state_machine_next <= to_unsigned(16#0#, 2);
        END IF;
      WHEN OTHERS => 
        serial_out <= '0';
        valid <= '0';
    END CASE;

    FOR t_1 IN 0 TO 16200 LOOP
      parity_bits_next(t_1) <= parity_bits_temp(t_1);
    END LOOP;

    counter_next <= counter_temp;
  END PROCESS fsm_select_xor_1_output;


END rtl;

