/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include <stdint.h>
#include <sys/alt_alarm.h>
#include <sys/alt_irq.h>
#include <system.h>
#include <altera_avalon_pio_regs.h>


#include "altera_avalon_uart.h"
#include "altera_avalon_uart_regs.h"


//x[0] = arbirtary
//x[1] = first number in the filter array
//x=[0,010,110,0,0,0,0,0,0,0]

int main()
{
  printf("Hello from Nios II!\n");
  unsigned int uiSwitchValue = 0;
 // smoothing = [1,1,1,1,1,1,1,1,1]
  unsigned char smoothing[9] = {0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1,0x1};

  // Sobel Edge X = [-1,0,1,-2,0,2,-1,0,1]
  unsigned char sobelX[9] = {0xFFFF, 0x0,0x1,0xFFFE,0x0,0x2,0xFFFF,0x0,0x1};


  // sobel Edge Y = [-1,-2,-1,0,0,0,1,2,1]
  unsigned char sobelY[9] = {0xFFFF,0xFFFE,0xFFFF,0x0,0x0,0x0,0x1,0x2,0x1};

  // identity = [0,0,0,0,1,0,0,0,0]
  unsigned char identity[9] = {0x0,0x0,0x0,0x0,0x1,0x0,0x0,0x0,0x0};

  int index;

  while(1){

	  uiSwitchValue = IORD_ALTERA_AVALON_PIO_DATA(SWITCHES_BASE);
	  IOWR_ALTERA_AVALON_PIO_DATA(LEDS_RED_BASE, uiSwitchValue);
	  int switchValueInteger = (int)(uiSwitchValue);

	  if (switchValueInteger==1){ // Smoothing
		  index = 0;
		  // Update the FIR filter coefficients
		  for(int i = 1; i <= 9; i++) {
			  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6+i, smoothing[index]);
			  index++;
		  }

		  // Now we need to tell NIOS that we adjusted filter coeffs...
		  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6, 1);


	  }
	  else if (switchValueInteger==2){// Sobel X
		  index = 0;
		  // Update the FIR filter coefficients
		  for(int i = 1; i <= 9; i++) {
			  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6+i, sobelX[index]);
			  index++;
		  }

		  // Now we need to tell NIOS that we adjusted filter coeffs...
		  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6, 1);

	  }

	  else if (switchValueInteger==4){// SobelY
		  index = 0;
		  // Update the FIR filter coefficients
		  for(int i = 1; i <= 9; i++) {
			  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6+i, sobelY[index]);
			  index++;
		  }

		  // Now we need to tell NIOS that we adjusted filter coeffs...
		  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6, 1);

	  }

	  else{//identity
		  index = 0;
		  // Update the FIR filter coefficients
		  for(int i = 1; i <= 9; i++) {
			  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6+i, identity[index]);
			  index++;
		  }

		  // Now we need to tell NIOS that we adjusted filter coeffs...
		  IOWR(ALT_VIP_CL_2DFIR_0_BASE, 6, 1);


	  }




  }
  return 0;
}
