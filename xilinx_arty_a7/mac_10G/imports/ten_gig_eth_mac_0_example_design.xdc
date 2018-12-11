#######################################################
# Clock/period constraints                            #
#######################################################
# Main transmit clock/period constraints

create_clock -name gtx_clk -period 6.4000 [get_ports gtx_clk]

# Main receive clock/period constraints
create_clock -name xgmii_rx_clk -period 6.4000 [get_ports xgmii_rx_clk]

# The management clock is specified at 100MHz
create_clock -name s_axi_aclk -period 10 [get_ports s_axi_aclk]



########################
# FIFO level constraints

set_false_path -from [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/*/wr_store_frame_tog_reg] -to [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/*/*/data_sync0_reg]
set_max_delay 6.4000 -datapath_only  -from [get_cells {fifo_block_i/ten_gig_ethernet_mac_fifo/*/rd_addr_gray_reg_reg[*]}] -to [get_cells fifo_block_i/ten_gig_ethernet_mac_fifo/*/*/data_sync0_reg]
set_false_path -to [get_pins -filter {NAME =~ */PRE} -of_objects [get_cells {fifo_block_i/ten_gig_ethernet_mac_fifo/*/*/reset_async*_reg}]]
#######################################################
# I/O constraints                                     #
#######################################################

# These inputs can be connected to dip switches or push buttons on an
# appropriate board.
set_false_path -from [get_ports reset_error]
set_false_path -from [get_ports insert_error]
set_false_path -from [get_ports enable_pat_gen]
set_false_path -from [get_ports enable_pat_check]

# These outputs can be connected to LED's or headers on an
# appropriate board.
set_false_path -to [get_ports gen_active_flash]
set_false_path -to [get_ports check_active_flash]
set_false_path -to [get_ports frame_error]

set_false_path -from [get_cells axi_lite_sm/enable_gen_reg]
set_false_path -from [get_ports read_stats]
set_false_path -to [get_ports stats_fail]


set_power_opt -exclude_cells [get_cells -hierarchical -filter { PRIMITIVE_TYPE =~ *.bram.* }]

