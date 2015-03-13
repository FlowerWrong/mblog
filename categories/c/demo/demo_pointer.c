#include <stdio.h>

int main() {
  int a = 100, b = 200;
  // int *p1 = &a, *p2 = &b; // ??
  int *p1 = NULL, *p2 = NULL;
  p1 = &a;
  p2 = &b;
  printf("%d, %d\n", a, b); // note
  printf("%d, %d\n", *p1, *p2);

  *p1 = *p1 * 3;
  printf("%d\n", a);
  printf("%d\n", *p1);

  p1 = &b;
  return 0;
}
