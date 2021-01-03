
-- ----------------------------------------------
-- File Name: MWAsyncFIFO.vhd
-- Created:   03-Jan-2021 02:07:09
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
    
entity MWAsyncFIFO is
  generic (
          DATA_WIDTH :integer := 8;
          ADDR_WIDTH :integer := 12
          );
  port (
    data_in_clk    :in  std_logic;
    data_in        :in  std_logic_vector (DATA_WIDTH-1 downto 0);
    data_in_vld    :in  std_logic;
    data_out_clk   :in  std_logic;
    data_rst       :in  std_logic;
    data_out_en    :in  std_logic;  -- read enable
    data_out       :out std_logic_vector (DATA_WIDTH-1 downto 0);
    data_out_vld   :out std_logic;
    fifo_full      :out std_logic
    );
end MWAsyncFIFO;

architecture rtl of MWAsyncFIFO is
  
  -- Component Declarations
  component MWDPRAM
    generic (
      DATAWIDTH : INTEGER;
      ADDRWIDTH : INTEGER);
    port (
      clkA     : in  std_logic;
      enbA     : in  std_logic;
      wr_dinA  : in  std_logic_vector(DATAWIDTH-1 downto 0);
      wr_addrA : in  std_logic_vector(ADDRWIDTH-1 downto 0);
      wr_enA   : in  std_logic;
      clkB     : in  std_logic;
      enbB     : in  std_logic;
      rd_addrB : in  std_logic_vector(ADDRWIDTH-1 downto 0);
      rd_doutB : out std_logic_vector(DATAWIDTH-1 downto 0));
  end component;

  signal wr_addr            :std_logic_vector (ADDR_WIDTH-1 downto 0); 
  signal rd_addr            :std_logic_vector (ADDR_WIDTH-1 downto 0);
  signal wr_en              :std_logic;
  signal rd_en              :std_logic;
  signal empty              :std_logic; 
  signal full               :std_logic;
  signal empty_temp         :std_logic; 
  signal full_temp          :std_logic;
  signal dvld               :std_logic;
  signal rd_addr_gray       :std_logic_vector (ADDR_WIDTH downto 0);
  signal rd_addr_gray_sync1 :std_logic_vector (ADDR_WIDTH downto 0);
  signal rd_addr_gray_sync2 :std_logic_vector (ADDR_WIDTH downto 0);
  signal rd_addr_gray_next  :std_logic_vector (ADDR_WIDTH downto 0);
  signal rd_addr_bin        :std_logic_vector (ADDR_WIDTH downto 0);
  signal rd_addr_bin_next   :std_logic_vector (ADDR_WIDTH downto 0);
  signal wr_addr_gray       :std_logic_vector (ADDR_WIDTH downto 0);
  signal wr_addr_gray_sync1 :std_logic_vector (ADDR_WIDTH downto 0);  
  signal wr_addr_gray_sync2 :std_logic_vector (ADDR_WIDTH downto 0);
  signal wr_addr_gray_next  :std_logic_vector (ADDR_WIDTH downto 0);
  signal wr_addr_bin        :std_logic_vector (ADDR_WIDTH downto 0);
  signal wr_addr_bin_next   :std_logic_vector (ADDR_WIDTH downto 0);
  signal rst_clkin_sync1    :std_logic;
  signal rst_clkin_sync2    :std_logic; -- reset synced to clk in
  signal rst_clkout_sync1   :std_logic;
  signal rst_clkout_sync2   :std_logic; -- reset synced to clk out
  
  type RD_STATE_TYPE is (RD_IDLE, RD_WAIT4VLD, RD_DATA);
  signal rd_state  : RD_STATE_TYPE;  

begin
  -- reset sync
  process (data_in_clk)
  begin
    if rising_edge(data_in_clk) then
      rst_clkin_sync1   <= data_rst;
      rst_clkin_sync2   <= rst_clkin_sync1;
    end if;
  end process;  

  process (data_out_clk)
  begin
    if rising_edge(data_out_clk) then
      rst_clkout_sync1   <= data_rst;
      rst_clkout_sync2   <= rst_clkout_sync1;
    end if;
  end process;  
  
  -- Dual-Port RAM
  dpram: MWDPRAM
  generic map (
    DATAWIDTH => DATA_WIDTH,
    ADDRWIDTH => ADDR_WIDTH)
  port map (
    clkA     => data_in_clk,
    enbA     => data_in_vld,
    wr_dinA  => data_in,
    wr_addrA => wr_addr, 
    wr_enA   => wr_en, 
    clkB     => data_out_clk,
    enbB     => '1',
    rd_addrB => rd_addr,
    rd_doutB => data_out
    );
  
  
  -- signal sync
  process (data_in_clk)  -- sync rd addr to wr clk domain
  begin
    if rising_edge(data_in_clk) then
      if rst_clkin_sync2 = '1' then
        rd_addr_gray_sync1   <= (others=>'0');
        rd_addr_gray_sync2   <= (others=>'0');
      else
        rd_addr_gray_sync1   <= rd_addr_gray;
        rd_addr_gray_sync2   <= rd_addr_gray_sync1;
      end if;
    end if;
  end process;  
  
  
  process (data_out_clk)  -- sync wr addr to rd clk domain
  begin
    if rising_edge(data_out_clk) then
      if (rst_clkout_sync2 = '1') then
        wr_addr_gray_sync2   <= (others=>'0');
        wr_addr_gray_sync1   <= (others=>'0');
      else
        wr_addr_gray_sync2   <= wr_addr_gray_sync1;
        wr_addr_gray_sync1   <= wr_addr_gray;
      end if;
    end if;
  end process;
   
  -- Gray Code Counter: WRITE
  process (data_in_clk) 
  begin
    if rising_edge(data_in_clk) then      
      if (rst_clkin_sync2 = '1') then
        wr_addr_bin     <= (others=>'0');
        wr_addr_gray    <= (others=>'0');
      else
        wr_addr_bin     <= wr_addr_bin_next;
        wr_addr_gray    <= wr_addr_gray_next;
      end if;
    end if;
  end process;
  
  wr_addr_bin_next  <= wr_addr_bin +1 when (wr_en = '1') and (data_in_vld = '1') else wr_addr_bin;
  wr_addr_gray_next <= wr_addr_bin_next(ADDR_WIDTH) & 
                      (wr_addr_bin_next(ADDR_WIDTH-1 downto 0) xor wr_addr_bin_next(ADDR_WIDTH downto 1));
  
  wr_en <= not full; --write enable
  wr_addr   <= wr_addr_bin(ADDR_WIDTH-1 downto 0); -- write addr
  
  process (data_in_clk) 
  begin
    if rising_edge(data_in_clk) then 
      if (rst_clkin_sync2 = '1') then
        full   <= '0';
      else
        full   <= full_temp;
      end if;
    end if;
  end process;  
  full_temp <= '1' when (wr_addr_gray_next =  ((not rd_addr_gray_sync2(ADDR_WIDTH downto ADDR_WIDTH-1)) & rd_addr_gray_sync2(ADDR_WIDTH-2 downto 0))) else '0';
  
  
  -- Gray Code Counter: READ
  process (data_out_clk) 
  begin
    if rising_edge(data_out_clk) then
      if (rst_clkout_sync2 = '1') then
        rd_addr_bin     <= (others=>'0');
        rd_addr_gray    <= (others=>'0');
      else
        rd_addr_bin     <= rd_addr_bin_next;
        rd_addr_gray    <= rd_addr_gray_next;
      end if;
    end if;
  end process;
  
  rd_addr_bin_next  <= rd_addr_bin +1 when rd_en = '1' else rd_addr_bin;
  rd_addr_gray_next <= rd_addr_bin_next(ADDR_WIDTH) & 
                      (rd_addr_bin_next(ADDR_WIDTH-1 downto 0) xor rd_addr_bin_next(ADDR_WIDTH downto 1));
              
  rd_en  <= data_out_en and (not empty); -- read enable            
  rd_addr   <= rd_addr_bin(ADDR_WIDTH-1 downto 0); -- read addr
  
  process (data_out_clk) 
  begin
    if rising_edge(data_out_clk) then
      if (rst_clkout_sync2 = '1') then
        empty   <= '1';
      else
        empty   <= empty_temp;
      end if;
    end if;
  end process;
  empty_temp <= '1' when (rd_addr_gray_next =  wr_addr_gray_sync2) else '0';
  
  -- data out valid
  data_out_vld_fsm : process (data_out_clk)
  begin
    if rising_edge(data_out_clk) then
      if (rst_clkout_sync2 = '1') then
        rd_state   <= RD_IDLE;
        dvld       <= '0'; 
      else
        case rd_state is
          when RD_IDLE => 
            rd_state   <= RD_IDLE;
            dvld       <= '0';
            if rd_en = '1' then
              dvld      <= '1';
              rd_state  <= RD_DATA;
            else
              rd_state  <= RD_WAIT4VLD;
            end if;
          when RD_DATA =>
            rd_state   <= RD_DATA;
            dvld       <= '0';
            if rd_en = '1' then
              dvld      <= '1';
              rd_state  <= RD_DATA;
            else
              rd_state   <= RD_WAIT4VLD; 
            end if;
          when RD_WAIT4VLD => 
            rd_state   <= RD_WAIT4VLD;
            dvld       <= '0';
            if rd_en = '1' then
              dvld       <= '1';
              rd_state  <= RD_DATA;
            end if;
          when others => 
            rd_state <= RD_IDLE;
            dvld     <= '0';
        end case;
      end if;
    end if;
  end process;
  data_out_vld  <= dvld;
  
  fifo_full <= full;
end rtl;