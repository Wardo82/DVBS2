create_clock -name sysclk -period 20 -waveform {0.000ns 10.000ns} [get_ports {sysclk}]
create_clock -name ETH_RXCLK -period 8ns -waveform {2.000ns 6.000ns} [get_ports {ETH_RXCLK}]


## Generate clocks ## 
create_generated_clock -name dut_clk      -source sysclk -divide_by     2 -multiply_by     1 -duty_cycle 50.00 { u_ClockManager|u_dcm|auto_generated|pll1|clk[0]} 
create_generated_clock -name gmii_tx_clk  -source sysclk -divide_by     2 -multiply_by     5 -duty_cycle 50.00 { u_ClockManager|u_dcm|auto_generated|pll1|clk[1]} 
create_generated_clock -name ETH_TXCLK    -source sysclk -divide_by     2 -multiply_by     5 -duty_cycle 50.00 { u_ClockManager|u_dcm|auto_generated|pll1|clk[2]} 


## False Path ## 
set_false_path -from [get_clocks ETH_RXCLK]   -to [get_clocks gmii_tx_clk]
set_false_path -from [get_clocks gmii_tx_clk] -to [get_clocks ETH_RXCLK]
set_false_path -from [get_clocks ETH_RXCLK]   -to [get_clocks dut_clk]
set_false_path -from [get_clocks dut_clk]     -to [get_clocks ETH_RXCLK]
set_false_path -from [get_clocks dut_clk]     -to [get_clocks gmii_tx_clk]
set_false_path -from [get_clocks gmii_tx_clk] -to [get_clocks dut_clk]
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty
