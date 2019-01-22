#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"
#include "string.h"

using namespace hls;

void top_func(int *pa)
{
#pragma HLS INTERFACE m_axi depth=128 port=pa offset=off

	int i;
	int data[10];

	for (i = 0; i < 10; i++) {
		data[i] = i;
	}

	memcpy(pa, data, 10 * sizeof(int));
}
