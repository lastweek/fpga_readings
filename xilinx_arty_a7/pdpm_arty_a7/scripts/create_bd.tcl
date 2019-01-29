
################################################################
# This is a generated script based on design: pdpm_system_2
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source pdpm_system_2_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tcsg324-1
   set_property BOARD_PART digilentinc.com:arty-a7-100:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name pdpm_system_2

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ../generated/pdpm/bd

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axis_data_fifo:1.1\
xilinx.com:hls:dram_read:1.0\
xilinx.com:hls:dram_write:1.0\
xilinx.com:ip:ila:6.2\
xilinx.com:ip:jtag_axi:1.2\
xilinx.com:ip:mig_7series:4.1\
xilinx.com:ip:vio:3.0\
xilinx.com:ip:xlconstant:1.1\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set M_AXIS_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_0 ]
  set S_AXIS_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_0 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $S_AXIS_0
  set ddr3_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 ddr3_sdram ]

  # Create ports
  set m_axis_aclk_0 [ create_bd_port -dir I -type clk m_axis_aclk_0 ]
  set m_axis_aresetn_0 [ create_bd_port -dir I -type rst m_axis_aresetn_0 ]
  set mig_166MHZ [ create_bd_port -dir I -type clk mig_166MHZ ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {166667000} \
 ] $mig_166MHZ
  set mig_ref_200MHZ [ create_bd_port -dir I -type clk mig_ref_200MHZ ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
 ] $mig_ref_200MHZ
  set mig_sys_rst_n [ create_bd_port -dir I -type rst mig_sys_rst_n ]
  set s_axis_aclk_0 [ create_bd_port -dir I -type clk s_axis_aclk_0 ]
  set s_axis_aresetn_0 [ create_bd_port -dir I -type rst s_axis_aresetn_0 ]

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {1} \
   CONFIG.NUM_SI {3} \
 ] $axi_interconnect_0

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]
  set_property -dict [ list \
   CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_0

  # Create instance: axis_data_fifo_1, and set properties
  set axis_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_1 ]
  set_property -dict [ list \
   CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_1

  # Create instance: dram_read_0, and set properties
  set dram_read_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:dram_read:1.0 dram_read_0 ]

  # Create instance: dram_write_0, and set properties
  set dram_write_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:dram_write:1.0 dram_write_0 ]

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_WIDTH {32} \
   CONFIG.C_PROBE1_WIDTH {32} \
   CONFIG.C_PROBE2_WIDTH {32} \
   CONFIG.C_PROBE3_WIDTH {32} \
   CONFIG.C_PROBE4_WIDTH {32} \
   CONFIG.C_PROBE5_WIDTH {32} \
 ] $ila_0

  # Create instance: ila_1, and set properties
  set ila_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_1 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {6} \
   CONFIG.C_PROBE0_WIDTH {1} \
   CONFIG.C_PROBE1_WIDTH {1} \
   CONFIG.C_PROBE2_WIDTH {1} \
   CONFIG.C_PROBE3_WIDTH {1} \
   CONFIG.C_PROBE4_WIDTH {1} \
   CONFIG.C_PROBE5_WIDTH {1} \
 ] $ila_1

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.1 mig_7series_0 ]
  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {ddr3_sdram} \
 ] $mig_7series_0

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
   CONFIG.C_NUM_PROBE_OUT {4} \
 ] $vio_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $xlconstant_0

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_0_1 [get_bd_intf_ports S_AXIS_0] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_interconnect_0/M00_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins dram_write_0/from_net]
  connect_bd_intf_net -intf_net axis_data_fifo_1_M_AXIS [get_bd_intf_ports M_AXIS_0] [get_bd_intf_pins axis_data_fifo_1/M_AXIS]
  connect_bd_intf_net -intf_net dram_read_0_m_axi_gmem [get_bd_intf_pins axi_interconnect_0/S01_AXI] [get_bd_intf_pins dram_read_0/m_axi_gmem]
  connect_bd_intf_net -intf_net dram_read_0_to_net [get_bd_intf_pins axis_data_fifo_1/S_AXIS] [get_bd_intf_pins dram_read_0/to_net]
  connect_bd_intf_net -intf_net dram_write_0_m_axi_gmem [get_bd_intf_pins axi_interconnect_0/S00_AXI] [get_bd_intf_pins dram_write_0/m_axi_gmem]
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins axi_interconnect_0/S02_AXI] [get_bd_intf_pins jtag_axi_0/M_AXI]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports ddr3_sdram] [get_bd_intf_pins mig_7series_0/DDR3]

  # Create port connections
  connect_bd_net -net axis_data_fifo_0_axis_data_count [get_bd_pins axis_data_fifo_0/axis_data_count] [get_bd_pins ila_0/probe3]
  connect_bd_net -net axis_data_fifo_0_axis_rd_data_count [get_bd_pins axis_data_fifo_0/axis_rd_data_count] [get_bd_pins ila_0/probe5]
  connect_bd_net -net axis_data_fifo_0_axis_wr_data_count [get_bd_pins axis_data_fifo_0/axis_wr_data_count] [get_bd_pins ila_0/probe4]
  connect_bd_net -net axis_data_fifo_1_axis_data_count [get_bd_pins axis_data_fifo_1/axis_data_count] [get_bd_pins ila_0/probe0]
  connect_bd_net -net axis_data_fifo_1_axis_rd_data_count [get_bd_pins axis_data_fifo_1/axis_rd_data_count] [get_bd_pins ila_0/probe2]
  connect_bd_net -net axis_data_fifo_1_axis_wr_data_count [get_bd_pins axis_data_fifo_1/axis_wr_data_count] [get_bd_pins ila_0/probe1]
  connect_bd_net -net clk_wiz_0_locked [get_bd_ports mig_sys_rst_n] [get_bd_pins axi_interconnect_0/ARESETN] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN] [get_bd_pins axi_interconnect_0/S01_ARESETN] [get_bd_pins axi_interconnect_0/S02_ARESETN] [get_bd_pins axis_data_fifo_0/m_axis_aresetn] [get_bd_pins axis_data_fifo_1/s_axis_aresetn] [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins mig_7series_0/sys_rst]
  connect_bd_net -net dram_read_0_ap_done [get_bd_pins dram_read_0/ap_done] [get_bd_pins ila_1/probe0]
  connect_bd_net -net dram_read_0_ap_idle [get_bd_pins dram_read_0/ap_idle] [get_bd_pins ila_1/probe1]
  connect_bd_net -net dram_read_0_ap_ready [get_bd_pins dram_read_0/ap_ready] [get_bd_pins ila_1/probe2]
  connect_bd_net -net dram_write_0_ap_done [get_bd_pins dram_write_0/ap_done] [get_bd_pins ila_1/probe3]
  connect_bd_net -net dram_write_0_ap_idle [get_bd_pins dram_write_0/ap_idle] [get_bd_pins ila_1/probe4]
  connect_bd_net -net dram_write_0_ap_ready [get_bd_pins dram_write_0/ap_ready] [get_bd_pins ila_1/probe5]
  connect_bd_net -net m_axis_aclk_0_1 [get_bd_ports m_axis_aclk_0] [get_bd_pins axis_data_fifo_1/m_axis_aclk]
  connect_bd_net -net m_axis_aresetn_0_1 [get_bd_ports m_axis_aresetn_0] [get_bd_pins axis_data_fifo_1/m_axis_aresetn]
  connect_bd_net -net mig_166MHZ_1 [get_bd_ports mig_166MHZ] [get_bd_pins mig_7series_0/sys_clk_i]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK] [get_bd_pins axi_interconnect_0/S01_ACLK] [get_bd_pins axi_interconnect_0/S02_ACLK] [get_bd_pins axis_data_fifo_0/m_axis_aclk] [get_bd_pins axis_data_fifo_1/s_axis_aclk] [get_bd_pins dram_read_0/ap_clk] [get_bd_pins dram_write_0/ap_clk] [get_bd_pins ila_0/clk] [get_bd_pins ila_1/clk] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net mig_ref_200MHZ_1 [get_bd_ports mig_ref_200MHZ] [get_bd_pins mig_7series_0/clk_ref_i]
  connect_bd_net -net s_axis_aclk_0_1 [get_bd_ports s_axis_aclk_0] [get_bd_pins axis_data_fifo_0/s_axis_aclk]
  connect_bd_net -net s_axis_aresetn_0_1 [get_bd_ports s_axis_aresetn_0] [get_bd_pins axis_data_fifo_0/s_axis_aresetn]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins dram_read_0/ap_start] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net vio_0_probe_out1 [get_bd_pins dram_read_0/ap_rst_n] [get_bd_pins vio_0/probe_out1]
  connect_bd_net -net vio_0_probe_out2 [get_bd_pins dram_write_0/ap_start] [get_bd_pins vio_0/probe_out2]
  connect_bd_net -net vio_0_probe_out3 [get_bd_pins dram_write_0/ap_rst_n] [get_bd_pins vio_0/probe_out3]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins dram_read_0/dram] [get_bd_pins dram_write_0/dram] [get_bd_pins xlconstant_0/dout]

  # Create address segments
  create_bd_addr_seg -range 0x10000000 -offset 0x00000000 [get_bd_addr_spaces dram_read_0/Data_m_axi_gmem] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x10000000 -offset 0x00000000 [get_bd_addr_spaces dram_write_0/Data_m_axi_gmem] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr
  create_bd_addr_seg -range 0x10000000 -offset 0x00000000 [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs mig_7series_0/memmap/memaddr] SEG_mig_7series_0_memaddr


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


