/*
 * A collection of good and bad examples of sending packets
 * Also a story of my leanring experience :p
 */

/* Seems not a good solution */
void pkt_gen(hls::stream<my_axis> *output)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE axis port=output

#define PKT_SIZE	20

	int i
	struct my_axis foo;
	char packet[PKT_SIZE], *p;

	/* Fill the packet with random data */
	p = packet;
	for (i = 0; i < PKT_SIZE; i++)
		p[i] = i % 10 +1;

	/* Send out the packet */
	for (i = 0; i < PKT_SIZE ; i++) {
		foo.data = packet[i];

		if (i == (PKT_SIZE - 1))
			foo.last = 1;
		else
			foo.last = 0;

		output->write(foo);
	}
}
