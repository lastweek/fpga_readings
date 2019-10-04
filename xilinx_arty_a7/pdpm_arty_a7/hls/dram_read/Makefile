# Change the absolute path to your own one.
vivado_hls=/opt/Xilinx/Vivado/2018.2/bin/vivado_hls

# DO NOT CHANGE THIS. This is coded in .gitignore.
project_path=generated_project

all:
	$(vivado_hls) -f run_hls.tcl

g:
	$(vivado_hls) -p $(project_path)

clean:
	rm -rf generated_project/

help:
	@echo "Help"
	@echo "  # make       <- Compile projects"
	@echo "  # make g     <- Open GUI"
