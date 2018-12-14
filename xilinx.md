# Xilinx Resources

- [What's `implementation` in Xilinx?](https://www.xilinx.com/support/documentation/sw_manuals/xilinx11/ise_c_implement_fpga_design.htm)
    - Logic Optimization
    - Technology Mapping
    - Place and Route
- [Using Tcl Scripting v2018](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug894-vivado-tcl-scripting.pdf)
- [What is `.xdc`?](https://github.com/Digilent/digilent-xdc/)
	- [Using Constraints v2017](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_4/ug903-vivado-using-constraints.pdf)


- [I/O and Clock Planning](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_3/ug899-vivado-io-clock-planning.pdf)

- IP
	- [Ethernet](https://www.xilinx.com/products/technology/ethernet.html)
		- [Tri-Mode Ethernet MAC](https://www.xilinx.com/products/intellectual-property/temac.html)
		- [AXI 1G/2.5G Ethernet](https://www.xilinx.com/products/intellectual-property/axi_ethernet.html#documentation)
		- [AXI Ethernet LITE](https://www.xilinx.com/products/intellectual-property/axi_ethernetlite.html)
		- [10G MAC](https://www.xilinx.com/products/intellectual-property/do-di-10gemac.html#documentation)
	- [Clock Wizard](https://www.xilinx.com/products/intellectual-property/clocking_wizard.html#documentation)

- HLS
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