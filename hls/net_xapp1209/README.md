# XAPP1209 Net Protocol Processing Systems

This is a great reference design for network protocol processing.
It's like the `rc_pingpong.c` of IB.

## Implementation Notes

### The need for FIFO

So today I was implementing the `parser()`.
Unlike the xapp reference design, I need to use 8 bits data bus.
The reason is the Tri-Mode MAC only has 8bits AXI Stream interfaces.
Having a 8-bits data bus is quite different from the original coding paradigm,
mainly two issues:
1) the parser needs to cache the header MAC and TYPE over multiple cycles,
2) also, the parser needs to output cached data over multiple cycles.

The first issue can be solved by having a 48 slots array. While the second
one is a bit tricky. In the parser RESIDUE state, we not only need to output
the cached data, we also need to cached the new incoming packet headers.
That simply means we need to have 2 buffers.

In today's coding (01/16/19), I did not have a solution for this other than
adding a flag. I have not tried, not sure if this will violate timing.

Also, I feel the code seems to be heavily bit-width oriented. Having 8 bits
or 64 bits is a totally different coding strcuture and flow.

Then I thought about FIFO. FIFO should be able to solve the above issues
perfectly, if, the FIFO has II=1.

### About Data Dependency

A data dependency prevents the parser() to have II=1. Below I listed my different trials to make it work. It's some raw log.

#### Trial 1: same slot
So today I was implementing the parser using 8 bits data bus as mentioned above.
I declared my cached buffer as follows, which holds both mac and type fields:
```
static my_axis<8> MAC_TYPE[14];
```

One of the SM's state is `PARSER_SM_STREAM`, means we are accepting data
fields. In the original first design, I somehow coded like this:
```
1. parser_to_loopback->write(MAC_TYPE[reminder_index]);
2. MAC_TYPE[reminder_index] = current;
```

Experienced folks may immediately noticed the issue. Yes, there is a dependency
between these two lines. But.. I thought adding `PIPELINE` could help, since we
should be able to partition them into two pipelines. But the reality is not.
HLS complains: `WARNING: [SCHED 204-68] Unable to enforce a carried dependence constraint (II = 1, distance = 1, offset = 1)  between 'store' operation (./top.hpp:12->top.cpp:94) of variable 'tmp.data.V', top.cpp:82 on array 'MAC_TYPE_data_V' and 'load' operation ('tmp.data.V', ./top.hpp:12->top.cpp:86) on array 'MAC_TYPE_data_V'.`

[TODO] I still not quite sure about this. I also checked the resources, the MAC array seems to be implemented by shift registers (essentially LUTs)?

#### Trail 2: different slot

I modified the flow a little bit: parser() will output one MAC_TYPE[0] at `PARSER_SM_MAC_TYPE`, and then
at the `PARSER_SM_STRAM` case, I could do two different slots, basically:
```
MAC_TYPE[in_index] = current;
parser_to_loopback->write(MAC_TYPE[out_index]);

here out_index = in_index + 1
```

Well I thought this must work, cause they are different memory! Still, this does not work: `WARNING: [SCHED 204-68] Unable to enforce a carried dependence constraint (II = 1, distance = 1, offset = 1) between 'load' operation ('tmp.data.V', top.cpp:97) on array 'MAC_TYPE_data_V' and 'store' operation (./top.hpp:12->top.cpp:89) of variable 'tmp.data.V', top.cpp:86 on array 'MAC_TYPE_data_V'.`

Then I realize, it's not about a single slot, it's about the MAC_TYPE array in whole. The array itself must only have single port or something. After having a though on this, I tried the last optimization.

#### Trial 3: Add ARRAY_PARTITION

Yes, I added the `ARRAY_PARTITION` thing.
```
	static my_axis<8> MAC_TYPE[14];
	#pragma HLS ARRAY_PARTITION variable=MAC_TYPE complete dim=1
```

And now the parser() has II=1.

## About Interval

After fixing the parser's II to 1, I looked at top_func's II, which is 2. It's weird. Because both parser and loopback has II=1, how come top_fun's II is 2?
Also, the original loopback's latency is 1. I eventually added PIPELINE to loopback to fix this. But I still don't know how it happened.

```
static void loopback(stream<struct my_axis<FIFO_WIDTH> > *input,
		     stream<struct my_axis<FIFO_WIDTH> > *output)
{
#pragma HLS PIPELINE II=1 enable_flush
	struct my_axis<FIFO_WIDTH> current;

	if (input->empty())
		return;

	current = input->read();
	output->write(current);
}
```
(after adding PIPELINE, loopback has latency of 2)

Okay, just did a quick check of the original xapp code, almost every func has pipeline. Good that I figured out the importance of PIPELINE, ARRAY_PARTITION myself.

# Legal
USE AT YOUR OWN RISK. Check repository LICENSE and DISCLAIMER for more information.
