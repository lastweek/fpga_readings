vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_protocol_checker_v2_0_3
vlib modelsim_lib/msim/axi_vip_v1_1_3
vlib modelsim_lib/msim/processing_system7_vip_v1_0_5

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 modelsim_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 modelsim_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 modelsim_lib/msim/processing_system7_vip_v1_0_5

vlog -work xilinx_vip -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"/opt/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system_ps/sim/system_ps.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../playground.srcs/sources_1/bd/system_ps/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../playground.srcs/sources_1/bd/system_ps/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -incr -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/ec67/hdl" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/5bb9/hdl/verilog" "+incdir+../../../../playground.srcs/sources_1/bd/system_ps/ipshared/70fd/hdl" "+incdir+/opt/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system_ps/ip/system_ps_processing_system7_0_0/sim/system_ps_processing_system7_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

