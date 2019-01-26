#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"

using namespace hls;

#define N 20

void top_func(stream<struct my_axis<8> > *net_rx,
	      stream<struct my_axis<8> > *net_tx,
	      char *dram);

int main(void)
{
	stream<struct my_axis<8> > input("tb_input"), output("tb_output");
	struct my_axis<8> tmp = {0, 0};
	char buf[N];
	int i, nr_packets;

	for (i = 0; i < N; i++) {
		tmp.data = i;

		if (i == (N-1))
			tmp.last = 1;
		else
			tmp.last = 0;
		input.write(tmp);
	}

	printf("Input done...\n");

	/* Let it process */
	for (i = 0; i < N; i++) {
		top_func(&input, &output, buf);
		printf("buf[%2d] %x\n", i, buf[i]);
	}
	printf("Processing done...\n");

	/* Get output data */
	i = 0;
	while (!output.empty()) {
		tmp = output.read();

		printf("[%2d] data: %d last: %d\n",
			i++, tmp.data.to_int(), tmp.last.to_int());
	}

	return 0;
}
