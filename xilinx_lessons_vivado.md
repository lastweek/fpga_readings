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
