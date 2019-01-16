#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.h"

using namespace hls;

static void decoder(stream<struct my_axis<FIFO_WIDTH> > *input,
		    stream<struct my_axis<FIFO_WIDTH> > *output)
{
	struct my_axis<FIFO_WIDTH> curr;

	curr = input->read();
	output->write(curr);
}

static void loopback(stream<struct my_axis<FIFO_WIDTH> > *input,
		     stream<struct my_axis<FIFO_WIDTH> > *output)
{
	struct my_axis<FIFO_WIDTH> curr;

	curr = input->read();
	output->write(curr);
}

void top_func(hls::stream<struct my_axis<FIFO_WIDTH> > *input,
	      hls::stream<struct my_axis<FIFO_WIDTH> > *output)
{
	/*
	 * attempt to schedule the execution of all the sub-functions of top_func()
	 * in parallel. It does not propagate down into sub-functions.
	 *
	 * Initiation Interval (II) tells HLS how often this module has to be able
	 * to process a new input data word.  This does not preclude the module being
	 * internally pipelined and having a latency greater than 1.
	 *
	 * An II=2 means that the module has 2 cycles to complete the processing
	 * of a data word before having to read in a new one.
	 */
	#pragma HLS DATAFLOW

	/* Block-level interface */
	#pragma HLS INTERFACE ap_ctrl_none port=return

	/* Port-level interfaces */
	#pragma HLS INTERFACE axis register both port=input
	#pragma HLS INTERFACE axis register both port=output

	static stream<struct my_axis<FIFO_WIDTH> > decoder_output;

	#pragma HLS STREAM variable=decoder_output depth=2 dim=1

	decoder(input, &decoder_output);
	loopback(&decoder_output, output);
}
