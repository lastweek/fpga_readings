## Xilinx HLS Lessons Learned

Some issues I had along the way.

## Check CoSim and Waveform Before Integration

There was a very simple module that has an AXI-S output. HLS Simulation and synthesis
both work fine. CoSIM failed because the module accessed some invalid memory (SEGFAULT).
At that time I just want to hook the HLS IP to a big system, so after making sure
all AXI-S ports (VALID, LAST etc) were present, I exported the design and moved on to Vivado.

I placed the HLS IP within a BD, and connet that AXI-S output to an AXI-S FIFO.
Eveything looks fine but Vivado synthesis failed, it complains
`[synth 8-448] named port connection does not exist` for the AXI-S VALID and LAST ports. Hmm?

I did a recheck of the BD, and those VALID and LAST signals were sure there, and those
generated Verilog Wrappers also have them.
No clue. I thought my Vivado is broken, again. I got stuck for a long time.

Then I went back to HLS. The synthesis report clearly lists VALID and LAST as part
of the AXI-S port. Things changed when I took a look at the `Waveform`. There were
no VALID and LAST there. Excuse me? I did some tweak and make CoSim work and make
sure VALID and LAST appear in Waveform.

This might be just a trivial thing, but it took me a lot time to figure out.
The takeway is: before integrating HLS IP into a big design,
make sure CoSIM works and make sure Waveform has all the signals you want.

## HLS IP Only Use One Clock Frequency

Modules written in HLS can only support one clock frequency at a time.
If the HLS module needs to deal with two clock domains, you have to choose one and insert FIFO accordingly.

For example, assume you have IP_A running at 100MHz and IP_B running at 150MHz.
Now you are trying to write a HLS IP_C, which will communicate with both IP_A and IP_B,
i.e., `IP_A <---> IP_C <---> IP_B`. Since HLS IP_C can only run with one clock frequency,
you are not able to write a IP_C works like the above way without FIFOs in between.
For simplicity, assume IP_C runs at 100MHz, then IP_A and IP_C can talk directly.
But you have to insert a FIFO between IP_C and IP_B.
