
set rx_clk_var [get_clocks -of [get_ports gmii_rx_clk]]

## If the interface timing constraints cannot be met then these can be relaxed by adjusting the values in this
## xdc file which is set to be processed after all other xdc files
## this also allows for the IODELAY tap delay setting to be adjusted without needing to modify the xdc's
## provided with the core
## All commands in this file can be used directly in the tcl command window if the synthesized or implemented design is open.

# The GMII interface requirement allows a 2ns setup and 0ns hold - this is not met and therefore the constraints 
# need to be relaxed
# For this architecture the setup fails by ~600ps and hold just passes
#set_input_delay -clock $rx_clk_var -max 5.3            [get_ports {gmii_rxd[*] gmii_rx_er gmii_rx_dv}]
#set_input_delay -clock $rx_clk_var -min 0.5 -add_delay [get_ports {gmii_rxd[*] gmii_rx_er gmii_rx_dv}]

# the following properties can be adjusted if required to adjust the IO timing
# the value shown is the default used by the IP - the maximum available value is 31
# increasing this value will improve the hold timing but will also add jitter.
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/delay_gmii_rx_dv}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/delay_gmii_rx_er}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[0].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[1].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[2].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[3].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[4].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[5].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[6].delay_gmii_rxd}]
#set_property IDELAY_VALUE 28 [get_cells {trimac_fifo_block/trimac_sup_block/tri_mode_ethernet_mac_i/*/gmii_interface/rxdata_bus[7].delay_gmii_rxd}]

