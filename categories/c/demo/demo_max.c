#include <stdio.h>

int max(int a, int b);

int main() {
  int i = max(4, 3); // 值传递
  printf("%d\n", i);
  return 0;
}

int max(int a, int b) {
  int c;
  c = a > b ? a : b;
  return c;
}
