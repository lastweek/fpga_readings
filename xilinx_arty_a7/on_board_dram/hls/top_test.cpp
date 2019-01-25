#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"

using namespace hls;

void top_func(int *pa, char *output);

int main(void)
{
	int data[10];
	int i;
	char output;

	top_func(data, &output);

	for (i = 0; i < 10; i++) {
		printf("[%d] %d\n", i, data[i]);
	}
}
