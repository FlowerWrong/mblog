## mysql

#### [mysql 常用命令](http://see.xidian.edu.cn/cpp/u/mysql_ml/)

#### [install mysql](http://see.xidian.edu.cn/cpp/html/1461.html)

#### Mysql各种存储引擎的特性以及如何选择存储引擎

1. Myisam, BDB, Memory, InnoDB and Archive
2. Myisam是Mysql的默认存储引擎
3. InnoDB存储引擎提供了具有提交、回滚和崩溃恢复能力的事务安全
4. CHAR和VARCHAR类型类似，但它们保存和检索的方式不同。它们的最大长度和是否尾部空格被保留等方面也不同
5. text和blob
6. 浮点数与定点数

#### Mysql字符集

1. 服务器字符集和校对，在mysql服务启动的时候确定。可以在my.cnf中设置： `default-character-set=utf8`
2. 在启动选项中指定： `mysqld --default-character-set=utf8`
3. 在编译的时候指定： ``./configure --with-charset=utf8`

#### mysql cmd ####

1. mysql dump
`mysqldump -u root -p one_campus_development articles > ~/dev/articles.sql`
2. mysql import
`mysqlimport -u root -p --local one_campus_development articles ~/dev/articles.sql`
3. download data from server
`scp name@ip:/backup/sql/articles2.sql ~/dev/articles.sql`

#### mysql 设置外网可以访问

```ruby
use mysql;
select user,host from user;
update user set host='%' where user='root';
flush privileges;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'root' WITH GRANT OPTION;
flush privileges;

sudo vim /etc/mysql/my.cnf
bind-address            = 0.0.0.0

CREATE USER 'miao'@'%' IDENTIFIED BY '12345678';
GRANT ALL PRIVILEGES ON miao_development . * TO 'miao'@'%';
flush privileges;
```

##### articles

* [How To Create a New User and Grant Permissions in MySQL](https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql)
* [how-to-create-hot-backups-of-mysql-databases-with-percona-xtrabackup-on-ubuntu-14-04](https://www.digitalocean.com/community/tutorials/how-to-create-hot-backups-of-mysql-databases-with-percona-xtrabackup-on-ubuntu-14-04)
