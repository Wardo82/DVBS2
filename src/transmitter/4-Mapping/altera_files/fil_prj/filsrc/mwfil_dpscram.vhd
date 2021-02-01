
-- ----------------------------------------------
-- File Name: mwfil_dpscram.vhd
-- Created:   31-Jan-2021 18:10:23
-- Copyright  2021 MathWorks, Inc.
-- ----------------------------------------------

-- A parameterized, inferable, true dual-port, single-clock block RAM in VHDL.
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity mwfil_dpscram is
generic (
	DATA : integer := 16;
	ADDR : integer := 4
);
port (
	clk : in std_logic;

	-- write port
	wr_en : in std_logic;
	wr_addr : in std_logic_vector(ADDR-1 downto 0);
	wr_din : in std_logic_vector(DATA-1 downto 0);

	-- read port
	rd_addr : in std_logic_vector(ADDR-1 downto 0);
	rd_dout : out std_logic_vector(DATA-1 downto 0)
);
end mwfil_dpscram;

architecture rtl of mwfil_dpscram is
    -- infer a true dual-port, single-clock block RAM
	type mem_type is array ( (2**ADDR)-1 downto 0 ) of std_logic_vector(DATA-1 downto 0);
	signal mem : mem_type := (others => (others => '0'));
begin
    -- read first mode
	process(clk)
	begin
		if(clk'event and clk='1') then
			if(wr_en='1') then
				mem(conv_integer(wr_addr)) <= wr_din;
			end if;
			rd_dout <= mem(conv_integer(rd_addr));
		end if;
	end process;
	
end rtl;
