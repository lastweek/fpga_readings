```
 _____ ____   ____    _    
|  ___|  _ \ / ___|  / \   
| |_  | |_) | |  _  / _ \  
|  _| |  __/| |_| |/ ___ \ 
|_|   |_|    \____/_/   \_\
```

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
- __`Xilinx`__
	- `xilinx.md`
	- `xilinx_constraints.md`
	- `xilinx_cheatsheet.md`
	- `xilinx_lessons_vivado.md`
	- `xilinx_lessons_hls.md`
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

## Resources 

### Papers

[List of academic papers](https://github.com/lastweek/FPGA/blob/master/papers.md).

### FPGA Intro
- [URL: RapidWright FPGA Architecture Basics](http://www.rapidwright.io/docs/FPGA_Architecture.html)
- [URL: RapidWright Xilinx Architecture Terminology](http://www.rapidwright.io/docs/Xilinx_Architecture.html)
- [Book: Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)
	- Basic about FPGA and HLS
- [URL: All about FPGAs, EE Times](https://www.eetimes.com/document.asp?doc_id=1274496)
- [Slides: Intro FPGA CSE467 UW](https://courses.cs.washington.edu/courses/cse467/03wi/FPGA.pdf)
- [URL: I/O Pads](http://www2.eng.cam.ac.uk/~dmh/4b7/resource/section14.htm)
  	- BGA Wiki: In a BGA the pins are replaced by __pads__ on the bottom of the package. If you check PGA package, you will know the difference between pin and pad, and immediately get why it is called pad. And you will also know what's the pad in the IO Block diagram.

### Digital Basics
- [PDF: The Digital World](http://web.mit.edu/6.111/volume2/www/f2018/handouts/TheDigitalWorld.pdf)
- [Wiki: Differential signaling](https://en.wikipedia.org/wiki/Differential_signaling) and [Wiki: Single-ended signaling](https://en.wikipedia.org/wiki/Single-ended_signaling)
    - [Paper: Differential Signals The Differential Difference! Douglas Brooks](https://www.ultracad.com/articles/differentialsignals.pdf)
- [Book: Digital design and computer architecture](https://www.amazon.com/Digital-Design-Computer-Architecture-Harris/dp/0123944244/ref=asc_df_0123944244/?tag=hyprod-20&linkCode=df0&hvadid=312060980065&hvpos=1o4&hvnetw=g&hvrand=12891765886685173497&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9016722&hvtargid=aud-467599743108:pla-459777269741&psc=1)
- [Content-Addressable Memory Introduction](https://www.pagiamtzis.com/cam/camintro/)

### Verilog
- [Verilog Introduction](http://www.lsi.upc.edu/~jordicf/Teaching/secretsofhardware/VerilogIntroduction_Nyasulu.pdf)
- [Verilog HDL Quick Reference Card](http://www.ece.uvic.ca/~fayez/courses/ceng465/vlogref.pdf)
- [Xilinx UG901 Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_1/ug901-vivado-synthesis.pdf)

### High-Level Synthesis (HLS)
- [A Survey and Evaluation of FPGA High-Level Synthesis Tools](https://janders.eecg.utoronto.ca/pdfs/tcad_hls.pdf)
- [Xilinx Introduction to FPGA Design with Vivado High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/ug998-vivado-intro-fpga-design-hls.pdf)
- [Xilinx Vivado Design Suite User Guide High-Level Synthesis](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2018_2/ug902-vivado-high-level-synthesis.pdf)
- [Xilinx SDAccel Development Environment Help for 2018.2 XDF](https://www.xilinx.com/html_docs/xilinx2018_2_xdf/sdaccel_doc/index.html)
- [The Zynq book](http://www.zynqbook.com/)
- [Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)
- [GMU ECE 699 Software/Hardware Co-design S15](https://ece.gmu.edu/coursewebpages/ECE/ECE699_SW_HW/S15/)
- [CMU ECE 18-643](http://users.ece.cmu.edu/~jhoe/doku/doku.php?id=18-643_course_schedule_fall_2017)
- [Cornell ECE5775 from Prof. Zhiru Zhang](http://www.csl.cornell.edu/courses/ece5775/)

### Courses
- [Online: Real Digital](https://www.realdigital.org/)
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

### Books
- [Parallel Programming for FPGAs](https://arxiv.org/abs/1805.03648)
- [The Zynq book](http://www.zynqbook.com/)
- [FPGAs for Software Programmers](https://www.springer.com/us/book/9783319264066)
- [Data Processing on FPGAs, Synthesis Lectures on Data Management](https://www.morganclaypool.com/doi/abs/10.2200/S00514ED1V01Y201306DTM035)