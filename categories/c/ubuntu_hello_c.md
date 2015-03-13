# hello world c program on ubuntu with gcc

### hello.c

```c
#include <stdio.h>
int main(int argc, char *argv[])
{
  printf("%s", "Hello World!\n");
  return 0;
}
```

### gcc

```bash
gcc -g -Wall hello.c -o hello
```

-g 加入除錯資訊
-Wall 顯示所有的警告訊息
-o 用來指定所生成的可執行程式的文件名

### exe

```bash
./hello
```
