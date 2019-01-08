
set rx_clk_var [get_clocks -of [get_ports mii_rx_clk]]

## If the interface timing constraints cannot be met then these can be relaxed by adjusting the values in this
## xdc file which is set to be processed after all other xdc files
## this also allows for the IODELAY tap delay setting to be adjusted without needing to modify the xdc's
## provided with the core
## All commands in this file can be used directly in the tcl command window if the synthesized or implemented design is open.

# The MII interface requirement allows a 30ns setup and 10ns hold
#set_input_delay -clock $rx_clk_var -max 30            [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]
#set_input_delay -clock $rx_clk_var -min 10 -add_delay [get_ports {mii_rxd[*] mii_rx_er mii_rx_dv}]
