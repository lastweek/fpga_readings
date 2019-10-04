# List of FPGA Papers

??? note "Version History"
	|Date|Description|
	|:---|-----------|
	|Oct 4, 2019| Add more papers extracted from AmophOS|
	|Oct 3, 2019| Initial version from [Github](https://github.com/lastweek/FPGA)|

A list of academic papers. Enjoy.

Table of Contents

- [Virtualization](#virtualization)
	- [Memory Hierarchy](#memory-hierarchy)
	- [Dynamic Memory Allocation](#dynamic-memory-allocation)
	- [Integrate with Host Virtual Memory](#integrate-with-host-virtual-memory)
	- [Scheduling](#scheduling)
	- [Integrate with Host OSs](#integrate-with-host-oss)
	- [Summary on current FPGA Virtualization Status](#summary-on-current-fpga-virtualization-status)
- [Languages, Runtime, and Framework](#languages-runtime-and-framework)
	- [Xilinx HLS Related](#xilinx-hls-related)
	- [High-Level Languages and Platforms](#high-level-languages-and-platforms)
	- [Integrate with Frameworks](#integrate-with-frameworks)
	- [Cloud Infrastructure](#cloud-infrastructure)
- [Applications](#applications)
	- [Programmable Network](#programmable-network)
	- [Database](#database)
	- [Storage](#storage)
	- [Machine Learning](#machine-learning)
	- [Graph](#graph)
	- [Key-Value Store](#key-value-store)
	- [Bio](#bio)
	- [Consensus](#consensus)
	- [Video Processing](#video-processing)
	- [Blockchain](#blockchain)
	- [Micro-services](#micro-services)
- [FPGA Internal](#fpga-internal)
	- [General](#general)
	- [Partial Reconfiguration](#partial-reconfiguration)
	- [Logical Optimization and Technology Mapping](#logical-optimization-and-technology-mapping)
	- [Place and Route](#place-and-route)
	- [RTL2FPGA](#rtl2fpga)

## Virtualization

- How to create abstractions for FPGA resources(BRAM, DRAM, LUTs, and DSPs)?
- How to schedule bitstreams (spatial and time sharing)?
- How to interact with host OS?

### Memory Hierarchy
Papers deal with BRAM, registers, on-board DRAM, and host DRAM.

- [LEAP Scratchpads: Automatic Memory and Cache Management for Reconfigurable Logic, FPGA'11](https://people.csail.mit.edu/emer/papers/2011.02.isfpga.leap_scratchpads.pdf)
	- Main design hierarchy: Use BRAM as L1 cache, use on-board DRAM as L2 cache, and host memory as the backing store. Everthing is abstracted away through their interface (similar to load/store). Programming is pretty much the same as if you are writing for CPU.
	- According to sec 2.2.2, its scratchpad controller, is using simple segment-based mapping scheme. Like AmorphOS's one.
- [LEAP Shared Memories: Automating the Construction of FPGA Coherent Memories, FCCM'14](http://people.csail.mit.edu/hjyang/papers/yang-fccm2014.pdf)
	- Follow up work on LEAP Scratchpads, extends the work to have cache coherence between multiple FPGAs.
	- Coherent Scatchpads with MOSI protocol.
- [MATCHUP: Memory Abstractions for Heap Manipulating Programs, FPGA'15](http://cas.ee.ic.ac.uk/people/fw1811/papers/FPGA15_Felix.pdf)
- [CoRAM: An In-Fabric Memory Architecture for FPGA-Based Computing](https://users.ece.cmu.edu/~jhoe/distribution/2011/chung.pdf)
	- CoRAM provides an interface for managing the on- and off-chip memory resource of an FPGA. It use "control threads" enforce low-level control on data movement.
	- Seriously, the CoRAM is just like Processor L1-L3 caches.
- [CoRAM Prototype and evaluation of the CoRAM memory architecture for FPGA-based computing, FPGA'12]()
	- Prototype on FPGA.
- [Sharing, Protection, and Compatibility for Reconfigurable Fabric with AMORPHOS, OSDI'18](https://www.usenix.org/conference/osdi18/presentation/khawaja)
	- Hull: provides memory protection for on-board DRAM using __segment-based__ address translation.
- [Virtualized Execution Runtime for FPGA Accelerators in the Cloud, IEEE Access'17](https://ieeexplore.ieee.org/abstract/document/7840018)

### Dynamic Memory Allocation
`malloc()` and `free()` for FPGA on-board DRAM.

- [A High-Performance Memory Allocator for Object-Oriented Systems, IEEE'96](https://ieeexplore.ieee.org/document/485574/)
- [SysAlloc: A Hardware Manager for Dynamic Memory Allocation in Heterogeneous Systems, FPL'15](https://ieeexplore.ieee.org/document/7293959)
- [Hi-DMM: High-Performance Dynamic Memory Management in High-Level Synthesis, IEEE'18](https://github.com/zslwyuan/Hi-DMM)

### Integrate with Host Virtual Memory
Papers deal with OS Virtual Memory System (VMS). Note that, all these papers introduce some form of MMU into the FPGA
to let FPGA be able to work with host VMS.
This added MMU is similar to CPU's MMU and [RDMA NIC's internal cache](https://www.usenix.org/conference/usenixsecurity19/presentation/tsai).
Note that the VMS still runs inside Linux (include pgfault, swapping, TLB shootdown and so on. What could really stands out, is to implement VMS inside FPGA.)

- [Virtual Memory Window for Application-Specific Reconfigurable Coprocessors, DAC'04](https://ieeexplore.ieee.org/document/1664911)
	- Early work that adds a new MMU to FPGA to let FPGA logic access `on-chip DRAM`. Note, it's not the system main memory. Thus the translation pgtable is different.
	- Has some insights on prefetching and MMU CAM design.
- [Seamless Hardware Software Integration in Reconfigurable Computing Systems, 2005](https://ieeexplore.ieee.org/document/1413143)
	- Follow up summary on previous DAC'04 Virtual Memory Window.
- [A Reconfigurable Hardware Interface for a Modern Computing System, FCCM'07](https://ieeexplore.ieee.org/document/4297245)
	- This work adds a new MMU which includes a 16-entry TLB to FPGA. FPGA and CPU shares the same user virtual address space, use the same physical memory. FPGA and CPU share memory at __cacheline granularity__, FPGA is just another core in this sense. Upon a TLB miss at FPGA MMU, the FPGA sends interrupt to CPU, to let _software to handle the TLB miss_. Using software-managed TLB miss is not efficient. But they made cache coherence between FPGA and CPU easy.
- [Low-Latency High-Bandwidth HW/SW Communication in a Virtual Memory Environment, FPL'08](https://ieeexplore.ieee.org/abstract/document/4629945)
	- This work actually add a new MMU to FPGA, which works just like CPU MMU. It's similar to IOMMU, in some sense.
	- But I think they missed one important aspect: cache coherence between CPU and FPGA. There is not too much information about this in the paper, it seems they do not have cache at FPGA. Anyhow, this is why recently CCIX and OpenCAPI are proposed.
- [Memory Virtualization for Multithreaded Reconfigurable Hardware, FPL'11](https://ieeexplore.ieee.org/document/6044806)
	- Part of the ReconOS project
	- They implemented a simple MMU inside FPGA that includes a TLB. On protection violation or page invalid access cases, their MMU just hand over to CPU pgfault routines. How is this different from the FPL'08 one? Actually, IMO, they are the same.
- [S4 Virtualized Execution Runtime for FPGA Accelerators in the Cloud, IEEE Access'17](https://ieeexplore.ieee.org/abstract/document/7840018)
	- This paper also implemented a hardware MMU, but the virtual memory system still run on Linux.
	- Also listed in `Cloud Infrastructure` part.
- [Lightweight Virtual Memory Support for Many-Core Accelerators in Heterogeneous Embedded SoCs, 2015](https://ieeexplore.ieee.org/document/7331367)
- [Lightweight Virtual Memory Support for Zero-Copy Sharing of Pointer-Rich Data Structures in Heterogeneous Embedded SoCs, IEEE'17](https://ieeexplore.ieee.org/document/7797491)
	- Part of the PULP project.
	- Essentially a software-managed IOMMU. The control path is running as a Linux kernel module. The datapath is a lightweight AXI transation translation.

### Scheduling

TODO:

- [Operating Systems for Reconfigurable Embedded Platforms: Online Scheduling of Real-Time Tasks, 2004]()
- [Context saving and restoring for multitasking in reconfigurable systems, FPL'05]()
- [Scheduling intervals for reconfigurable computing, FCCM'08]()
- [ReconOS Cooperative multithreading in dynamically reconfigurable systems, FPL'09]()
- [Block, drop or roll(back): Alternative preemption methods for RH multi-tasking, FCCM'09]()
- [Hardware context-switch methodology for dynamically partially reconfigurable systems, 2010]()
- [ReMAP: A reconfigurable heterogeneous multicore architecture, Micro'10]()
- [Online Scheduling for Multi-core Shared Reconfigurable Fabric, DATE'12]()
- [Scheduling mixed-architecture processes in tightly coupled FPGA-CPU reconfigurable computers, FCCM'14]()
- [Multi-shape Tasks Scheduling for Online Multitasking on FPGAs, 2014]()

FPGA and CPU co-scheduling:

- [hthreads: a hardware/software co-designed multithreaded RTOS kernel, 2005](https://ieeexplore.ieee.org/document/1612697)
- [Tartan: Evaluating Spatial Computation for Whole Program Execution, ASPLOS'06]()

Pure FPGA:

- [Preemptive multitasking on fpgas, FCCM'00](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.35.4462&rep=rep1&type=pdf)
	- Some very practical technique discussions about doing preemptive scheduling on FPGA.
- [hthreads: Enabling a Uniform Programming Model Across the Software/Hardware Boundary, FCCM'16]()
	- Let FPGA apps use `yield()`.
- [AmophOS, OSDI'18](https://www.usenix.org/system/files/osdi18-khawaja.pdf)

### Integrate with Host OSs

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
- LEAP Soft connections: Addressing the hardware-design modularity problem, DAC'09
	- Channel concept. Good.
- LEAP Scratchpads: Automatic Memory and Cache Management for Reconfigurable Logic, FPGA'11
	- BRAM/on-board DRAM/host DRAM layering. Caching.
- LEAP Shared Memories: Automating the Construction of FPGA Coherent Memories
	- Add cache-coherence on top of previous work.
	- Also check out my note on [Cache Coherence](http://lastweek.io/notes/cache_coherence/).
- LEAP FPGA Operating System, FPL'14.

### Summary on current FPGA Virtualization Status

Prior art mainly focus on: 1) How to virtualize on-chip BRAM (e.g., CoRAM, LEAP Scratchpad),
2) How to work with host, specifically, how to use the host DRAM, how to use host virtual memory.
3) How to schedule bitstreams inside a FPGA chip. 4) How to provide certain services to make FPGA programming easier (mostly work with host OS).

## Languages, Runtime, and Framework

Innovations in the toolchain space.

### Xilinx HLS

- [Design Patterns for Code Reuse in HLS Packet Processing Pipelines, FCCM'19](https://zistvan.github.io/doc/ntl-fccm19.pdf)
	- A very good HLS library from Mellanox folks.
- [Templatised Soft Floating-Point for High-Level Synthesis, FCCM'19](https://github.com/template-hls/template-hls-floa)
- [ST-Accel: A High-Level Programming Platform for Streaming Applications on FPGA, FCCM'18](https://vast.cs.ucla.edu/sites/default/files/publications/st-accel-high.pdf)
- [Separation Logic-Assisted Code Transformations for Efficient High-Level Synthesis, FCCM'14](http://cas.ee.ic.ac.uk/people/fw1811/papers/FelixFCCM14.pdf)
	- An HLS design aids that analyze the original program at _compile time_ and perform automated code transformations. The tool analysis pointer-manipulating programs and automatically splits heap-allocated data structures into disjoint, independent regions.
	- The tool is for C++ heap operations.
	- To put in another way: the tool looks at your BRAM usage, found any false-dependencies, and make multiple independent regions, then your II is improved.
- [MATCHUP: Memory Abstractions for Heap Manipulating Programs, FPGA'15](http://cas.ee.ic.ac.uk/people/fw1811/papers/FPGA15_Felix.pdf)
	- This is an HLS toolchain aid.
	- Follow-up work of the above FCCM'14 one. This time they use LEAP scracchpads as the underlying caching block.

### High-Level Languages and Platforms

- [Just-in-Time Compilation for Verilog, ASPLOS'19](https://research.vmware.com/publications/just-in-time-compilation-for-verilog-a-new-technique-for-improving-the-fpga-programming-experience)
- [Chisel: Constructing Hardware in a Scala Embedded Language, DAC'12]()
	- Chisel is being actively improved and used by UCB folks.
- [Rosetta: A Realistic High-Level Synthesis Benchmark Suite for Software Programmable FPGAs, FPGA'18](https://hj424.github.io/papers/rosetta_fpga2018.pdf)
- [From JVM to FPGA: Bridging Abstraction Hierarchy via Optimized Deep Pipelining, HotCloud'18]()
- [HeteroCL: A Multi-Paradigm Programming Infrastructure for Software-Defined Reconfigurable Computing, FPGA'19](https://vast.cs.ucla.edu/~chiyuze/pub/fpga19-heterocl.pdf)
- [LINQits: Big Data on Little Clients, ISCA'13](https://www.microsoft.com/en-us/research/wp-content/uploads/2013/06/ISCA13_linqits.pdf)
	- From Microsoft, used to express SQL-like functions (thus big data) and runs on ZYNQ (thus little client),
	- You wrote C#, LINQits translate it to verilog, and run the whole thing at a ZYNQ (ARM+FPGA) board.
- [Lime: a Java-Compatible and Synthesizable Language for Heterogeneous Architectures, OOPSLA'10](https://www.cl.cam.ac.uk/research/srg/han/ACS-P35/readinglist/bacon-lime-p89-auerbach.pdf)
	- Lime is a Java-based programming model and runtime from IBM which aims to provide a single unified
	  language to program heterogeneous architectures, from FPGAs to conventional CPUs
- A line of work from Standord
	- [Generating configurable hardware from parallel patterns, ASPLOS'16](http://csl.stanford.edu/~christos/publications/2016.delitehw.asplos.pdf)
	- [Plasticine: A Reconfigurable Architecture For Parallel Patterns, ISCA'17](https://stanford-ppl.github.io/website/papers/isca17-raghu-plasticine.pdf)
	- [Spatial: A Language and Compiler for Application Accelerators, PLDI'18](http://csl.stanford.edu/~christos/publications/2018.spatial.pldi.pdf)
		- Spatial generates _Chisel_ code along with C++ code which can be used on a host CPU to control the execution of the accelerator on the target FPGA.
		- This kind of academic papers must have a lot good ideas. But the truth is it will not be reliable because it's from academic labs.

### Integrate with Frameworks
- [Map-reduce as a Programming Model for Custom Computing Machines, FCCM'08](https://ieeexplore.ieee.org/document/4724898)
	- This paper proposes a model to translate MapReduce code written in C to code that could run on FPGA and GPU. Many details are omitted, and they don't really have the compiler.
	- Single-host framework, everything is in FPGA and GPU.
- [Axel: A Heterogeneous Cluster with FPGAs and GPUs, FPGA'10](http://www.doc.ic.ac.uk/~wl/papers/10/fpga10bt.pdf)
	- A distributed MapReduce Framework, targets clusters with CPU, GPU, and FPGA. Mainly the idea of scheduling FPGA/GPU jobs.
	- Distributed Framework.
- [FPMR: MapReduce Framework on FPGA, FPGA'10](https://dl.acm.org/citation.cfm?doid=1723112.1723129)
	- A MapReduce framework on a single host's FPGA. You need to write Verilog/HLS for processing logic to hook with their framework. The framework mainly includes a data transfer controller, a simple schedule that enable certain blocks at certain time.
	- Single-host framework, everything is in FPGA.
- [Melia: A MapReduce Framework on OpenCL-Based FPGAs, IEEE'16](https://ieeexplore.ieee.org/document/7425227/)
	- Another framework, written in OpenCL, and users can use OpenCL to program as well. Similar to previous work, it's more about the framework design, not specific algorithms on FPGA.
	- Single-host framework, everything is in FPGA. But they have a discussion on running on multiple FPGAs.
	- Four MapReduce FPGA papers here, I believe there are more. The marriage between MapReduce and FPGA is not something hard to understand. FPGA can be viewed as another core with different capabilities. The thing is, given FPGA's reprogram-time and limited on-board memory, how to design a good scheduling algorithm and data moving/caching mechanisms. Those papers give some hints on this.
- [UCLA: When Apache Spark Meets FPGAs: A Case Study for Next-Generation DNA Sequencing Acceleration, HotCloud'16](https://vast.cs.ucla.edu/sites/default/files/publications/usenix-hotcloud-2016.pdf)
- [UCLA: Programming and Runtime Support to Blaze FPGA Accelerator Deployment at Datacenter Scale, SoCC'16](https://dl.acm.org/citation.cfm?id=2987569)
	- A system that hooks FPGA with Spark.
	- There is a line of work that hook FPGA with big data processing framework (Spark), so the implementation of FPGA and the scale-out software can be separated. The Spark can schedule FPGA jobs to different machines, and take care of scale-out, failure handling etc. But, I personally think this line of work is really just an extension to ReconOS/FUSE/BORPH line of work. The main reason is: both these two lines of work try to integrate jobs run on CPU and jobs run on FPGA, so CPU and FPGA have an easier way to talk, or put in another way, CPU and FPGA have a better division of labor. Whether it's single-machine (like ReconOS, Melia), or distributed (like Blaze, Axel), they are essentially the same.
- [UCLA: Heterogeneous Datacenters: Options and Opportunities, DAC'16](https://ieeexplore.ieee.org/document/7544260)
	- Follow up work of Blaze. Nice comparison of big and wimpy cores.

### Cloud Infrastructure
- [Huawei: FPGA as a Service in the Cloud](https://indico.cern.ch/event/669648/contributions/2838181/attachments/1581893/2500031/Huawei_Cloud_FPGA_as_a_Service_CERN_openlab.pdf)
- [UCLA: Customizable Computing: From Single Chip to Datacenters, IEEE'18](https://vast.cs.ucla.edu/sites/default/files/publications/08566145.pdf)
- [UCLA: Accelerator-Rich Architectures: Opportunities and Progresses, DAC'14](https://dl.acm.org/citation.cfm?id=2596667)
	- Reminds me of [OmniX](https://dl.acm.org/citation.cfm?id=3102992). Disaggregation at a different scale.
	- This paper actually targets single-machine case. But it can reflect a distributed setting.
- [Enabling FPGAs in the Cloud, CF'14](https://dl.acm.org/citation.cfm?id=2597929)
	- Paper raised four important aspects to enable FPGA in cloud: Abstraction, Sharing, Compatibility, and Security. FPGA itself requires a shell (paper calls it service logic) and being partitioned into multiple slots. Things discussed in the paper are straightforward, but worth reading. They did not solve the FPGA sharing issue, which, is solved by AmorphOS.
- [FPGAs in the Cloud: Booting Virtualized Hardware Accelerators with OpenStack, FCCM'14](https://ieeexplore.ieee.org/document/6861604)
	- Use OpenStack to manage FPGA resource. The FPGA is partitioned into multiple regions, each region can use PR. The FPGA shell includes: 1) basic MAC, and packet dispatcher, 2) memory controller, and segment-based partition scheme, 3) a soft processor used for runtime PR control. One very important aspect of this project is: they envision input to FPGA comes from Ethernet, which is very true nowadays. And this also makes their project quite similar to Catapult. It's a very solid paper, though the evaluation is a little bit weak. What could be added: migration, different-sized region.
	- The above CF and FCCM papers are similar in the sense that they are both building SW framework and HW shell to provide a unified cloud management system. They differ in their shell design: CF one take inputs from DMA engine, which is local system DRAM, FCCM one take inputs from Ethernet. The things after DMA or MAC, are essentially similar.
	- It seems all of them are using simple segment-based memory partition for user FPGA logic. What's the pros and cons of using paging here?
- [S1 DyRACT: A partial reconfiguration enabled accelerator and test platform, FPL'14](https://ieeexplore.ieee.org/document/6927507)
- [S2 Virtualized FPGA Accelerators for Efficient Cloud Computing, CloudCom'15](https://ieeexplore.ieee.org/abstract/document/7396187)
- [S3 Designing a Virtual Runtime for FPGA Accelerators in the Cloud, FPL'16](https://warwick.ac.uk/fac/sci/eng/staff/saf/publications/fpl2016-asiatici-phdforum.pdf)
- [S4 Virtualized Execution Runtime for FPGA Accelerators in the Cloud, IEEE Access'17](https://ieeexplore.ieee.org/abstract/document/7840018)
	- The above four papers came from the same group of folks. S1 developed a framework to use PCIe to do PR, okay. S2 is a follow-up on S1, read S2's chapter IV hardware architecture, many implementation details like internal FPGA switch, AXI stream interface. But no memory virtualization discussion. S3 is a two page short paper. S4 is the realization of S3. I was particularly interested if S4 has implemented their own virtual memory management. The answer is NO. S4 leveraged on-chip Linux, they just build a customized MMU (in the form of using BRAM to store page tables. This approach is similar to the papers listed in `Integrate with Virtual Memory`). Many things discussed in S4 have been proposed multiple times in previous cloud FPGA papers since 2014.
- [MS: A Reconfigurable Fabric for Accelerating Large-Scale Datacenter Services, ISCA'14](https://www.microsoft.com/en-us/research/publication/a-reconfigurable-fabric-for-accelerating-large-scale-datacenter-services/)
- [MS: A Cloud-Scale Acceleration Architecture, Micro'16](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/10/Cloud-Scale-Acceleration-Architecture.pdf)
	- Catapult is unique in its shell, which includes the Lightweight Transport Layer (LTL), and Elastic Router(ER). The cloud management part, which the paper just briefly mentioned, actually should include everything the above CF'14 and FCCM'14 have. The LTL has congestion control, packet loss detection/resend, ACK/NACK. The ER is a crossbar switch used by FPGA internal modules, which is essential to connect shell and roles.
	- These two Catapult papers are simply a must read.
- [MS: A Configurable Cloud-Scale DNN Processor for Real-Time AI, Micro'18](https://www.microsoft.com/en-us/research/uploads/prod/2018/06/ISCA18-Brainwave-CameraReady.pdf)
- [MS: Azure Accelerated Networking: SmartNICs in the Public Cloud, NSDI'18](https://www.microsoft.com/en-us/research/uploads/prod/2018/03/Azure_SmartNIC_NSDI_2018.pdf)
- [MS: Direct Universal Access : Making Data Center Resources Available to FPGA, NSDI'19](https://www.microsoft.com/en-us/research/uploads/prod/2018/10/nsdi19spring-final64.pdf)
	- Catapult is just sweet, isn't it?
- [ASIC Clouds: Specializing the Datacenter, ISCA'16](https://cseweb.ucsd.edu/~mbtaylor/papers/ASIC_Cloud_ISCA_2016_Proceedings.pdf)

## Applications

### Programmable Network
- [MS: ClickNP: Highly Flexible and High Performance Network Processing with Reconfigurable Hardware, SIGCOMM'16](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/07/main-4.pdf)
- [MS: Multi-Path Transport for RDMA in Datacenters, NSDI'18](https://www.usenix.org/conference/nsdi18/presentation/lu)
- [MS: Azure Accelerated Networking: SmartNICs in the Public Cloud, NSDI'18](https://www.microsoft.com/en-us/research/uploads/prod/2018/03/Azure_SmartNIC_NSDI_2018.pdf)
- [Mellanox. NICA: An Infrastructure for Inline Acceleration of Network Applications, ATC'19](https://www.usenix.org/conference/atc19/presentation/eran)
- [The Case For In-Network Computing On Demand, EuroSys'19](https://dl.acm.org/citation.cfm?id=3303979)
- [Fast, Scalable, and Programmable Packet Scheduler in Hardware, SIGCOMM'19](https://dl.acm.org/citation.cfm?id=3303979)
- [HPCC: high precision congestion control, SIGCOMM'19](https://dl.acm.org/citation.cfm?id=3342085)
- [Offloading Distributed Applications onto SmartNICs using iPipe, SIGCOMM'19](https://homes.cs.washington.edu/~arvind/papers/ipipe.pdf)
    - Not necessary FPGA, but SmartNICs. The actor programming model seems a good fit. There is another paper from ATC'19 that optimizes [distributed actor runtime](https://www.usenix.org/system/files/atc19-meiklejohn.pdf).


### Database
- [Accelerating database systems using FPGAs: A survey, FPL'18](https://pdfs.semanticscholar.org/dee1/59031eb2de0a9324829f9027b14403164489.pdf)

### Storage
- [Cognitive SSD: A Deep Learning Engine for In-Storage Data Retrieval, ATC'19](https://www.usenix.org/conference/atc19/presentation/liang)
- [INSIDER: Designing In-Storage Computing System for Emerging High-Performance Drive, ATC'19](https://www.usenix.org/conference/atc19/presentation/ruan)

### Machine Learning
- Optimizing FPGA-based Accelerator Design for Deep Convolutional Neural Networks, FPGA'15
- From High-Level Deep Neural Models to FPGAs, ISCA'16
- Deep Learning on FPGAs: Past, Present, and Future, arXiv'16
- Accelerating binarized neural networks: Comparison of FPGA, CPU, GPU, and ASIC, FPT'16
- FINN: A Framework for Fast, Scalable Binarized Neural Network Inference, FPGA'17
- In-Datacenter Performance Analysis of a Tensor Processing Unit, ISCA'17
- Accelerating Binarized Convolutional Neural Networks with Software-Programmable FPGAs, FPGA'17
- A Configurable Cloud-Scale DNN Processor for Real-Time AI, ISCA'18
- A Network-Centric Hardware/Algorithm Co-Design to Accelerate Distributed Training of Deep Neural Networks, MICRO'18
- DNNBuilder: an Automated Tool for Building High-Performance DNN Hardware Accelerators for FPGAs, ICCAD'18
- FA3C : FPGA-Accelerated Deep Reinforcement Learning， ASPLOS’19
- Cognitive SSD: A Deep Learning Engine for In-Storage Data Retrieval, ATC'19

### Graph
- A Scalable Processing-in-Memory Accelerator for Parallel Graph Processing, ISCA'15
- Energy Efficient Architecture for Graph Analytics Accelerators, ISCA'16
- Boosting the Performance of FPGA-based Graph Processor using Hybrid Memory Cube: A Case for Breadth First Search, FPGA'17
- FPGA-Accelerated Transactional Execution of Graph Workloads, FPGA'17
- An FPGA Framework for Edge-Centric Graph Processing, CF'18

### Key-Value Store
- Achieving 10Gbps line-rate key-value stores with FPGAs, HotCloud'13
- Thin Servers with Smart Pipes: Designing SoC Accelerators for Memcached, ISCA'13
- An FPGA Memcached Appliance, FPGA'13
- Scaling out to a Single-Node 80Gbps Memcached Server with 40Terabytes of Memory, HotStorage'15
- [KV-Direct: High-Performance In-Memory Key-Value Store with Programmable NIC, SOSP'17](https://dl.acm.org/citation.cfm?id=3132756)
	- This link is also useful for better understading [Morning Paper](https://blog.acolyer.org/2017/11/23/kv-direct-high-performance-in-memory-key-value-store-with-programmable-nic/)
- Ultra-Low-Latency and Flexible In-Memory Key-Value Store System Design on CPU-FPGA, FPT'18

### Bio
- [When Apache Spark Meets FPGAs: A Case Study for Next-Generation DNA Sequencing Acceleration, HotCloud'16](https://vast.cs.ucla.edu/sites/default/files/publications/usenix-hotcloud-2016.pdf)
- FPGA Accelerated INDEL Realignment in the Cloud, HPCA'19

### Consensus
- Consensus in a Box: Inexpensive Coordination in Hardware, NSDI'16

### Video Processing
- TODO

### Blockchain
- TODO

### Micro-services
- TODO

## FPGA Internal

### General
- [FPGA and CPLD architectures: a tutorial, 1996](http://www.eecg.toronto.edu/~jayar/pubs/brown/DTSurvey.pdf)
- [Reconfigurable computing: a survey of systems and software, 2002](https://people.ece.uw.edu/hauck/publications/ConfigCompute.pdf)
- [Reconfigurable computing: architectures and design methods](http://www.doc.ic.ac.uk/~wl/papers/05/iee05tjt.pdf)
- [FPGA Architecture: Survey and Challenges, 2007](http://www.eecg.toronto.edu/~jayar/pubs/kuon/foundtrend08.pdf)
	- Read the first two paragraphs of each section and then come back to read all of that if needed.
- [RAMP: Research Accelerator For Multiple Processors, 2007](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.437.4076&rep=rep1&type=pdf)
- [Three Ages of FPGAs: A Retrospective on the First Thirty Years of FPGA Technology, IEEE'15](https://ieeexplore.ieee.org/document/7086413)

### Partial Reconfiguration
- [FPGA Dynamic and Partial Reconfiguration: A Survey of Architectures, Methods, and Applications, CSUR'18](https://dl.acm.org/citation.cfm?id=3193827)
    - Must read.
- [DyRACT: A partial reconfiguration enabled accelerator and test platform, FPL'14](https://ieeexplore.ieee.org/document/6927507)
- A high speed open source controller for FPGA partial reconfiguration

### Logical Optimization and Technology Mapping
- [FlowMap: An Optimal Technology Mapping Algorithm for Delay Optimization in Lookup-Table Based FPGA Designs, 1994](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.22.9473&rep=rep1&type=pdf)
- [Combinational Logic Synthesis for LUT Based Field Programmable Gate Arrays, 1996](http://citeseerx.ist.psu.edu/viewdoc/download;jsessionid=A93A485E9AAE008EE16450279ED1CE63?doi=10.1.1.5.3571&rep=rep1&type=pdf)
- [DAOmap: A Depth-optimal Area Optimization Mapping Algorithm for FPGA Designs, 2004](https://cadlab.cs.ucla.edu/~cong/papers/CRU79_chen.pdf)

### Place and Route
- [VPR: A New Packing, Placement and Routing Tool for FPGA Research, 1997](http://www.eecg.toronto.edu/~vaughn/papers/fpl97.pdf)
- [VTR 7.0: Next Generation Architecture and CAD System for FPGAs, 2014](http://www.eecg.toronto.edu/~jayar/pubs/luu/luutrets14.pdf)

### RTL2FPGA
- [A Case for FAME: FPGA Architecture Model Execution, 2010](https://people.eecs.berkeley.edu/~krste/papers/fame-isca2010.pdf)
- [Strober: Fast and Accurate Sample-Based Energy Simulation for Arbitrary RTL, 2016](https://people.eecs.berkeley.edu/~krste/papers/fame-isca2010.pdf)
- [Evaluation of RISC-V RTL with FPGA-Accelerated Simulation, 2017](https://pdfs.semanticscholar.org/f4dd/f85e953f30a25250baf958c2a2619380bf9b.pdf)
- [FireSim: FPGA-Accelerated Cycle-Exact Scale-Out System Simulation in the Public Cloud, 2018](https://sagark.org/assets/pubs/firesim-isca2018.pdf)
