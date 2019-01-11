
#include "ap_axi_sdata.h"

struct my_axis{
    ap_int<8>        data;
    ap_uint<1>       last;
};

void pkt_gen(ap_axis<8,1,1,1> output);

int main(void)
{
	struct my_axis my_axis;
	ap_axis<8,1,1,1> axis;

	pkt_gen(axis);

	return 0;
}
