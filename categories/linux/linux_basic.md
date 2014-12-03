## [linux基础教程](http://see.xidian.edu.cn/cpp/html/2726.html)

1. `cal` 日历
2. `passwd` 修改密码
3. `ls -l/-al` 以 d* 开头的为目录, `ls *.rb`, `ls /etc/apache2`
4. `whoami` 查看当前用户信息
5. `users/who/w` 查看当前在线用户
6. `logout`
7. `halt #直接关闭系统` `init 0 #使用预先定义的脚本关闭系统，关闭前可以清理和更新有关信息` `init 6/reboot #重启` `poweroff #通过断电来关闭系统` `shutdown #安全关闭系统`

### linux 文件管理

1. linux中有三种文件类型: 普通文件，目录和设备文件; `ls -l` -表示普通文件, d表示目录
2. `cat -b filename` 查看小文件内容, -b 显示行号
3. `wc filename` 命令来统计当前文件的行数、单词数和字符数
4. `cp source_file destination_file`
5. `mv old_file new_file` 重命名
6. `rm filename`

### linux 目录

1. `cd ~` 主目录, `cd ~username` 进入其他人的主目录
2. `cd -` 返回进入当前目录前所在的目录
3. `pwd` 获取当前所在的目录
4. `mkdir dirname` 为 `mkdir` 命令增加 `-p` 选项，可以一级一级创建所需要的目录，即使上级目录不存在也不会报错
5. `rmdir dirname` 删除目录时请确保目录为空，不会包含其他文件或目录
6. `mv olddir newdir` 重命名目录

### linux 文件权限和访问模式

1. 所有者权限: 文件所有者能够进行的操作; 组权限: 文件所属用户组能够进行的操作; 外部权限(其他权限): 其他用户可以进行的操作
2. `ls -l`
3. `chmod` 改变权限 +	为文件或目录增加权限; -	删除文件或目录的权限; =	设置指定的权限
4. 使用符号表示权限: `chmod o+wx testfile #other` `chmod u-x testfile #user` `chmod g=rx testfile #group` `chmod o+wx,u-x,g=rx testfile`
5. 使用数字表示权限: ![chmod-d](https://raw.githubusercontent.com/FlowerWrong/mblog/master/screen/category-linux-basic-chmod.png)
6. 更改所有者和用户组: `chown #用来改变文件的所有者` `chgrp #用来改变文件所在的群组`
7. Linux 通过给程序设置SUID(Set User ID)和SGID(Set Group ID)位来赋予普通用户特殊权限

### linux 环境变量

1. `$TEST="Linux Programming" $echo $TEST` 退出 Shell 时，变量将消失
2. `vim /etc/profile` `vim ~/.profile`
3. `echo $PATH`
4. PS1和PS2变量: PS1变量用来保存命令提示符
5. 常用环境变量: DISPLAY, HOME, IFS, LANG, PATH, PWD, RANDOM, TERM, TZ, UID

### linux 打印文件和发送邮件

1. `pr` 命令用来将文本文件转换成适合打印的格式
2. `mail -s "Test Message" admin@yahoo.com` `mail -s "Report 05/06/07" admin@yahoo.com < demo.txt`

### linux 管道和过滤器

1. 有时候，我们可以把两个命令连起来使用，一个命令的输出作为另一个命令的输入，这就叫做管道。为了建立管道，需要在两个命令之间使用竖线(|)连接
2. 管道是Linux进程之间一种重要的通信机制；除了管道，还有共享内存、消息队列、信号、套接字(socket) 等进程通信机制
3. 管道使用竖线(|)将两个命令隔开，竖线左边命令的输出就会作为竖线右边命令的输入。连续使用竖线表示第一个命令的输出会作为第二个命令的输入，第二个命令的输出又会作为第三个命令的输入，依此类推
4. `grep pattern file(s)` ![chmod-d](https://raw.githubusercontent.com/FlowerWrong/mblog/master/screen/category-linux-basic-grep.png)
5. `ls -l | grep "Aug"` `ls -l | grep -i "carol.*aug"`
6. `sort food` 对 foot 文件的各行进行排序
7. `ls -l | grep "Aug" | sort +4n`
8. `ls -l | grep "Aug" | sort +4n | more` more cmd

### linux 进程管理

1. 
