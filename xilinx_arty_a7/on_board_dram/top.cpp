#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"
#include "string.h"

using namespace hls;

void top_func(int *pa)
{
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS INTERFACE m_axi depth=10 port=pa offset=direct

	int i;
	int data[10];

	for (i = 0; i < 10; i++) {
		data[i] = i;
	}

	pa[0] = data[0];
	pa[2] = data[2];
	pa[4] = data[4];
	pa[6] = data[6];
	pa[8] = data[8];


	pa[1] = data[1];
	pa[3] = data[3];
	pa[5] = data[5];
	pa[7] = data[7];
	pa[9] = data[9];
}
