#ifndef _PKT_GEN_H_
#define _PKT_GEN_H_

#include "hls_stream.h"

/* including header */
#define ETH_MIN_LEN	64
#define ETH_MAX_LEN	1500

#define MAX_PKT_SIZE	512
#define MIN_PKT_SIZE	64
#define PKT_SIZE_STEP	8

#define NR_LOOPS	10

/* Just a reference */
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

void pkt_gen(hls::stream<my_axis> *output);

#endif /* _PKT_GEN_H_ */
