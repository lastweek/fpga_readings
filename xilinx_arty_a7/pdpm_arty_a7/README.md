# PDPM

## Generate TCL

Inside vivado, use `write_protect_tcl`.
Remember to add `-no_copy_sources`, this means the new project will NOT make
another copy of the sources, instead it will reuse source files in top directory.

```
write_project_tcl -no_copy_sources -force -target_proj_dir ../generated/pdpm ../scripts/test.tcl
```

## TODO

The current way of tracking IP is raw: `./ip/*`. The generated products files will be inside `ip/`.
Those files should be within each project's directory.
