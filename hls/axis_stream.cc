/*
 * Yizhou Shan, ys@purdue.edu
 * 01/11/2019
 */

#include "ap_axi_sdata.h"
#include "hls_stream.h"

struct my_axis{
	char		data;
	ap_uint<1>	last;
};

/*
 * hls::stream<T>
 *
 * We can use the following to define a AXI stream.
 * stream is convenient in the sense that you can output multiple times
 * by using write(), which is a reasonable way to write and think!
 *
 * The rules from axi_customized.cc sort of did not apply here.
 * You actually don't need to write all fields. I guess write() just
 * output the whole thing.
 *
 * 
 * So,
 * we now have two ways to output/input multiple times
 * 1) hls::stream
 * 2) pointers that are accessed multiple times
 *
 * Most code you find on the web use stream, and it's because stream is truly
 * a better choice. For several reasons:
 * 1) clear code
 * 2) test bench is able to catch multiple outputs.
 * 3) without UNROLL, consecutive writes are already performed at back-to-back cycles.
 */
void a_good_foo(hls::stream<my_axis> *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

	struct my_axis foo;
	int i;

	for (i = 10; i >= 0; i--) {
		foo.data = i;

		if (i == 0)
			foo.last = 1;
		else
			foo.last = 0;

		output->write(foo);
	}
}

void a_bad_foo(volatile struct my_axis *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

	int i;

	/*
	 * Adding UNROLL is not necessary.
	 * But I found with UNROLL, it perfectly emulate
	 * the contiguous multiple output.
	 */
	for (i = 0; i < 3; i++) {
	#pragma HLS UNROLL
		output->data = i;
		output->last = 0;
	}
}
