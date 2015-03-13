#include <stdio.h>

int main() {
  int i = 3, j, k;
  j = i++;
  k = ++i;

  printf("i=%d, j=%d, k=%d\n", i, j, k); // 5 3 5
  printf("%d\n", -i++); // -5
  printf("%d, %d, %d\n", i, i++, i++); // 8 7 6 注意printf
  return 0;
}
