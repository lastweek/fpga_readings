/*
 * Okay, we need to generate packets and send them to FIFO block.
 * FIFO block expose AXI-Stream interface.
 */

#include "ap_axi_sdata.h"
#include "hls_stream.h"

/* including header */
#define ETH_MIN_LEN	64
#define ETH_MAX_LEN 1500

struct header_eth {
	unsigned char dst[6];
	unsigned char src[6];
	unsigned char len_type[2];
};

struct my_axis{
    ap_int<8>        data;
    ap_uint<1>       last;
};

#define DST_MAC_ADDR	"112233445566"
#define SRC_MAC_ADDR	"aabbccddeeff"

void pkt_gen(ap_axis<8,1,1,1> output)
{
#pragma HLS INTERFACE axis port=output

	int i;

	for (i = 0; i < 70; i++) {
		output.data = i;
		output.last = 0;
	}
}
