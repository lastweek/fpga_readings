/*
 * Okay, we need to generate packets and send them to FIFO block.
 * FIFO block expose AXI-Stream interface.
 */

#include "ap_axi_sdata.h"

void pkt_gen(ap_axis<32,2,5,6> A[50], ap_axis<32,2,5,6> B[50])
{
#pragma HLS INTERFACE axis port=A
#pragma HLS INTERFACE axis port=B

	int i;

	for(i = 0; i < 50; i++){
		B[i].data = A[i].data.to_int() + 5;
		B[i].keep = A[i].keep;
		B[i].strb = A[i].strb;
		B[i].user = A[i].user;
		B[i].last = A[i].last;
		B[i].id = A[i].id;
		B[i].dest = A[i].dest;
	}
}
