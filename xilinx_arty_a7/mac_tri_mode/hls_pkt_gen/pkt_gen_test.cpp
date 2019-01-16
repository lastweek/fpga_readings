#include "ap_axi_sdata.h"
#include "pkt_gen.h"

int main(void)
{
	hls::stream<my_axis> output;
	struct my_axis val;
	unsigned char c;
	int i, j, len;
	int x, y;

	pkt_gen(&output, &x, &y);

	for (i = 0; i < NR_LOOPS; i++) {
		for (len = MIN_PKT_SIZE; len < MAX_PKT_SIZE; len += PKT_SIZE_STEP) {
			for (j = 0; j < len ; j++) {
				val = output.read();
				printf("%s[Loop: %2d] [pkt_size=%3d] %#x %d\n",
					(j == 12) ? " ** " : "    ",
					i, len, val.data, val.data);
			}
		}
	}

	return 0;
}
