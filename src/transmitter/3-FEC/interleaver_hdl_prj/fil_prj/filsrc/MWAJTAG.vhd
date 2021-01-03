
-- ----------------------------------------------
-- File Name: MWAJTAG.vhd
-- Created:   03-Jan-2021 15:43:33
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

-- ----------------------------------------------
-- File Name: MWJTAG.vhd
-- Copyright  2013 MathWorks, Inc.
-- ----------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
USE IEEE.numeric_std.all;
USE IEEE.std_logic_unsigned.all;
use IEEE.STD_LOGIC_ARITH.ALL;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY MWAJTAG IS 

PORT (
      clk125                          : in std_logic;
--------- TX --------------------------------------------------------------
      TxData                          : IN  std_logic_vector(7 DOWNTO 0);
      TxDataValid                     : IN  std_logic;
      TxEOP                           : IN  std_logic;
      TxDataLength                    : IN  std_logic_vector(12 DOWNTO 0);
      TxReady                         : OUT std_logic;
--------- RX ---------------------------------------------------------------
      RxData                          : OUT std_logic_vector(7 DOWNTO 0);
      RxDataValid                     : OUT std_logic;
      RxEOP                           : OUT std_logic;
      RxCRCOK                         : OUT std_logic;
      RxCRCBad                        : OUT std_logic
);
END MWAJTAG;

ARCHITECTURE rtl of MWAJTAG IS

	COMPONENT sld_virtual_jtag
	GENERIC (
		sld_auto_instance_index		: STRING;
		sld_instance_index		: NATURAL;
		sld_ir_width		: NATURAL;
		sld_sim_action		: STRING;
		sld_sim_n_scan		: NATURAL;
		sld_sim_total_length		: NATURAL;
		lpm_type		: STRING
	);
	PORT (
			virtual_state_cir	: OUT STD_LOGIC ;
			virtual_state_pdr	: OUT STD_LOGIC ;
			ir_in	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
			tdi	: OUT STD_LOGIC ;
			virtual_state_udr	: OUT STD_LOGIC ;
			ir_out	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			tck	: OUT STD_LOGIC ;
			virtual_state_e1dr	: OUT STD_LOGIC ;
			virtual_state_uir	: OUT STD_LOGIC ;
			tdo	: IN STD_LOGIC ;
			virtual_state_cdr	: OUT STD_LOGIC ;
			virtual_state_e2dr	: OUT STD_LOGIC ;
			virtual_state_sdr	: OUT STD_LOGIC 
	);
	END COMPONENT;

	COMPONENT dcfifo
	GENERIC (
		intended_device_family		: STRING;
		lpm_numwords		: NATURAL;
		lpm_showahead		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL;
		lpm_widthu		: NATURAL;
		overflow_checking		: STRING;
		rdsync_delaypipe		: NATURAL;
		read_aclr_synch		: STRING;
		underflow_checking		: STRING;
		use_eab		: STRING;
		write_aclr_synch		: STRING;
		wrsync_delaypipe		: NATURAL
	);
	PORT (
			rdclk	: IN STD_LOGIC ;
			wrfull	: OUT STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (lpm_width-1 DOWNTO 0);
			rdempty	: OUT STD_LOGIC ;
			wrclk	: IN STD_LOGIC ;
			wrreq	: IN STD_LOGIC ;
			wrusedw	: OUT STD_LOGIC_VECTOR (lpm_widthu-1 DOWNTO 0);
			aclr	: IN STD_LOGIC ;
			data	: IN STD_LOGIC_VECTOR (lpm_width-1 DOWNTO 0);
			rdreq	: IN STD_LOGIC 
	);
	END COMPONENT;
	
    signal ir_out	:  STD_LOGIC_VECTOR (15 DOWNTO 0);
    signal tdo		:  STD_LOGIC ;
    signal ir_in	:  STD_LOGIC_VECTOR (15 DOWNTO 0);
    signal tdi		:  STD_LOGIC ;
    signal virtual_state_sdr		:  STD_LOGIC;
    signal virtual_state_udr		:  STD_LOGIC;
    signal virtual_state_uir      :  STD_LOGIC;
    signal virtual_state_uir_d1 	:  STD_LOGIC;
    signal data_in						: 	STD_LOGIC_VECTOR(7 downto 0);
    signal bit_count, bit_count_inc : 	std_logic_vector(3 downto 0);
    signal ir_in1_d1: std_logic;
    signal shift_in               : std_logic_vector(7 downto 0);

    constant IDLE_CMD					: 	STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    constant WRITE_CMD				: 	STD_LOGIC_VECTOR(15 downto 0) := "0000000000000001";
    constant READ_CMD					: 	STD_LOGIC_VECTOR(15 downto 0) := "0000000000000010";
    
    signal byte_cnt	            :  STD_LOGIC_VECTOR(12 downto 0);
    signal byte_cnt_inc           :  STD_LOGIC_VECTOR(12 downto 0);

    TYPE STATE_TYPE IS (IDLE_STATE, PILOT_STATE, RX_HEADER_STATE, TX_HEADER_STATE, RX_STATE, TX_STATE, TX_NRDY_STATE, RX_WEOP);
    signal state: STATE_TYPE;

    TYPE TXFIFO_STATE_TYPE IS (TXFIFO_IDLE_STATE, TXFIFO_SEND_STATE, TXFIFO_HALT_STATE);
    signal txfifo_state: TXFIFO_STATE_TYPE;
    
    signal read_write: std_logic;
    signal header_reg: std_logic_vector(15 downto 0);
    signal payload_len: std_logic_vector(12 downto 0);

    signal txdata_count : std_logic_vector(12 downto 0);
    signal tx_shift_reg: std_logic_vector(7 downto 0);
    
    signal counter: std_logic_vector(23 downto 0);
    signal RxEOP_tmp : std_logic;
    signal RxDataValid_tmp : std_logic;
    
    signal jtag_clk: std_logic;
    signal mac_reset: std_logic;
    signal RXTX: std_logic; -- '0': RX, '1': TX
    signal TxRdyCount, TxRdyCount_inc : std_logic_vector(12 downto 0);
    signal TxDataLength_reg : std_logic_vector(12 downto 0);
    signal TxEOP_d1 : std_logic;
    signal pilot_reg: std_logic_vector(7 downto 0);
    
    signal TxHeader_shift_reg : std_logic_vector(15 downto 0);
    
    -- FIFO related signals -----

    signal rxfifo_data		: STD_LOGIC_VECTOR (8 DOWNTO 0);
    signal rxfifo_q		: STD_LOGIC_VECTOR (8 DOWNTO 0);
    signal rxfifo_rdempty : std_logic;
    signal rxfifo_rdreq : std_logic;

    signal txfifo_data		: STD_LOGIC_VECTOR (20 DOWNTO 0);
    signal txfifo_q		: STD_LOGIC_VECTOR (20 DOWNTO 0);
    signal txfifo_rdempty , txfifo_rdreq, txfifo_wrreq: std_logic;
    signal txfifo_wrusedw		: STD_LOGIC_VECTOR (10 DOWNTO 0);
    
    signal txfifo_rdreq_d1 : std_logic;
    
    -- JTAG side of the signals
    signal jRxData         : std_logic_vector(7 DOWNTO 0);
    signal jRxDataValid    : std_logic;
    signal jRxEOP          : std_logic;
    signal jTxData         : std_logic_vector(7 DOWNTO 0);
    signal jTxDataLength   : std_logic_vector( 12 downto 0);
    signal jTxDataLength_reg : std_logic_vector( 12 downto 0);
    signal jTxDataValid    : std_logic;
    signal jTxEOP          : std_logic;
    signal jTxEOP_d1: std_logic;
		
begin
	rxfifo_data(8) <= jRxEOP;
	rxfifo_data(7 downto 0) <= jRxData;
	
	RxData      <= rxfifo_q(7 downto 0);

	u_rxfifo : dcfifo
	GENERIC MAP (
		intended_device_family => "Cyclone III",
		lpm_numwords => 16,
		lpm_showahead => "OFF",
		lpm_type => "dcfifo",
		lpm_width => 9,
		lpm_widthu => 4,
		overflow_checking => "ON",
		rdsync_delaypipe => 5,
		read_aclr_synch => "OFF",
		underflow_checking => "ON",
		use_eab => "ON",
		write_aclr_synch => "OFF",
		wrsync_delaypipe => 5
	)
	PORT MAP (
		rdclk 	=> clk125,
		wrclk 	=> jtag_clk,
		wrreq 	=> jRxDataValid,
		aclr 	=> mac_reset,
		data 	=> rxfifo_data,
		rdreq 	=> rxfifo_rdreq,
		wrfull 	=> OPEN,
		q 		=> rxfifo_q,
		rdempty => rxfifo_rdempty,
		wrusedw => OPEN
	);	

	--rxfifo_rdreq <= not rxfifo_rdempty;
	RxEOP 		<= RxEOP_tmp;
	RxEOP_tmp 	<= RxDataValid_tmp and rxfifo_q(8); -- The data must be valid
	RxDataValid <= RxDataValid_tmp;
	
	
	-- Tx is ready when the buffer is not almost full
	--TxReady <= ( not txfifo_wrusedw(3) ) and TxEOP;
	payload_len(7 downto 0) <= header_reg(15 downto 8);
	payload_len(12 downto 8) <= header_reg(7 downto 3);
	
	TxRdyCount_inc <= TxRdyCount + '1';
	process(clk125, mac_reset)
	begin
		if mac_reset = '1' then
			rxfifo_rdreq 		<= '0';
			TxRdyCount 			<= (others => '0');
			TxDataLength_reg 	<= (others => '0');
			txfifo_state 			<= TXFIFO_IDLE_STATE;
		elsif clk125'event and clk125 = '1' then
			if rxfifo_rdempty = '0' and rxfifo_rdreq = '0' then
				rxfifo_rdreq <= '1';
			else
				rxfifo_rdreq <= '0';
			end if;
			
			RxDataValid_tmp <= rxfifo_rdreq; -- The data is valid as long as the fifo is not empty
			RxCRCOK <= RxEOP_tmp;
			
			TxReady <= '0'; -- Default value
			case txfifo_state is
				when TXFIFO_IDLE_STATE => 
					TxRdyCount 	<= (others => '0');
					if TxEOP = '1' then
						txfifo_state <= TXFIFO_SEND_STATE;
						-- Register TxDataLength
						TxDataLength_reg <= TxDataLength;						
					end if;
				when TXFIFO_SEND_STATE => 
					if TxRdyCount = TxDataLength_reg then
						-- All packet done, move to next state
						txfifo_state <= TXFIFO_HALT_STATE;
						TxRdyCount 	 <= (others => '0');
					else -- There is no way we'll get overflow since the maximum packet length is 1457
						--Tx is ready when the buffer is not almost full
						TxReady <= '1';
						TxRdyCount <= TxRdyCount_inc; -- Count the number of ready signals
					end if;
				when TXFIFO_HALT_STATE => 	
					TxRdyCount <= TxRdyCount_inc; -- Reuse this counter
					--if TxRdyCount = conv_std_logic_vector(20, 13) then -- Wait for 7 cycles, can we use 5 cycles?
					if TxRdyCount > conv_std_logic_vector(20, 13) and txfifo_wrusedw(10 downto 7) = "0000" then
						txfifo_state <= TXFIFO_IDLE_STATE;
					end if;
			end case;
			
		end if;
	end process;
	
	-- We need to use the registered version since the TxDataLength changes when TxDataValid = '1'
	txfifo_data(20 downto 8) <= TxDataLength_reg;
	txfifo_data(7 downto 0) <= TxData;

	dcfifo_component : dcfifo
	GENERIC MAP (
		intended_device_family => "Cyclone III",
		lpm_numwords => 2048,
		lpm_showahead => "OFF",
		lpm_type => "dcfifo",
		lpm_width => 21,
		lpm_widthu => 11,
		overflow_checking => "ON",
		rdsync_delaypipe => 5,
		read_aclr_synch => "OFF",
		underflow_checking => "ON",
		use_eab => "ON",
		write_aclr_synch => "OFF",
		wrsync_delaypipe => 5
	)
	PORT MAP (
		rdclk 	=> jtag_clk,
		wrclk 	=> clk125,
		wrreq 	=> txfifo_wrreq,
		aclr 	=> mac_reset,
		data 	=> txfifo_data,
		rdreq 	=> txfifo_rdreq,
		wrfull 	=> OPEN,
		q 		=> txfifo_q,
		rdempty => txfifo_rdempty,
		wrusedw => txfifo_wrusedw
	);
	
	jTxDataLength <= txfifo_q(20 downto 8);
	jTxData       <= txfifo_q(7 downto 0);
	
 	-- We only write to FIFO when the whole packet is avalible in SyncBuffer
	txfifo_wrreq <= TxDataValid;

	shift_in <= tdi & data_in(7 downto 1);
	byte_cnt_inc <= byte_cnt + '1';
	bit_count_inc <= bit_count + '1';
	
	process(jtag_clk, mac_reset)    
	begin
		if mac_reset = '1' then
			state 				<= IDLE_STATE;
			jTxEOP 				<= '0';
			jTxEOP_d1 			<= '0';
			txfifo_rdreq 		<= '0';
			txfifo_rdreq_d1 	<= '0';
		
		elsif jtag_clk'event and jtag_clk = '1' then
			jRxDataValid <= '0';
			jRxEOP 		 <= '0';
			txfifo_rdreq <= '0';
			data_in <= shift_in;
			
			txfifo_rdreq_d1 <= txfifo_rdreq;
			
			-- Delay 1 cycle to match TxDataLength output
			jTxEOP_d1 <= jTxEOP;
			
			if virtual_state_sdr = '1' then
				bit_count <= bit_count_inc;
			end if;
			
			case state is
				when IDLE_STATE => 										
					byte_cnt  <= (others => '0');
					-- We have full packet as long as the fifo is not empty
					-- We need to pre-fatch the fifo so that we can read out the correct TxDataLength
					if jTxEOP = '0' and txfifo_rdempty = '0' then
						jTxEOP <= '1';
						txfifo_rdreq <= '1';						
					end if;
					pilot_reg <= (others => '0');
					if virtual_state_sdr = '1' then
						if RXTX = '0' then
							state <= PILOT_STATE;
							pilot_reg(7 downto 1) <= (others => '0');
							pilot_reg(0) <= tdi;
						elsif jTxEOP_d1 = '1' then
							bit_count <= "0001";
							state <= TX_HEADER_STATE;
							TxHeader_shift_reg <= "00" & jTxDataLength & jTxEOP_d1;
						else
							state <= TX_NRDY_STATE;
						end if;
					end if;
					
				when PILOT_STATE => 					
					if virtual_state_sdr = '1' then
						-- shift reg
						pilot_reg <= tdi & pilot_reg(7 downto 1);
						-- Match pilot pattern "10101010"
						if tdi = '1' and pilot_reg(7 downto 1) = "0101010" then
							bit_count <= "0000";
							state <= RX_HEADER_STATE;
							read_write <= tdi;	
						end if;
					end if;
				when TX_HEADER_STATE => 
					if bit_count = "1111" then
						state <= TX_STATE;
						jTxDataLength_reg <= jTxDataLength;
					end if;					
					TxHeader_shift_reg <= '0' & TxHeader_shift_reg(15 downto 1);
				when RX_HEADER_STATE => 
					header_reg <= tdi & header_reg(15 downto 1);
					if bit_count = "1111" then
						state <= RX_STATE;
					end if;					
				when RX_STATE =>
					if virtual_state_sdr = '1' then						
						if bit_count(2 downto 0) = "111" then
							jRxData <= shift_in;
							jRxDataValid <= '1';				
							byte_cnt <= byte_cnt_inc;
							if byte_cnt_inc = payload_len then
								jRxEOP <= '1';
								state <= RX_WEOP; -- remove me
							end if;	
						end if;
					
					elsif virtual_state_udr = '1' then
						state <= IDLE_STATE;
					end if;
				when TX_STATE =>
					if virtual_state_udr = '1' then
						state <= IDLE_STATE;
						jTxEOP <= '0';
					end if;

					if virtual_state_sdr = '1' then
						if bit_count(2 downto 0) = "101" then
							--if byte_cnt /= std_logic_vector( to_unsigned(0, 16) ) then
							if byte_cnt_inc /= jTxDataLength_reg then
								if txfifo_rdempty = '0' then
									txfifo_rdreq <= '1';
								end if;
								byte_cnt <= byte_cnt_inc;
							end if;
							
						else
							txfifo_rdreq <= '0';
						end if;						
					else
						txfifo_rdreq <= '0';
					end if;	
				when TX_NRDY_STATE =>
					--txfifo_rdreq <= '1';
					if virtual_state_udr = '1' then
						state <= IDLE_STATE;
					end if;					
				when RX_WEOP =>
					if virtual_state_udr = '1' then
						state <= IDLE_STATE;
					end if;
				when others =>
					state <= IDLE_STATE;				
			end case;

			if txfifo_rdreq_d1 = '1' then
				-- there is a two cycle delay between txfifo_rdreg and data out
				tx_shift_reg <= jTxData;
			elsif virtual_state_sdr = '1' and state = TX_STATE then
				tx_shift_reg <= '0' & tx_shift_reg(7 downto 1);
			end if;			
			
		end if;
	end process;	
   
   RxCRCBad <= '0';
	
	ir_out(15) 				<= jTxEOP_d1;
	ir_out(14 downto 13) <= (others => '0');
	ir_out(12 downto 0) 	<= jTxDataLength;
	
	with state select
		tdo <= 	tx_shift_reg(0) 			when TX_STATE, 
					TxHeader_shift_reg(0) 	when TX_HEADER_STATE, 
					'0' 							when TX_NRDY_STATE,
					tdi 							when others;

	process(jtag_clk)
	begin
		if jtag_clk'event and jtag_clk = '1' then
			virtual_state_uir_d1 <= virtual_state_uir;
			-- rising edge
			if virtual_state_uir = '1' and virtual_state_uir_d1 = '0' then
				mac_reset <= ir_in(0);
				ir_in1_d1 <= ir_in(1);
				if ir_in1_d1 /= ir_in(1) then
					RXTX <= ir_in(2);
				end if;
				
			elsif state = TX_STATE then
				RXTX <= '0'; -- Reset back to RX state;
			elsif state = RX_STATE then
				RXTX <= '1';
			end if;
		end if;
		
	end process;
	
	sld_virtual_jtag_component : sld_virtual_jtag
	GENERIC MAP (
		sld_auto_instance_index => "NO",
		sld_instance_index => 54,
		sld_ir_width => 16,
		sld_sim_action => "",
		sld_sim_n_scan => 0,
		sld_sim_total_length => 0,
		lpm_type => "sld_virtual_jtag"
	)
	PORT MAP (
		ir_out 				=> ir_out,
		tdo 				=> tdo,
		virtual_state_cir 	=> OPEN,
		virtual_state_pdr 	=> OPEN,
		ir_in 				=> ir_in,
		tdi 				=> tdi,
		virtual_state_udr 	=> virtual_state_udr,
		tck 				=> jtag_clk,
		virtual_state_e1dr 	=> OPEN,
		virtual_state_uir 	=> virtual_state_uir,
		virtual_state_cdr 	=> OPEN,
		virtual_state_e2dr 	=> OPEN,
		virtual_state_sdr 	=> virtual_state_sdr
	);	
	

END;
