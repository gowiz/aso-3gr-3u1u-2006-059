#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int factorial(int n) {
  if (n <= 0) return 1;
  else return n * factorial(n-1);
}

int main()
{
  char input[80];
  while (1) {
    fgets(input, 128, stdin);
    int n = atoi(input);
    printf("%d\n", factorial(n));
  }  
  return EXIT_SUCCESS;
}

