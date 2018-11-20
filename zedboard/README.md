# ZedBoard

This directory has resources related to ZedBoard.

## The FPGA Chip

- [Zynq-7000 SoC Data Sheet: Overview](https://www.xilinx.com/support/documentation/data_sheets/ds190-Zynq-7000-Overview.pdf)
- [Zynq-7000 SoC Packaging and Pinout](https://www.xilinx.com/support/documentation/user_guides/ug865-Zynq-7000-Pkg-Pinout.pdf)
	- Explains the name of each pin
	- Useful when figuring out IO
- [Xilinx Zynq®-7000 Technical Reference Manual](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf)
	- Dual-core ARM Cortex-A9 MPCore™ with CoreSight™
	- 667 MHz (-1); 766 MHz (-2); 866 MHz (-3)
	- Artix-7 FPGA
		- LUT:  46,200
		- Flip-Flops:  106,400
		- BRAM: 4.9 Mb
	- Figure 2.1 shows the signals between PS and PL: AXI, EMIO, JTAG, and misc signals
	- Sec 2.5 PS-PL MIO-EMIO signals and interfaces.
	- Figure 2.3 shows all possible signal routing through MIO and EMIO
	- Figure 16-2 Ethernet System Viewpoint. Damn. Thos two Ethernet MAC IP are behind MIO and EMIO. For eth0, zedboard already has `Marvell PHY -> MIO -> ETH`. But for eth1, `(empty) -> PL -> EMIO -> ETH`. Basically, for eth1, we need a PHY. I saw we can use FMC/LPC. There is something called ethernetfmc. Anyhow, this isn't the ideal case for us.


## About Ethernet

Ethernet PHY and Ethernet MAC are separated.
This ZedBoard has a Marvell Ethernet PHY. The SoC has a Ethernet MAC.

- IEEE Standard 802.3. Check the layer architecture figure. Mainly MAC and PHY.
- [SerDes](https://en.wikipedia.org/wiki/SerDes)
	- [Multi-gigabit transceiver](https://en.wikipedia.org/wiki/Multi-gigabit_transceiver)
- [Media-independent interface (MII)](https://en.wikipedia.org/wiki/Media-independent_interface)
	- The MII is standardized by IEEE 802.3u and __connects different types of PHYs to MACs__. Being media independent means that different types of PHY devices for connecting to different media (i.e. twisted pair, fiber optic, etc.) can be used without redesigning or replacing the MAC hardware. Thus any MAC may be used with any PHY, independent of the network signal transmission media.
	- For example, RMII, GMII, RGMII, SGMII.
	- I came across th RGMII and SGMII while reading [Xilinx Zynq®-7000 Technical Reference Manual, page 34](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf): 1) RGMII interface using MIO pins and external PHY, 2) SGMII interface using PL GTP or GTX transceivers

- Intel Switch and Network Adapter
	- In a nutshell: 1) they both contain PHY and MAC layers. And they both have many additional layers above that, to support various features such as SR-IOV, RSS. 2) They are both well pipelined. They both have schedulers inside. If, they can be programmed (FPGA), we can do a lot in-network computation here.
	- [Intel® Ethernet Switch FM5000/FM6000](https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/ethernet-switch-fm5000-fm6000-datasheet.pdf)
		- sec 2.1.3: __switch internal memory for storing packets is only `7.5MB`!__
	- [Intel® Ethernet Switch FM10000](https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/ethernet-multi-host-controller-fm10000-family-datasheet.pdf)
		- The Ethernet Port Logic (EPL) are the actual Ethernet interfaces. The EPL contains the PCS and MAC layers to serialize or de-serialize data frames.
		- Sec 5 Ethernet Switch. The diagram shows the internal core part of the switch. You can see it is well organized, and pipelined. If those stuff are FPGA and can be programmed, damn, we can do a lot things here.
	- [Intel® Ethernet Controller X710/XXV710/XL710 Datasheet](https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/xl710-10-40-controller-datasheet.pdf?asset=8356)
		- This is a real ethernet network interface adaptor. Check figure 1-4. The most underlying part of the diagram is Ethernet MAC and NIC. Above that, there are many additional known features, such as RSS, SR-IOV. Interesting.
		- It has an `Internal switch` above MAC layer
		- Section 3.2 on Ethernet Connection. This subsection presents a lot MAC and PHY internals. It also includes a lot figures mapped to 802.3 spec (those evil layers between MAC and PHY).
		- `MAC` (sec 3.2.1): It describes the general CRC, padding etc features provided by all MAC IP.
		- `PHY` (sec 3.2.2): The X710/XXV710/XL710 provides up to four Ethernet MAC ports with integrated PHY interfaces to connect either directly to the medium (backplane or direct attached twin-axial copper cable assemblies) or to external PHYs. The X710/XXV710/XL710 Ethernet physical interfaces are multi-rate `Medium Attachment Unit Interfaces (MAUI)` that can be configured for operation at 40 Gb/s, 10 Gb/s or 1 Gb/s link speeds. The X710/XXV710/XL710 supports eight physical high speed `SerDes` lanes, each capable of operating at up to 10.3125 GBaud.
		- NVM (sec 3.4): Okay, Intel folks truly have planned this early on. Not too much info was revealed.

- [Intel Low Latency 40- and 100-Gbps Ethernet MAC and PHY MegaCore Function User Guide](https://www.intel.com/content/dam/www/programmable/us/en/pdfs/literature/ug/ug_ll_40_100gbe.pdf)
	- This is standalone PHY and MAC IP sold by Intel to FPGA developers.
	- Figure 3.1: In the transmit direction, the MAC accepts client frames, and inserts inter-packet gap (IPG), preamble, start of frame delimiter (SFD), padding, and CRC bits before passing them to the PHY. The PHY encodes the MAC frame as required for reliable transmission over the media to the remote end.
	- !!! The TX MAC module receives the client payload data with the destination and source addresses and then adds, appends, or updates various header fields in accordance with the configuration specified. The MAC does not modify the destination address, the source address, or the payload received from the client. However, the TX MAC module adds a preamble (if the IP core is not configured to receive the preamble from user logic), pads the payload of frames greater than eight bytes to satisfy the minimum Ethernet frame payload of 46 bytes, and if you set Enable TX CRC insertion or turn on flow control, calculates the CRC over the entire MAC frame.
