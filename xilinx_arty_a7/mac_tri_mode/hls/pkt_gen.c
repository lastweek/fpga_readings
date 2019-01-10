/*
 * Okay, we need to generate packets and send them to FIFO block.
 * FIFO block expose AXI-Stream interface.
 */


#include<stdio.h>

int pkt_gen(int num1, int num2, int A[50], int B[50]) {
#pragma HLS INTERFACE axis register port=A
#pragma HLS INTERFACE axis register port=B

int num3;
num3 = num1 + num2;


int i;

for(i = 0; i < 50; i++){
B[i] = A[i] + 5;
}

return (num3);
}
