## useful shell

1. 查找大文件(全盘)
        find / -size +20000k -exec ls -lh {} \;
2. 查找磁盘上大于400MB的文件，直接删除，一般都是日志文件
        find / -size +400000k -exec rm -rf {} \;
3. 
