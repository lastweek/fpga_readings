#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"

using namespace hls;

void top_func(int *ptr_a, int *ptr_b, int *flag);

int main(void)
{
	int data_a[10], data_b[10];
	int i;
	int flag;

	top_func(data_a, data_b, &flag);

	printf("%d %d %d\n", data_a[0], data_b[0], flag);
}
