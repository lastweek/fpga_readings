# Xilinx Vivado Lessons Learned

Some issues I had along the way.

## [Place 30-575] Sub-optimal placement of clock

This happen when you are not dealing with clock generation in a proper way.
Being able to understand why requires some knowledge of the clocking architecture.

My case: this shows up when I was integrating a MAC reference design and a MIG
reference design. Both of them have a CMT(MMCM/PLL) to generate their required clocks.
Each of them works fine on its own. But when I integrated whem, the Implementation complains
the [Place 30-575] issue. Basically the two CMTs are not in the same clock region.

I went to check `UG472 7 series clocking` and found the following:
```
When a clock input drives a single CMT, the clock-capable input and CMT (MMCM/PLL)
must be in the same clock region.

A single clock input can drive other CMTs in the same column. In this case, an MMCM/PLL
must be placed in the same clock region as the clock-capable input..... If you have to
drive a CMT from a clock-capable input that is not in the same clock region,
the attribute CLOCK_DEDICATED_ROUTE=BACKBONE must be set.
```

This explains. My CMTs are in two different clock regions.
To fix the issue, I modified both reference designs and added one CMT at top-level,
whose output clocks are used to drive both MAC and MIG.

-  
YS  
Jan 26, 2019

## Importance of Testbench

So I was merging the MAC and MIG part, along with some logic.
In order to do that, I did some hacking and added some Verilog glue code.
Besides, I have to change the MAC reference design a little bit to use
the new AXI-S interface. Initial merging does not work. I was not good at
writing verilog and lazy enough to construct a new TB for the changed MAC.
I was trying to use ILA to debug, all the way after rounds and rounds of
Synthesis&Implementation. I could go take a shower during the compilation time.

I stop wasting my time and take a step back to modify the MAC's original TB.
I changed it to accomadate the new AXI-S interface. And bang, I got the bug:
an `axi_s_rst` signal was not assigned, it was at `Z` state. Stupid like that.

This is pretty much like an uninitialized variable in C, but in the parameter list.
GCC won't complain it for sure. But for Verilog, this output port has to be assigned
to something, isn't the compiler supposed to give a warning or error or something?

Anyhow, the takeaway lesson is: Life is short, write testbench. Don't do that stupid
`Synthesis->Implementation->In-system Debug` thing.

-  
YS  
Jan 27, 2019
