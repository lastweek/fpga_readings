#ifndef _PKT_GEN_H_
#define _PKT_GEN_H_

#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"

#define FIFO_WIDTH	8

template <int N >
struct my_axis {
	ap_uint<N>	data;
	ap_uint<1>	last;
};

#endif /* _PKT_GEN_H_ */
