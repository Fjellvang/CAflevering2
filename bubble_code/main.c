#include <stdio.h>
#include "bubblesort.h"


int printArray(long *A, long len);

int main() {
  int status = 0;
  long A[10] = {10,9,8,7,6,5,4,3,2,1};
  printArray(A, 10);
  status = bubblesort(10,A);
  printArray(A, 10);
  printf("status: %d", status);
}

int printArray(long *A,long len){
  for(int i = 0; i < len; i++){
    printf("%ld ", A[i]);
  }
  printf("\n");
  return 1;
}




