-makelib xcelium_lib/xilinx_vip -sv \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_protocol_checker_v2_0_3 -sv \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_3 -sv \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_5 -sv \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_19 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_12 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_2 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_11 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_quad_spi_v3_2_16 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/92ac/hdl/axi_quad_spi_v3_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_axi_quad_spi_0_0/sim/system_axi_quad_spi_0_0.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_12 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_17 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_16 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_18 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_17 \
  "../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
  "../../../bd/system/sim/system.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

