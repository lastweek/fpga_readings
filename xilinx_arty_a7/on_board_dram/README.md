# Use On-board DRAM

A great way to start is to look at MIG's example design, it can tell you how to use various input and output signals.

Several simple working diagrams are attached. Be careful when you are designing:
- Make sure clock and reset are connected properly
- Make sure you modified the `Address Editor`. Otherwise it won't work.
- Make sure if have `reset_n` given to HLS IP at the beginning. Otherwise, it won't start work even though you always have 1.

Learn how to use testbench to verify the HLS IP is working. Without it, I won't be able to
catch the above `reset_n` issue. I spent almost a day to figure out why HLS IP isn't working.
It turns out we need to feed a reset at the very beginning.

Also, learn JTAG, VIO, and ILA beforehand (Check out `../jtag_debug/`). I found them very useful in debugging, i.e., post-synthesis.

## HLS

The hls/ folder contains the C++ code used to access DRAM. The generated IP will be integrated with MC and other stuff.
Code will be overwritten overtime. I add the code snippt below. Check out each use case.

## Configure MIG

Open Block Design -> Find DDR control on the Board section.
Doing so can avoid writing all the LOC constrains for DDR3 pins.

About MIG
- Two clock inputs: the system clock (`sys_clk_i`) and the reference clock (`clk_ref_i`).
- One clock output: `ui_clk`, used by application logic.

## Examples

### Two ports, one AXI channel

Check out diagram in `2_ports_1_axi.pdf`.

In this case, there are two pointers we want to use. By default, Vivado only creates one AXI bundle
for us, thus one channel. Read/write from two ports will serialize.

```c
void top_func(int *ptr_a, int *ptr_b, int *flag)
{
#pragma HLS PIPELINE
#pragma HLS INTERFACE port=return

#pragma HLS INTERFACE m_axi depth=1 port=ptr_a offset=direct
#pragma HLS INTERFACE m_axi depth=1 port=ptr_b offset=direct
#pragma HLS INTERFACE ap_none port=flag

	static int nr = 0;
	if (nr == 0) {
		*ptr_a = 0x88;
		*ptr_b = 0x99;

		*flag = 1;
		nr++;
	}
}
```

## Two ports, two AXI channels

Check out diagram in `2_ports_2_axi.pdf`

Compared with previous code, here we added `bundle` parameter to pragma.

```c
void top_func(int *ptr_a, int *ptr_b, int *flag)
{
#pragma HLS PIPELINE
#pragma HLS INTERFACE port=return

#pragma HLS INTERFACE m_axi depth=1 port=ptr_a offset=direct bundle="axi_a"
#pragma HLS INTERFACE m_axi depth=1 port=ptr_b offset=direct bundle="axi_b"
#pragma HLS INTERFACE ap_none port=flag

	static int nr = 0;
	if (nr == 0) {
		*ptr_a = 0x88;
		*ptr_b = 0x99;

		*flag = 1;
		nr++;
	}
}
```

## References
- [MICROZED CHRONICLES – VIVADO HLS & DDR ACCESS](http://adiuvoengineering.com/microzed-chronicles-vivado-hls-ddr-access/)
	-  A great one.
