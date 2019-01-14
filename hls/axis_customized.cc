/*
 * Yizhou Shan, ys@purdue.edu
 * 01/11/2019
 */

struct my_axis {
	char		data;
	ap_uint<1>	last;
};

/*
 * This code shows how to use costomized, or side-channel AXI-S.
 * Another way is using the predefined ap_axis<>.
 */
void foo_1(struct my_axis *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

	/*
	 * PAY BIG FAT ATTENTION
	 * We have to make writes to all elements within the struct.
	 * Otherwise the synthesis will complain no group access.
	 *
	 * Think from a RTL pespective.
	 */
	output->data = 1;
	output->last = 1;
}

/*
 * This code shows how to use multipe-access pointers.
 * UG902 subsection: Interface Synthesis and Multi-Access Pointers
 * This is NOT recommended, though. Use hls::stream
 *
 * Note:
 * 1) Must add volatile in argument list
 * 2) Must group accesses together
 */
void foo(volatile struct my_axis *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

	int i;

	/* Adding PIPELINE is not necessary. */
	for (i = 0; i < 3; i++) {
	#pragma HLS PIPELINE
		output->data = i;
		output->last = 0;
	}

	output->data = 0;
	output->last = 1;
}
