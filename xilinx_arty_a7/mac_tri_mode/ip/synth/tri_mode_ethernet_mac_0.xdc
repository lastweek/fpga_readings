
# PART is artix7 xc7a100tcsg324

############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# RX Clock period Constraints (per instance)               #
############################################################
# Receiver clock period constraints: please do not relax
create_clock -period 8 [get_ports gmii_rx_clk]

############################################################
# MII TX Clock period Constraints (per instance)               #
############################################################
create_clock -period 8 [get_ports mii_tx_clk]

#
####
#######
##########
#############
#################
#BLOCK CONSTRAINTS

############################################################
# Physical Interface Constraints
############################################################

############################################################
# External GMII Constraints                                #
############################################################

# GMII Transmitter/Receiver Constraints:  place flip-flops in IOB
set_property IOB TRUE  [get_cells {gmii_interface/gmii_txd*reg[*]}]
set_property IOB TRUE  [get_cells {gmii_interface/gmii_tx_e*reg}]
set_property IOB TRUE  [get_cells {gmii_interface/rx*_to_mac*reg}]
set_property IOB TRUE  [get_cells {gmii_interface/rx*_to_mac*reg[*]}]

############################################################
# The following are required to maximise setup/hold        #
############################################################

set_property SLEW FAST [get_ports {gmii_tx_en gmii_tx_er gmii_txd[7] gmii_txd[6] gmii_txd[5] gmii_txd[4] gmii_txd[3] gmii_txd[2] gmii_txd[1] gmii_txd[0]}]
set_property SLEW FAST [get_ports {gmii_tx_clk}]


############################################################
# GMII: IODELAY Constraints
############################################################
# Please modify the value of the IDELAY_VALUE
# according to your design.
# For more information on IDELAYCTRL and IODELAY, please
# refer to the Series-7 User Guide.
# apply the same IDELAY_VALUE to all GMII RX inputs
set_property IDELAY_VALUE 28 [get_cells {gmii_interface/delay_gmii_rx* gmii_interface/rxdata_bus[*].delay_gmii_rxd}]
# Group IODELAY components
set_property IODELAY_GROUP tri_mode_ethernet_mac_iodelay_grp [get_cells {gmii_interface/delay_gmii_rx* gmii_interface/rxdata_bus[*].delay_gmii_rxd}]


#
####
#######
##########
#############
#################
#CORE CONSTRAINTS



############################################################
# Crossing of Clock Domain Constraints: please do not edit #
############################################################

# control signal is synced separately so we want a max delay to ensure the signal has settled by the time the control signal has passed through the synch
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/flow/tx_pause/count_set*reg}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/flow/rx_pause/pause*to_tx_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/flow/tx_pause/pause_count*reg[*]}] 32 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/flow/rx_pause/pause_req_to_tx_int_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/flow/tx_pause/sync_good_rx/data_sync_reg0}] 6 -datapath_only


# ignore paths from the speed control
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/speed*speed_is*100_reg}] -to [get_cells {clock_inst/BUFGMUX_SPEED_CLK}]
set_false_path -from [get_cells {tri_mode_ethernet_mac_0_core/speed*speed_is*100_reg}] -to [get_cells {*xspeedis10100gen/data_sync_reg0}]

# set a false path for the clock path from the address filter dist rams
# the paths we care about timing are either the write interface OR the read interface
# this path is from the write to the read which should be ignored
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/*/DP}] -to  [get_cells -hierarchical -filter {NAME =~ *tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/*addr*/bit_match*reg[*]}]

# false path due to synced control path
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rd_data_ref_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/ip2bus_data_reg[*]}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/response_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/sync_response/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/request_toggle_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/sync_request/data_sync_reg0}] 6 -datapath_only
# CDC from the Tx and Rx statistics to the statistic counter logic
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[18]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[18].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[19]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[19].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[20]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[20].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[21]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[21].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[22]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[22].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[23]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[23].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[24]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[24].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[25]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[25].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[26]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/general_statisic_control[26].general_statisics/sync_inc_vector/data_sync_reg0}] 6 -datapath_only

set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[4]}]  -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[4].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[5]}]  -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[5].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[6]}]  -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[6].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[7]}]  -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[7].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[8]}]  -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[8].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[9]}]  -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[9].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {vector_decode_inst/inc_vector_reg[10]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/frame_size_bin_control1[10].frame_size_stats1/sync_inc_vector/data_sync_reg0}] 6 -datapath_only

set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rx_byte_counter/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rx_byte_counter/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rx_undersized_counter/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rx_undersized_counter/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rx_fragment_counter/accumulator_gray_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/*statistics_counters/rx_fragment_counter*/accum_gray_resync[*].sync_accum_gray_i/data_sync_reg0}] 6 -datapath_only


############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -hier -filter {NAME =~ */async_rst*/PRE}]
set_false_path -to [get_pins -hier -filter {NAME =~ */async_rst*/CLR}]
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/addr_regs.promiscuous_mode_reg_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/resync_promiscuous_mode/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/addr_regs.filter_enable_reg_reg[*]}] -to [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/address_filters[*].sync_enable/data_sync_reg0}] 6 -datapath_only
set_max_delay -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/conf/update_pause_ad_int_reg}] -to [get_cells {tri_mode_ethernet_mac_0_core/addr_filter_top/address_filter_inst/sync_update/data_sync_reg0}] 6 -datapath_only

# the mdio interface is clocked from the axi clock but the clock is so slow it can be considered to be data
# the data related outputs are output on the falling edge of the MDC output so both can simply be considered to be multicycle paths
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.miim_clk_int_reg}  ] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.phy/enable_reg_reg}] -throu [get_ports mdc]
set_multicycle_path 10 -setup -from [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio]
set_multicycle_path 9 -hold -from   [get_cells {tri_mode_ethernet_mac_0_core/*managen/mdio_enabled.phy/mdio*reg}      ] -throu [get_ports mdio]
# mdio has timing implications but slow interface so relaxed
set_false_path  -to [get_cells -hier -filter {NAME =~ *managen/mdio_enabled.phy/mdio_in_reg1_reg}]



