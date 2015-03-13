#include <stdio.h>

int main() {
  short int i;
  int j;
  long int k;
  int a, b, c;
  a = sizeof(i);
  b = sizeof(j);
  c = sizeof(k);

  printf("a is %d\n", a);
  printf("b is %d\n", b);
  printf("c is %d\n", c);

  return 0;
}
