# Primary Clock
create_clock -period 10.000 -name board_clk -waveform {0.000 5.000} [get_ports board_clk]

# Clock
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports board_clk]

# Switch
set_property PACKAGE_PIN A8 [get_ports switch]
set_property IOSTANDARD LVCMOS33 [get_ports switch]

## LEDs
set_property -dict {PACKAGE_PIN H5  IOSTANDARD LVCMOS33} [get_ports {led[0]}]; 
set_property -dict {PACKAGE_PIN J5  IOSTANDARD LVCMOS33} [get_ports {led[1]}];
set_property -dict {PACKAGE_PIN T9  IOSTANDARD LVCMOS33} [get_ports {led[2]}];
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {led[3]}];