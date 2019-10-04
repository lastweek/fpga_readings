#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <assert.h>
#include "core.hpp"

using namespace hls;

void dram_read(stream<struct my_axis<8> > *to_net, char *dram)
{
#pragma HLS PIPELINE

/* Port-level interfaces */
#pragma HLS INTERFACE axis both port=to_net
#pragma HLS INTERFACE m_axi depth=64 port=dram offset=direct

	static unsigned int addr = 0;
	struct my_axis<8> tmp;
	char *dst;

	if (addr > 41)
		return;

	dst = dram + addr;

	tmp.data = dst[0];
	if (addr < 41)
		tmp.last = 0;
	else
		tmp.last = 1;
	to_net->write(tmp);

	addr++;
}
