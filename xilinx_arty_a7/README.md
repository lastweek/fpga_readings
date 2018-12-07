# About Arty A7 Digilent Board

- Arty A7-100T
	- FPGA part: XC7A100TCSG324-1
	- [Pin map](https://www.xilinx.com/support/packagefiles/a7packages/xc7a100tcsg324pkg.txt)

- [PHY TI DP83848J](http://www.ti.com/product/DP83848J)

- [Digilent Resource Center](https://reference.digilentinc.com/reference/programmable-logic/arty-a7/start)
- [Ethernet on Arty-A7 Board](http://www.fpga-cores.com/tutorials/ethernet-on-arty-a7-board/)
	- 12/07/18
		- we have a 10/100 PHY, clearly, we can only use AXI Ethernet Lite.
		- I certainly need to figure out a way to PRINT, which is essential for human life, I'd say. JTAG serial?
	- 12/06/18: I'm trying to add a MAC and connect it with TI PHY. After that, I will write some logic to loopback any packets it get. Hopefully I could write that in HLS.
