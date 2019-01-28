#include <ap_axi_sdata.h>
#include <ap_int.h>
#include <hls_stream.h>
#include <assert.h>
#include "top.hpp"

using namespace hls;

static void write_to_dram(stream<struct my_axis<8> > *in, char *output, unsigned int addr)
{
#pragma HLS INTERFACE axis both port=in
#pragma HLS INTERFACE m_axi depth=64 port=output offset=direct

#pragma HLS PIPELINE II=1 enable_flush

	struct my_axis<8> tmp;
	char *dst;

	static unsigned int base_addr = 0;

	if (in->empty())
		return;

	tmp = in->read();

	addr = base_addr;
	dst = output + base_addr;
	dst[0] = tmp.data;
	base_addr++;
}

void read_from_dram(char *mem_in, stream<struct my_axis<8> > *net_out, unsigned int addr)
{
#pragma HLS PIPELINE II=1 enable_flush
#pragma HLS INTERFACE axis both port=net_out
#pragma HLS INTERFACE m_axi depth=64 port=mem_in offset=direct

	struct my_axis<8> tmp;
	char *dst;

	dst = mem_in + addr;
	tmp.data = dst[0];
	net_out->write(tmp);
}

void network_parse(stream<struct my_axis<8> > *in, stream<struct my_axis<8> > *out)
{
#pragma HLS PIPELINE II=1 enable_flush


	static struct my_axis<8> current = {0, 0};

	if (in->empty())
		return;

	current = in->read();
	out->write(current);
}

void top_func(stream<struct my_axis<8> > *net_rx,
	      stream<struct my_axis<8> > *net_tx, char *dram)
{
#pragma HLS INTERFACE port=return
//#pragma HLS DATAFLOW
#pragma HLS PIPELINE

/* Port-level interfaces */
#pragma HLS INTERFACE axis both port=net_rx
#pragma HLS INTERFACE axis both port=net_tx
#pragma HLS INTERFACE m_axi depth=64 port=dram offset=direct

	static stream<struct my_axis<8> > net_to_mem("net_to_mem");
#pragma HLS STREAM variable=net_to_mem depth=2 dim=1

	static unsigned int addr;

	network_parse(net_rx, &net_to_mem);
	write_to_dram(&net_to_mem, dram, addr);
	read_from_dram(dram, net_tx, addr);
}
