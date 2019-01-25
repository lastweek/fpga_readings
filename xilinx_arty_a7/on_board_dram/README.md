# Use On-board DRAM

A great way to start is to look at MIG's example design, it can tell you how to use various input and output signals.

A simple working diagram is attached. Be careful:
- Make sure clock and reset are connected properly
- Make sure you modified the `Address Editor`. Otherwise it won't work.
- Make sure if have `reset_n` given to HLS IP at the beginning. Otherwise, it won't start work even though you always have 1.

Learn how to use testbench to verify the HLS IP is working. Without it, I won't be able to
catch the above `reset_n` issue. I spent almost a day to figure out why HLS IP isn't working.
It turns out we need to feed a reset at the very beginning.

Also, learn JTAG, VIO, and ILA beforehand. I found them very useful in debugging, i.e., post-synthesis.

## HLS

The hls/ folder contains the C++ code used to access DRAM. The generated IP will be integrated with MC and other stuff.

## Vivado Configure MIG

Open Block Design -> Find DDR control on the Board section.

Info about MIG
- Two clock inputs: the system clock (`sys_clk_i`) and the reference clock (`clk_ref_i`).
- One clock output: `ui_clk`, used by application logic.

## Dark Web
- [MICROZED CHRONICLES – VIVADO HLS & DDR ACCESS](http://adiuvoengineering.com/microzed-chronicles-vivado-hls-ddr-access/)
	-  A great one.
