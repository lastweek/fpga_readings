# Cook FPGA

This repository is intended for folks who are new and want to learn something about FPGA.
This repository is a collection of useful resources and links rather than a thorough FPGA tutorial.
Traditional HDL (Hard and Difficult Language) is not the main focus,
instead, we focus on using high-level languages (e.g., C++) to cook FPGA.

Originally, this repository was started by a newbie to record his learning of FPGA,
and late made public in the hope that it could help researchers to start
their journey along with FPGA, with less pain and whiskey.

Resources collected here, or the way contents are organized, are not in their perfect shape.
This repository is still raw and need major improvements. Any form of contribution is welcomed and appreciated.

Main contents:
- __`README.md`__
	- Basics about Digital Design
	- Basics about FPGA
	- Relevant Courses and Books
	- Papers about FPGA internal
- __`xilinx.md`__ and __`xilinx_constraints.md`__
	- Xilinx terms explained
	- Xilinx documents summary
	- Useful constraints
- __`submodules/`__: Github repositories about FPGA
- __`hls/`__: Sample Xilinx HLS C++ code
	- AXI Stream
	- Network protocol processing
- __`xilinx_arty_a7`__: Sample Xilinx projects for Arty A7 100 board
	- Tri-mode MAC reference design
	- Simple LED
	- Clocked LED
- __`FAQ.md`__
	- Some implementation questions about FPGA

## Get Started

FPGA Intro
- [URL: RapidWright FPGA Architecture Basics](http://www.rapidwright.io/docs/FPGA_Architecture.html)
- [URL: RapidWright Xilinx Architecture Terminology](http://www.rapidwright.io/docs/Xilinx_Architecture.html)
- [Book: Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)
	- Basic about FPGA and HLS
- [URL: All about FPGAs, EE Times](https://www.eetimes.com/document.asp?doc_id=1274496)
- [Slides: Intro FPGA CSE467 UW](https://courses.cs.washington.edu/courses/cse467/03wi/FPGA.pdf)
- [URL: I/O Pads](http://www2.eng.cam.ac.uk/~dmh/4b7/resource/section14.htm)
  	- BGA Wiki: In a BGA the pins are replaced by __pads__ on the bottom of the package. If you check PGA package, you will know the difference between pin and pad, and immediately get why it is called pad. And you will also know what's the pad in the IO Block diagram.

Digital Basics
- [PDF: The Digital World](http://web.mit.edu/6.111/volume2/www/f2018/handouts/TheDigitalWorld.pdf)
- [Wiki: Differential signaling](https://en.wikipedia.org/wiki/Differential_signaling) and [Wiki: Single-ended signaling](https://en.wikipedia.org/wiki/Single-ended_signaling)
    - [Paper: Differential Signals The Differential Difference! Douglas Brooks](https://www.ultracad.com/articles/differentialsignals.pdf)
- [Book: Digital design and computer architecture](https://www.amazon.com/Digital-Design-Computer-Architecture-Harris/dp/0123944244/ref=asc_df_0123944244/?tag=hyprod-20&linkCode=df0&hvadid=312060980065&hvpos=1o4&hvnetw=g&hvrand=12891765886685173497&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9016722&hvtargid=aud-467599743108:pla-459777269741&psc=1)

Verilog
- [Verilog Introduction](http://www.lsi.upc.edu/~jordicf/Teaching/secretsofhardware/VerilogIntroduction_Nyasulu.pdf)
- [Verilog HDL Quick Reference Card](http://www.ece.uvic.ca/~fayez/courses/ceng465/vlogref.pdf)
- [Xilinx UG901 Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_1/ug901-vivado-synthesis.pdf)

High-Level Synthesis (HLS)
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
- [FPGAs for Software Programmers](https://www.springer.com/us/book/9783319264066)
- [Data Processing on FPGAs, Synthesis Lectures on Data Management](https://www.morganclaypool.com/doi/abs/10.2200/S00514ED1V01Y201306DTM035)

## Papers

### Virtualization

How to apply Operating System concept to FPGA? How to virtualize on-board memory and on-chip logic?
And, how is FPGA ultimately different from CPU in items of resource sharing?
Papers in this section could give you some hint.

General
- [Sharing, Protection, and Compatibility for Reconfigurable Fabric with AMORPHOS, OSDI'18](https://www.usenix.org/conference/osdi18/presentation/khawaja)
- [The LEAP Operating System for FPGAs](https://github.com/LEAP-FPGA/leap-documentation/wiki)

Work with Virtual Memory System
- (Papers deal with OS Virtual Memory System)
- [Virtual Memory Window for Application-Specific Reconfigurable Coprocessors, DAC'04](https://ieeexplore.ieee.org/document/1664911)
	- Early work that adds a new MMU to FPGA to let FPGA logic access `on-chip DRAM`. Note, it's not the system main memory. Thus the translation pgtable is different.
	- Has some insights on prefetching and MMU CAM design.
- [Seamless HardwareSoftware Integration in Reconfigurable Computing Systems, 2005](https://ieeexplore.ieee.org/document/1413143)
	- Follow up summary on previous DAC'04 Virtual Memory Window.
- [A Reconfigurable Hardware Interface for a Modern Computing System, FCCM'07](https://ieeexplore.ieee.org/document/4297245)
	- This work adds a new MMU which includes a 16-entry TLB to FPGA. FPGA and CPU shares the same user virtual address space, use the same physical memory. FPGA and CPU share memory at __cacheline granularity__, FPGA is just another core in this sense. Upon a TLB miss at FPGA MMU, the FPGA sends interrupt to CPU, to let _software to handle the TLB miss_. Using software-managed TLB miss is not efficient. But they made cache coherence between FPGA and CPU easy.
- [Low-Latency High-Bandwidth HW/SW Communication in a Virtual Memory Environment, FPL'08](https://ieeexplore.ieee.org/abstract/document/4629945)
	- This work actually add a new MMU to FPGA, which works just like CPU MMU. It's similar to IOMMU, in some sense.
	- But I think they missed one important aspect: cache coherence between CPU and FPGA. There is not too much information about this in the paper, it seems they do not have cache at FPGA. Anyhow, this is why recently CCIX and OpenCAPI are proposed.
- [Memory Virtualization for Multithreaded Reconfigurable Hardware, FPL'11](https://ieeexplore.ieee.org/document/6044806)
	- Part of the ReconOS project
	- They implemented a simple MMU inside FPGA that includes a TLB. On protection violation or page invalid access cases, their MMU just hand over to CPU pgfault routines. How is this different from the FPL'08 one? Actually, IMO, they are the same.

Memory Hierarchy
- (Papers deal with BRAM, registers, on-board DRAM, and system DRAM)
- [LEAP Scratchpads: Automatic Memory and Cache Management for Reconfigurable Logic, FPGA'11](https://people.csail.mit.edu/emer/papers/2011.02.isfpga.leap_scratchpads.pdf)
	- Main design hierarchy: Use BRAM as L1 cache, use on-board DRAM as L2 cache, and host memory as the backing store. Everthing is abstracted away through their interface (similar to load/store). Programming is pretty much the same as if you are writing for CPU.
	- Accoding to sec 2.2.2, its scratchpad controller, is using simple segment-based mapping scheme. Like AmorphOS's one.
- [CoRAM: An In-Fabric Memory Architecture for FPGA-Based Computing](https://users.ece.cmu.edu/~jhoe/distribution/2011/chung.pdf)
	- CoRAM provides an interface for managing the on- and off-chip memory resource of an FPGA.
	- Cache, TLB, NoC, it has almost everything. The thesis is very comprehensive and informative.
- [Sharing, Protection, and Compatibility for Reconfigurable Fabric with AMORPHOS, OSDI'18](https://www.usenix.org/conference/osdi18/presentation/khawaja)
	- Hull: provides memory protection for on-board DRAM using __segment-based__ address translation.

OS/CPU/FPGA Integration
- [A Virtual Hardware Operating System for the Xilinx XC6200, FPL'96](https://link.springer.com/chapter/10.1007/3-540-61730-2_35)
- [Operating systems for reconfigurable embedded platforms: online scheduling of real-time tasks, IEEE'04](https://ieeexplore.ieee.org/document/1336761)
- [hthreads: a hardware/software co-designed multithreaded RTOS kernel, 2005](https://ieeexplore.ieee.org/document/1612697)
- [Reconfigurable computing: architectures and design methods, IEE'05](http://www.doc.ic.ac.uk/~wl/papers/05/iee05tjt.pdf)
- [BORPH: An Operating System for FPGA-Based Reconfigurable Computers. PhD Thesis.](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.472.6667&rep=rep1&type=pdf)
- [FUSE: Front-end user framework for O/S abstraction of hardware accelerators, FCCM'11](https://ieeexplore.ieee.org/document/5771269)
- [ReconOS – an Operating System Approach for Reconfigurable Computing, IEEE Micro'14](http://www.reconos.de/publications/)
	- Invoke kernel from FPGA. They built a shell in FPGA and delegation threads in CPU to achieve this.
	- They implemented their own MMU (using pre-established pgtables) to let FPGA logic to access system memory. [Ref](https://ieeexplore.ieee.org/document/6044806).
	- Read the "Operating Systems for Reconfigurable Computing" sidebar, nice summary.

### Applications

What are the typical applications that can be offloaded into FPGA?
What has already been done before? This section lists many interesting
applications and systems deployed on FPGA.

Infrastructure and Cloud
- TODO

Network Stack
- [Azure Accelerated Networking: SmartNICs in the Public Cloud](https://www.microsoft.com/en-us/research/uploads/prod/2018/03/Azure_SmartNIC_NSDI_2018.pdf)

Machine Learning
- TODO

Graph
- TODO

KVS
- [KV-Direct: High-Performance In-Memory Key-Value Store with Programmable NIC](https://dl.acm.org/citation.cfm?id=3132756)
	- This link is also useful for better understading [Morning Paper](https://blog.acolyer.org/2017/11/23/kv-direct-high-performance-in-memory-key-value-store-with-programmable-nic/)

Biology
- TODO

Video Processing
- TODO

Blockchain
- TODO

Micro-services
- TODO

### FPGA Internal

General
- [FPGA and CPLD architectures: a tutorial, 1996](http://www.eecg.toronto.edu/~jayar/pubs/brown/DTSurvey.pdf)
- [Reconfigurable computing: a survey of systems and software, 2002](https://people.ece.uw.edu/hauck/publications/ConfigCompute.pdf)
- [Reconfigurable computing: architectures and design methods](http://www.doc.ic.ac.uk/~wl/papers/05/iee05tjt.pdf)
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
