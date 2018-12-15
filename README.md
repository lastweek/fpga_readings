# FPGA Random Notes

System community has never been so excited about FPGA. And you can tell FPGA is
the next big thing. I was not a fan of HDL (Hard and Difficult Language), mainly
because there wasn't project interesting enough. But things have changed.
I have envisioned a large FPGA infrastructure platform for datacenter. And I alway
like hardcore coding. So it's time to get started.
This repo is really just a collection of stuff along my way learning FPGA.
Contributions in whatever form are welcomed.


## Get Started

Basic
- [Configure FPGA](https://www.fpga4fun.com/FPGAinfo7.html)
    - After FPGA boot, we need to transfer the bitstream into FPGA, which is a process called "configure FPGA". There are several ways to do so. 1) JTAG, 2) microcontroller + NVRAM. The JTAG way is useful for debugging. The second way is good for production usage, because the FPGA can be configured automatically after boot.
- Physical design flow (Synthesis to PAR)
    - Based on the `netlist`, the physical design process begins. In the first phase the gates of the
netlist are placed on the available two-dimensional space. Initially, structures that should be placed
close together are identified—a process known as `floorplanning`. Then, based on the `floorplan`,
the `placer tool` assigns a physical location to each gate of the netlist. After initial placement, the
clock tree is inserted and placement decisions are re-evaluated. Multiple iterations are typically
necessary to find a satisfying placement for all gates.
    - From the placed-gates netlist and the geometric information about the cells provided by
the technology library, the `router tool` derives the physical paths of the nets that connect gates,
as well as the power supply lines. Again, multiple iterations are typically necessary, and gates
might be relocated in the routing phase. The fully routed physical netlist is the final result of
the entire design flow. It consists of the gates of a circuit, their exact placement, and “drawn”
interconnecting wires. In essence, the circuit design is now ready for fabrication. What follows
is typically a number of physical design verification steps carried out in software before a first
prototype of the circuit is produced by an IC vendor.

Verilog
- [The Digital World](http://web.mit.edu/6.111/volume2/www/f2018/handouts/TheDigitalWorld.pdf)
- [Verilog Introduction](http://www.lsi.upc.edu/~jordicf/Teaching/secretsofhardware/VerilogIntroduction_Nyasulu.pdf)
- [Verilog HDL Quick Reference Card](http://www.ece.uvic.ca/~fayez/courses/ceng465/vlogref.pdf)

HLS
- [A Survey and Evaluation of FPGA High-Level Synthesis Tools](https://janders.eecg.utoronto.ca/pdfs/tcad_hls.pdf)
- [Xilinx Introduction to FPGA Design with Vivado High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/ug998-vivado-intro-fpga-design-hls.pdf)
- [Xilinx Vivado Design Suite User Guide High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug902-vivado-high-level-synthesis.pdf)
- [Xilinx SDAccel Development Environment Help for 2018.2 XDF](https://www.xilinx.com/html_docs/xilinx2018_2_xdf/sdaccel_doc/index.html)

Courses
- [MIT 6.111 Introductory Digital Systems Laboratory](http://web.mit.edu/6.111/volume2/www/f2018/index.html)
- [MIT 6.375 Complex Digital Systems](http://csg.csail.mit.edu/6.375/6_375_2016_www/index.html)
- [UCB EECS 151/251A](http://inst.eecs.berkeley.edu/~eecs151/sp18/)

Books
- [Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)

## Papers about FPGA

General
- FPGA and CPLD architectures: a tutorial, 1996
- Reconfigurable computing: a survey of systems and software, 2002
- FPGA Architecture: Survey and Challenges, 2007
- RAMP: Research Accelerator For Multiple Processors, 2007

Logical Optimization and Technology Mapping
- FlowMap: An Optimal Technology Mapping Algorithm for Delay Optimization in Lookup-Table Based FPGA Designs, 1994
- Combinational Logic Synthesis for LUT Based Field Programmable Gate Arrays, 1996
- DAOmap: A Depth-optimal Area Optimization Mapping Algorithm for FPGA Designs, 2004

Place and Route
- VPR: A New Packing, Placement and Routing Tool for FPGA Research, 1997
- VTR 7.0: Next Generation Architecture and CAD System for FPGAs, 2014

RTL2FPGA
- A Case for FAME: FPGA Architecture Model Execution, 2010
- Strober: Fast and Accurate Sample-Based Energy Simulation for Arbitrary RTL, 2016
- Evaluation of RISC-V RTL with FPGA-Accelerated Simulation, 2017
- FireSim: FPGA-Accelerated Cycle-Exact Scale-Out System Simulation in the Public Cloud, 2018
