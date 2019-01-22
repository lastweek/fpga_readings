#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"

using namespace hls;

void top_func(int *pa);

int main(void)
{
	int data[10];
	int i;

	top_func(data);

	for (i = 0; i < 10; i++) {
		printf("[%d] %d\n", i, data[i]);
	}
}
