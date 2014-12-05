## [Shell basic](http://see.xidian.edu.cn/cpp/view/6994.html)

### shell 简介

1. shell 两种执行命令的方式: 交互式（Interactive） and 批处理（Batch）

### 几种 shell

1. Unix/Linux上常见的Shell脚本解释器有bash、sh、csh、ksh等
2. bash是 Bourne Again Shell 的缩写
3. shell 脚本语言与编译型语言的差异
4. `chmod +x ./shell1.sh` and then `./shell1.sh`

### shell 变量

1. `variableName="value"`
2. 只读变量: `readonly myUrl`
3. `unset variable_name`
4. 变量类型: 局部变量, 环境变量, shell变量

### shell 特殊变量

1. $    当前Shell进程的ID，即pid, `echo $$`
2. $0 	当前脚本的文件名
3. $n 	传递给脚本或函数的参数。n 是一个数字，表示第几个参数。例如，第一个参数是$1，第二个参数是$2。
4. $# 	传递给脚本或函数的参数个数。
5. $* 	传递给脚本或函数的所有参数。
6. $@ 	传递给脚本或函数的所有参数。被双引号(" ")包含时，与 $* 稍有不同
7. $? 	上个命令的退出状态，或函数的返回值, 退出状态是一个数字，一般情况下，大部分命令执行成功会返回 0，失败返回 1
8. -e 表示对转义字符进行替换 `echo -e "Value of a is $a \n"` 使用bash, 需要写-e； 使用sh, 不需要而且不能识别-e
9. 命令替换: \`command`
10. 变量替换

### shell 运算符

1. expr
2. awk
3. 条件表达式要放在方括号之间，并且要有空格，例如 [$a==$b] 是错误的，必须写成 [ $a == $b ]

### shell 注释

1. 以`#`开头的行就是注释，会被解释器忽略

### shell 字符串

1. 单引号里的任何字符都会原样输出，单引号字符串中的变量是无效的
2. 单引号字串中不能出现单引号（对单引号使用转义符后也不行）

### shell 数组

1. bash支持一维数组（不支持多维数组）
2. 在Shell中，用括号来表示数组，数组元素用“空格”符号分割开 `array_name=(value0 value1 value2 value3)`
3. 使用 @ 或 * 可以获取数组中的所有元素

### shell echo 命令

1. 如果变量与其它字符相连的话，需要使用大括号（{ }）
2. 显示结果重定向至文件: `echo "It is a test" > myfile`
3. 若需要原样输出字符串（不进行转义），请使用单引号

### shell print 命令

1. `printf` 命令用于格式化输出， 是 `echo` 命令的增强版
2. `printf format-string [arguments...]`
3. arguments 使用空格分隔，不用逗号
4. 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
5. 根据POSIX标准，浮点格式%e、%E、%f、%g与%G是“不需要被支持”。这是因为awk支持浮点预算，且有它自己的printf语句。这样Shell程序中需要将浮点数值进行格式化的打印时，可使用小型的awk程序实现

### shell if else

1. if ... fi 语句；
2. if ... else ... fi 语句；
3. if ... elif ... else ... fi 语句。
4. expression 和方括号([ ])之间必须有空格，否则会有语法错误
5. test 命令用于检查某个条件是否成立，与方括号([ ])类似

### shell case 语句

1. ;; 与其他语言中的 break 类似，意思是跳到整个 case 语句的最后

### shell for while until break continue

1. 一般while循环优于until循环，但在某些时候，也只是极少数情况下，until 循环更加有用
2. 在嵌套循环中，break 命令后面还可以跟一个整数，表示跳出第几层循环 `break n`
3. 同样，continue 后面也可以跟一个数字，表示跳出第几层循环

### shell 函数

1. 函数返回值，可以显式增加return语句；如果不加，会将最后一条命令运行结果作为返回值
2. Shell 函数返回值只能是整数，一般用来表示函数执行成功与否，0表示成功，其他值表示失败
3. 像删除变量一样，删除函数也可以使用 unset 命令，不过要加上 .f 选项 `unset .f function_name`
4. 如果你希望直接从终端调用函数，可以将函数定义在主目录下的 .profile 文件，这样每次登录后，在命令提示符后面输入函数名字就可以立即调用

### shell 函数参数

1. $10 不能获取第十个参数，获取第十个参数需要${10}。当n>=10时，需要使用${n}来获取参数
2. $# 	传递给函数的参数个数。
3. $* 	显示所有传递给函数的参数。
4. $@ 	与$*相同，但是略有区别，请查看Shell特殊变量。
5. $? 	函数的返回值。

### shell 输入输出重定向

1. 命令输出重定向 `command > file`
2. 输出重定向会覆盖文件内容, 如果不希望文件内容被覆盖，可以使用 >> 追加到文件末尾
3. 和输出重定向一样，Unix 命令也可以从文件获取输入 `command < file`
4. 如果希望 stderr 重定向到 file `command 2 > file`
5. 如果希望将 stdout 和 stderr 合并后重定向到 file `command > file 2>&1`
6. Here Document
7. 如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 /dev/null `command > /dev/null`
8. /dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到”禁止输出“的效果。

### shell 文件包含

1. `. filename` or `source filename`
2. 被包含脚本不需要有执行权限
