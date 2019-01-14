# Raw Ethernet Packet Generator

A very basic, raw, buggy ethernet packet generator.
This is the first program I wrote using Xilinx HLS.

Functional description:
the main function is `pkt_gen()`, which only has one output `axi stream`
interface. It will send out packets whose length range from
`[MIN_PKT_SIZE]` to `[MAX_PKT_SIZE]`. It will send `[NR_LOOPS]` rounds.$

The ethernet header is simply some random data except the LENTH field is updated
every loop to reflect the actual packet length.

This sample code demonstrates:
	- How to use hls::stream library
	- How PIPELINE can improve Iterative Interval (II)
		- The `LOOP_PACKET` loop has latency of 3 cycles in my platform
	- How to use array
		- Many C pointer arithmatic and casting simply DO NOT WORK.
