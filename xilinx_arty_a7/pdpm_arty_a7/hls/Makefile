vivado_hls=/opt/Xilinx/Vivado/2018.2/bin/vivado_hls
project_path=generated_project

all:
	$(vivado_hls) -f run_hls.tcl

g:
	$(vivado_hls) -p $(project_path)

help:
	@echo "Help"
	@echo "  # make       <- Compile projects"
	@echo "  # make g     <- Open GUI"

