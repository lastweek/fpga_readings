#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "core.hpp"

using namespace hls;

#define N 20

void dram_read(stream<struct my_axis<8> > *to_net, char *dram);

int main(void)
{
	stream<struct my_axis<8> > output("tb_output");
	struct my_axis<8> tmp = {0, 0};
	char buf[N];
	int i;

	for (i = 0; i < N; i++)
		buf[i] = i;

	/* Let it process */
	for (i = 0; i < N; i++)
		dram_read(&output, buf);
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
