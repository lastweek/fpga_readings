#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.h"
using namespace hls;

#define N 10

int main(void)
{
	stream<struct my_axis<FIFO_WIDTH> > input("tb_input"), output("tb_output");
	struct my_axis<FIFO_WIDTH> tmp = {0, 0};
	int i;

	/* Write input data to input stream */
	for (i = 0; i < N; i++) {
		tmp.data = i;

		if (i == 2)
			tmp.last = 1;
		else
			tmp.last = 0;

		input.write(tmp);
	}

	/* Let it process */
	for (i = 0; i < N; i++) {
		top_func(&input, &output);
	}

	/* Get output data */
	i = 0;
	while (!output.empty()) {
		tmp = output.read();

		printf("[%2d] data: %x last: %x\n",
			i++, tmp.data.to_int(), tmp.last.to_int());
	}

	return 0;
}
