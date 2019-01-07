# About Xilinx

- [Design Hubs](https://www.xilinx.com/support/documentation-navigation/design-hubs.html)
	- [__UG888__: Vivado Design Suite Tutorial: Design Flows Overview](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_3/ug888-vivado-design-flows-overview-tutorial.pdf)
	- [__UG949__: UltraFast Design Methodology Guide for the Vivado Design Suite](https://www.xilinx.com/content/dam/xilinx/support/documentation/sw_manuals/xilinx2018_3/ug949-vivado-design-methodology.pdf)
		- A very good entry level introduction to overall design flow considerations.
	- [__UG1231__: UltraFast Design Methodology Quick Reference Guide](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_3/ug1231-ultrafast-design-methodology-quick-reference.pdf)
	- [__UG1197__: UltraFast High-Level Productivity Design Methodology Guide]()
		- Concepts about FPGA shell, HLS, and IP integration. Very useful.
		- The two key principles to keep in mind when reviewing the code for implementation in an FPGA are:
			- An FPGA is a fixed size resource. The functionality must be fixed at compile time. Objects in hardware cannot be dynamically created and destroyed.
			- All communication with the FPGA must be performed through the input and output ports. There is no underlying Operating System (OS) or OS resources in an FPGA.

- BRAM
	- TODO

- Constraints: check xilinx_constraints.md

- Buffer (Q: why IOBUF? why clock buffer? why there is an awkward buffer in the middle?)
	- [URL: Digital Buffer Tutorial](https://www.electronics-tutorials.ws/logic/logic_9.html)
	- [URL: Buffer Gate](https://en.wikichip.org/wiki/buffer_gate)
	- [Wiki: Digital buffer](https://en.wikipedia.org/wiki/Digital_buffer)
	- [Wiki: Buffer amplifier](https://en.wikipedia.org/wiki/Buffer_amplifier)
	- [StackExchange: What is the purpose of a buffer gate?](https://electronics.stackexchange.com/questions/236666/what-is-the-purpose-of-a-buffer-gate)

- IO
	- HP: high-performance IO banks
	- HR: high-range IO banks
		- The HP I/O banks are designed to meet the performance requirements of high-speed memory and other chip-to-chip interfaces with voltages up to 1.8V. The HR I/O banks are designed to support a wider range of I/O standards with voltages up to 3.3V.
	- IDELAY allows incoming signals to be delayed on an individual input pin basis
	- IO Buffers
        	- `IBUF`: is automatically inserted (inferred) by the synthesis tool to any signal directly connected to a top-level input or in-out port of the design. (UG768: Xilinx 7 Series FPGA Libraries Guide for HDL Designs)
        	- `IBUFDS`: is NOT inserted (inferred) by the synthesis tool, you have to manually write code to instantiation. In IBUFDS, a design level interface signal is represented as two distinct ports (I and IB), one deemed the "master" and the other the "slave." The master and the slave are opposite phases of the same logical signal. (Leant this from tri-mode reference code)
	- Each top-level port is within the scope of SelectIO. We can use constraints to define what IO standard, what package pin, what drive length etc our top-level ports want. The whole thing is described as SelectIO by Xilinx. We should check each series's SelectIO guide to know what IO standards our FPGA support. SelectIO will also automatically add IO buffers into our design, such as IBUF, OBUF.

- Clock
	- [Slides: Clocks Basics in 10 Minutes or Less](http://www.ti.com/ww/mx/multimedia/webcasts/TI_webinar_25-06-2010.pdf)
	- [Slides: Clock Tree 101](http://www.mouser.com/pdfdocs/clock-tree-101-timing-basics.pdf)
	- [Slides: FPGA IO Resources](https://wiki.dcae.pub.ro/images/b/bd/FPGA_SERDES.pdf)
	- [URL: Differential versus Single-ended Clocks](https://www.silabs.com/community/timing/knowledge-base.entry.html/2012/12/17/differential_versus-wMdt)
	- [Wiki: Frequency synthesizer](https://en.wikipedia.org/wiki/Frequency_synthesizer)
		- A frequency synthesizer is an electronic circuit that generates a range of frequencies from a single reference frequency.
	- [URL: NI PXIe-796xR Base Clocks](http://zone.ni.com/reference/en-XX/help/372614J-01/target5devicehelp/pxie_base_clocks/)
		- shows how Oscillator is connected to FPGA, and how PLL
		generates multiple clocks.
	- [URL: Clock Signal Management: Clock Resources of FPGAs](https://www.allaboutcircuits.com/technical-articles/clock-management-clock-resources-of-fpgas/)
		- Nice into about PLL and DLL
		- Global clocks, regional clocks
		- [H Tree](https://en.wikipedia.org/wiki/H_tree)
	- [URL: FPGA Clock Schemes](https://www.embedded.com/design/configurable-systems/4024526/FPGA-Clock-Schemes)
	- [URL: Programmable Logic Design FPGA clocking schemes](http://www.ue.pwr.wroc.pl/pld/pld_10.pdf)
	- [Xilinx Clock Generator IP (v4.03a)](https://www.xilinx.com/support/documentation/ip_documentation/clock_generator/v4_03_a/clock_generator.pdf)
	- Clock Wizard IP
		- I suspect this is just a wrapper around CMT (MMCM and PLL).
	- UG903 Ch.3 Defining Clocks
		- Primary clocks
		- Virtual clocks
		- Generated clocks
		- .. and many other stuff
	- UG472 7 Series FPGAs Clocking Resources
		- Clocking architecture about series 7. Must read.
		- Ch.3: In 7 series FPGAs, the clock management tile (CMT) includes a mixed-mode clock manager (MMCM) and a phase-locked loop (PLL). The PLL contains a subset of the MMCM functions.
	- `MMCME2_BASE`, `MMCME2_ADV`, `PLLE2_BASE`, `PLLE2_ADV`: Check UG472 ch.3 and UG768 for details. These are used to manipulate clocks, and I believe this is the building block of clock wizard. I encountered one MMCME2_ADV in tri-mode mac reference design.

- HLS
	- The arXiv book
	- [Vivado Design Hub - High-Level Synthesis (C based)](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0012-vivado-high-level-synthesis-hub.html)
	- UG1197: UltraFast High-Level Productivity Design Methodology Guide
	- UG871: Vivado Design Suite Tutorial High-Level Synthesis
		- Lab: great way to start coding HLS
	- UG902: Vivado Design Suite User Guide High-Level Synthesis
		- [Properly Defining Interfaces in High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_3/ug902-vivado-high-level-synthesis.pdf#nameddest=InterfaceSynthesis)
	- XAPP1209: Designing Protocol Processing Systems with Vivado High-Level Synthesis
	- XAPP1273: Reed-Solomon Erasure Codec Design Using Vivado High-Level Synthesis Application Note
  	- `Data I/O protocols`: those are directives that control how the input/output signals interact with outside users.
    	- ap_hs
    	- ap_vld
		- ap_ack
	- `Block-level I/O protocols`: this allows the RTL design to be controlled by additional ports independently of the data I/O ports.
    	- ap_ctrl_hs
    	- ap_ctrl_none
    	- ap_ctrl_chained
    	- s_axilite
    	- which one should I use?

- [What's `Implementation` in Xilinx?](https://www.xilinx.com/support/documentation/sw_manuals/xilinx11/ise_c_implement_fpga_design.htm)
	- Xilinx Implementation happens after Synthesis, so it must include several important steps
		- Logic Optimization (which is `Translate` here). This step will take `constraints` into account.
		- Technology Mapping (which is `Map` here). This step map to FPGA logic islands, IOB, BRAM, etc.
		- Place and Route
    	- Overall, we don't need to fully understand what each step is doing, just need to get a basic sense.

- [Using Tcl Scripting v2018](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug894-vivado-tcl-scripting.pdf)

- What is `.xdc`?
	- [Vivado Design Hub - Applying Design Constraints](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0004-vivado-applying-design-constraints-hub.html)
	- [Using Constraints v2017](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug903-vivado-using-constraints.pdf)
	- By default, all XDC files and Tcl scripts added to a constraint set are used for both synthesis and implementation. Set the `USED_IN_SYNTHESIS` and `USED_IN_IMPLEMENTATION` properties on the XDC file or the Tcl script to change this behavior.
	- Timing Constrains
	- Placement Constrains
	- Synthesis Constrains

- [Floorplanning](https://en.wikipedia.org/wiki/Floorplan_(microelectronics))
	- allows to place blocks of logic in an FPGA device, to reduce route delays for certain logics.
	- [Floorplanning Methodology Guide](https://www.xilinx.com/support/documentation/sw_manuals/xilinx14_5/Floorplanning_Methodology_Guide.pdf)
	- [Design Rule Checking (DRC) Messages](https://www.xilinx.com/support/documentation/sw_manuals/xilinx10/isehelp/pfp_r_drc_messages.htm)


- [I/O and Clock Planning](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_3/ug899-vivado-io-clock-planning.pdf)
	- [Vivado Design Hub - I/O and Clock Planning](https://www.xilinx.com/support/documentation-navigation/design-hubs/dh0007-vivado-pin-planning-hub.html)

- [External port](https://www.xilinx.com/support/documentation/sw_manuals/xilinx11/platform_studio/ps_p_hdw_making_external_port_connects.htm)

- `How to connect IPs?`
	- I came to this question when I tried to build blocks in HLS and Verilog, and was thinking about how should I connect those blocks? There are so many clk, reset, valid signal combinations, is there a standard for this communication protocol? Indeed, there are. This thread collects information about this topic.
	- [Some basic knowledge](http://que.no/index.php/2016/03/13/principles-of-fpga-ip-interconnect/)
	- [Introduction to AXI Protocol: Understanding the AXI interface](https://community.arm.com/soc/b/blog/posts/introduction-to-axi-protocol-understanding-the-axi-interface)
	- [Xilinx AXI4, AXI-Lite, AXI-Stream Homepage](https://www.xilinx.com/products/intellectual-property/axi.html#details)
	- AMBA® 4 AXI4-Stream Protocol
		- The AXI4-Stream protocol requires that all transfers remain __ordered__. It does not permit the reordering of transfers.
		- __AXI4-Stream removes the requirement for an address phase altogether and allows unlimited data burst size. AXI4-Stream interfaces and transfers do not have address phases and are therefore not considered to be memory-mapped.__
	- Summary:
		- AXI4 has many channels, each channel has its own TVALID,
		TREADY and more. AXI-Lite is a subset of AXI4. AXI-stream is more
		simpilifed, in the sense that it actually only has one channel, which
		means only one TVALID, TREADY signals. AXI-stream is unidirectional
		between master and slave.
		- Like the tri-mode MAC, it is using AXI-stream for both TX and
		RX path. That means, if I want to build a new IP block to talk
		with MAC, my new IP only needs to conform with AXI-stream
		protocol.
	- Just a side, MII is the interconnect protocol specifically between MAC and PHY.
	- `UG1037: AXI Reference`.
	- `PG035: AXI4-Stream Interconnect`.
	- `PG085 AXI4-Stream Infrastructure IP Suite`.

- IP
	- [Ethernet](https://www.xilinx.com/products/technology/ethernet.html)
		- [Tri-Mode Ethernet MAC](https://www.xilinx.com/products/intellectual-property/temac.html)
		- [AXI 1G/2.5G Ethernet](https://www.xilinx.com/products/intellectual-property/axi_ethernet.html#documentation)
		- [AXI Ethernet LITE](https://www.xilinx.com/products/intellectual-property/axi_ethernetlite.html)
		- [10G MAC](https://www.xilinx.com/products/intellectual-property/do-di-10gemac.html#documentation)
	- [Clock Wizard](https://www.xilinx.com/products/intellectual-property/clocking_wizard.html#documentation)
