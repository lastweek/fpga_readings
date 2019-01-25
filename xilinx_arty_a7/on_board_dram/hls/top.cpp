#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#include "top.hpp"
#include "string.h"

using namespace hls;

void top_func(int *pa, volatile char *output)
{
#pragma HLS PIPELINE
#pragma HLS INTERFACE port=return

#pragma HLS INTERFACE ap_none port=output
#pragma HLS INTERFACE m_axi depth=1 port=pa offset=direct

	*pa = 8;

	*output = 2;
}
