/*
 * Okay, we need to generate packets and send them to FIFO block.
 * FIFO block expose AXI-Stream interface.
 */

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "string.h"

/* including header */
#define ETH_MIN_LEN	64
#define ETH_MAX_LEN 1500

struct eth_packet {
	char dst[6];
	char src[6];
	char len_type[2];
	char data[50];
};

struct my_axis{
    char             data;
    ap_uint<1>       last;
};


#define HDR_SIZE	14
#define PKT_SIZE	64

static inline void init_eth_packet(struct eth_packet *pkt)
{
	int i;
	char *p;

	p = (char *)pkt;
	for (i = 0; i < 64; i++) {
		p[i] = i;
	}

	pkt->len_type[0] = 0x40;
	pkt->len_type[1] = 0;
}

void pkt_gen(hls::stream<my_axis> *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

	int i, j;
	struct my_axis foo;
	char *p;
	static struct eth_packet pkt;

	init_eth_packet(&pkt);

	p = (char *)&pkt;

	LOOP_SEND: for (j = 0; j < 10; j++) {
		LOOP_SEND_ONE: for (i = 0; i < PKT_SIZE ; i++) {
		#pragma HLS UNROLL

			foo.data = p[i];

			if (i == (PKT_SIZE - 1))
				foo.last = 1;
			else
				foo.last = 0;

			output->write(foo);
		}
	}
}
