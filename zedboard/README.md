# ZedBoard

This directory has resources related to ZedBoard.

## The FPGA Chip

- [Zynq-7000 SoC Data Sheet: Overview](https://www.xilinx.com/support/documentation/data_sheets/ds190-Zynq-7000-Overview.pdf)
- [Xilinx Zynq®-7000 Technical Reference Manual](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf)
	- Dual-core ARM Cortex-A9 MPCore™ with CoreSight™
	- 667 MHz (-1); 766 MHz (-2); 866 MHz (-3)
	- Artix-7 FPGA
		- LUT:  46,200
		- Flip-Flops:  106,400
		- BRAM: 4.9 Mb

## About Ethernet

Ethernet PHY and Ethernet MAC are seperated.
This Zedboard has a Marvell Ethernet PHY. The SoC has a Ethernet MAC.

- IEEE Standard 802.3. Check the layer architecture figure
- [SerDes](https://en.wikipedia.org/wiki/SerDes)
	- [Multi-gigabit transceiver](https://en.wikipedia.org/wiki/Multi-gigabit_transceiver)
- [Media-independent interface (MII)](https://en.wikipedia.org/wiki/Media-independent_interface)
	- The MII is standardized by IEEE 802.3u and __connects different types of PHYs to MACs__. Being media independent means that different types of PHY devices for connecting to different media (i.e. twisted pair, fiber optic, etc.) can be used without redesigning or replacing the MAC hardware. Thus any MAC may be used with any PHY, independent of the network signal transmission media.
	- For example, RMII, GMII, RGMII, SGMII.
	- I came across th RGMII and SGMII while reading [Xilinx Zynq®-7000 Technical Reference Manual, page 34](https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf): 1) RGMII interface using MIO pins and external PHY, 2) SGMII interface using PL GTP or GTX transceivers

- [Low Latency 40- and 100-Gbps Ethernet MAC and PHY MegaCore Function User Guide](https://www.intel.com/content/dam/www/programmable/us/en/pdfs/literature/ug/ug_ll_40_100gbe.pdf)
    - Figure 3.1: In the transmit direction, the MAC accepts client frames, and inserts inter-packet gap (IPG), preamble,
start of frame delimiter (SFD), padding, and CRC bits before passing them to the PHY. The PHY encodes
the MAC frame as required for reliable transmission over the media to the remote end.
    - Figure 3.1: In the receive direction, the PHY passes frames to the MAC. The MAC accepts frames from the PHY,
performs checks, updates statistics counters, strips out the CRC, preamble, and SFD, and passes the rest of
the frame to the client. In RX preamble pass-through mode, the MAC passes on the preamble and SFD to
the client instead of stripping them out. In RX CRC pass-through mode (bit 1 of the CRC_CONFIG register
has the value of 1), the MAC passes on the CRC bytes to the client and asserts the EOP signal in the same
clock cycle with the nal CRC byte.
    - !!! The TX MAC module receives the client payload data with the destination and source addresses and then
adds, appends, or updates various header elds in accordance with the conguration specied. The MAC
does not modify the destination address, the source address, or the payload received from the client.
However, the TX MAC module adds a preamble (if the IP core is not congured to receive the preamble
from user logic), pads the payload of frames greater than eight bytes to satisfy the minimum Ethernet
frame payload of 46 bytes, and if you set Enable TX CRC insertion or turn on flow control, calculates the
CRC over the entire MAC frame.