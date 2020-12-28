
-- ----------------------------------------------
-- File Name: FILPktMUX.vhd
-- Created:   28-Dec-2020 21:13:00
-- Copyright  2020 MathWorks, Inc.
-- ----------------------------------------------

-- Functions:  
-- * mux of cmd pkt and data pkt

library IEEE;
use IEEE.std_logic_1164.all;

entity FILPktMUX is
  port(
        clk        : in  std_logic;
        reset      : in  std_logic;
        -----------------------------------------------------------------------
        dataIn     : in std_logic_vector(7 downto 0);
        dataVldIn  : in std_logic;
        EOPIn      : in std_logic;
        -----------------------------------------------------------------------
        dataOut    : out std_logic_vector(7 downto 0);
        dataVldOut : out std_logic;
        dataEOPOut : out std_logic;
        cmdOut     : out std_logic_vector(7 downto 0);
        cmdVldOut  : out std_logic;
        cmdEOPOut  : out std_logic        
        );
end FILPktMUX;

architecture rtl of FILPktMUX is

  type   STATE_TYPE   is (IDLE, CMD_WAIT_EOP, DATA_WAIT_EOP);
  signal state           : STATE_TYPE;
  
  constant CMD_HEADER    : std_logic_vector(3 downto 0):= X"8";

begin

  process (clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        dataOut    <= (others=>'0');
        dataVldOut <= '0';        
        dataEOPOut <= '0';       
        cmdOut     <= (others=>'0');
        cmdVldOut  <= '0';
        cmdEOPOut  <= '0';       
        state      <= IDLE;
      else
        case state is
          when IDLE =>
            if dataVldIn = '1' then
              if dataIn(7 downto 4) = X"8" then -- CMD ID X"80"
                dataOut    <= (others=>'0');
                dataVldOut <= '0';        
                dataEOPOut <= '0';       
                cmdOut     <= dataIn;
                cmdVldOut  <= dataVldIn;
                cmdEOPOut  <= EOPIn;
                state      <= CMD_WAIT_EOP;
              else
                dataOut    <= dataIn;
                dataVldOut <= dataVldIn;       
                dataEOPOut <= EOPIn;      
                cmdOut     <= (others=>'0');
                cmdVldOut  <= '0';
                cmdEOPOut  <= '0';
                state      <= DATA_WAIT_EOP;
              end if;
            else 
              dataOut      <= (others=>'0');
              dataVldOut   <= '0';
              dataEOPOut   <= '0';
              cmdOut       <= (others=>'0');
              cmdVldOut    <= '0';
              cmdEOPOut    <= '0'; 
              state        <= IDLE;
            end if;
          when CMD_WAIT_EOP =>
            dataOut    <= (others=>'0');
            dataVldOut <= '0';        
            dataEOPOut <= '0';       
            cmdOut     <= dataIn;
            cmdVldOut  <= dataVldIn;
            cmdEOPOut  <= EOPIn;          
            if dataVldIn = '1' and EOPIn = '1' then
              state <= IDLE;
            end if;
          when DATA_WAIT_EOP =>
            dataOut    <= dataIn;
            dataVldOut <= dataVldIn;       
            dataEOPOut <= EOPIn;      
            cmdOut     <= (others=>'0');
            cmdVldOut  <= '0';
            cmdEOPOut  <= '0';
            if dataVldIn = '1' and EOPIn = '1' then
              state <= IDLE;
            end if;          
        end case;
      end if;
    end if;
  end process;
 
end rtl;