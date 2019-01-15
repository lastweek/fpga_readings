#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.h"
using namespace hls;

#define N 10

int main(void)
{
	stream<struct my_axis<FIFO_WIDTH> > input("tb_input"), output("tb_output");
	struct my_axis<FIFO_WIDTH> tmp;
	int i;

	for (i = 0; i < N; i++) {
		tmp.data = 1;

		if (i == 2)
			tmp.last = 1;
		else
			tmp.last = 0;

		input.write(tmp);
	}

	for (i = 0; i < N; i++) {
		top_func(&input, &output);
	}

	i = 0;
	while (!output.empty()) {
		tmp = output.read();

		printf("[%2d] %d %d\n", i++, tmp.data, tmp.last);
	}

	return 0;
}
