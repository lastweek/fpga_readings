# Use JTAG-to-AXI

Please read [PG174] JTAG to AXI document. This IP is used to debug FPGA board, via Vivado tcl console

- Create a project
- Create a new block diagram. Check the attached diagram
- Write bitstream into board
- Try run related commands

The commands

Write to DRAM
```
create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -address 00000000 -data {11111111_22222222_33333333_44444444_55555555_66666666_77777777_88888888} -len 8 -size 32 -type write
run_hw_axi wr_txn
```

Read from DRAM
```
create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -address 00000000 -len 8 -size 32 -type read
run_hw_axi rd_txn
```

More exambles on PG174 Chapter 5.
