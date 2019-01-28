#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"

using namespace hls;

#define N 20

void dram_write(stream<struct my_axis<8> > *from_net, char *dram);

int main(void)
{
	stream<struct my_axis<8> > input("tb_input");
	struct my_axis<8> tmp = {0, 0};
	char buf[N];
	int i;

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
		dram_write(&input, buf);
		printf("buf[%2d] %x\n", i, buf[i]);
	}

	return 0;
}
