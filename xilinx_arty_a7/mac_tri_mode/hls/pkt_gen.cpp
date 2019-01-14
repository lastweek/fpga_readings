/*
 * Okay, we need to generate packets and send them to FIFO block.
 * FIFO block expose AXI-Stream interface.
 */

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "string.h"
#include "pkt_gen.h"

void pkt_gen(hls::stream<my_axis> *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

	int i, j, len;
	struct my_axis foo;
	unsigned char p[MAX_PKT_SIZE];

	/* Fill with random data */
	for (i = 0; i < MAX_PKT_SIZE; i++) {
		p[i] = i % 256;
	}

	for (i = 0; i < NR_LOOPS; i++) {
		for (len = MIN_PKT_SIZE; len < MAX_PKT_SIZE; len += PKT_SIZE_STEP) {
			/* Update the length field*/
			p[12] = (unsigned char)(len >> 8);
			p[13] = (unsigned char)len;

			/* This loop sends out one packet */
			LOOP_PACKET: for (j = 0; j < len ; j++) {
			#pragma HLS PIPELINE
				foo.data = p[j];

				/* Raise axi_last for last byte */
				if (j == (len - 1))
					foo.last = 1;
				else
					foo.last = 0;

				output->write(foo);
			}
		}
	}
}
