#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"
#include "string.h"

using namespace hls;

void top_func(int *ptr_a, int *ptr_b, int *flag)
{
#pragma HLS PIPELINE
#pragma HLS INTERFACE port=return

#pragma HLS INTERFACE m_axi depth=1 port=ptr_a offset=direct bundle="axi_a"
#pragma HLS INTERFACE m_axi depth=1 port=ptr_b offset=direct bundle="axi_b"
#pragma HLS INTERFACE ap_none port=flag

	static int nr = 0;
	if (nr == 0) {
		*ptr_a = 0x88;
		*ptr_b = 0x99;

		*flag = 1;
		nr++;
	}
}
