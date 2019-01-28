#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <assert.h>
#include "top.hpp"

using namespace hls;

void dram_write(stream<struct my_axis<8> > *from_net, char *dram)
{
#pragma HLS PIPELINE

/* Port-level interfaces */
#pragma HLS INTERFACE axis both port=from_net
#pragma HLS INTERFACE m_axi depth=64 port=dram offset=direct

	static unsigned int offset = 0;
	struct my_axis<8> tmp;
	char *dst;

	if (from_net->empty())
		return;
	tmp = from_net->read();

	dst = dram + offset;
	dst[0] = tmp.data;
	offset++;
}
