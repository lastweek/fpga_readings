
############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
set rx_clk [get_clocks -of [get_ports gmii_rx_clk]]

############################################################
# Obtain input clocks from top level XDC                         #
############################################################
set ip_gtx_clk     [get_clocks -of_objects [get_ports gtx_clk]]

set ip_mii_tx_clk  [get_clocks -of_objects [get_ports mii_tx_clk]]

############################################################
# Define clock relationships                               #
############################################################
set_clock_groups -logically_exclusive -group $ip_gtx_clk -group $ip_mii_tx_clk

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS


############################################################
# For Setup and Hold time analysis on GMII                 #
############################################################

# Identify GMII Rx Pads only.  
# This prevents setup/hold analysis being performed on false inputs,
# eg, the configuration_vector inputs.

# The following constraints work in conjunction with IDELAY_VALUE settings to
# check that the GMII receive bus remains in alignment with the rising edge of
# GMII_RX_CLK.

set_input_delay -clock $rx_clk -max 5.2            [get_ports {gmii_rxd[*] gmii_rx_er gmii_rx_dv}]
set_input_delay -clock $rx_clk -min 0.5 -add_delay [get_ports {gmii_rxd[*] gmii_rx_er gmii_rx_dv}]
# Need to force the ignore inputs as these currently prevent clock propogation through the BUFGMUX
set_case_analysis 0 [get_pins clock_inst/BUFGMUX_SPEED_CLK/IGNORE*]

# create a generated clock to allow the GMII tx to be timed
create_generated_clock -name [current_instance .]_gmii_ext_clk -divide_by 1 -invert -source [get_pins {gmii_interface/gmii_tx_clk_ddr_iob/C}] [get_ports gmii_tx_clk]
set gmii_ext_clk [current_instance .]_gmii_ext_clk 

# the output delays are analysed with respect to the generated clock
set_output_delay 2 -max -clock [get_clocks $gmii_ext_clk]  [get_ports {gmii_txd[*] gmii_tx_er gmii_tx_en}]
set_output_delay -2 -min -clock [get_clocks $gmii_ext_clk] [get_ports {gmii_txd[*] gmii_tx_er gmii_tx_en}]

# remove paths from mii_tx_clk to the new clock as we do not want to time them with these constraints
set_false_path -from $ip_mii_tx_clk -to [get_clocks $gmii_ext_clk]

############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################


# set a false path for the IPIF
set_max_delay -from [get_cells {axi4_lite_ipif/axi4_lite_ipif_top_wrapper/axi_lite_top/*/bus2ip_addr_i_reg[*]}] -to $ip_gtx_clk 6 -datapath_only
# set a false path for the IPIF
set_max_delay -from [get_cells {axi4_lite_ipif/axi4_lite_ipif_top_wrapper/axi_lite_top/*/bus2ip_addr_i_reg[*]}] -to $ip_mii_tx_clk 6 -datapath_only

# set a false path for the static config registers
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/int_*reg[*]}] -to $ip_gtx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/int_*reg[*]}] -to $ip_mii_tx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/int_*reg[*]}] -to $rx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/int_*reg}] -to $ip_gtx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/int_*reg}] -to $ip_mii_tx_clk
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/int_*reg}] -to $rx_clk

