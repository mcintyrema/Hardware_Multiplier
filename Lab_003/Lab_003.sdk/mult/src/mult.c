#include <stdio.h>

int main(void){
	for(int i = 0; i <= 30; i++){
		uint32_t *regmap = (uint32_t *) 0x70000000; // base address of axi_regmap as set in the Vivado address editor
		uint64_t  res = 0, reg;
		uint32_t  A, B; // 32-bit random numbers
		A = rand();
		B = rand();
		res = (uint64_t) A * (uint64_t) B;
		// Assign A, B to your multiplier
		regmap[0] = A;
		regmap[2] = B;
		// give the reset signal

		size_t rst = 0;
		regmap[1] = rst;
		// poll for done signal
		size_t done;
		done = regmap[1];
		// assuming your result is stored in R_high = regmap[1] and R_low = regmap[0]
		// you have to do type casting first, otherwise you will end up with a wrong answer.
		reg = (((uint64_t) regmap[0]) << 32) + ((uint64_t) regmap[2]);
		// %8lx will print uint32_t in hex in 8 digits, %16llx will print uint64_t in hex in 16 digits.
		printf("%8lx * %8lx = %8lx%8lx (%16llx) (%s) \n\n", A, B, regmap[0],
		regmap[2], res, (reg == res ? "correct" : "wrong"));
	}
	return 0;
}
