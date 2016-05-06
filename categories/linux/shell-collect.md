# shell

* List and Sort Processes by Memory Usage:

`ps -e -orss=,args= | sort -b -k1,1n | pr -TW$COLUMNS`
`ps aux | awk '{print $2, $4, $11}' | sort -k2rn | head -n 10`

* file size

`du -h filename`

* gzip file

`gzip filename`

* 查找大文件(全盘)

`find / -size +20000k -exec ls -lh {} \;`

* 查找磁盘上大于400MB的文件，直接删除，一般都是日志文件

`find / -size +400000k -exec rm -rf {} \;`

* scp下载

`scp username@ip:/backup/sql/articles2.sql ~/dev/articles.sql`

* scp上传

`scp /path/local_filename username@ip:/data/app/softwares`
