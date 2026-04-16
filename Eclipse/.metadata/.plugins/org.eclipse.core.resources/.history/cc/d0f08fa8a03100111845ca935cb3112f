#include <stdio.h>

volatile int * LED_ptr  = (int *) 0x00021090;

int main()
{
  printf("Hello from Nios II!\n");


  while (1){

	  *(LED_ptr) = !(*(LED_ptr));


  }
  return 0;
}
