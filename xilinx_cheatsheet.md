# Useful Commands

## JTAG-to-AXI

```
Write
create_hw_axi_txn wr_txn [get_hw_axis hw_axi_1] -address 00000000 -data {11111111_22222222_33333333_44444444_55555555_66666666_77777777_88888888} -len 8 -size 32 -type write
run_hw_axi wr_txn
```

```
Read
create_hw_axi_txn rd_txn [get_hw_axis hw_axi_1] -address 00000000 -len 8 -size 32 -type read
run_hw_axi rd_txn
```

Reference: `xilinx_arty_a7/jtag_debug/README.md`
