#include <stdio.h>
void main()
{ 
  long  EncCount;
  unsigned char in_d[10];
 in_d[8] = 0xfffffff1;
 in_d[9]=  0xffffff9e;
  EncCount = ( in_d[8] + (in_d[9]<<8) ) *2;
  printf("$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$The Encoder Count is %ld   ======>>>>>>>>>>>>\n",EncCount);
} 
