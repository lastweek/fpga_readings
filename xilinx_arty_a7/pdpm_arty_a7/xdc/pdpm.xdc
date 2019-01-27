# PART is artix7 xc7a100tcsg324
# Board is Arty A7 100T

# Primary Clock
create_clock -period 10.000 -name sys_clk_100M [get_ports sys_clk_100M]
set_input_jitter sys_clk_100M 0.010
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports sys_clk_100M]

# Module LEDs
# LD4 activity_flash is for pat check
# LD5 activity_flash_gen is for pat generation
# LD7 is T10, is user LED, subject to change
set_property -dict {PACKAGE_PIN H5 IOSTANDARD LVCMOS33} [get_ports activity_flash]
set_property -dict {PACKAGE_PIN J5 IOSTANDARD LVCMOS33} [get_ports activity_flash_gen]
set_property -dict {PACKAGE_PIN T9 IOSTANDARD LVCMOS33} [get_ports frame_error]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports user_LED]

# LD3 Blue
# Show if packget generation is enabled or not
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports pkt_gen_enabled]

#### Module Push_Buttons BTN0-BTN3
set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS33} [get_ports update_speed]
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports config_board]
set_property -dict {PACKAGE_PIN B9 IOSTANDARD LVCMOS33} [get_ports pause_req_s]

# BTN3
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVCMOS33} [get_ports glbl_rst]
set_false_path -from [get_ports glbl_rst]


# Red Reset Button
set_property -dict {PACKAGE_PIN C2 IOSTANDARD LVCMOS33} [get_ports reset_error]

#### Module DIP_Switches SW0-SW3
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS33} [get_ports {mac_speed[0]}]
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS33} [get_ports {mac_speed[1]}]
set_property -dict {PACKAGE_PIN C10 IOSTANDARD LVCMOS33} [get_ports gen_tx_data]
set_property -dict {PACKAGE_PIN A10 IOSTANDARD LVCMOS33} [get_ports chk_tx_data]

#set_property -dict { PACKAGE_PIN D17   IOSTANDARD LVCMOS33 } [get_ports { eth_col }]; #IO_L16N_T2_A27_15 Sch=eth_col
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { eth_crs }]; #IO_L15N_T2_DQS_ADV_B_15 Sch=eth_cr

# 25Mhz clock input to PHY
set_property -dict {PACKAGE_PIN G18 IOSTANDARD LVCMOS33} [get_ports mii_ref_clk_out]

# PHY MII RESET
set_property -dict {PACKAGE_PIN C16 IOSTANDARD LVCMOS33} [get_ports phy_resetn]

# Use LD0, LD1, and LD2 as the output. Not sure what's this.
set_property -dict {PACKAGE_PIN G6 IOSTANDARD LVCMOS33} [get_ports tx_statistics_s]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS33} [get_ports rx_statistics_s]
set_property -dict {PACKAGE_PIN J3 IOSTANDARD LVCMOS33} [get_ports serial_response]

set_property -dict {PACKAGE_PIN F16 IOSTANDARD LVCMOS33} [get_ports mdc]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports mdio]

set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports {mii_rxd[3]}]
set_property -dict {PACKAGE_PIN E18 IOSTANDARD LVCMOS33} [get_ports {mii_rxd[2]}]
set_property -dict {PACKAGE_PIN E17 IOSTANDARD LVCMOS33} [get_ports {mii_rxd[1]}]
set_property -dict {PACKAGE_PIN D18 IOSTANDARD LVCMOS33} [get_ports {mii_rxd[0]}]

set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports {mii_txd[3]}]
set_property -dict {PACKAGE_PIN J13 IOSTANDARD LVCMOS33} [get_ports {mii_txd[2]}]
set_property -dict {PACKAGE_PIN J14 IOSTANDARD LVCMOS33} [get_ports {mii_txd[1]}]
set_property -dict {PACKAGE_PIN H14 IOSTANDARD LVCMOS33} [get_ports {mii_txd[0]}]


set_property -dict {PACKAGE_PIN H15 IOSTANDARD LVCMOS33} [get_ports mii_tx_en]

set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports mii_rx_dv]
set_property -dict {PACKAGE_PIN C17 IOSTANDARD LVCMOS33} [get_ports mii_rx_er]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports mii_rx_clk]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports mii_tx_clk]

# TB clock pin gtx_clk_bufg_out
#set_property IOSTANDARD  LVCMOS33 [get_ports gtx_clk_bufg_out]

# Optional MAC to PHY error signal
# Use LD3
#set_property -dict { PACKAGE_PIN K2   IOSTANDARD  LVCMOS33 } [get_ports mii_tx_er]
#set_property -dict {PACKAGE_PIN K1 IOSTANDARD  LVCMOS33 } [get_ports mii_tx_er]

############################################################
# Get auto-generated clock names                           #
############################################################

############################################################
# Input Delay constraints
############################################################
# these inputs are alll from either dip switchs or push buttons
# and therefore have no timing associated with them
set_false_path -from [get_ports config_board]
set_false_path -from [get_ports pause_req_s]
set_false_path -from [get_ports reset_error]
set_false_path -from [get_ports {mac_speed[0]}]
set_false_path -from [get_ports {mac_speed[1]}]
set_false_path -from [get_ports gen_tx_data]
set_false_path -from [get_ports chk_tx_data]

# no timing requirements but want the capture flops close to the IO
set_max_delay -datapath_only -from [get_ports update_speed] 4.000


# Ignore pause deserialiser as only present to prevent logic stripping
set_false_path -from [get_ports pause_req*]
set_false_path -from [get_cells pause_req* -filter IS_SEQUENTIAL]
set_false_path -from [get_cells pause_val* -filter IS_SEQUENTIAL]


############################################################
# Output Delay constraints
############################################################

set_false_path -to [get_ports frame_error]
set_false_path -to [get_ports user_LED]
set_false_path -to [get_ports serial_response]
set_false_path -to [get_ports tx_statistics_s]
set_false_path -to [get_ports rx_statistics_s]
set_output_delay -clock [get_clocks -of [get_pins example_clocks/clock_generator/mmcm_adv_inst/CLKOUT1]] 1.000 [get_ports mdc]

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
set_max_delay -datapath_only -from [get_cells tx_stats_toggle_reg] -to [get_cells tx_stats_sync/data_sync_reg0] 6.000
set_max_delay -datapath_only -from [get_cells rx_stats_toggle_reg] -to [get_cells rx_stats_sync/data_sync_reg0] 6.000



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
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *rx_fifo_i/rd_addr_reg[*]}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *rx_fifo_i/wr_store_frame_tog_reg}] -to [get_cells -hier -filter {name =~ *fifo_i/resync_wr_store_frame_tog/data_sync_reg0}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *rx_fifo_i/update_addr_tog_reg}] -to [get_cells -hier -filter {name =~ *rx_fifo_i/sync_rd_addr_tog/data_sync_reg0}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_addr_txfer_reg[*]}] -to [get_cells -hier -filter {name =~ *fifo*wr_rd_addr_reg[*]}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frame_in_fifo_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frame_in_fifo/data_sync_reg0}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *tx_fifo_i/wr_frames_in_fifo_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_wr_frames_in_fifo/data_sync_reg0}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *tx_fifo_i/frame_in_fifo_valid_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_fif_valid_tog/data_sync_reg0}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_txfer_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_txfer_tog/data_sync_reg0}] 3.200
set_max_delay -datapath_only -from [get_cells -hier -filter {name =~ *tx_fifo_i/rd_tran_frame_tog_reg}] -to [get_cells -hier -filter {name =~ *tx_fifo_i/resync_rd_tran_frame_tog/data_sync_reg0}] 3.200

set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]

