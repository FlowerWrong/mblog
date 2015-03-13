# Linux c 编程实战 读书笔记

## 书籍推荐
1. [c 进阶书籍](http://www.cnblogs.com/shanzhizi/archive/2012/07/10/2585357.html)

### 第一章

`gcc -o test test.c`

### 第二章

1. 数据类型: 基本数据类型，构造数据类型，指针类型，空类型
2. sizeof()
3. int float double %d %f %f
4. char
5. 字符串常量，符号常量
6. 左结合(+,c) 右结合(=)
7. 强制类型转换 () (double)a
8. 自动类型转换
9. putchar getchar printf scanf

### 第三章

1. 空语句，表达式语句，复合语句(block)，函数调用语句，控制语句
2. 顺序结构，选择结构，循环结构
3. gcc 编译器
        预处理
        编译
        汇编
        链接
4. `man gcc` `info gcc`
5. 自己写的头文件用 `#include "my.h"` 系统的头文件用 `#include <stdio.h>`
6. 单引号和双引号

### 第四章

1. 函数
        定义
        递归调用
2. 变量
        访问控制
        嵌套作用域
        {}标识一个作用域
        存储类别(动态，静态)
        extern 申明全局变量
3. 数组
        int a[10] = {0 ... 9}
        字符数组
        字符串(是用字符数组来存储的)
4. 指针(深入学习)
        指针变量
        *
        &
        数组和指针的关系
        二级指针(指针的指针)
        指针与函数
5. 字符串函数
        puts gets
        strcpy strncpy
        strcat strncat
        strcmp strncmp
        strlen
        strlwr strupr
        strstr strchr
6. gdb
        gcc -g -Wall hello.c -o hello
        gdb hello
        list
        run
        quit
        行号设置断点 `break 7`
        以函数名设置断点 `break get_num`
        以条件表达式设置断点 `break 7 if i == 99`
        `watch i==99`
        `continue`
        `next`
        `print i`
        `info breakpoints`
        `disable 2`
        `clear/delete 2`
        `whatis`
        `set`
        `kill`
        `step`
        `nexti`
        `stepi`

### 第五章

1. c预处理命令
        宏定义
        文件包含
2. 结构体和共用体
        struct 结构体名
        {
            成员列表
            成员运算符
            指针->结构体成员
        } 变量列表;

        union 共用体名
        {
            成员类别
            内存对齐
        } 变量列表;
3. typedef
4. 位运算(以位为单位来使用内存，节约内存)
5. make(回溯)
        make VPATH
        变量
        条件语句
        使用库

### 第六章

### 第七章

### 第八章

### 第九章

### 第十章
