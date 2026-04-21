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


volatile int * ADDR_EXPORT  = (int *) 0x04041010;
volatile int * PIXEL_EXPORT = (int *) 0x04041030;
volatile int * WREN_EXPORT  = (int *) 0x04041000;



void write_pixel(unsigned int addr, unsigned char color) {
    *ADDR_EXPORT = addr;
    *PIXEL_EXPORT = color & 0xF;
    *WREN_EXPORT = 1;
    *WREN_EXPORT = 0;
}


void draw_color_stripes(){

	for (int y = 0; y < 240; y++){
		for (int x = 0; x < 320; x++){
			unsigned int addr = y * 320 + x;
			unsigned char color = x/20;
			write_pixel(addr, color);
		}
	}
}

void draw_vertical_stripes(){
	for(int y = 0; y < 240; y++){
		for (int x = 0; x < 320; x++){
			unsigned int addr = y * 320 + x;
			unsigned char color = x / 20;
			write_pixel(addr, color);
		}
	}
}


void VGATask(){
	while (1){
		draw_color_stripes();
		printf("Should output horizontal stripes");
		//OSTimeDlyHMSM(0,0,1,0);
		draw_vertical_stripes();
		printf("Should output vertical stripes");
		//OSTimeDlyHMSM(0,0,1,0);

	}
}


int main()
{
  VGATask();

  return 0;
}
