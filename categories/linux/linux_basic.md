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

1. 当我们运行程序时，Linux会为程序创建一个特殊的环境，该环境包含程序运行需要的所有资源，以保证程序能够独立运行，不受其他程序的干扰。这个特殊的环境就称为进程
2. 简而言之，进程就是程序的实例, 例如 `ls` 命令就会创建一个进程
3. 系统通过一个五位数字跟踪程序的运行状态，这个数字称为 `pid` 或进程ID。每个进程都拥有唯一的 `pid`
4. 进程包括: 前台进程和后台进程
5. 默认情况下，用户创建的进程都是前台进程；前台进程从键盘读取数据，并把处理结果输出到显示器
6. 创建后台进程最简单的方式就是在命令的末尾加 `&` `ls ch*.doc &`
7. 可以使用 `ps` 命令查看进程的运行状态，包括后台进程
8. `ps` or `ps -f #full` `ps -auex`
9. 当进程运行在前台时，可以通过 `kill` 命令或 `Ctrl+C` 组合键来结束进程
10. 如果进程运行在后台，那么首先要通过 `ps` 命令来获取进程ID，然后使用 `kill` 命令"杀死"进程
11. 如果进程忽略 `kill` 命令，那么可以通过 `kill -9` 来结束
12. 父进程和子进程
13. 僵尸进程和孤儿进程: init 进程会成为所有孤儿进程的父进程。init 的 pid 为1，是Linux系统的第一个进程，也是所有进程的父进程
14. 常驻进程 `ps -ef`
15. `top` 命令是一个很有用的工具，它可以动态显示正在运行的进程，还可以按照指定条件对进程进行排序，与Windows的任务管理器类似
16. 任务和进程: `jobs` 命令可以用来查看系统中正在运行的任务，包括后台运行的任务。该命令可以显示任务号及其对应的进程ID。一个任务可以对应于一个或者多个进程号
17. `jobs -l`
18. 前台任务和后台任务的切换: `fg` 命令可以将后台任务调到前台, eg `fg %jobnumber`; `bg` 命令可以将后台暂停的任务，调到前台继续运行, `bg %jobnumber`

### linux 网络通信工具

1. `ping www.baidu.com or ip`
2. `ftp hostname or ip-address`
3. `telnet amrood.com`
4. `finger` 可以让我们查看本地主机或远程主机上的用户信息。有些系统为了安全会禁用 `finger` 命令

### linux vi editor

1. 工作模式: 普通模式, 编辑模式, 命令模式
2. 在普通模式下输入 i(插入)、c(修改)、o(另起一行) 命令时进入编辑模式；按 esc 键退回到普通模式
3. 在普通模式下输入冒号(:)可以进入命令模式。输入完命令按回车，命令执行完后会自动退回普通模式
3. `ZZ` 保存并退出，相当于 wq，但是更加方便
4. k, j, h, l; number+j, eg `2j`
5. `0 或 |` 将光标定位在一行的开头; `$` 将光标定位在一行的末尾; ......[more](http://see.xidian.edu.cn/cpp/html/2735.html)
6. `set` 命令可以对 vi 编辑器进行一些设置
7. 运行命令: `:! ls`
8. `:s/search/replace/g`

### linux 文件系统

1. `file filename` 查看文件类型(binary, text, etc)
2. `find filename dir` 搜索文件或目录
3. `head filename` 显示文件的开头，与 `tail` 命令相对
4. `less filename` 查看文件的全部内容，可以分页显示，比 `more` 命令要强大
5. `more filename` 查看文件的全部内容，可以分页显示
6. `touch filename` 文件不存在时创建一个空文件，存在时修改文件时间戳
7. `whereis filename` 查看文件所在位置
8. `which filename` 如果文件在环境变量PATH中有定义，那么显示文件位置
9. 管理磁盘分区时经常会使用 `df` (disk free) 命令，`df -k` 命令可以用来查看磁盘空间的使用情况（以千字节计）
10. `du` (disk usage) 命令可以用来查看特定目录的空间使用情况; `du /etc` or `du -h /etc`
11. 挂载文件系统: 查看当前系统所挂载的硬件设备可以使用 `mount` 命令
12. `mount -t file_system_type device_to_mount directory_to_mount_to` `mount -t iso9660 /dev/cdrom /mnt/cdrom`
13. `umount /dev/cdrom`
14. 用户和群组配额

### linux 文件存储结构, 包括目录项、inode、数据块

1. 大部分的Linux文件系统（如ext2、ext3）规定，一个文件由目录项、inode和数据块组成
2. 目录项: 包括文件名和inode节点号
3. Inode: 又称文件索引节点，包含文件的基础信息以及数据块的指针
4. 数据块: 包含文件的具体内容
5. 扇区/块/inode
6. `stat demo.txt` 查看inode信息
7. Linux系统内部不使用文件名，而使用inode号码来识别文件
8. 系统内部这个过程分成三步：首先，系统找到这个文件名对应的inode号码；其次，通过inode号码，获取inode信息；最后，根据inode信息，找到文件数据所在的block，读出数据
9. `ls -i /etc` -i 列出inode号
10. 硬链接 `ln source_file target_file`
11. 软链接 `ln -s source_file target_file`

### linux 用户管理

1. 在Linux中，有三种用户: root用户, 系统用户, 普通用户
2. `cat /etc/passwd`
3. `useradd` `usermod` `userdel` `groupadd` `groupmod` `groupdel`
4. `groupadd [-g gid [-o]] [-r] [-f] groupname`
5. `groupmod -n new_modified_group_name old_group_name`
6. `useradd -d homedir -g groupname -m -s shell -u userid accountname`

### linux 系统性能分析

1. Linux中需要监控的资源主要有 CPU、主存（内存）、硬盘空间、I/O时间、网络时间、应用程序等
2. `netstat`
3. `time`
4. `ps`
5. `vmstat`
6. `gprof`
7. `top`
8. vmstat、sar、mpstat检测是否存在CPU瓶颈；
9. vmstat、free检测是否存在内存瓶颈；
10. iostat检测是否存在磁盘I/O瓶颈；
11. netstat检测是否存在网络I/O瓶颈。

### linux 系统日志及日志分析

1. 大部分Linux发行版默认的日志守护进程为 syslog，位于 /etc/syslog 或 /etc/syslogd，默认配置文件为 /etc/syslog.conf，任何希望生成日志的程序都可以向 syslog 发送信息
2. 默认配置下，日志文件通常都保存在`/var/log`目录下
3. 大多数Linux发行版使用 logrotate 或 newsyslog 对日志进行管理。logrotate 程序不但可以压缩日志文件，减少存储空间，还可以将日志发送到指定 E-mail，方便管理员及时查看日志

### linux 信号机制与信号处理

1. 信号(signal)是Linux进程间通信的一种机制，全称为软中断信号，也被称为软中断。信号本质上是在软件层次上对硬件中断机制的一种模拟
2. `kill -signal pid`
3. `trap commands signals`
