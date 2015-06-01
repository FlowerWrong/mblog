#include <stdio.h>

int main(void)
{
  printf("%s", "Hello World!\n");
  unsigned char a = 1;
  unsigned char* b = &a;
  unsigned char** c = &b;
  printf("%d", a);
  printf("%s", "\n");
  printf("%p", b);
  printf("%s", "\n");
  printf("%p", c);
  printf("%s", "\n");
  printf("%d", *b);
  printf("%s", "\n");
  printf("%d", **c);
  printf("%s", "\n");
  unsigned int d = 257;
  unsigned int* e = &d;
  unsigned char* f = (unsigned char*)&d;  //必须强制转换一下

  printf("%d", *e); // 输出 257
  printf("%s", "\n");
  printf("%d", *f); // 输出 1

  printf("%s", "\n");
  return 0;
}
