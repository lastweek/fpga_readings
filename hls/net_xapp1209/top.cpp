#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <assert.h>
#include "top.hpp"

using namespace hls;

enum parser_state {
	PARSER_SM_IDLE = 0,
	PARSER_SM_MAC_TYPE,
	PARSER_SM_STREAM,
	PARSER_SM_RESIDUE,
};

const ap_uint<16> ARP = ap_uint<16>("0x0806", 16);

/*
 * The default FIFO_WIDTH is 8, because this module is
 * originally designed for Xilinx tri-mode MAC.
 * This makes the whole thing complicated than it should be.
 */
static void parser(stream<struct my_axis<FIFO_WIDTH> > *input,
		   stream<struct my_axis<FIFO_WIDTH> > *parser_to_arp,
		   stream<struct my_axis<FIFO_WIDTH> > *parser_to_loopback)
{
#pragma HLS PIPELINE II=1 enable_flush

	static ap_uint<16> type_comb;
	static enum parser_state state = PARSER_SM_IDLE;
	static int index = 0, out_index, in_index;
	struct my_axis<8> current;

	static my_axis<8> MAC_TYPE[14];
#pragma HLS ARRAY_PARTITION variable=MAC_TYPE complete dim=1


	switch (state) {
	case PARSER_SM_IDLE:
		if (input->empty())
			break;
		current = input->read();
		MAC_TYPE[index] = current;
		index++;

		state = PARSER_SM_MAC_TYPE;
		break;
	case PARSER_SM_MAC_TYPE:
		if (input->empty())
			break;
		current = input->read();
		MAC_TYPE[index] = current;

		/* Combine the type field */
		if (index == 12) {
			type_comb(7, 0) = current.data;
		} else if (index == 13) {
			/* The last byte and cycle */
			type_comb(15, 8) = current.data;

			//if (type_comb == ARP)
			//	parser_to_arp->write(MAC_TYPE[0]);
			//else
				parser_to_loopback->write(MAC_TYPE[0]);

			/* next state */
			index = 0;
			state = PARSER_SM_STREAM;
			break;
		}

		index++;
		break;
	case PARSER_SM_STREAM: {
		/*
		 * It's kind awkward due to 8-bit data bus, and the need
		 * to buffer the MAC and TYPE bytes.
		 *
		 * index was reset to 0, it keeps incrementing.
		 * the MAC_TYPE is used as a FIFO circular array.
		 *
		 * If we have a FIFO before parset to convert 8 bit
		 * to 64 bits or something, it will much easier.
		 *
		 */

		if (input->empty())
			break;
		current = input->read();

		in_index = index % 14;
		MAC_TYPE[in_index] = current;

		index++;
		out_index = index % 14;

		//if (type_comb == ARP)
		//	parser_to_arp->write(MAC_TYPE[out_index]);
		//else
			parser_to_loopback->write(MAC_TYPE[out_index]);

		if (current.last == 1)
			state = PARSER_SM_RESIDUE;
		break;
	}
	case PARSER_SM_RESIDUE: {
		/*
		 * This is a place to optimize.
		 * Even though we have II=1, or 2, we are not able to read
		 * in anything in this state. The reason is simple, we only have
		 * one MAC_TYPE array. If we have two, then we can keep the II always flow.
		 *
		 * A very interesting aspect. This is ultimately caused by buffering.
		 * But can be optimized.
		 */
		static int nr_bytes_remaining = 13;

		index++;
		out_index = index % 14;
		nr_bytes_remaining--;

		if (nr_bytes_remaining == 0) {
			index = 0;
			nr_bytes_remaining = 13;
			state = PARSER_SM_IDLE;
		}

		//if (type_comb == ARP)
		//	parser_to_arp->write(MAC_TYPE[out_index]);
		//else
			parser_to_loopback->write(MAC_TYPE[out_index]);
		break;
	}
	}
}

static void arp(stream<struct my_axis<FIFO_WIDTH> > *input,
		stream<struct my_axis<FIFO_WIDTH> > *output)
{
	struct my_axis<FIFO_WIDTH> current;

	if (input->empty())
		return;

	current = input->read();
	output->write(current);
}

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

static void merger(stream<struct my_axis<FIFO_WIDTH> > *output,
		   stream<struct my_axis<FIFO_WIDTH> > *arp_to_merge,
		   stream<struct my_axis<FIFO_WIDTH> > *loopback_to_merge)
{

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
	#pragma HLS DATAFLOW interval=1

	/* Block-level interface */
	#pragma HLS INTERFACE ap_ctrl_none port=return

	/* Port-level interfaces */
	#pragma HLS INTERFACE axis both port=input
	#pragma HLS INTERFACE axis  both port=output

	static stream<struct my_axis<FIFO_WIDTH> > parser_to_arp("parser_to_arp");
	static stream<struct my_axis<FIFO_WIDTH> > parser_to_loopback("parser_to_loopback");
	static stream<struct my_axis<FIFO_WIDTH> > arp_to_merge("arp_to_merge");
	static stream<struct my_axis<FIFO_WIDTH> > loopback_to_merge("loopback_to_merge");

	#pragma HLS STREAM variable=parser_to_arp depth=2 dim=1
	#pragma HLS STREAM variable=parser_to_loopback depth=2 dim=1
	#pragma HLS STREAM variable=arp_to_merge depth=2 dim=1
	#pragma HLS STREAM variable=loopback_to_merge depth=2 dim=1

	/* Frontend parser */
	parser(input, &parser_to_arp, &parser_to_loopback);

	/* Fan out to middle layer modules */
	//arp(&parser_to_arp, output);
	loopback(&parser_to_loopback, output);

	/* Merge output streams */
	//merger(output, &parser_to_arp, &parser_to_loopback);
}
