# FPGA Random Notes

System community has never been so excited about FPGA. And you can tell FPGA is
the next big thing. I was not a fan of HDL (Hard and Difficult Language), mainly
because there wasn't project interesting enough. But things have changed.
I have envisioned a large FPGA infrastructure platform for datacenter. And I always
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

FPGA Intro
- [Slides: Intro FPGA CSE467 UW](https://courses.cs.washington.edu/courses/cse467/03wi/FPGA.pdf)
- [URL: All about FPGAs, EE Times](https://www.eetimes.com/document.asp?doc_id=1274496)
- [URL: I/O Pads](http://www2.eng.cam.ac.uk/~dmh/4b7/resource/section14.htm)
  	- BGA Wiki: In a BGA the pins are replaced by __pads__ on the bottom of the package. If you check PGA package, you will know the difference between pin and pad, and immediately get why it is called pad. And you will also know what's the pad in the IO Block diagram.
- [URL: RapidWright FPGA Architecture Basics](http://www.rapidwright.io/docs/FPGA_Architecture.html)
- [URL: RapidWright Xilinx Architecture Terminology](http://www.rapidwright.io/docs/Xilinx_Architecture.html)

Digital Basics
- [Wiki: Differential signaling](https://en.wikipedia.org/wiki/Differential_signaling) and [Wiki: Single-ended signaling](https://en.wikipedia.org/wiki/Single-ended_signaling)
    - [Paper: Differential Signals The Differential Difference! Douglas Brooks](https://www.ultracad.com/articles/differentialsignals.pdf)
- Logic gate: buffer


Verilog
- [The Digital World](http://web.mit.edu/6.111/volume2/www/f2018/handouts/TheDigitalWorld.pdf)
- [Verilog Introduction](http://www.lsi.upc.edu/~jordicf/Teaching/secretsofhardware/VerilogIntroduction_Nyasulu.pdf)
- [Verilog HDL Quick Reference Card](http://www.ece.uvic.ca/~fayez/courses/ceng465/vlogref.pdf)
- [Xilinx UG901 Synthesis]

HLS
- [A Survey and Evaluation of FPGA High-Level Synthesis Tools](https://janders.eecg.utoronto.ca/pdfs/tcad_hls.pdf)
- [Xilinx Introduction to FPGA Design with Vivado High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/ug998-vivado-intro-fpga-design-hls.pdf)
- [Xilinx Vivado Design Suite User Guide High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug902-vivado-high-level-synthesis.pdf)
- [Xilinx SDAccel Development Environment Help for 2018.2 XDF](https://www.xilinx.com/html_docs/xilinx2018_2_xdf/sdaccel_doc/index.html)
- [The Zynq book](http://www.zynqbook.com/)
- [Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)
- [GMU ECE 699 Software/Hardware Co-design S15](https://ece.gmu.edu/coursewebpages/ECE/ECE699_SW_HW/S15/)
- [CMU ECE 18-643](http://users.ece.cmu.edu/~jhoe/doku/doku.php?id=18-643_course_schedule_fall_2017)
- [Cornell ECE5775 from Prof. Zhiru Zhang](http://www.csl.cornell.edu/courses/ece5775/)

Courses
- [CMU ECE 18-643](http://users.ece.cmu.edu/~jhoe/doku/doku.php?id=18-643_course_schedule_fall_2017)
    - I like its slides, very informative. Slides about PR, Verilog, HLS are good.
    - Also read its references, all quite good papers.
- [Cornell ECE5775 from Prof. Zhiru Zhang](http://www.csl.cornell.edu/courses/ece5775/)
- [GMU ECE 699 Software/Hardware Co-design S16](https://ece.gmu.edu/coursewebpages/ECE/ECE699_SW_HW/S16/)
- [GMU ECE 699 Software/Hardware Co-design S15](https://ece.gmu.edu/coursewebpages/ECE/ECE699_SW_HW/S15/)
    - DAMN, this is a good and practical course.
- [MIT 6.111 Introductory Digital Systems Laboratory](http://web.mit.edu/6.111/volume2/www/f2018/index.html)
- [MIT 6.375 Complex Digital Systems](http://csg.csail.mit.edu/6.375/6_375_2016_www/index.html)
- [UCB EECS 151/251A](http://inst.eecs.berkeley.edu/~eecs151/sp18/)

Books
- [Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)
- [The Zynq book](http://www.zynqbook.com/)
    - 15.5.3 Pipelining
    - 15.5.4 Dataflow

## Papers about FPGA Internals

General
- [FPGA and CPLD architectures: a tutorial, 1996](http://www.eecg.toronto.edu/~jayar/pubs/brown/DTSurvey.pdf)
- [Reconfigurable computing: a survey of systems and software, 2002](https://people.ece.uw.edu/hauck/publications/ConfigCompute.pdf)
- [FPGA Architecture: Survey and Challenges, 2007](http://www.eecg.toronto.edu/~jayar/pubs/kuon/foundtrend08.pdf)
	- Read the first two paragraphs of each section and then come back to read all of that if needed.
- [RAMP: Research Accelerator For Multiple Processors, 2007](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.437.4076&rep=rep1&type=pdf)

Logical Optimization and Technology Mapping
- [FlowMap: An Optimal Technology Mapping Algorithm for Delay Optimization in Lookup-Table Based FPGA Designs, 1994](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.22.9473&rep=rep1&type=pdf)
- [Combinational Logic Synthesis for LUT Based Field Programmable Gate Arrays, 1996](http://citeseerx.ist.psu.edu/viewdoc/download;jsessionid=A93A485E9AAE008EE16450279ED1CE63?doi=10.1.1.5.3571&rep=rep1&type=pdf)
- [DAOmap: A Depth-optimal Area Optimization Mapping Algorithm for FPGA Designs, 2004](https://cadlab.cs.ucla.edu/~cong/papers/CRU79_chen.pdf)

Place and Route
- [VPR: A New Packing, Placement and Routing Tool for FPGA Research, 1997](http://www.eecg.toronto.edu/~vaughn/papers/fpl97.pdf)
- [VTR 7.0: Next Generation Architecture and CAD System for FPGAs, 2014](http://www.eecg.toronto.edu/~jayar/pubs/luu/luutrets14.pdf)

RTL2FPGA
- [A Case for FAME: FPGA Architecture Model Execution, 2010](https://people.eecs.berkeley.edu/~krste/papers/fame-isca2010.pdf)
- [Strober: Fast and Accurate Sample-Based Energy Simulation for Arbitrary RTL, 2016](https://people.eecs.berkeley.edu/~krste/papers/fame-isca2010.pdf)
- [Evaluation of RISC-V RTL with FPGA-Accelerated Simulation, 2017](https://pdfs.semanticscholar.org/f4dd/f85e953f30a25250baf958c2a2619380bf9b.pdf)
- [FireSim: FPGA-Accelerated Cycle-Exact Scale-Out System Simulation in the Public Cloud, 2018](https://sagark.org/assets/pubs/firesim-isca2018.pdf)
