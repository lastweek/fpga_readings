# PDPM Work-In-Progress

All vivado auto-generated stuff will be inside `generated/` folder. Other folders such as `rtl/`, `hls/` store the real source code. Use Git to track useful source code and vivado rebuild TCL commands. DO not commit unnecessary stuff.

TODO:
- still need to figure out how to git track block design
- and how to track IPs properly

## Run

Vivado: Navigate to `scipts/`, type `make`. A new project will be created at `../generated`.
HLS: go to `hls/`, type `make` to setup projects. Type `make g` to bring up GUI.

If bash complains vivado cannot be found, change the absolute path inside Makefile.

## Generate Vivado TCL

Inside vivado, use `write_protect_tcl`.
Remember to add `-no_copy_sources`, this means the new project will NOT make
another copy of the sources, instead it will reuse source files in top directory.

```
write_project_tcl -no_copy_sources -force -target_proj_dir ../generated/pdpm ../scripts/test.tcl
```

## Modules

`top.v` is the top level RTL connects everything. It conneccts the Network and the Memory modules.
The Network module refers to the modified Tri-Mode MAC reference design.
The Memory modules refers to our HLS and memory controller.
