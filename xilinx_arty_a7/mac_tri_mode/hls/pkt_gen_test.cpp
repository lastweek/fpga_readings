
#include "ap_axi_sdata.h"
#include "hls_stream.h"

struct my_axis{
    char        data;
    ap_uint<1>       last;
};

void pkt_gen(hls::stream<my_axis> *output);

int main(void)
{
	hls::stream<my_axis> output;
	struct my_axis val;
	char c;
	int i;

	pkt_gen(&output);

	for (i = 0; i < 20; i++) {
		val = output.read();
		printf("%x\n", val.data);
	}

	return 0;
}
