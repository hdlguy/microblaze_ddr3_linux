#include "xil_printf.h"
#include "fpga.h"
#include "xparameters.h"
#include <stdlib.h>


int main()
{

    xil_printf("DDR3 Memory Test\n\r");

    //const uint32_t ddr_size = XPAR_MIG_7SERIES_0_HIGHADDR - XPAR_MIG_7SERIES_0_BASEADDR + 1;
    const int Ntest = 0x00040000;


    uint32_t* ddrptr = (uint32_t *)XPAR_MIG_7SERIES_0_BASEADDR;
    uint32_t wval;
    srand(1);
    xil_printf("writing memory\n\r");
    for (int i=0; i<Ntest; i++) {
    	wval = rand();
    	ddrptr[i] = wval;
    }


    uint32_t rval;
    srand(1);
    uint32_t errors = 0;
    xil_printf("reading memory\n\r");
    for (int i=0; i<Ntest; i++) {
    	wval = rand();
    	rval = ddrptr[i];
    	if (rval != wval) {
    		errors++;
    	}
    }
    xil_printf("errors = %u\n\r", errors);


    xil_printf("End of test\n\r\n\r");


    return 0;
}
