vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_3
vlib activehdl/axi_vip_v1_1_3
vlib activehdl/processing_system7_vip_v1_0_5
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_19
vlib activehdl/dist_mem_gen_v8_0_12
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/lib_fifo_v1_0_11
vlib activehdl/axi_quad_spi_v3_2_16
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_17
vlib activehdl/axi_data_fifo_v2_1_16
vlib activehdl/axi_crossbar_v2_1_18
vlib activehdl/axi_protocol_converter_v2_1_17

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 activehdl/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 activehdl/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 activehdl/processing_system7_vip_v1_0_5
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 activehdl/axi_gpio_v2_0_19
vmap dist_mem_gen_v8_0_12 activehdl/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 activehdl/lib_fifo_v1_0_11
vmap axi_quad_spi_v3_2_16 activehdl/axi_quad_spi_v3_2_16
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 activehdl/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 activehdl/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 activehdl/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 activehdl/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_12  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_16 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/92ac/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_quad_spi_0_0/sim/system_axi_quad_spi_0_0.vhd" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../PS_PL.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

