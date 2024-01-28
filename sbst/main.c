#include "tests.h"


const signature_t const GOLDEN_SIGNATURES[NUMTESTS] = {
	0xCAFECAFE,	// TEST1
	//0x22222222,	// TEST2
	//0x33333333,	// TEST3
	//0x44444444,	// TEST4
	//0x55555555,	// TEST5
	0xCAFECAFE,	// TEST7
};

int test7() {
	
	int a[5] = {1, 0xFFFFFFFF, 3, 0, 5};
	int b[5] = {5, 4, 3, 2, 1};
	int c1[5], c2[5], c3[5], c4[5];
	int i;
	int c5[5], c6[5], c7[5];
	int ad[5], bd[5];

	for (i=0; i<5; i++) {
		c1[i] = a[i]*b[i];
		c2[i] = a[i]/b[i];
		c3[i] = a[i]+b[i];
		c4[i] = a[i]-b[i];
		c5[i] = ad[i]&bd[i];
		c6[i] = bd[i]|ad[i];
		c7[i] = !(ad[i]^bd[i]);
	}
		
	return 0xCAFECAFE; 
};

int main()
{
	int i, fails;
	signature_t signatures[NUMTESTS];
	
	signatures[TEST1] = test1();
	//signatures[TEST2] = test2();
	//signatures[0] = test4();
	//signatures[TEST4] = test4();
	//signatures[TEST5] = test5();	
	signatures[1] = test7();

	for(i=0; i<NUMTESTS; i++) {
		fails += signatures[i] != GOLDEN_SIGNATURES[i];
	}

 	return fails;
}
