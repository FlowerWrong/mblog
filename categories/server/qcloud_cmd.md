# qcloud cmd

#### tar

```ruby
tar -jcvf /tmp/etc.tar.bz2 /etc  # 打包后，以 bzip2 压缩
```

#### scp

```ruby
scp name@/ip:~/filename.tar.gz ~/filename.tar.gz
```

#### wc

```ruby
wc -l all_databases.sql
wc -c filename
wc -w filename
```

#### mysqldump

```ruby
# 备份所有数据库
mysqldump --all-databases -u root -p > all_databases.sql

# 导出整个数据库
mysqldump -u name -p db_name > db_name.sql

# 导出一个表
mysqldump -u name -p db_name table_name > db_name_table_name.sql

# 导出一个数据库结构
mysqldump -u name -p -d --add-drop-table db_name > db_name.sql

# 导入数据库
# login to mysql
use db;
SOURCE db.sql;
```
