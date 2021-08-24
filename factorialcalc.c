#include <stdio.h>
#include <stdlib.h>


int main(void) {
  int i, sum = 1, num;

  printf("Input the number : ");
  scanf("%d", &num);

  for (i = 1; i <= num; i++)
    sum = sum * i;

  printf("The Factorial is: %d\n", num);
}
