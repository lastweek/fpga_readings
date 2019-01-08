# PART is artix7 xc7a100tcsg324

#
####
#######
##########
#############
#################
## System level constraints


########## NO BOARD INFO SO IO NO PIN PLACEMENT ##########
set_property IOSTANDARD  DIFF_HSTL_II_18  [get_ports clk_in_p]
set_property IOSTANDARD  DIFF_HSTL_II_18  [get_ports clk_in_n]

set_property IOSTANDARD  LVCMOS25 [get_ports glbl_rst]
set_false_path -from [get_ports glbl_rst]

#### Module LEDs_8Bit constraints
set_property IOSTANDARD  LVCMOS25 [get_ports activity_flash]
set_property IOSTANDARD  LVCMOS25 [get_ports activity_flashn]
set_property IOSTANDARD  LVCMOS25 [get_ports frame_error]
set_property IOSTANDARD  LVCMOS25 [get_ports frame_errorn]

#### Module Push_Buttons_4Bit constraints
set_property IOSTANDARD  LVCMOS25 [get_ports update_speed]
set_property IOSTANDARD  LVCMOS25 [get_ports config_board]
set_property IOSTANDARD  LVCMOS25 [get_ports pause_req_s]
set_property IOSTANDARD  LVCMOS25 [get_ports reset_error]

#### Module DIP_Switches_4Bit constraints
set_property IOSTANDARD  LVCMOS25 [get_ports mac_speed[0]]
set_property IOSTANDARD  LVCMOS25 [get_ports mac_speed[1]]
set_property IOSTANDARD  LVCMOS25 [get_ports gen_tx_data]
set_property IOSTANDARD  LVCMOS25 [get_ports chk_tx_data]

set_property IOSTANDARD  LVCMOS25 [get_ports phy_resetn]

set_property IOSTANDARD  LVCMOS25 [get_ports serial_response]
set_property IOSTANDARD  LVCMOS25 [get_ports tx_statistics_s]
set_property IOSTANDARD  LVCMOS25 [get_ports rx_statistics_s]

set_property IOSTANDARD  LVCMOS25 [get_ports mdc]
set_property IOSTANDARD  LVCMOS25 [get_ports mdio]

set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[3]]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[2]]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[1]]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rxd[0]]

set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[3]]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[2]]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[1]]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_txd[0]]


set_property IOSTANDARD  LVCMOS25 [get_ports mii_tx_en]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_tx_er]

set_property IOSTANDARD  LVCMOS25 [get_ports mii_rx_dv]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rx_er]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_rx_clk]
set_property IOSTANDARD  LVCMOS25 [get_ports mii_tx_clk]
# TB clock pin gtx_clk_bufg_out 
set_property IOSTANDARD  LVCMOS25 [get_ports gtx_clk_bufg_out] 



#
####
#######
##########
#############
#################
#EXAMPLE DESIGN CONSTRAINTS


############################################################
# Clock Period Constraints                                 #
############################################################

############################################################
# TX Clock period Constraints                              #
############################################################
# Transmitter clock period constraints: please do not relax
create_clock -name clk_in_p -period 5.000 [get_ports clk_in_p]
set_input_jitter clk_in_p 0.050



############################################################
# Get auto-generated clock names                           #
############################################################
set axi_clk_name [get_clocks -of [get_pins example_clocks/clock_generator/mmcm_adv_inst/CLKOUT1]]

############################################################
# Input Delay constraints
############################################################
# these inputs are alll from either dip switchs or push buttons
# and therefore have no timing associated with them
set_false_path -from [get_ports config_board]
set_false_path -from [get_ports pause_req_s]
set_false_path -from [get_ports reset_error]
set_false_path -from [get_ports mac_speed[0]]
set_false_path -from [get_ports mac_speed[1]]
set_false_path -from [get_ports gen_tx_data]
set_false_path -from [get_ports chk_tx_data]

# no timing requirements but want the capture flops close to the IO
set_max_delay -from [get_ports update_speed] 4 -datapath_only


# Ignore pause deserialiser as only present to prevent logic stripping
set_false_path -from [get_ports pause_req*]
set_false_path -from [get_cells pause_req* -filter {IS_SEQUENTIAL}]
set_false_path -from [get_cells pause_val* -filter {IS_SEQUENTIAL}]


############################################################
# Output Delay constraints
############################################################

set_false_path -to [get_ports frame_error]
set_false_path -to [get_ports frame_errorn]
set_false_path -to [get_ports serial_response]
set_false_path -to [get_ports tx_statistics_s]
set_false_path -to [get_ports rx_statistics_s]
set_output_delay -clock $axi_clk_name 1 [get_ports mdc]

# no timing associated with output
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn_int_reg}] -to [get_ports phy_resetn]

############################################################
# Example design Clock Crossing Constraints                          #
############################################################
set_false_path -from [get_cells -hier -filter {name =~ *phy_resetn_int_reg}] -to [get_cells -hier -filter {name =~ *axi_lite_reset_gen/reset_sync*}]


# control signal is synched over clock boundary separately
set_false_path -from [get_cells -hier -filter {name =~ tx_stats_reg[*]}] -to [get_cells -hier -filter {name =~ tx_stats_shift_reg[*]}]
set_false_path -from [get_cells -hier -filter {name =~ rx_stats_reg[*]}] -to [get_cells -hier -filter {name =~ rx_stats_shift_reg[*]}]



############################################################
# Ignore paths to resync flops
############################################################
set_false_path -to [get_pins -hier -filter {NAME =~ */reset_sync*/PRE}]
set_false_path -to [get_pins -hier -filter {NAME =~ */*_sync*/D}]
set_max_delay -from [get_cells tx_stats_toggle_reg] -to [get_cells tx_stats_sync/data_sync_reg0] 6 -datapath_only
set_max_delay -from [get_cells rx_stats_toggle_reg] -to [get_cells rx_stats_sync/data_sync_reg0] 6 -datapath_only



#
####
#######
##########
#############
#################
#FIFO BLOCK CONSTRAINTS

############################################################
# FIFO Clock Crossing Constraints                          #
############################################################

# control signal is synched separately so this is a false path
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/rd_addr_reg[*]}]                         -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/wr_store_frame_tog_reg}]                 -to [get_cells -hier -filter {name =~ *fifo_i/resync_wr_store_frame_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *rx_fifo_i/update_addr_tog_reg}]                    -to [get_cells -hier -filter {name =~ *rx_fifo_i/sync_rd_addr_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_addr_txfer_reg[*]}]                   -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frame_in_fifo_reg}]                   -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frame_in_fifo/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frames_in_fifo_reg}]                  -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frames_in_fifo/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/frame_in_fifo_valid_tog_reg}]            -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_fif_valid_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_txfer_tog_reg}]                       -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_txfer_tog/data_sync_reg0}] 3.2 -datapath_only
set_max_delay -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_tran_frame_tog_reg}]                  -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_tran_frame_tog/data_sync_reg0}] 3.2 -datapath_only

set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]
